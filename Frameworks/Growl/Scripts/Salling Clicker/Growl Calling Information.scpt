FasdUAS 1.101.10   ��   ��    k             l      �� ��   ��
	Salling Clicker script to log phone calls to Growl
	� 2004 Robert Leslie
	Inspired by George (Ty) Tempel's first implementation

	This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
	
	--Changes to work with growl: Jeremy Rossi
	
       	  j     �� 
�� 0 currentcalls currentCalls 
 J     ����   	     l     ������  ��        i        I      �������� 0 	connected  ��  ��    r         J     ����    o      ���� 0 currentcalls currentCalls      l     ������  ��        i        I      �������� 0 entered_proximity  ��  ��    r         J     ����    o      ���� 0 currentcalls currentCalls      l     ������  ��        i         I      �� !���� "0 phone_call_status_notification   !  "�� " o      ���� 0 
event_info  ��  ��     k    E # #  $ % $ r      & ' & m      ( (  Growl Calling Information    ' o      ���� 0 appname appName %  ) * ) r     + , + m     - -  Call Status    , o      ���� $0 notificationname notificationName *  . / . r     0 1 0 J     2 2  3�� 3 o    	���� $0 notificationname notificationName��   1 o      ���� 
0 notifs   /  4 5 4 l   ������  ��   5  6 7 6 O      8 9 8 I   ���� :
�� .registernull��� ��� null��   : �� ; <
�� 
appl ; o    ���� 0 appname appName < �� = >
�� 
anot = o    ���� 
0 notifs   > �� ? @
�� 
dnot ? o    ���� 
0 notifs   @ �� A��
�� 
iapp A m     B B ! Bluetooth File Exchange.app   ��   9 m     C C2null     ߀�� L�GrowlHelperApp.appP��(����    z@(   )       ��(�|���� �GRRR   alis    �  Macintosh HD               �g�H+   L�GrowlHelperApp.app                                              L��ȞV        ����  	                	Resources     �f��      �Ȃ6     L� L�  L�� D  D  YMacintosh HD:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app   &  G r o w l H e l p e r A p p . a p p    M a c i n t o s h   H D  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��   7  D E D l  ! !������  ��   E  F G F w   ! H I H k   # J J  K L K l  # #�� M��   M @ :- "the_call_status" can have the following keyword values:    L  N O N l  # #�� P��   P D >- alerting/calling/connecting/holding/waiting/active/idle/busy    O  Q R Q r   # & S T S m   # $ U U       T o      ���� 0 call_status   R  V W V r   ' , X Y X n   ' * Z [ Z o   ( *���� 0 the_call_status   [ o   ' (���� 0 
event_info   Y o      ���� 0 event_call_status   W  \ ] \ Z   - � ^ _ `�� ^ =  - 0 a b a o   - .���� 0 event_call_status   b m   . /��
�� CSxxCSal _ r   3 6 c d c m   3 4 e e  alerting    d o      ���� 0 call_status   `  f g f =  9 < h i h o   9 :���� 0 event_call_status   i m   : ;��
�� CSxxCScl g  j k j r   ? D l m l m   ? B n n  calling    m o      ���� 0 call_status   k  o p o =  G L q r q o   G H���� 0 event_call_status   r m   H K��
�� CSxxCSct p  s t s r   O T u v u m   O R w w  
connecting    v o      ���� 0 call_status   t  x y x =  W \ z { z o   W X���� 0 event_call_status   { m   X [��
�� CSxxCShd y  | } | r   _ d ~  ~ m   _ b � �  holding     o      ���� 0 call_status   }  � � � =  g l � � � o   g h���� 0 event_call_status   � m   h k��
�� CSxxCSwt �  � � � r   o t � � � m   o r � �  waiting    � o      ���� 0 call_status   �  � � � =  w | � � � o   w x���� 0 event_call_status   � m   x {��
�� CSxxCSac �  � � � r    � � � � m    � � �  active    � o      ���� 0 call_status   �  � � � =  � � � � � o   � ����� 0 event_call_status   � m   � ���
�� CSxxCSid �  � � � r   � � � � � m   � � � � 
 idle    � o      ���� 0 call_status   �  � � � =  � � � � � o   � ����� 0 event_call_status   � m   � ���
�� CSxxCSbs �  ��� � r   � � � � � m   � � � � 
 busy    � o      ���� 0 call_status  ��  ��   ]  � � � l  � �������  ��   �  � � � l  � ��� ���   � > 8- "the_call_type" can have the following keyword values:    �  � � � l  � ��� ���   � &  - voice/data/fax/alternate voice    �  � � � r   � � � � � m   � � � �       � o      ���� 0 	call_type   �  � � � r   � � � � � n   � � � � � o   � ����� 0 the_call_type   � o   � ����� 0 
event_info   � o      ���� 0 event_call_type   �  � � � Z   � � � � ��� � =  � � � � � o   � ����� 0 event_call_type   � m   � ���
�� CTxxCTvc � r   � � � � � m   � � � �  voice    � o      ���� 0 	call_type   �  � � � =  � � � � � o   � ����� 0 event_call_type   � m   � ���
�� CTxxCTda �  � � � r   � � � � � m   � � � � 
 data    � o      ���� 0 	call_type   �  � � � =  � � � � � o   � ����� 0 event_call_type   � m   � ���
�� CTxxCTfx �  � � � r   � � � � � m   � � � � 	 fax    � o      ���� 0 	call_type   �  � � � =  � � � � � o   � ����� 0 event_call_type   � m   � ���
�� CTxxCTv2 �  ��� � r   � � � � � m   � � � �  alternate voice    � o      ���� 0 	call_type  ��  ��   �  � � � l  � �������  ��   �  � � � l  � ��� ���   � J D- "the_cid" is a numerical identifier represeting the call that this    �  � � � l  � ��� ���   � ; 5- event corresponds to (useful for tracking events in    �  � � � l  � ��� ���   �  - multi-party calls)    �  � � � r   �  � � � n   � � � � � o   � ����� 0 the_cid   � o   � ����� 0 
event_info   � o      ���� 0 event_call_id   �  � � � l ������  ��   �  � � � l �� ���   � 8 2- Additionally the "the_phone_number" string value    �  � � � l �� ���   � ; 5- is sometimes available (at least for "alerting" and    �  � � � l �� ���   �  - "calling")    �  � � � r   � � � m   � �       � o      ���� 0 event_caller_id   �  ��� � Q   � ��� � r  
 �  � n  
 o  ���� 0 the_phone_number   o  
���� 0 
event_info    o      ���� 0 event_caller_id   � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��   I6null      � �� 
��SEC Helper.app   �P�̿�� �P4z@(  ����p    �Q�#�����D JSCL  alis    �  Macintosh HD               �g�H+   
��SEC Helper.app                                                  
���{        ����  	                	Resources     �f��      ��[     
�� 
�� 
�� D  D  _Macintosh HD:Library:PreferencePanes:Salling Clicker.prefPane:Contents:Resources:SEC Helper.app     S E C   H e l p e r . a p p    M a c i n t o s h   H D  RLibrary/PreferencePanes/Salling Clicker.prefPane/Contents/Resources/SEC Helper.app  / ��   G �� Z  E�� E % J  #		 

 m    alerting    �� m  !  calling   ��   o  #$���� 0 call_status   k  (P  Z  (=�� = (- o  ()���� 0 call_status   m  ),  alerting    r  05 m  03  incoming    o      ���� 0 	direction  ��   r  8= m  8;  outgoing    o      ���� 0 	direction    r  >C !  m  >A""      ! o      ���� 0 
thesummary 
theSummary #$# r  DL%&% I  DJ�'�~� 0 formatnumber formatNumber' (�}( o  EF�|�| 0 event_caller_id  �}  �~  & o      �{�{ 0 thelocation theLocation$ )*) r  MU+,+ I  MS�z-�y�z 0 	getperson 	getPerson- .�x. o  NO�w�w 0 event_caller_id  �x  �y  , o      �v�v 0 	theperson 	thePerson* /0/ Z  V�12�u31 = V[454 o  VW�t�t 0 	theperson 	thePerson5 m  WZ�s
�s 
msng2 r  ^e676 b  ^c898 o  ^_�r�r 0 
thesummary 
theSummary9 m  _b::  unknown   7 o      �q�q 0 
thesummary 
theSummary�u  3 w  h�;<; k  l�== >?> r  lu@A@ b  lsBCB o  lm�p�p 0 
thesummary 
theSummaryC n  mrDED 1  nr�o
�o 
pnamE o  mn�n�n 0 	theperson 	thePersonA o      �m�m 0 
thesummary 
theSummary? FGF r  v�HIH b  vJKJ m  vyLL  addressbook://   K n  y~MNM 1  z~�l
�l 
ID  N o  yz�k�k 0 	theperson 	thePersonI o      �j�j 0 theurl theURLG OPO l ���i�h�i  �h  P QRQ r  ��STS I  ���gU�f�g 0 getphone getPhoneU VWV o  ���e�e 0 event_caller_id  W X�dX o  ���c�c 0 	theperson 	thePerson�d  �f  T o      �b�b 0 thephone thePhoneR Y�aY Z  ��Z[�`�_Z > ��\]\ o  ���^�^ 0 thephone thePhone] m  ���]
�] 
msng[ r  ��^_^ b  ��`a` b  ��bcb b  ��ded b  ��fgf o  ���\�\ 0 thelocation theLocationg 1  ���[
�[ 
space m  ��hh  (   c n  ��iji 1  ���Z
�Z 
az18j o  ���Y�Y 0 thephone thePhonea m  ��kk  )   _ o      �X�X 0 thelocation theLocation�`  �_  �a  <�null      � ��  iAddress Book.app �P�̿�� �P4z@P  ���p    �Q�#����D adrb  alis    d  Macintosh HD               �g�H+    iAddress Book.app                                                x�@��        ����  	                Applications    �f��      �@��      i  *Macintosh HD:Applications:Address Book.app  "  A d d r e s s   B o o k . a p p    M a c i n t o s h   H D  Applications/Address Book.app   / ��  0 lml l ���W�V�W  �V  m non r  ��pqp K  ��rr �Ust�U 0 thecid theCIDs o  ���T�T 0 event_call_id  t �Suv�S 0 thetype theTypeu o  ���R�R 0 	call_type  v �Qwx�Q 0 	thenumber 	theNumberw o  ���P�P 0 event_caller_id  x �Oyz�O 0 thedirection theDirectiony o  ���N�N 0 	direction  z �M{|�M 0 	starttime 	startTime{ I ���L�K�J
�L .misccurdldt    ��� null�K  �J  | �I}~�I 0 answeredtime answeredTime} m  ���H
�H 
msng~ �G��G 0 endtime endTime m  ���F
�F 
msng� �E���E 0 	theperson 	thePerson� o  ���D�D 0 
thesummary 
theSummary� �C��B�C 0 thelocation theLocation� o  ���A�A 0 thelocation theLocation�B  q o      �@�@ 0 thecall theCallo ��� s  ����� o  ���?�? 0 thecall theCall� n      ���  :  ��� o  ���>�> 0 currentcalls currentCalls� ��� l ���=�<�=  �<  � ��� r  ����� m  ����      � o      �;�;  0 thedescription theDescription� ��� Z  ����:�9� > ����� o  ���8�8 0 thelocation theLocation� m  ���7
�7 
msng� r  ���� c  ���� b  ���� o  ��6�6  0 thedescription theDescription� o  �5�5 0 thelocation theLocation� m  �4
�4 
TEXT� o      �3�3  0 thedescription theDescription�:  �9  � ��� Z  -���2�1� > ��� o  �0�0 0 
thesummary 
theSummary� m  �/
�/ 
msng� r  )��� c  %��� b  !��� b  ��� o  �.�.  0 thedescription theDescription� o  �-
�- 
ret � o   �,�, 0 
thesummary 
theSummary� m  !$�+
�+ 
TEXT� o      �*�*  0 thedescription theDescription�2  �1  � ��)� O  .P��� I 2O�(�'�
�( .notifygrnull��� ��� null�'  � �&��
�& 
name� o  67�%�% $0 notificationname notificationName� �$��
�$ 
titl� b  :C��� b  :?��� o  :;�#�# 0 	direction  � 1  ;>�"
�" 
spac� m  ?B�� 
 call   � �!��
�! 
appl� o  DE� �  0 appname appName� ���
� 
desc� o  HK��  0 thedescription theDescription�  � m  ./ C�)  ��   k  SE�� ��� r  S]��� I  SY���� 0 getcallrecord getCallRecord� ��� o  TU�� 0 event_call_id  �  �  � o      �� 0 thecall theCall� ��� r  ^g��� I ^c���
� .misccurdldt    ��� null�  �  � o      �� 0 thetime theTime� ��� Z  hE����� = hm��� o  hi�� 0 call_status  � m  il��  active   � k  p��� ��� Z  p������ = p{��� n  pw��� o  sw�� 0 answeredtime answeredTime� o  ps�� 0 thecall theCall� m  wz�
� 
msng� r  ~���� o  ~��� 0 thetime theTime� n      ��� o  ���
�
 0 answeredtime answeredTime� o  ���	�	 0 thecall theCall�  �  � ��� O  ����� I �����
� .notifygrnull��� ��� null�  � ���
� 
name� o  ���� $0 notificationname notificationName� ���
� 
titl� b  ����� b  ����� n  ����� o  ���� 0 thedirection theDirection� o  ���� 0 thecall theCall� 1  ��� 
�  
spac� m  ����  answered   � ����
�� 
appl� o  ������ 0 appname appName� �����
�� 
desc� l ������ c  ����� b  ����� b  ����� n  ����� o  ������ 0 thelocation theLocation� o  ������ 0 thecall theCall� o  ����
�� 
ret � n  ����� o  ������ 0 	theperson 	thePerson� o  ������ 0 thecall theCall� m  ����
�� 
TEXT��  ��  � m  �� C�  � ��� = ����� o  ������ 0 call_status  � m  ���� 
 idle   � ���� k  �A�� ��� r  ��   o  ������ 0 thetime theTime n       o  ������ 0 endtime endTime o  ������ 0 thecall theCall�  r  �� I  �������� 0 englishtime englishTime 	��	 \  ��

 l ���� n  �� o  ������ 0 endtime endTime o  ������ 0 thecall theCall��   l ���� n  �� o  ������ 0 answeredtime answeredTime o  ������ 0 thecall theCall��  ��  ��   o      ���� 0 theduration theDuration  O  �: I �9����
�� .notifygrnull��� ��� null��   ��
�� 
name o  ���� $0 notificationname notificationName ��
�� 
titl b   b   n    o  	���� 0 thedirection theDirection  o  	���� 0 thecall theCall 1  ��
�� 
spac m  !!  hungup    ��"#
�� 
appl" o  ���� 0 appname appName# ��$��
�� 
desc$ l 5%��% c  5&'& b  1()( b  -*+* b  ),-, b  %./. n  !010 o  !���� 0 thelocation theLocation1 o  ���� 0 thecall theCall/ o  !$��
�� 
ret - m  %(22  Time:   + 1  ),��
�� 
spac) o  -0���� 0 theduration theDuration' m  14��
�� 
TEXT��  ��   m  �� C 3��3 I  ;A��4���� $0 deletecallrecord deleteCallRecord4 5��5 o  <=���� 0 event_call_id  ��  ��  ��  ��  �  �  ��    676 l     ������  ��  7 898 l     ������  ��  9 :;: l     ��<��  < ( "-tell application "GrowlHelperApp"   ; =>= l     ��?��  ? � �-notify with name notificationName title call_type application name appName description event_caller_id & ":  " & call_status with sticky   > @A@ l     ��B��  B  	-end tell   A CDC l     ������  ��  D EFE l     ������  ��  F GHG i    IJI I      ��K���� 0 getcallrecord getCallRecordK L��L o      ���� 0 cid  ��  ��  J k     2MM NON X     'P��QP Z    "RS����R =   TUT n    VWV o    ���� 0 thecid theCIDW o    ���� 0 acall aCallU o    ���� 0 cid  S L    XX o    ���� 0 acall aCall��  ��  �� 0 acall aCallQ o    ���� 0 currentcalls currentCallsO YZY l  ( (������  ��  Z [��[ R   ( 2��\��
�� .ascrerr ****      � ****\ b   * 1]^] b   * /_`_ b   * -aba m   * +cc   Missing call record for id   b 1   + ,��
�� 
spac` o   - .���� 0 cid  ^ m   / 0dd  .   ��  ��  H efe l     ������  ��  f ghg i    iji I      ��k���� $0 deletecallrecord deleteCallRecordk l��l o      ���� 0 cid  ��  ��  j k     8mm non r     pqp J     ����  q o      ���� 0 newcalls newCallso rsr X    0t��ut Z    +vw����v >   xyx n    z{z o    ���� 0 thecid theCID{ o    ���� 0 acall aCally o    ���� 0 cid  w s   ! '|}| n   ! $~~ 1   " $��
�� 
pcnt o   ! "���� 0 acall aCall} n      ���  ;   % &� o   $ %���� 0 newcalls newCalls��  ��  �� 0 acall aCallu o    ���� 0 currentcalls currentCallss ��� l  1 1������  ��  � ���� r   1 8��� o   1 2���� 0 newcalls newCalls� o      ���� 0 currentcalls currentCalls��  h ��� l     ������  ��  � ��� i    ��� I      ������� 0 logcall logCall� ���� o      ���� 0 thecall theCall��  ��  � k    m�� ��� r     ��� m     ��      � o      ���� 0 
thesummary 
theSummary� ��� r    	��� n    ��� o    ���� 0 thelog theLog� o    ���� 0 thecall theCall� o      ���� 0 thelog theLog� ��� l  
 
������  ��  � ��� Z   
 N������ =  
 ��� n   
 ��� o    ���� 0 answeredtime answeredTime� o   
 ���� 0 thecall theCall� m    ��
�� 
msng� k    3�� ��� Z    ������� H    �� o    ���� (0 logunansweredcalls logUnansweredCalls� L    ����  ��  ��  � ��� l   ������  ��  � ���� Z    3������ =   #��� n    !��� o    !���� 0 thedirection theDirection� o    �� 0 thecall theCall� m   ! "��  incoming   � r   & +��� b   & )��� m   & '��  missed   � 1   ' (�~
�~ 
spac� o      �}�} 0 
thesummary 
theSummary��  � r   . 3��� b   . 1��� m   . /��  
unanswered   � 1   / 0�|
�| 
spac� o      �{�{ 0 
thesummary 
theSummary��  ��  � r   6 N��� b   6 L��� b   6 J��� b   6 =��� b   6 ;��� b   6 9��� o   6 7�z�z 0 thelog theLog� o   7 8�y
�y 
ret � m   9 :��  call duration   � 1   ; <�x
�x 
spac� l 	 = I��w� I   = I�v��u�v 0 englishtime englishTime� ��t� \   > E��� l  > A��s� n   > A��� o   ? A�r�r 0 endtime endTime� o   > ?�q�q 0 thecall theCall�s  � l  A D��p� n   A D��� o   B D�o�o 0 answeredtime answeredTime� o   A B�n�n 0 thecall theCall�p  �t  �u  �w  � o   J K�m
�m 
ret � o      �l�l 0 thelog theLog� ��� l  O O�k�j�k  �j  � ��� Z   O ������ =  O T��� n   O R��� o   P R�i�i 0 thetype theType� o   O P�h�h 0 thecall theCall� m   R S�� 	 fax   � r   W ^��� b   W \��� b   W Z��� o   W X�g�g 0 
thesummary 
theSummary� m   X Y�� 	 fax   � 1   Z [�f
�f 
spac� o      �e�e 0 
thesummary 
theSummary� ��� =  a h��� n   a d��� o   b d�d�d 0 thetype theType� o   a b�c�c 0 thecall theCall� m   d g�� 
 data   � ��b� r   k t��� b   k r��� b   k p��� o   k l�a�a 0 
thesummary 
theSummary� m   l o��  	data call   � 1   p q�`
�` 
spac� o      �_�_ 0 
thesummary 
theSummary�b  � r   w ���� b   w ~��� b   w |   o   w x�^�^ 0 
thesummary 
theSummary m   x { 
 call   � 1   | }�]
�] 
spac� o      �\�\ 0 
thesummary 
theSummary�  l  � ��[�Z�[  �Z    Z   � ��Y	 =  � �

 n   � � o   � ��X�X 0 thedirection theDirection o   � ��W�W 0 thecall theCall m   � �  incoming    r   � � b   � � b   � � o   � ��V�V 0 
thesummary 
theSummary m   � � 
 from    1   � ��U
�U 
spac o      �T�T 0 
thesummary 
theSummary�Y  	 r   � � b   � � b   � � o   � ��S�S 0 
thesummary 
theSummary m   � �  to    1   � ��R
�R 
spac o      �Q�Q 0 
thesummary 
theSummary  l  � ��P�O�P  �O     r   � �!"! I   � ��N#�M�N 0 formatnumber formatNumber# $�L$ n   � �%&% o   � ��K�K 0 	thenumber 	theNumber& o   � ��J�J 0 thecall theCall�L  �M  " o      �I�I 0 thelocation theLocation  '(' r   � �)*) I   � ��H+�G�H 0 	getperson 	getPerson+ ,�F, n   � �-.- o   � ��E�E 0 	thenumber 	theNumber. o   � ��D�D 0 thecall theCall�F  �G  * o      �C�C 0 	theperson 	thePerson( /0/ r   � �121 m   � ��B
�B 
msng2 o      �A�A 0 theurl theURL0 343 l  � ��@�?�@  �?  4 565 Z   � �78�>�=7 I   � ��<9�;�< 0 shouldnotlog shouldNotLog9 :�:: o   � ��9�9 0 	theperson 	thePerson�:  �;  8 L   � ��8�8  �>  �=  6 ;<; l  � ��7�6�7  �6  < =>= Z   �$?@�5A? =  � �BCB o   � ��4�4 0 	theperson 	thePersonC m   � ��3
�3 
msng@ r   � �DED b   � �FGF o   � ��2�2 0 
thesummary 
theSummaryG m   � �HH  unknown   E o      �1�1 0 
thesummary 
theSummary�5  A w   �$I<I k   �$JJ KLK r   � �MNM b   � �OPO o   � ��0�0 0 
thesummary 
theSummaryP n   � �QRQ 1   � ��/
�/ 
pnamR o   � ��.�. 0 	theperson 	thePersonN o      �-�- 0 
thesummary 
theSummaryL STS r   � �UVU b   � �WXW m   � �YY  addressbook://   X n   � �Z[Z 1   � ��,
�, 
ID  [ o   � ��+�+ 0 	theperson 	thePersonV o      �*�* 0 theurl theURLT \]\ l  � ��)�(�)  �(  ] ^_^ r   �`a` I   ��'b�&�' 0 getphone getPhoneb cdc n   � �efe o   � ��%�% 0 	thenumber 	theNumberf o   � ��$�$ 0 thecall theCalld g�#g o   � �"�" 0 	theperson 	thePerson�#  �&  a o      �!�! 0 thephone thePhone_ h� h Z  $ij��i > 
klk o  �� 0 thephone thePhonel m  	�
� 
msngj r   mnm b  opo b  qrq b  sts b  uvu o  �� 0 thelocation theLocationv 1  �
� 
spact m  ww  (   r n  xyx 1  �
� 
az18y o  �� 0 thephone thePhonep m  zz  )   n o      �� 0 thelocation theLocation�  �  �   > {|{ l %%���  �  | }�} O %m~~ I +l���
� .corecrel****      � null�  � ���
� 
kocl� m  /2�
� 
wrev� ���
� 
insh� n  5<���  ;  ;<� n 5;��� I  6;���� 0 getcalendar getCalendar� ��� o  67�� $0 logcalendartitle logCalendarTitle�  �  �  f  56� �
��	
�
 
prdt� K  ?f�� ���
� 
wr11� n BH��� I  CH���� 0 
capitalize  � ��� o  CD�� 0 
thesummary 
theSummary�  �  �  f  BC� ���
� 
wr14� o  KL�� 0 thelocation theLocation� ���
� 
wr1s� n  OT��� o  PT� �  0 	starttime 	startTime� o  OP���� 0 thecall theCall� ����
�� 
wr5s� n  WZ��� o  XZ���� 0 endtime endTime� o  WX���� 0 thecall theCall� ����
�� 
wr16� o  ]^���� 0 theurl theURL� �����
�� 
wr12� o  ab���� 0 thelog theLog��  �	   m  %(���null     ߀��  iiCal.app���˰    �P��(����    z@(   )       ��(�|���� �wrbt  alis    D  Macintosh HD               �g�H+    iiCal.app                                                        ��?Y�        ����  	                Applications    �f��      �?K�      i  "Macintosh HD:Applications:iCal.app    i C a l . a p p    M a c i n t o s h   H D  Applications/iCal.app   / ��  �  � ��� l     ������  ��  � ��� i    ��� I      ������� 0 getcalendar getCalendar� ���� o      ���� 0 thetitle theTitle��  ��  � O     1��� k    0�� ��� e    �� 6   ��� 2   ��
�� 
wres� =   ��� 1   	 ��
�� 
wr02� o    ���� 0 thetitle theTitle� ���� Z    0������ ?    ��� n    ��� 1    ��
�� 
leng� 1    ��
�� 
rslt� m    ����  � L     �� n    ��� 4   ���
�� 
cobj� m    ���� � 1    ��
�� 
rslt��  � L   # 0�� I  # /�����
�� .corecrel****      � null��  � ����
�� 
kocl� m   % &��
�� 
wres� �����
�� 
prdt� K   ' +�� �����
�� 
wr02� o   ( )���� 0 thetitle theTitle��  ��  ��  � m     �� ��� l     ������  ��  � ��� i     #��� I      ������� 0 	getperson 	getPerson� ���� o      ���� 0 	thenumber 	theNumber��  ��  � k     (�� ��� Q     %����� k    �� ��� O   ��� r    ��� I   �����
�� .seClLUabnull��� ��� obj � o    ���� 0 	thenumber 	theNumber��  � o      ���� 0 theuid theUID� m     I� ���� O   ��� L    �� 5    �����
�� 
azf4� o    ���� 0 theuid theUID
�� kfrmID  � m    <��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� l  & &������  ��  � ���� L   & (�� m   & '��
�� 
msng��  � ��� l     ������  ��  � ��� i   $ '��� I      ������� 0 getphone getPhone� ��� o      ���� 0 	thenumber 	theNumber� ���� o      ���� 0 	theperson 	thePerson��  ��  � k     ]�� ��� r     ��� I     ������� 0 digitsof digitsOf� ���� o    ���� 0 	thenumber 	theNumber��  ��  � o      ���� 0 	thenumber 	theNumber� ��� l  	 	������  ��  � ��� Z   	 -������� F   	 ��� =  	 ��� n   	 � � 1   
 ��
�� 
leng  o   	 
���� 0 	thenumber 	theNumber� m    ���� � =    n     l 	  �� 4    ��
�� 
cha  m    ���� ��   o    ���� 0 	thenumber 	theNumber m      1   � r    )	 n    '

 7   '��
�� 
ctxt m   ! #����  m   $ &����  o    ���� 0 	thenumber 	theNumber	 o      ���� 0 	thenumber 	theNumber��  ��  �  l  . .������  ��    w   . Z< X   0 Z�� Z   B U���� E   B L n  B J I   C J������ 0 digitsof digitsOf �� n   C F 1   D F��
�� 
az17 o   C D���� 0 aphone aPhone��  ��    f   B C o   J K���� 0 	thenumber 	theNumber L   O Q o   O P���� 0 aphone aPhone��  ��  �� 0 aphone aPhone n   3 6 !  2  4 6��
�� 
az20! o   3 4���� 0 	theperson 	thePerson "#" l  [ [������  ��  # $��$ L   [ ]%% m   [ \��
�� 
msng��  � &'& l     ������  ��  ' ()( i   ( +*+* I      ��,���� 0 ismember isMember, -.- o      ���� 0 	theentity 	theEntity. /��/ o      ���� 0 thegroup theGroup��  ��  + k     600 121 w     33<3 X    34��54 Z    .67����6 G    %898 =    :;: n    <=< 1    ��
�� 
pcnt= o    ���� 0 agroup aGroup; o    ���� 0 thegroup theGroup9 l 	  #>��> I    #��?���� 0 ismember isMember? @A@ o    ���� 0 agroup aGroupA B��B o    ���� 0 thegroup theGroup��  ��  ��  7 L   ( *CC m   ( )��
�� boovtrue��  ��  �� 0 agroup aGroup5 n    DED 2   ��
�� 
azf5E o    ���� 0 	theentity 	theEntity2 FGF l  4 4������  ��  G H��H L   4 6II m   4 5�
� boovfals��  ) JKJ l     �~�}�~  �}  K LML i   , /NON I      �|P�{�| 0 shouldnotlog shouldNotLogP Q�zQ o      �y�y 0 	theperson 	thePerson�z  �{  O k     iRR STS Z     UV�x�wU =    WXW o     �v�v 0 	theperson 	thePersonX m    �u
�u 
msngV L    
YY >   	Z[Z o    �t�t 0 loggroup logGroup[ m    �s
�s 
msng�x  �w  T \]\ l   �r�q�r  �q  ] ^_^ O    f`a` k    ebb cdc Q    ;ef�pe Z    2gh�o�ng F    )iji >   klk o    �m�m 0 
nologgroup 
noLogGroupl m    �l
�l 
msngj l 	  'm�km n   'non I    '�jp�i�j 0 ismember isMemberp qrq o    �h�h 0 	theperson 	thePersonr s�gs 5    #�ft�e
�f 
azf5t o     !�d�d 0 
nologgroup 
noLogGroup
�e kfrmname�g  �i  o  f    �k  h L   , .uu m   , -�c
�c boovtrue�o  �n  f R      �b�a�`
�b .ascrerr ****      � ****�a  �`  �p  d v�_v Q   < ewx�^w Z   ? \yz�]�\y F   ? S{|{ >  ? B}~} o   ? @�[�[ 0 loggroup logGroup~ m   @ A�Z
�Z 
msng| l 	 E Q�Y H   E Q�� n  E P��� I   F P�X��W�X 0 ismember isMember� ��� o   F G�V�V 0 	theperson 	thePerson� ��U� 5   G L�T��S
�T 
azf5� o   I J�R�R 0 loggroup logGroup
�S kfrmname�U  �W  �  f   E F�Y  z L   V X�� m   V W�Q
�Q boovtrue�]  �\  x R      �P�O�N
�P .ascrerr ****      � ****�O  �N  �^  �_  a m    <_ ��� l  g g�M�L�M  �L  � ��K� L   g i�� m   g h�J
�J boovfals�K  M ��� l     �I�H�I  �H  � ��� i   0 3��� I      �G��F�G 0 digitsof digitsOf� ��E� o      �D�D 0 	thestring 	theString�E  �F  � k     1�� ��� r     ��� m     ��  
0123456789   � o      �C�C 0 validdigits validDigits� ��� r    ��� m    ��      � o      �B�B 0 	newstring 	newString� ��� X    .��A�� Z    )���@�?� E   ��� o    �>�> 0 validdigits validDigits� o    �=�= 0 adigit aDigit� r     %��� b     #��� o     !�<�< 0 	newstring 	newString� o   ! "�;�; 0 adigit aDigit� o      �:�: 0 	newstring 	newString�@  �?  �A 0 adigit aDigit� n    ��� 2   �9
�9 
cha � o    �8�8 0 	thestring 	theString� ��� l  / /�7�6�7  �6  � ��5� L   / 1�� o   / 0�4�4 0 	newstring 	newString�5  � ��� l     �3�2�3  �2  � ��� i   4 7��� I      �1��0�1 0 formatnumber formatNumber� ��/� o      �.�. 0 	thenumber 	theNumber�/  �0  � k     ��� ��� r     ��� I     �-��,�- 0 digitsof digitsOf� ��+� o    �*�* 0 	thenumber 	theNumber�+  �,  � o      �)�) 0 	thenumber 	theNumber� ��� l  	 	�(�'�(  �'  � ��� Z   	 �����&� =  	 ��� n   	 ��� 1   
 �%
�% 
leng� o   	 
�$�$ 0 	thenumber 	theNumber� m    �#�#  � L    �� m    �"
�" 
msng� ��� F    &��� =   ��� n    ��� 1    �!
�! 
leng� o    � �  0 	thenumber 	theNumber� m    �� � =   $��� n    "��� l 	  "��� 4    "��
� 
cha � m     !�� �  � o    �� 0 	thenumber 	theNumber� m   " #��  1   � ��� L   ) >�� b   ) =��� b   ) ,��� m   ) *��  +1   � 1   * +�
� 
spac� l 	 , <��� I   , <���� 0 formatnumber formatNumber� ��� n   - 8��� 7  . 8���
� 
ctxt� m   2 4�� � m   5 7�� � o   - .�� 0 	thenumber 	theNumber�  �  �  � ��� =  A F��� n   A D��� 1   B D�
� 
leng� o   A B�� 0 	thenumber 	theNumber� m   D E�� 
� ��� L   I h�� b   I g��� b   I V��� l 	 I T��� l  I T��� n   I T��� 7  J T���
� 
ctxt� m   N P�� � m   Q S�
�
 � o   I J�	�	 0 	thenumber 	theNumber�  �  � 1   T U�
� 
spac� l 	 V f��� I   V f���� 0 formatnumber formatNumber�  �  n   W b 7  X b�
� 
ctxt m   \ ^��  m   _ a�� 
 o   W X� �  0 	thenumber 	theNumber�  �  �  �  =  k p n   k n	
	 1   l n��
�� 
leng
 o   k l���� 0 	thenumber 	theNumber m   n o����  �� L   s � b   s � b   s � l 	 s ~�� l  s ~�� n   s ~ 7  t ~��
�� 
ctxt m   x z����  m   { }����  o   s t���� 0 	thenumber 	theNumber��  ��   m   ~   -    l 	 � ��� l  � ��� n   � � 7  � ���
�� 
ctxt m   � �����  m   � �����  o   � ����� 0 	thenumber 	theNumber��  ��  ��  �&  �  l  � �������  ��    ��  L   � �!! o   � ����� 0 	thenumber 	theNumber��  � "#" l     ������  ��  # $%$ i   8 ;&'& I      ��(���� 0 englishcount englishCount( )*) o      ���� 0 howmany howMany* +��+ o      ���� 0 
unitstring 
unitString��  ��  ' k     ,, -.- r     	/0/ c     121 b     343 b     565 o     ���� 0 howmany howMany6 1    ��
�� 
spac4 o    ���� 0 
unitstring 
unitString2 m    ��
�� 
TEXT0 o      ���� 0 	thestring 	theString. 787 Z   
 9:����9 >   
 ;<; o   
 ���� 0 howmany howMany< m    ���� : r    =>= b    ?@? o    ���� 0 	thestring 	theString@ m    AA  s   > o      ���� 0 	thestring 	theString��  ��  8 BCB l   ������  ��  C D��D L    EE o    ���� 0 	thestring 	theString��  % FGF l     ������  ��  G HIH i   < ?JKJ I      ��L���� 0 englishtime englishTimeL M��M o      ���� 0 
numseconds 
numSeconds��  ��  K k     �NN OPO r     QRQ J     ����  R o      ���� 0 theelements theElementsP STS Z    !UV����U @    WXW o    ���� 0 
numseconds 
numSecondsX 1    ��
�� 
hourV k    YY Z[Z s    \]\ I    ��^���� 0 englishcount englishCount^ _`_ _    aba o    ���� 0 
numseconds 
numSecondsb 1    ��
�� 
hour` c��c m    dd 
 hour   ��  ��  ] n      efe  ;    f o    ���� 0 theelements theElements[ g��g r    hih `    jkj o    ���� 0 
numseconds 
numSecondsk 1    ��
�� 
houri o      ���� 0 
numseconds 
numSeconds��  ��  ��  T lml l  " "������  ��  m non Z   " >pq����p @   " %rsr o   " #���� 0 
numseconds 
numSecondss 1   # $��
�� 
min q k   ( :tt uvu s   ( 4wxw I   ( 1��y���� 0 englishcount englishCounty z{z _   ) ,|}| o   ) *���� 0 
numseconds 
numSeconds} 1   * +��
�� 
min { ~��~ m   , -  minute   ��  ��  x n      ���  ;   2 3� o   1 2���� 0 theelements theElementsv ���� r   5 :��� `   5 8��� o   5 6���� 0 
numseconds 
numSeconds� 1   6 7��
�� 
min � o      ���� 0 
numseconds 
numSeconds��  ��  ��  o ��� l  ? ?������  ��  � ��� Z   ? ]������� G   ? L��� ?   ? B��� o   ? @���� 0 
numseconds 
numSeconds� m   @ A����  � =  E J��� n   E H��� l 	 F H���� 1   F H��
�� 
leng��  � o   E F���� 0 theelements theElements� m   H I����  � s   O Y��� I   O V������� 0 englishcount englishCount� ��� o   P Q���� 0 
numseconds 
numSeconds� ���� m   Q R��  second   ��  ��  � n      ���  ;   W X� o   V W���� 0 theelements theElements��  ��  � ��� l  ^ ^������  ��  � ���� Z   ^ ������ =   ^ c��� n   ^ a��� 1   _ a��
�� 
leng� o   ^ _���� 0 theelements theElements� m   a b���� � L   f }�� b   f |��� b   f w��� b   f u��� b   f s��� b   f n��� b   f l��� n   f j��� l 	 g j���� 4   g j���
�� 
cobj� m   h i���� ��  � o   f g���� 0 theelements theElements� m   j k��  ,   � 1   l m��
�� 
spac� n   n r��� l 	 o r���� 4   o r���
�� 
cobj� m   p q���� ��  � o   n o���� 0 theelements theElements� m   s t��  , and   � 1   u v��
�� 
spac� n   w {��� l 	 x {���� 4   x {���
�� 
cobj� m   y z���� ��  � o   w x���� 0 theelements theElements� ��� =   � ���� n   � ���� 1   � ���
�� 
leng� o   � ����� 0 theelements theElements� m   � ����� � ���� L   � ��� b   � ���� b   � ���� b   � ���� b   � ���� n   � ���� l 	 � ����� 4   � ����
�� 
cobj� m   � ����� ��  � o   � ����� 0 theelements theElements� 1   � ���
�� 
spac� m   � ��� 	 and   � 1   � ���
�� 
spac� n   � ���� l 	 � ����� 4   � ����
�� 
cobj� m   � ����� ��  � o   � ��� 0 theelements theElements��  � L   � ��� n   � ���� l 	 � ���~� 4   � ��}�
�} 
cobj� m   � ��|�| �~  � o   � ��{�{ 0 theelements theElements��  I ��� l     �z�y�z  �y  � ��� i   @ C��� I      �x��w�x 0 
capitalize  � ��v� o      �u�u 0 	thestring 	theString�v  �w  � k     O�� ��� Z     L���t�s� ?     ��� n     ��� 1    �r
�r 
leng� o     �q�q 0 	thestring 	theString� m    �p�p  � k    H�� ��� r    ��� I   �o��n
�o .sysoctonshor       TEXT� l   ��m� n    ��� 4   	 �l�
�l 
cha � m   
 �k�k � o    	�j�j 0 	thestring 	theString�m  �n  � o      �i�i 	0 ascii  � ��� l   �h�g�h  �g  �  �f  Z    H�e�d F    & @     l 	  �c o    �b�b 	0 ascii  �c   l   �a I   �`	�_
�` .sysoctonshor       TEXT	 m    

  a   �_  �a   B    $ l 	  �^ o    �]�] 	0 ascii  �^   l   #�\ I   #�[�Z
�[ .sysoctonshor       TEXT m      z   �Z  �\   r   ) D b   ) B l 	 ) :�Y l  ) :�X I  ) :�W�V
�W .sysontocTEXT       shor l  ) 6�U [   ) 6 \   ) 0 o   ) *�T�T 	0 ascii   l  * /�S I  * /�R�Q
�R .sysoctonshor       TEXT m   * +  a   �Q  �S   l  0 5 �P  I  0 5�O!�N
�O .sysoctonshor       TEXT! m   0 1""  A   �N  �P  �U  �V  �X  �Y   l  : A#�M# c   : A$%$ n   : ?&'& 1   = ?�L
�L 
rest' n   : =()( 2  ; =�K
�K 
cha ) o   : ;�J�J 0 	thestring 	theString% m   ? @�I
�I 
TEXT�M   o      �H�H 0 	thestring 	theString�e  �d  �f  �t  �s  � *+* l  M M�G�F�G  �F  + ,�E, L   M O-- o   M N�D�D 0 	thestring 	theString�E  � .�C. l     �B�A�B  �A  �C       �@/0123456789:;<=>?@�@  / �?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�? 0 currentcalls currentCalls�> 0 	connected  �= 0 entered_proximity  �< "0 phone_call_status_notification  �; 0 getcallrecord getCallRecord�: $0 deletecallrecord deleteCallRecord�9 0 logcall logCall�8 0 getcalendar getCalendar�7 0 	getperson 	getPerson�6 0 getphone getPhone�5 0 ismember isMember�4 0 shouldnotlog shouldNotLog�3 0 digitsof digitsOf�2 0 formatnumber formatNumber�1 0 englishcount englishCount�0 0 englishtime englishTime�/ 0 
capitalize  0 �.�-�.  �-  1 �, �+�*AB�)�, 0 	connected  �+  �*  A  B  �) 	jvEc   2 �( �'�&CD�%�( 0 entered_proximity  �'  �&  C  D  �% 	jvEc   3 �$  �#�"EF�!�$ "0 phone_call_status_notification  �# � G�  G  �� 0 
event_info  �"  E ��������������������� 0 
event_info  � 0 appname appName� $0 notificationname notificationName� 
0 notifs  � 0 call_status  � 0 event_call_status  � 0 	call_type  � 0 event_call_type  � 0 event_call_id  � 0 event_caller_id  � 0 	direction  � 0 
thesummary 
theSummary� 0 thelocation theLocation� 0 	theperson 	thePerson� 0 theurl theURL� 0 thephone thePhone� 0 thecall theCall�  0 thedescription theDescription� 0 thetime theTime� 0 theduration theDurationF Z ( - C�
�	�� B�� I U�� e� n� w�  ��� ��� ��� ��� � ����� ��� ��� ��� ��� �������"������:<��L������h��k�������������������������������������������!2��
�
 
appl
�	 
anot
� 
dnot
� 
iapp� 
� .registernull��� ��� null� 0 the_call_status  
� CSxxCSal
� CSxxCScl
� CSxxCSct
�  CSxxCShd
�� CSxxCSwt
�� CSxxCSac
�� CSxxCSid
�� CSxxCSbs�� 0 the_call_type  
�� CTxxCTvc
�� CTxxCTda
�� CTxxCTfx
�� CTxxCTv2�� 0 the_cid  �� 0 the_phone_number  ��  ��  �� 0 formatnumber formatNumber�� 0 	getperson 	getPerson
�� 
msng
�� 
pnam
�� 
ID  �� 0 getphone getPhone
�� 
spac
�� 
az18�� 0 thecid theCID�� 0 thetype theType�� 0 	thenumber 	theNumber�� 0 thedirection theDirection�� 0 	starttime 	startTime
�� .misccurdldt    ��� null�� 0 answeredtime answeredTime�� 0 endtime endTime�� 0 	theperson 	thePerson�� 0 thelocation theLocation�� 
�� 
TEXT
�� 
ret 
�� 
name
�� 
titl
�� 
desc
�� .notifygrnull��� ��� null�� 0 getcallrecord getCallRecord�� 0 englishtime englishTime�� $0 deletecallrecord deleteCallRecord�!F�E�O�E�O�kvE�O� *������ 	UO�Z�E�O��,E�O��  �E�Y q��  
a E�Y c�a   
a E�Y S�a   
a E�Y C�a   
a E�Y 3�a   
a E�Y #�a   
a E�Y �a   
a E�Y hOa E�O�a ,E�O�a   
a  E�Y 3�a !  
a "E�Y #�a #  
a $E�Y �a %  
a &E�Y hO�a ',E�Oa (E�O �a ),E�W X * +hOa ,a -lv�-�a .  
a /E�Y a 0E�Oa 1E�O*�k+ 2E�O*�k+ 3E�O�a 4  �a 5%E�Y Ga 6Z��a 7,%E�Oa 8�a 9,%E�O*��l+ :E�O�a 4 �_ ;%a <%�a =,%a >%E�Y hOa ?�a @�a A�a B�a C*j Da Ea 4a Fa 4a G�a H�a IE^ O] b   5GOa JE^ O�a 4 ] �%a K&E^ Y hO�a 4 ] _ L%�%a K&E^ Y hO� *a M�a N�_ ;%a O%�a P] � QUY �*�k+ RE^ O*j DE^ O�a S  _] a E,a 4  ] ] a E,FY hO� 9*a M�a N] a B,_ ;%a T%�a P] a H,_ L%] a G,%a K&� QUY z�a U  q] ] a F,FO*] a F,] a E,k+ VE^ O� =*a M�a N] a B,_ ;%a W%�a P] a H,_ L%a X%_ ;%] %a K&� QUO*�k+ YY h4 ��J����HI���� 0 getcallrecord getCallRecord�� ��J�� J  ���� 0 cid  ��  H ������ 0 cid  �� 0 acall aCallI ��������c��d
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 thecid theCID
�� 
spac�� 3 &b   [��l kh ��,�  �Y h[OY��O)j��%�%�%5 ��j����KL���� $0 deletecallrecord deleteCallRecord�� ��M�� M  ���� 0 cid  ��  K �������� 0 cid  �� 0 newcalls newCalls�� 0 acall aCallL ����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 thecid theCID
�� 
pcnt�� 9jvE�O *b   [��l kh ��,� ��,�6GY h[OY��O�Ec   6 �������NO���� 0 logcall logCall�� ��P�� P  ���� 0 thecall theCall��  N 	�������������������� 0 thecall theCall�� 0 
thesummary 
theSummary�� 0 thelog theLog�� (0 logunansweredcalls logUnansweredCalls�� 0 thelocation theLocation�� 0 	theperson 	thePerson�� 0 theurl theURL�� 0 thephone thePhone�� $0 logcalendartitle logCalendarTitleO 4�����������������������������������H<��Y����w��z����������������������������������� 0 thelog theLog�� 0 answeredtime answeredTime
�� 
msng�� 0 thedirection theDirection
�� 
spac
�� 
ret �� 0 endtime endTime�� 0 englishtime englishTime�� 0 thetype theType�� 0 	thenumber 	theNumber�� 0 formatnumber formatNumber�� 0 	getperson 	getPerson�� 0 shouldnotlog shouldNotLog
�� 
pnam
�� 
ID  �� 0 getphone getPhone
�� 
az18
�� 
kocl
�� 
wrev
�� 
insh�� 0 getcalendar getCalendar
�� 
prdt
�� 
wr11�� 0 
capitalize  
�� 
wr14
�� 
wr1s�� 0 	starttime 	startTime
�� 
wr5s
�� 
wr16
�� 
wr12�� �� 
�� .corecrel****      � null��n�E�O��,E�O��,�  &� hY hO��,�  
��%E�Y ��%E�Y ��%�%�%*��,��,k+ %�%E�O��,�  ��%�%E�Y !��,a   �a %�%E�Y �a %�%E�O��,a   �a %�%E�Y �a %�%E�O*�a ,k+ E�O*�a ,k+ E�O�E�O*�k+  hY hO��  �a %E�Y Ga Z��a ,%E�Oa �a ,%E�O*�a ,�l+ E�O�� ��%a  %�a !,%a "%E�Y hOa # C*a $a %a &)�k+ '6a (a ))�k+ *a +�a ,�a -,a .��,a /�a 0�a 1a 2 3U7 �������QR���� 0 getcalendar getCalendar�� ��S�� S  ���� 0 thetitle theTitle��  Q ���� 0 thetitle theTitleR ���T����������~�}�|
�� 
wresT  
�� 
wr02
�� 
rslt
�� 
leng
�� 
cobj
� 
kocl
�~ 
prdt�} 
�| .corecrel****      � null�� 2� .*�-�[�,\Z�81EO��,j ��k/EY *����l� 
U8 �{��z�yUV�x�{ 0 	getperson 	getPerson�z �wW�w W  �v�v 0 	thenumber 	theNumber�y  U �u�t�u 0 	thenumber 	theNumber�t 0 theuid theUIDV  I�s<�r�q�p�o�n
�s .seClLUabnull��� ��� obj 
�r 
azf4
�q kfrmID  �p  �o  
�n 
msng�x ) � 	�j E�UO� 	*��0EUW X  hO�9 �m��l�kXY�j�m 0 getphone getPhone�l �iZ�i Z  �h�g�h 0 	thenumber 	theNumber�g 0 	theperson 	thePerson�k  X �f�e�d�f 0 	thenumber 	theNumber�e 0 	theperson 	thePerson�d 0 aphone aPhoneY �c�b�a�`�_�^<�]�\�[�Z�Y�X�c 0 digitsof digitsOf
�b 
leng�a 
�` 
cha 
�_ 
bool
�^ 
ctxt
�] 
az20
�\ 
kocl
�[ 
cobj
�Z .corecnte****       ****
�Y 
az17
�X 
msng�j ^*�k+  E�O��,� 	 
��k/� �& �[�\[Zl\Z�2E�Y hO�Z )��-[��l kh )��,k+  � �Y h[OY��O�: �W+�V�U[\�T�W 0 ismember isMember�V �S]�S ]  �R�Q�R 0 	theentity 	theEntity�Q 0 thegroup theGroup�U  [ �P�O�N�P 0 	theentity 	theEntity�O 0 thegroup theGroup�N 0 agroup aGroup\ <�M�L�K�J�I�H�G
�M 
azf5
�L 
kocl
�K 
cobj
�J .corecnte****       ****
�I 
pcnt�H 0 ismember isMember
�G 
bool�T 7�Z 0��-[��l kh ��,� 
 *��l+ �& eY h[OY��Of; �FO�E�D^_�C�F 0 shouldnotlog shouldNotLog�E �B`�B `  �A�A 0 	theperson 	thePerson�D  ^ �@�?�>�@ 0 	theperson 	thePerson�? 0 loggroup logGroup�> 0 
nologgroup 
noLogGroup_ �=<�<�;�:�9�8�7
�= 
msng
�< 
azf5
�; kfrmname�: 0 ismember isMember
�9 
bool�8  �7  �C j��  	��Y hO� T !��	 )�*��0l+ �& eY hW X  hO "��	 )�*��0l+ �& eY hW X  hUOf< �6��5�4ab�3�6 0 digitsof digitsOf�5 �2c�2 c  �1�1 0 	thestring 	theString�4  a �0�/�.�-�0 0 	thestring 	theString�/ 0 validdigits validDigits�. 0 	newstring 	newString�- 0 adigit aDigitb ���,�+�*�)
�, 
cha 
�+ 
kocl
�* 
cobj
�) .corecnte****       ****�3 2�E�O�E�O %��-[��l kh �� 
��%E�Y h[OY��O�= �(��'�&de�%�( 0 formatnumber formatNumber�' �$f�$ f  �#�# 0 	thenumber 	theNumber�&  d �"�" 0 	thenumber 	theNumbere �!� �������������! 0 digitsof digitsOf
�  
leng
� 
msng� 
� 
cha 
� 
bool
� 
spac
� 
ctxt� 0 formatnumber formatNumber� 
� � �% �*�k+  E�O��,j  �Y }��,� 	 
��k/� �& ��%*�[�\[Zl\Z�2k+ 
%Y R��,�  $�[�\[Zk\Zm2�%*�[�\[Z�\Z�2k+ 
%Y (��,�  �[�\[Zk\Zm2�%�[�\[Z�\Z�2%Y hO�> �'��gh�� 0 englishcount englishCount� �i� i  ��� 0 howmany howMany� 0 
unitstring 
unitString�  g ���� 0 howmany howMany� 0 
unitstring 
unitString� 0 	thestring 	theStringh ��
A
� 
spac
�
 
TEXT� ��%�%�&E�O�k 
��%E�Y hO�? �	K��jk��	 0 englishtime englishTime� �l� l  �� 0 
numseconds 
numSeconds�  j ��� 0 
numseconds 
numSeconds� 0 theelements theElementsk �d� ��������������
� 
hour�  0 englishcount englishCount
�� 
min 
�� 
leng
�� 
bool
�� 
cobj
�� 
spac� �jvE�O�� *��"�l+ �6GO��#E�Y hO�� *��"�l+ �6GO��#E�Y hO�j
 	��,j �& *��l+ �6GY hO��,m  ��k/�%�%��l/%�%�%��m/%Y #��,l  ��k/�%�%�%��l/%Y ��k/E@ �������mn���� 0 
capitalize  �� ��o�� o  ���� 0 	thestring 	theString��  m ������ 0 	thestring 	theString�� 	0 ascii  n ������
��"������
�� 
leng
�� 
cha 
�� .sysoctonshor       TEXT
�� 
bool
�� .sysontocTEXT       shor
�� 
rest
�� 
TEXT�� P��,j E��k/j E�O��j 	 ��j �&  ��j �j j ��-�,�&%E�Y hY hO�ascr  ��ޭ