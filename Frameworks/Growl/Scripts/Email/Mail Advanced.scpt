FasdUAS 1.101.10   ��   ��    k             i        I      �� 	���� 60 getpictureforemailaddress getPictureForEmailAddress 	  
�� 
 o      ���� (0 personemailaddress personEmailAddress��  ��    O     +    Q    *  ��  k    !       r        l    ��  6      4   �� 
�� 
azf4  m   	 
����   E        l    ��  n        1    ��
�� 
az17  2   ��
�� 
az21��    o    ���� (0 personemailaddress personEmailAddress��    o      ���� 0 	theperson 	thePerson      r         n     ! " ! 1    ��
�� 
az50 " o    ���� 0 	theperson 	thePerson   o      ���� 0 thepiccy thePiccy   #�� # L    ! $ $ o     ���� 0 thepiccy thePiccy��    R      ������
�� .ascrerr ****      � ****��  ��  ��    m      % %�null     ߀��  ^Address Book.app0�L��� 7���P    g    )       �(�K� ���p�adrb  alis    V  WideBoy                    ��.1H+    ^Address Book.app                                                 ����        ����  	                Applications    ��.1      ���      ^  %WideBoy:Applications:Address Book.app   "  A d d r e s s   B o o k . a p p    W i d e B o y  Applications/Address Book.app   / ��     & ' & l     ������  ��   '  ( ) ( l     ������  ��   )  * + * l     ������  ��   +  ,�� , w       - . - i     / 0 / I     �� 1 2
�� .emalcpmanull���   @ mssg 1 o      ���� 0 themessages theMessages 2 �� 3��
�� 
pmar 3 o      ���� 0 therule theRule��   0 O     4 5 4 X    6�� 7 6 Q    8 9�� 8 k    � : :  ; < ; l   �� =��   = 6 0 If this is not being executed as a rule action,    <  > ? > l   �� @��   @ 6 0 getting the name of theRule variable will fail.    ?  A B A r     C D C n     E F E 1    ��
�� 
pnam F o    ���� 0 therule theRule D o      ���� 0 therulename theRuleName B  G H G l   ������  ��   H  I J I r    " K L K n      M N M 1     ��
�� 
subj N o    ���� 0 thismessage thisMessage L o      ���� 0 
thesubject 
theSubject J  O P O r   # ( Q R Q n   # & S T S 1   $ &��
�� 
sndr T o   # $���� 0 thismessage thisMessage R o      ���� 0 	thesender 	theSender P  U V U r   ) . W X W n   ) , Y Z Y 1   * ,��
�� 
isjk Z o   ) *���� 0 thismessage thisMessage X o      ���� 0 thejunkstatus theJunkStatus V  [ \ [ r   / 4 ] ^ ] n   / 2 _ ` _ 1   0 2��
�� 
isrd ` o   / 0���� 0 thismessage thisMessage ^ o      ���� 0 thereadstatus theReadStatus \  a b a l  5 5������  ��   b  c d c l  5 5�� e��   e + %	We don't need to be notified of Junk    d  f g f Z   5 G h i���� h l  5 8 j�� j =  5 8 k l k o   5 6���� 0 thejunkstatus theJunkStatus l m   6 7��
�� boovtrue��   i k   ; C m m  n o n I  ; @�� p��
�� .ascrcmnt****      � **** p l  ; < q�� q m   ; < r r 
 junk   ��  ��   o  s�� s L   A C����  ��  ��  ��   g  t u t l  H H������  ��   u  v w v l  H H�� x��   x ? 9	Extract the email address and display name of the sender    w  y z y r   H Q { | { I  H O�� }��
�� .emaleafnTEXT        TEXT } n   H K ~  ~ 1   I K��
�� 
sndr  o   H I���� 0 thismessage thisMessage��   | o      ����  0 thesendersname theSendersName z  � � � r   R [ � � � I  R Y�� ���
�� .emaleauaTEXT        TEXT � n   R U � � � 1   S U��
�� 
sndr � o   R S���� 0 thismessage thisMessage��   � o      ���� &0 thesendersaddress theSendersAddress �  � � � l  \ \�� ���   �  	Find the sender's piccy    �  � � � r   \ d � � � n  \ b � � � I   ] b�� ����� 60 getpictureforemailaddress getPictureForEmailAddress �  ��� � o   ] ^���� &0 thesendersaddress theSendersAddress��  ��   �  f   \ ] � o      ���� &0 thepersonspicture thePersonsPicture �  � � � l  e e������  ��   �  � � � l  e e�� ���   � S M Check for spam not caught by Mail - but caught by Mail Provider's Anti-Spam.    �  � � � l  e e�� ���   � 6 0	Your provider's warning string maybe different.    �  ��� � Z   e � � ����� � l  e q ��� � F   e q � � � l  e h ��� � >  e h � � � o   e f���� 0 thejunkstatus theJunkStatus � m   f g��
�� boovtrue��   � l  k o ��� � H   k o � � E   k n � � � o   k l���� 0 
thesubject 
theSubject � m   l m � �  
[**SPAM**]   ��  ��   � Z   t � � ����� � l  t w ��� � =  t w � � � o   t u���� 0 thereadstatus theReadStatus � m   u v��
�� boovfals��   � O   z � � � � k   � � � �  � � � r   � � � � � J   � � � �  ��� � m   � � � �  Mail Received   ��   � o      ����  0 myallnoteslist myAllNotesList �  � � � I  � ����� �
�� .registernull��� ��� null��   � �� � �
�� 
appl � m   � � � �  Mail Notification Script    � �� � �
�� 
anot � o   � �����  0 myallnoteslist myAllNotesList � �� � �
�� 
dnot � o   � �����  0 myallnoteslist myAllNotesList � �� ���
�� 
iapp � m   � � � �  Mail.app   ��   �  ��� � Q   � � � � � � I  � ����� �
�� .notifygrnull��� ��� null��   � �� � �
�� 
name � m   � � � �  Mail Received    � �� � �
�� 
titl � o   � �����  0 thesendersname theSendersName � �� � �
�� 
desc � o   � ����� 0 
thesubject 
theSubject � �� � �
�� 
appl � m   � � � �  Mail Notification Script    � �� ���
�� 
imag � o   � ����� &0 thepersonspicture thePersonsPicture��   � R      � ��~
� .ascrerr ****      � **** � l      ��} � o      �|�| 0 errormessage errorMessage�}  �~   � l  � � � � � I  � ��{�z �
�{ .notifygrnull��� ��� null�z   � �y � �
�y 
name � m   � � � �  Mail Received    � �x � �
�x 
titl � o   � ��w�w  0 thesendersname theSendersName � �v � �
�v 
desc � o   � ��u�u 0 
thesubject 
theSubject � �t � �
�t 
appl � m   � � � �  Mail Notification Script    � �s ��r
�s 
iapp � m   � � � �  mail.app   �r   � ) # user without picture in adressbook   ��   � m   z } � �Lnull     ߀�� O��GrowlHelperApp.appL��� 7���` 
 � g @   )       �(�K� ��Ӏ�GRRR   alis    �  WideBoy                    ��.1H+   O��GrowlHelperApp.app                                              O���)��        ����  	                	Resources     ��.1      �)��     O�� O�� O�� +m �� ��  |  bWideBoy:Users:diggory:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app  &  G r o w l H e l p e r A p p . a p p    W i d e B o y  ZUsers/diggory/Library/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  /    ��  ��  ��  ��  ��  ��   9 R      �q�p�o
