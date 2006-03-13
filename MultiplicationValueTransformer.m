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

#import "MultiplicationValueTransformer.h"

@implementation MultiplicationValueTransformer

+ (Class)	transformedValueClass			{ return [NSNumber class]; }
+ (BOOL)	allowsReverseTransformation		{ return YES; }

- (id) init
{
	return [self initWithMultiplier:1];
}

// Designated initializer
- (id) initWithMultiplier:(int)multiplier
{
	if((self = [super init])) {
		_multiplier = multiplier;
		return self;
	}
	
	return nil;
}

- (id) transformedValue:(id) value;
{
	if(nil == value) {
		return nil;		
	}
	
	if(NO == [value isKindOfClass:[NSNumber class]]) {
		@throw [NSException exceptionWithName:@"NSInternalInconsistencyException" reason:@"Value was not NSNumber." userInfo:nil];
	}
	
	return [NSNumber numberWithDouble:[(NSNumber *)value doubleValue] * _multiplier];
}

- (id) reverseTransformedValue:(id) value;
{	
	if(nil == value) {
		return nil;		
	}
	
	if(NO == [value isKindOfClass:[NSNumber class]]) {
		@throw [NSException exceptionWithName:@"NSInternalInconsistencyException" reason:@"Value was not NSNumber." userInfo:nil];
	}
	
	return [NSNumber numberWithDouble:[(NSNumber *)value doubleValue] / _multiplier];
}

@end