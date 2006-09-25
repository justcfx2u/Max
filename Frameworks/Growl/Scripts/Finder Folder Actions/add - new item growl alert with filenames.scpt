FasdUAS 1.101.10   ��   ��    k             l      �� ��   \V
New Item Alert with Filenames


For the Folder Notification scripts to work, they have to be placed in "Scripts/Folder Action Scripts" ... either in /Library or ~/Library. After placing them there, right-click on the folder for which you want notifications and choose "Attach a Folder Action."


Based on ADD - NEW ITEM ALERT (�2002 Apple Computer)

This Folder Action script is designed for use with Mac OS X version 10.2 and higher.

This Folder Action handler is triggered whenever items are added to the attached folder.  The script will display an alert 
containing the number of items added
       	  l     ������  ��   	  
  
 i         I     ��  
�� .facofget****      � ****  o      ���� 0 this_folder    �� ��
�� 
flst  o      ���� 0 added_items  ��    Q     �  ��  k    �       O    2    k    1       l   �� ��    !  get the name of the folder         r        l   
  ��   n    
 ! " ! 1    
��
�� 
pnam " o    ���� 0 this_folder  ��    l      #�� # o      ���� 0 folder_name  ��     $ % $ l   ������  ��   %  & ' & l   �� (��   ( #  get names of the added files    '  ) * ) r     + , + m     - -       , o      ���� 0 thefiles theFiles *  .�� . X    1 /�� 0 / r   ! , 1 2 1 b   ! * 3 4 3 b   ! $ 5 6 5 o   ! "���� 0 thefiles theFiles 6 o   " #��
�� 
ret  4 l  $ ) 7�� 7 c   $ ) 8 9 8 n   $ ' : ; : 1   % '��
�� 
dnam ; o   $ %���� 0 thefile theFile 9 m   ' (��
�� 
ctxt��   2 o      ���� 0 thefiles theFiles�� 0 thefile theFile 0 o    ���� 0 added_items  ��    m     < <�null     ߀��  �
Finder.app��`    �%P<����ր���� }�0   )       �6(�$|���ְ ~MACS   alis    f  vivibook                   ��.mH+    �
Finder.app                                                       Cp�g~5        ����  	                CoreServices    ��f�      �gą      �  �  �  /vivibook:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    v i v i b o o k  &System/Library/CoreServices/Finder.app  / ��     = > = l  3 3������  ��   >  ? @ ? l  3 3�� A��   A 4 . figure out the phrasology of the notification    @  B C B r   3 : D E D l  3 8 F�� F n   3 8 G H G m   6 8��
�� 
nmbr H n  3 6 I J I 2  4 6��
�� 
cobj J l  3 4 K�� K o   3 4���� 0 added_items  ��  ��   E l      L�� L o      ���� 0 
item_count  ��   C  M N M Z   ; R O P�� Q O ?  ; > R S R l  ; < T�� T o   ; <���� 0 
item_count  ��   S m   < =����  P k   A H U U  V W V r   A D X Y X m   A B Z Z  s    Y o      ���� 0 	plurality   W  [�� [ r   E H \ ] \ m   E F ^ ^ 
 have    ] o      ���� 0 	have_verb  ��  ��   Q k   K R _ _  ` a ` r   K N b c b m   K L d d       c o      ���� 0 	plurality   a  e�� e r   O R f g f m   O P h h 	 has    g o      ���� 0 	have_verb  ��   N  i j i l  S S������  ��   j  k l k l  S S�� m��   m   build notification text    l  n o n r   S \ p q p b   S Z r s r b   S X t u t b   S V v w v m   S T x x  New File    w o   T U���� 0 	plurality   u m   V W y y 
  in     s l  X Y z�� z o   X Y���� 0 folder_name  ��   q o      ���� 0 thetitle theTitle o  { | { r   ] t } ~ } b   ] r  �  b   ] p � � � b   ] l � � � b   ] j � � � b   ] f � � � b   ] d � � � l  ] ` ��� � c   ] ` � � � l  ] ^ ��� � o   ] ^���� 0 
item_count  ��   � m   ^ _��
�� 
ctxt��   � m   ` c � �   item    � o   d e���� 0 	plurality   � m   f i � �       � o   j k���� 0 	have_verb   � m   l o � �   been added:    � o   p q���� 0 thefiles theFiles ~ o      ���� 0 thetext theText |  � � � l  u u������  ��   �  � � � l  u u�� ���   �   rawr!    �  � � � I   u ��� ����� *0 dofolderactiongrowl doFolderActionGrowl �  � � � m   v y � �  New Item    �  � � � o   y z���� 0 thetitle theTitle �  � � � o   z {���� 0 thetext theText �  ��� � o   { |���� 0 this_folder  ��  ��   �  ��� � l  � �������  ��  ��    R      ������
�� .ascrerr ****      � ****��  ��  ��     � � � l     ������  ��   �  ��� � i     � � � I      �� ����� *0 dofolderactiongrowl doFolderActionGrowl �  � � � o      ���� 0 	notifname 	notifName �  � � � o      ���� 0 thetitle theTitle �  � � � o      ���� 0 thetext theText �  ��� � o      ���� *0 thefilefornotificon theFileForNotifIcon��  ��   � k     2 � �  � � � l     ������  ��   �  � � � r      � � � m      � �  Folder Actions    � o      ���� 0 appname appName �  � � � r     � � � m     � �  Folder Actions Setup    � o      ���� 0 appicon appIcon �  � � � r     � � � J     � �  ��� � m    	 � �  New Item   ��   � o      ���� 0 	allnotifs 	allNotifs �  � � � l   ������  ��   �  � � � O    0 � � � k    / � �  � � � I   ���� �
�� .registernull��� ��� null��   � �� � �
�� 
appl � o    ���� 0 appname appName � �� � �
�� 
anot � o    ���� 0 	allnotifs 	allNotifs � �� � �
�� 
dnot � o    ���� 0 	allnotifs 	allNotifs � �� ���
�� 
iapp � o    ���� 0 appicon appIcon��   �  ��� � I    /���� �
�� .notifygrnull��� ��� null��   � �� � �
�� 
name � o   " #���� 0 	notifname 	notifName � �� � �
�� 
titl � o   $ %���� 0 thetitle theTitle � �� � �
�� 
appl � o   & '���� 0 appname appName � �� � �
�� 
desc � o   ( )���� 0 thetext theText � �� ���
�� 
ifil � o   * +���� *0 thefilefornotificon theFileForNotifIcon��  ��   � m     � �&null     ߀�� ��GrowlHelperApp.app%P<������  � }�@   )       �6(�$|����� ~GRRR   alis    �  vivibook                   ��.mH+   ��GrowlHelperApp.app                                              �޾�j�        ����  	                	Resources     ��f�      ���3     �� �� ��     Uvivibook:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app   &  G r o w l H e l p e r A p p . a p p    v i v i b o o k  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��   �  ��� � l  1 1������  ��  ��  ��       �� � � ���   � ���
�� .facofget****      � ****� *0 dofolderactiongrowl doFolderActionGrowl � �~ �}�| � ��{
�~ .facofget****      � ****�} 0 this_folder  �| �z�y�x
�z 
flst�y 0 added_items  �x   � 
�w�v�u�t�s�r�q�p�o�n�w 0 this_folder  �v 0 added_items  �u 0 folder_name  �t 0 thefiles theFiles�s 0 thefile theFile�r 0 
item_count  �q 0 	plurality  �p 0 	have_verb  �o 0 thetitle theTitle�n 0 thetext theText �  <�m -�l�k�j�i�h�g�f Z ^ d h x y � � � ��e�d�c�b
�m 
pnam
�l 
kocl
�k 
cobj
�j .corecnte****       ****
�i 
ret 
�h 
dnam
�g 
ctxt
�f 
nmbr�e �d *0 dofolderactiongrowl doFolderActionGrowl�c  �b  �{ � �� ,��,E�O�E�O �[��l kh ��%��,�&%E�[OY��UO��-�,E�O�k �E�O�E�Y 	�E�O�E�O�%�%�%E�O��&a %�%a %�%a %�%E�O*a ���a + OPW X  h � �a ��`�_ � ��^�a *0 dofolderactiongrowl doFolderActionGrowl�` �] ��]  �  �\�[�Z�Y�\ 0 	notifname 	notifName�[ 0 thetitle theTitle�Z 0 thetext theText�Y *0 thefilefornotificon theFileForNotifIcon�_   � �X�W�V�U�T�S�R�X 0 	notifname 	notifName�W 0 thetitle theTitle�V 0 thetext theText�U *0 thefilefornotificon theFileForNotifIcon�T 0 appname appName�S 0 appicon appIcon�R 0 	allnotifs 	allNotifs �  � � � ��Q�P�O�N�M�L�K�J�I�H�G�F
�Q 
appl
�P 
anot
�O 
dnot
�N 
iapp�M 
�L .registernull��� ��� null
�K 
name
�J 
titl
�I 
desc
�H 
ifil�G 

�F .notifygrnull��� ��� null�^ 3�E�O�E�O�kvE�O� *����� 	O*������� UOPascr  ��ޭ