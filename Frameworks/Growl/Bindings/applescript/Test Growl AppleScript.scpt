FasdUAS 1.101.10   ��   ��    l    � ��  O     �    k    �     	  l   �� 
��   
 1 + Make a list of all the notification types     	     l   �� ��    ' ! that this script will ever send:         r    
    l 	   ��  J           m        Test Notification      ��  m        Another Test Notification   ��  ��    l      ��  o      ���� ,0 allnotificationslist allNotificationsList��        l   ������  ��        l   �� ��    ( " Make a list of the notifications           l   �� !��   ! - ' that will be enabled by default.             " # " l   �� $��   $ 9 3 Those not enabled by default can be enabled later     #  % & % l   �� '��   ' 7 1 in the 'Applications' tab of the growl prefpane.    &  ( ) ( r     * + * l 	   ,�� , J     - -  .�� . m     / /  Test Notification   ��  ��   + l      0�� 0 o      ���� 40 enablednotificationslist enabledNotificationsList��   )  1 2 1 l   ������  ��   2  3 4 3 l   �� 5��   5 &   Register our script with growl.    4  6 7 6 l   �� 8��   8 7 1 You can optionally (as here) set a default icon     7  9 : 9 l   �� ;��   ; ' ! for this script's notifications.    :  < = < I   ���� >
�� .registernull��� ��� null��   > �� ? @
�� 
appl ? l 	   A�� A m     B B  Growl AppleScript Sample   ��   @ �� C D
�� 
anot C l 
   E�� E o    ���� ,0 allnotificationslist allNotificationsList��   D �� F G
�� 
dnot F l 
   H�� H o    ���� 40 enablednotificationslist enabledNotificationsList��   G �� I��
�� 
iapp I m     J J  Script Editor   ��   =  K L K l   ������  ��   L  M N M l   �� O��   O #        Send a Notification...    N  P Q P l   ������  ��   Q  R S R l   ������  ��   S  T U T l   �� V��   V  
	No icon.	    U  W X W I   6���� Y
�� .notifygrnull��� ��� null��   Y �� Z [
�� 
name Z l 	 ! " \�� \ m   ! " ] ]  Test Notification   ��   [ �� ^ _
�� 
titl ^ l 	 % ( `�� ` m   % ( a a  Test Notification   ��   _ �� b c
�� 
desc b l 	 + . d�� d m   + . e e  No Icon.   ��   c �� f��
�� 
appl f m   / 2 g g  Growl AppleScript Sample   ��   X  h i h l  7 7������  ��   i  j k j l  7 7�� l��   l  	Absolute path icon.	    k  m n m I  7 X���� o
�� .notifygrnull��� ��� null��   o �� p q
�� 
name p l 	 9 < r�� r m   9 < s s  Test Notification   ��   q �� t u
�� 
titl t l 	 ? B v�� v m   ? B w w  Test Notification   ��   u �� x y
�� 
desc x l 	 E H z�� z m   E H { {  Icon from POSIX path.   ��   y �� | }
�� 
appl | m   I L ~ ~  Growl AppleScript Sample    } �� ��
�� 
iurl  m   O R � � P J/System/Library/CoreServices/loginwindow.app/Contents/Resources/LogOut.png   ��   n  � � � l  Y Y������  ��   �  � � � l  Y Y�� ���   �  	 icon from alias.	    �  � � � I  Y ~���� �
�� .notifygrnull��� ��� null��   � �� � �
�� 
name � l 	 [ ^ ��� � m   [ ^ � �  Test Notification   ��   � �� � �
�� 
titl � l 	 a d ��� � m   a d � �  Test Notification   ��   � �� � �
�� 
desc � l 	 g j ��� � m   g j � �  Icon from alias.   ��   � �� � �
�� 
appl � m   k n � �  Growl AppleScript Sample    � �� ���
�� 
iurl � l  q x ��� � c   q x � � � m   q t � � P J:System:Library:CoreServices:loginwindow.app:Contents:Resources:LogOut.png    � m   t w��
�� 
alis��  ��   �  � � � l   ������  ��   �  � � � l   �� ���   �  		delay 10    �  � � � l   ������  ��   �  � � � l   �� ���   �  	Icon Of File    �  � � � I   ����� �
�� .notifygrnull��� ��� null��   � �� � �
�� 
name � l 	 � � ��� � m   � � � �  Test Notification   ��   � �� � �
�� 
titl � l 	 � � ��� � m   � � � �  Test Notification   ��   � �� � �
�� 
desc � l 	 � � ��� � m   � � � �   Icon of File. (and Sticky)   ��   � �� � �
�� 
appl � m   � � � �  Growl AppleScript Sample    � �� � �
�� 
ifil � m   � � � �  ~/    � �� ���
�� 
stck � m   � ���
�� boovtrue��   �  � � � l  � �������  ��   �  ��� � l  � �������  ��  ��    m      � �Lnull     ߀�� x۟GrowlHelperApp.app!@�����`    u�   )       ��(� l���ϐvGRRR   alis    �  WideBoy                    ��.1H+   y��GrowlHelperApp.app                                              y�پ���        ����  	                	Resources     ��.1      ����     y�� y�� y�� +m �� ��  |  bWideBoy:Users:diggory:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app  &  G r o w l H e l p e r A p p . a p p    W i d e B o y  ZUsers/diggory/Library/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  /    ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �  ����  ��  ��   �   � + �  �� /���� B������ J������ ]�� a�� e g�� s w { ~�� ��� � � � � �� � � � ��~ ��}�|�� ,0 allnotificationslist allNotificationsList�� 40 enablednotificationslist enabledNotificationsList
�� 
appl
�� 
anot
�� 
dnot
�� 
iapp�� 
�� .registernull��� ��� null
�� 
name
�� 
titl
�� 
desc
�� .notifygrnull��� ��� null
�� 
iurl�� 

� 
alis
�~ 
ifil
�} 
stck�| �� �� ���lvE�O�kvE�O*��������� O*��a a a a �a � O*�a a a a a �a a a a  O*�a a a a a �a  a a !a "&a  O*�a #a a $a a %�a &a 'a (a )ea * OPU ascr  ��ޭ