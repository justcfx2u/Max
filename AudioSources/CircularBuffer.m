/*
 *  $Id$
 *
 *  Copyright (C) 2005, 2006 Stephen F. Booth <me@sbooth.org>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#import "CircularBuffer.h"

@interface CircularBuffer (Private)
- (void)			normalizeBuffer;
@end

@implementation CircularBuffer

/*
 0000000000111111111122222222223333333333
 0123456789012345678901234567890123456789
 R
 W

 0000000000111111111122222222223333333333
 0123456789012345678901234567890123456789
            R
            W
 
 0000000000111111111122222222223333333333
 0123456789012345678901234567890123456789
    R
              W
 
 0000000000111111111122222222223333333333
 0123456789012345678901234567890123456789
    W
          R
 */
- (id)				init
{
	return [self initWithSize:10 * 1024];
}

- (id)				initWithSize:(unsigned)size
{
	NSParameterAssert(0 < size);
	
	if((self = [super init])) {
		_bufsize	= size;
		_buffer		= (uint8_t *)calloc(_bufsize, sizeof(uint8_t));
		
		NSAssert1(NULL != _buffer, @"Unable to allocate memory: %s", strerror(errno));
		
		_readPtr	= _buffer;
		_writePtr	= _buffer;
										
		return self;
	}
	return nil;
}

- (void)			reset							{ _readPtr = _writePtr = _buffer; }
- (unsigned)		size							{ return _bufsize; }

- (unsigned)		bytesAvailable
{	
	return (_writePtr >= _readPtr ? _writePtr - _readPtr : [self size] - (_readPtr - _writePtr));
}

- (unsigned)		contiguousBytesAvailable
{
	uint8_t			*limit		= _buffer + _bufsize;

	return (_writePtr >= _readPtr ? _writePtr - _readPtr : limit - _readPtr);
}

- (unsigned)		freeSpaceAvailable				{ return _bufsize - [self bytesAvailable]; }

- (unsigned)		contiguousFreeSpaceAvailable
{
	uint8_t			*limit		= _buffer + _bufsize;
	
	return (_writePtr >= _readPtr ? limit - _writePtr : _readPtr - _writePtr);
}

- (unsigned)		putData:(const void *)data byteCount:(unsigned)byteCount
{
	NSParameterAssert(NULL != data);
	NSParameterAssert(0 < byteCount);
	NSParameterAssert([self freeSpaceAvailable] >= byteCount);
	
	if([self contiguousFreeSpaceAvailable] >= byteCount) {
		memcpy(_writePtr, data, byteCount);
		_writePtr += byteCount;

		return byteCount;
	}
	else {
		unsigned	blockSize		= [self contiguousFreeSpaceAvailable];
		unsigned	wrapSize		= byteCount - blockSize;
		
		memcpy(_writePtr, data, blockSize);
		_writePtr = _buffer;

		memcpy(_writePtr, data + blockSize, wrapSize);
		_writePtr += wrapSize;

		return byteCount;
	}
}

- (unsigned)		getData:(void *)buffer byteCount:(unsigned)byteCount
{
	NSParameterAssert(NULL != buffer);

	// Do nothing!
	if(0 == byteCount) {
		return 0;
	}
	
	// Attempt to return some data, if possible
	if(byteCount > [self bytesAvailable]) {
		byteCount = [self bytesAvailable];
	}

	if([self contiguousBytesAvailable] >= byteCount) {
		memcpy(buffer, _readPtr, byteCount);
		_readPtr += byteCount;
	}
	else {
		unsigned	blockSize		= [self contiguousBytesAvailable];
		unsigned	wrapSize		= byteCount - blockSize;
		
		memcpy(buffer, _readPtr, blockSize);
		_readPtr = _buffer;
		
		memcpy(buffer + blockSize, _readPtr, wrapSize);
		_readPtr += wrapSize;
	}

	return byteCount;
}

- (const void *)	exposeBufferForReading			{ [self normalizeBuffer]; return _readPtr; }

- (void)			readBytes:(unsigned)byteCount
{
	uint8_t			*limit		= _buffer + _bufsize;
	
	_readPtr += byteCount; 

	if(_readPtr > limit) {
		_readPtr = _buffer;
	}
}

- (void *)			exposeBufferForWriting			{ [self normalizeBuffer]; return _writePtr; }

- (void)			wroteBytes:(unsigned)byteCount
{
	uint8_t			*limit		= _buffer + _bufsize;
	
	_writePtr += byteCount;
	
	if(_writePtr > limit) {
		_writePtr = _buffer;
	}
}

@end

@implementation CircularBuffer (Private)

- (void)			normalizeBuffer
{
	if(_writePtr == _readPtr) {		
		_writePtr = _readPtr = _buffer;
	}
	else if(_writePtr > _readPtr) {
		unsigned	count		= _writePtr - _readPtr;
		unsigned	delta		= _readPtr - _buffer;
		
		memmove(_buffer, _readPtr, count);
		
		_readPtr	= _buffer;
		_writePtr	-= delta;
	}
	else {
		unsigned		chunkASize	= [self contiguousBytesAvailable];
		unsigned		chunkBSize	= [self bytesAvailable] - [self contiguousBytesAvailable];
		uint8_t			*chunkA		= NULL;
		uint8_t			*chunkB		= NULL;
		
		chunkA = (uint8_t *)calloc(chunkASize, sizeof(uint8_t));
		NSAssert1(NULL != chunkA, @"Unable to allocate memory: %s", strerror(errno));
		memcpy(chunkA, _readPtr, chunkASize);
		
		if(0 < chunkBSize) {
			chunkB = (uint8_t *)calloc(chunkBSize, sizeof(uint8_t));
			NSAssert1(NULL != chunkA, @"Unable to allocate memory: %s", strerror(errno));
			memcpy(chunkB, _buffer, chunkBSize);
		}
		
		memcpy(_buffer, chunkA, chunkASize);
		memcpy(_buffer + chunkASize, chunkB, chunkBSize);
		
		_readPtr	= _buffer;
		_writePtr	= _buffer + chunkASize + chunkBSize;
	}
	
}

@end