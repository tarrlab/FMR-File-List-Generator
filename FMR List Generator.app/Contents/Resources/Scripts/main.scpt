FasdUAS 1.101.10   ��   ��    k             l     ��  ��    t n "on open" handler specifies the code to be executed when the user drops a folder onto the application droplet     � 	 	 �   " o n   o p e n "   h a n d l e r   s p e c i f i e s   t h e   c o d e   t o   b e   e x e c u t e d   w h e n   t h e   u s e r   d r o p s   a   f o l d e r   o n t o   t h e   a p p l i c a t i o n   d r o p l e t   
  
 l     ��  ��    s m dropped_folder variable will be an array of POSIX file paths (Users:tarrlab:Desktop:) of the dropped folders     �   �   d r o p p e d _ f o l d e r   v a r i a b l e   w i l l   b e   a n   a r r a y   o f   P O S I X   f i l e   p a t h s   ( U s e r s : t a r r l a b : D e s k t o p : )   o f   t h e   d r o p p e d   f o l d e r s   ��  i         I     �� ��
�� .aevtodocnull  �    alis  o      ���� 0 dropped_folder  ��    k           l     ��  ��    b \ Set variable theScript to the path of the Ruby script located in the app's package contents     �   �   S e t   v a r i a b l e   t h e S c r i p t   t o   t h e   p a t h   o f   t h e   R u b y   s c r i p t   l o c a t e d   i n   t h e   a p p ' s   p a c k a g e   c o n t e n t s      r         n         1    ��
�� 
strq  l     ����  n        !   1    ��
�� 
psxp ! l     "���� " c      # $ # l    	 %���� % l    	 &���� & b     	 ' ( ' l     )���� ) I    �� * +
�� .earsffdralis        afdr *  f      + �� ,��
�� 
rtyp , m    ��
�� 
ctxt��  ��  ��   ( m     - - � . . * C o n t e n t s : L i s t M a k e r . r b��  ��  ��  ��   $ m   	 
��
�� 
alis��  ��  ��  ��    o      ���� 0 	thescript 	theScript   / 0 / l   ��������  ��  ��   0  1 2 1 l   �� 3 4��   3 l f Make empty arrays for the paths to the subject directories (each _BV folder) and the target FMR files    4 � 5 5 �   M a k e   e m p t y   a r r a y s   f o r   t h e   p a t h s   t o   t h e   s u b j e c t   d i r e c t o r i e s   ( e a c h   _ B V   f o l d e r )   a n d   t h e   t a r g e t   F M R   f i l e s 2  6 7 6 r     8 9 8 J    ����   9 o      ���� 0 subjectdirs subjectDirs 7  : ; : r     < = < J    ����   = o      ����  0 targetfmrfiles targetFMRfiles ;  > ? > l   ��������  ��  ��   ?  @ A @ l   �� B C��   B � � "repeat with" specifies code to be executed with each folder that was dropped onto the app (stored in dropped_folder array from on open handler)    C � D D"   " r e p e a t   w i t h "   s p e c i f i e s   c o d e   t o   b e   e x e c u t e d   w i t h   e a c h   f o l d e r   t h a t   w a s   d r o p p e d   o n t o   t h e   a p p   ( s t o r e d   i n   d r o p p e d _ f o l d e r   a r r a y   f r o m   o n   o p e n   h a n d l e r ) A  E F E X    � G�� H G k   , � I I  J K J l  , ,��������  ��  ��   K  L M L l  , ,�� N O��   N "  tell the Finder to do stuff    O � P P 8   t e l l   t h e   F i n d e r   t o   d o   s t u f f M  Q�� Q O   , � R S R k   0 � T T  U V U l  0 0��������  ��  ��   V  W X W l  0 0�� Y Z��   Y f ` Figure out if the dropped folder is a _BV folder, or if it's a folder containing the _BV folder    Z � [ [ �   F i g u r e   o u t   i f   t h e   d r o p p e d   f o l d e r   i s   a   _ B V   f o l d e r ,   o r   i f   i t ' s   a   f o l d e r   c o n t a i n i n g   t h e   _ B V   f o l d e r X  \ ] \ l  0 0�� ^ _��   ^ k e If the folder contains the _BV folder, then set the bv_folder variable to the path of the _BV folder    _ � ` ` �   I f   t h e   f o l d e r   c o n t a i n s   t h e   _ B V   f o l d e r ,   t h e n   s e t   t h e   b v _ f o l d e r   v a r i a b l e   t o   t h e   p a t h   o f   t h e   _ B V   f o l d e r ]  a b a Z   0 e c d�� e c I  0 @�� f��
�� .coredoexbool        obj  f l  0 < g���� g 6  0 < h i h n  0 3 j k j 3   1 3��
�� 
cfol k o   0 1���� 0 _folder   i E   4 ; l m l 1   5 7��
�� 
pnam m m   8 : n n � o o  _ B V��  ��  ��   d r   C Y p q p l  C W r���� r n   C W s t s 1   U W��
�� 
psxp t l  C U u���� u c   C U v w v l  C Q x���� x 6  C Q y z y n  C F { | { 3   D F��
�� 
cfol | o   C D���� 0 _folder   z E   G P } ~ } 1   H J��
�� 
pnam ~ m   K O   � � �  _ B V��  ��   w m   Q T��
�� 
TEXT��  ��  ��  ��   q o      ���� 0 	bv_folder  ��   e k   \ e � �  � � � l  \ \�� � ���   � j d If the dropped folder is a _BV folder, set the bv_folder variable to the path of the dropped folder    � � � � �   I f   t h e   d r o p p e d   f o l d e r   i s   a   _ B V   f o l d e r ,   s e t   t h e   b v _ f o l d e r   v a r i a b l e   t o   t h e   p a t h   o f   t h e   d r o p p e d   f o l d e r �  ��� � r   \ e � � � l  \ c ����� � c   \ c � � � n   \ _ � � � 1   ] _��
�� 
psxp � o   \ ]���� 0 _folder   � m   _ b��
�� 
TEXT��  ��   � o      ���� 0 	bv_folder  ��   b  � � � l  f f��������  ��  ��   �  � � � l  f f�� � ���   � < 6 Ask user to select a target FMR file for this subject    � � � � l   A s k   u s e r   t o   s e l e c t   a   t a r g e t   F M R   f i l e   f o r   t h i s   s u b j e c t �  � � � l  f f�� � ���   � | v Set variable targetFile to the path of chosen file, and display "Select target FMR file" as the prompt for the window    � � � � �   S e t   v a r i a b l e   t a r g e t F i l e   t o   t h e   p a t h   o f   c h o s e n   f i l e ,   a n d   d i s p l a y   " S e l e c t   t a r g e t   F M R   f i l e "   a s   t h e   p r o m p t   f o r   t h e   w i n d o w �  � � � l  f f�� � ���   � ; 5 Limit selectable files to ones with ".fmr" extension    � � � � j   L i m i t   s e l e c t a b l e   f i l e s   t o   o n e s   w i t h   " . f m r "   e x t e n s i o n �  � � � l  f f�� � ���   � E ? Set the location of the file browser to the current _BV folder    � � � � ~   S e t   t h e   l o c a t i o n   o f   t h e   f i l e   b r o w s e r   t o   t h e   c u r r e n t   _ B V   f o l d e r �  � � � r   f � � � � n   f � � � � 1   � ���
�� 
psxp � l  f � ����� � I  f ����� �
�� .sysostdfalis    ��� null��   � �� � �
�� 
prmp � J   j o � �  ��� � m   j m � � � � � , S e l e c t   t a r g e t   F M R   f i l e��   � �� � �
�� 
ftyp � J   r w � �  ��� � m   r u � � � � �  f m r��   � �� ���
�� 
dflc � J   z } � �  ��� � o   z {���� 0 	bv_folder  ��  ��  ��  ��   � o      ���� 0 
targetfile 
targetFile �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � f ` Copy path to target FMR file and path to bv_folder to the targetFMRfiles and subjectDirs arrays    � � � � �   C o p y   p a t h   t o   t a r g e t   F M R   f i l e   a n d   p a t h   t o   b v _ f o l d e r   t o   t h e   t a r g e t F M R f i l e s   a n d   s u b j e c t D i r s   a r r a y s �  � � � s   � � � � � o   � ����� 0 
targetfile 
targetFile � l      ����� � n       � � �  ;   � � � o   � �����  0 targetfmrfiles targetFMRfiles��  ��   �  ��� � s   � � � � � o   � ����� 0 	bv_folder   � l      ����� � n       � � �  ;   � � � o   � ����� 0 subjectdirs subjectDirs��  ��  ��   S m   , - � ��                                                                                  MACS  alis    b  blintz                     �J�rH+   �|
Finder.app                                                      F��R        ����  	                CoreServices    �K/�      �͒     �| Y� Y�  0blintz:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    b l i n t z  &System/Library/CoreServices/Finder.app  / ��  ��  �� 0 _folder   H o     ���� 0 dropped_folder   F  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � S M We need to send the targetFMRfiles and subjectDirs arrays to the Ruby script    � � � � �   W e   n e e d   t o   s e n d   t h e   t a r g e t F M R f i l e s   a n d   s u b j e c t D i r s   a r r a y s   t o   t h e   R u b y   s c r i p t �  � � � l  � ��� � ���   � = 7 To do this, each array must be sent as a single string    � � � � n   T o   d o   t h i s ,   e a c h   a r r a y   m u s t   b e   s e n t   a s   a   s i n g l e   s t r i n g �  � � � l  � ��� � ���   � y s In order to parse the string into separate paths in the Ruby script, we'll connect each item in the array with %%%    � � � � �   I n   o r d e r   t o   p a r s e   t h e   s t r i n g   i n t o   s e p a r a t e   p a t h s   i n   t h e   R u b y   s c r i p t ,   w e ' l l   c o n n e c t   e a c h   i t e m   i n   t h e   a r r a y   w i t h   % % % �  � � � r   � � � � � n  � � � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr � o      ���� 0 defaultdelim defaultDelim �  � � � r   � � � � � m   � � � � � � �  % % % � n      � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � r l Since the text item delimiters are set to %%%, if we say set variable subjectDirs to subjectDirs as string,    � � � � �   S i n c e   t h e   t e x t   i t e m   d e l i m i t e r s   a r e   s e t   t o   % % % ,   i f   w e   s a y   s e t   v a r i a b l e   s u b j e c t D i r s   t o   s u b j e c t D i r s   a s   s t r i n g , �  � � � l  � ��� � ���   � J D we'll get a string with each array member: path1%%%path2%%%path3%%%    � � � � �   w e ' l l   g e t   a   s t r i n g   w i t h   e a c h   a r r a y   m e m b e r :   p a t h 1 % % % p a t h 2 % % % p a t h 3 % % % �  � � � r   � � � � � c   � �   o   � ��� 0 subjectdirs subjectDirs m   � ��~
�~ 
TEXT � o      �}�} 0 subjectdirs subjectDirs �  r   � � c   � � o   � ��|�|  0 targetfmrfiles targetFMRfiles m   � ��{
�{ 
TEXT o      �z�z  0 targetfmrfiles targetFMRfiles 	 l  � ��y�x�w�y  �x  �w  	 

 l  � ��v�v   ? 9 Return the text item delimiters to the normal delimiters    � r   R e t u r n   t h e   t e x t   i t e m   d e l i m i t e r s   t o   t h e   n o r m a l   d e l i m i t e r s  r   � � o   � ��u�u 0 defaultdelim defaultDelim n      1   � ��t
�t 
txdl 1   � ��s
�s 
ascr  O   � � k   � �  l  � ��r�r   � � Ask the user to choose a name for the text file that will be created, with no default name (this prevents "untitled" from appearing as default name)    �*   A s k   t h e   u s e r   t o   c h o o s e   a   n a m e   f o r   t h e   t e x t   f i l e   t h a t   w i l l   b e   c r e a t e d ,   w i t h   n o   d e f a u l t   n a m e   ( t h i s   p r e v e n t s   " u n t i t l e d "   f r o m   a p p e a r i n g   a s   d e f a u l t   n a m e ) �q r   � � !  n   � �"#" 1   � ��p
�p 
psxp# l  � �$�o�n$ I  � ��m�l%
�m .sysonwflfile    ��� null�l  % �k&'
�k 
prmt& m   � �(( �)) Z S e l e c t   a   n a m e   a n d   l o c a t i o n   f o r   t h e   t e x t   f i l e .' �j*�i
�j 
dfnm* m   � �++ �,,  �i  �o  �n  ! o      �h�h 0 textfilename textFileName�q   m   � �--�                                                                                  MACS  alis    b  blintz                     �J�rH+   �|
Finder.app                                                      F��R        ����  	                CoreServices    �K/�      �͒     �| Y� Y�  0blintz:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    b l i n t z  &System/Library/CoreServices/Finder.app  / ��   ./. l  � ��g�f�e�g  �f  �e  / 010 l  � ��d23�d  2 ] W Now that we have all the paths, we ask the script to run the Ruby script, ListMaker.rb   3 �44 �   N o w   t h a t   w e   h a v e   a l l   t h e   p a t h s ,   w e   a s k   t h e   s c r i p t   t o   r u n   t h e   R u b y   s c r i p t ,   L i s t M a k e r . r b1 565 l  � ��c78�c  7 D > Send variables to the ruby script by separating with "" and &   8 �99 |   S e n d   v a r i a b l e s   t o   t h e   r u b y   s c r i p t   b y   s e p a r a t i n g   w i t h   " "   a n d   &6 :�b: I  ��a;�`
�a .sysoexecTEXT���     TEXT; b   � <=< b   � �>?> b   � �@A@ b   � �BCB b   � �DED b   � �FGF b   � �HIH b   � �JKJ m   � �LL �MM 
 r u b y  K o   � ��_�_ 0 	thescript 	theScriptI m   � �NN �OO   G o   � ��^�^ 0 subjectdirs subjectDirsE m   � �PP �QQ    "C o   � ��]�]  0 targetfmrfiles targetFMRfilesA m   � �RR �SS  "   "? o   � ��\�\ 0 textfilename textFileName= m   � �TT �UU  "�`  �b  ��       �[VW�[  V �Z
�Z .aevtodocnull  �    alisW �Y �X�WXY�V
�Y .aevtodocnull  �    alis�X 0 dropped_folder  �W  X 	�U�T�S�R�Q�P�O�N�M�U 0 dropped_folder  �T 0 	thescript 	theScript�S 0 subjectdirs subjectDirs�R  0 targetfmrfiles targetFMRfiles�Q 0 _folder  �P 0 	bv_folder  �O 0 
targetfile 
targetFile�N 0 defaultdelim defaultDelim�M 0 textfilename textFileNameY (�L�K�J -�I�H�G�F�E�D ��CZ�B n�A �@�? ��> ��=�<�;�:�9 ��8(�7+�6�5LNPRT�4
�L 
rtyp
�K 
ctxt
�J .earsffdralis        afdr
�I 
alis
�H 
psxp
�G 
strq
�F 
kocl
�E 
cobj
�D .corecnte****       ****
�C 
cfolZ  
�B 
pnam
�A .coredoexbool        obj 
�@ 
TEXT
�? 
prmp
�> 
ftyp
�= 
dflc�< 
�; .sysostdfalis    ��� null
�: 
ascr
�9 
txdl
�8 
prmt
�7 
dfnm�6 
�5 .sysonwflfile    ��� null
�4 .sysoexecTEXT���     TEXT�V)��l �%�&�,�,E�OjvE�OjvE�O z�[��l 	kh � c��.�[�,\Z�@1j  ��.�[�,\Za @1a &�,E�Y ��,a &E�O*a a kva a kva �kva  �,E�O��6GO��6GU[OY��O_ a ,E�Oa _ a ,FO�a &E�O�a &E�O�_ a ,FO� *a a a a a   !�,E�UOa "�%a #%�%a $%�%a %%�%a &%j ' ascr  ��ޭ