�q .ascrerr ****      � ****�p  �o  ��  �� 0 thismessage thisMessage 7 o    �n�n 0 themessages theMessages 5 m      . .�null     ߀��  ^Mail.app��� � �0�L��utxt�T���� g   ���    �T`��Q�<���`D emal  alis    6  WideBoy                    ��.1H+    ^Mail.app                                                         F�a��        ����  	                Applications    ��.1      �a��      ^  WideBoy:Applications:Mail.app     M a i l . a p p    W i d e B o y  Applications/Mail.app   / ��  ��       �m � � ��m   � �l�k�l 60 getpictureforemailaddress getPictureForEmailAddress
�k .emalcpmanull���   @ mssg � �j �i�h � ��g�j 60 getpictureforemailaddress getPictureForEmailAddress�i �f ��f  �  �e�e (0 personemailaddress personEmailAddress�h   � �d�c�b�d (0 personemailaddress personEmailAddress�c 0 	theperson 	thePerson�b 0 thepiccy thePiccy �  %�a ��`�_�^�]�\
�a 
azf4 �  
�` 
az21
�_ 
az17
�^ 
az50�]  �\  �g ,� ( *�k/�[�-�,\Z�@1E�O��,E�O�W X  hU � �[ 0�Z�Y � ��X
�[ .emalcpmanull���   @ mssg�Z 0 themessages theMessages�Y �W�V�U
�W 
pmar�V 0 therule theRule�U   � �T�S�R�Q�P�O�N�M�L�K�J�I�H�T 0 themessages theMessages�S 0 therule theRule�R 0 thismessage thisMessage�Q 0 therulename theRuleName�P 0 
thesubject 
theSubject�O 0 	thesender 	theSender�N 0 thejunkstatus theJunkStatus�M 0 thereadstatus theReadStatus�L  0 thesendersname theSendersName�K &0 thesendersaddress theSendersAddress�J &0 thepersonspicture thePersonsPicture�I  0 myallnoteslist myAllNotesList�H 0 errormessage errorMessage � ( .�G�F�E�D�C�B�A�@ r�?�>�=�< ��; � ��: ��9�8�7 ��6�5�4 ��3�2 ��1�0�/�.�- � � ��,
�G 
kocl
�F 
cobj
�E .corecnte****       ****
�D 
pnam
�C 
subj
�B 
sndr
�A 
isjk
�@ 
isrd
�? .ascrcmnt****      � ****
�> .emaleafnTEXT        TEXT
�= .emaleauaTEXT        TEXT�< 60 getpictureforemailaddress getPictureForEmailAddress
�; 
bool
�: 
appl
�9 
anot
�8 
dnot
�7 
iapp�6 
�5 .registernull��� ��� null
�4 
name
�3 
titl
�2 
desc
�1 
imag�0 

�/ .notifygrnull��� ��� null�. 0 errormessage errorMessage�-  �,  �X��[��l kh  ��,E�O��,E�O��,E�O��,E�O��,E�O�e  �j 
OhY hO��,j E�O��,j E�O)�k+ E�O�e	 ���& ��f  {a  qa kvE�O*a a a �a �a a a  O $*a a a �a �a a a �a   !W (X " #*a a $a �a �a a %a a &a   !UY hY hW X ' #h[OY�Uascr  ��ޭ