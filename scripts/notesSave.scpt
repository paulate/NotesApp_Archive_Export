FasdUAS 1.101.10   ��   ��    k             l    	 ����  r     	  	  c      
  
 l     ����  I    ������
�� .sysostflalis    ��� null��  ��  ��  ��    m    ��
�� 
TEXT 	 o      ���� 0 exportfolder exportFolder��  ��        l     ��������  ��  ��        l     ��  ��      Simple text replacing     �   ,   S i m p l e   t e x t   r e p l a c i n g      i         I      �� ���� 0 replacetext replaceText      o      ���� 0 find        o      ���� 0 replace     ��  o      ���� 0 subject  ��  ��    k     &        r      ! " ! n      # $ # 1    ��
�� 
txdl $ 1     ��
�� 
ascr " o      ���� 0 prevtids prevTIDs    % & % r     ' ( ' o    ���� 0 find   ( n       ) * ) 1    
��
�� 
txdl * 1    ��
�� 
ascr &  + , + r     - . - n     / 0 / 2   ��
�� 
citm 0 o    ���� 0 subject   . o      ���� 0 subject   ,  1 2 1 l   ��������  ��  ��   2  3 4 3 r     5 6 5 o    ���� 0 replace   6 n       7 8 7 1    ��
�� 
txdl 8 1    ��
�� 
ascr 4  9 : 9 r     ; < ; b     = > = m     ? ? � @ @   > o    ���� 0 subject   < o      ���� 0 subject   :  A B A r    # C D C o    ���� 0 prevtids prevTIDs D n       E F E 1     "��
�� 
txdl F 1     ��
�� 
ascr B  G H G l  $ $��������  ��  ��   H  I�� I L   $ & J J o   $ %���� 0 subject  ��     K L K l     ��������  ��  ��   L  M N M l     ��������  ��  ��   N  O P O l     �� Q R��   Q ? 9 Get an HTML file to save the note in.  We have to escape    R � S S r   G e t   a n   H T M L   f i l e   t o   s a v e   t h e   n o t e   i n .     W e   h a v e   t o   e s c a p e P  T U T l     �� V W��   V , & the colons or AppleScript gets upset.    W � X X L   t h e   c o l o n s   o r   A p p l e S c r i p t   g e t s   u p s e t . U  Y Z Y i     [ \ [ I      �� ]���� (0 notenametofilepath noteNameToFilePath ]  ^�� ^ o      ���� 0 notename noteName��  ��   \ k     / _ _  ` a ` p       b b ������ 0 exportfolder exportFolder��   a  c d c r      e f e l     g���� g n      h i h 1    ��
�� 
leng i o     ���� 0 notename noteName��  ��   f o      ���� 0 	strlength 	strLength d  j k j l   ��������  ��  ��   k  l m l Z     n o���� n ?    	 p q p o    ���� 0 	strlength 	strLength q m    ���� � o r     r s r n     t u t 7   �� v w
�� 
ctxt v m    ����  w m    ���� � u o    ���� 0 notename noteName s o      ���� 0 notename noteName��  ��   m  x y x l   ��������  ��  ��   y  z { z r    , | } | l   * ~���� ~ b    *  �  b    ( � � � o    ���� 0 exportfolder exportFolder � I    '�� ����� 0 replacetext replaceText �  � � � m     ! � � � � �  : �  � � � m   ! " � � � � �  _ �  ��� � o   " #���� 0 notename noteName��  ��   � m   ( ) � � � � � 
 . h t m l��  ��   } o      ���� 0 filename fileName {  ��� � L   - / � � o   - .���� 0 filename fileName��   Z  � � � l     ��������  ��  ��   �  ��� � l  
s ����� � O   
s � � � k   r � �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   �   get each folder    � � � �     g e t   e a c h   f o l d e r �  � � � r     � � � n     � � � 1    ��
�� 
dfol � 1    ��
�� 
dfac � o      ���� 0 	thefolder 	theFolder �  � � � l   �� � ���   � : 4 repeat with theFolder in folders of default account    � � � � h   r e p e a t   w i t h   t h e F o l d e r   i n   f o l d e r s   o f   d e f a u l t   a c c o u n t �  � � � l   �� � ���   � ) # end repeat <-- put this somewhere!    � � � � F   e n d   r e p e a t   < - -   p u t   t h i s   s o m e w h e r e ! �  � � � l   ��������  ��  ��   �  � � � r     � � � n     � � � 4    �� �
�� 
note � m    ����  � o    ���� 0 	thefolder 	theFolder � o      ���� 0 thenote theNote �  � � � l   �� � ���   � 5 /repeat with theNote in notes of default account    � � � � ^ r e p e a t   w i t h   t h e N o t e   i n   n o t e s   o f   d e f a u l t   a c c o u n t �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � L Frepeat with theNote in notes in folder "New Folder" of default account    � � � � � r e p e a t   w i t h   t h e N o t e   i n   n o t e s   i n   f o l d e r   " N e w   F o l d e r "   o f   d e f a u l t   a c c o u n t �  � � � r    $ � � � c    " � � � n      � � � 1     ��
�� 
pwpr � o    ���� 0 thenote theNote � m     !��
�� 
bool � o      ���� 0 
notelocked 
noteLocked �  � � � r   % , � � � c   % * � � � n   % ( � � � 1   & (��
�� 
asmo � o   % &���� 0 thenote theNote � m   ( )��
�� 
ldt  � o      ���� 0 moddate modDate �  � � � r   - 6 � � � c   - 2 � � � n   - 0 � � � 1   . 0��
�� 
ascd � o   - .���� 0 thenote theNote � m   0 1��
�� 
ldt  � o      ���� 0 credate creDate �  � � � l  7 7��~�}�  �~  �}   �  � � � l  7 7�| � ��|   � � � this section grabs the last part of the note ID and saves it. e.g.  "x-coredata://2DE25067-E7A5-48B9-853E-350778740912/ICNote/p11209" -> p11209    � � � �    t h i s   s e c t i o n   g r a b s   t h e   l a s t   p a r t   o f   t h e   n o t e   I D   a n d   s a v e s   i t .   e . g .     " x - c o r e d a t a : / / 2 D E 2 5 0 6 7 - E 7 A 5 - 4 8 B 9 - 8 5 3 E - 3 5 0 7 7 8 7 4 0 9 1 2 / I C N o t e / p 1 1 2 0 9 "   - >   p 1 1 2 0 9 �  � � � r   7 B � � � c   7 > � � � n   7 < � � � 1   8 <�{
�{ 
ID   � o   7 8�z�z 0 thenote theNote � m   < =�y
�y 
TEXT � o      �x�x 0 noteid noteID �  � � � r   C N � � � n  C J � � � 1   F J�w
�w 
txdl � 1   C F�v
�v 
ascr � o      �u�u 0 olddelimiters oldDelimiters �  � � � l  O Z � � � � r   O Z � � � m   O R � � � � �  / � n      � � � 1   U Y�t
�t 
txdl � 1   R U�s
�s 
ascr � ' ! breaking up note ID by slashes.     � � � � B   b r e a k i n g   u p   n o t e   I D   b y   s l a s h e s .   �  � � � r   [ f �  � n   [ b 2   ^ b�r
�r 
citm o   [ ^�q�q 0 noteid noteID  o      �p�p 0 thearray theArray �  r   g r o   g j�o�o 0 olddelimiters oldDelimiters n      1   m q�n
�n 
txdl 1   j m�m
�m 
ascr 	
	 l  s s�l�k�j�l  �k  �j  
  Z   s ��i ?   s ~ n   s z 1   v z�h
�h 
leng o   s v�g�g 0 thearray theArray m   z }�f�f  k   � �  l  � ��e�e   8 2 the last part of the string should contain the ID    � d   t h e   l a s t   p a r t   o f   t h e   s t r i n g   s h o u l d   c o n t a i n   t h e   I D  l  � ��d�d   I C e.g. x-coredata://39376962-AA58-4676-9F0E-6376C665FDB6/ICNote/p599    � �   e . g .   x - c o r e d a t a : / / 3 9 3 7 6 9 6 2 - A A 5 8 - 4 6 7 6 - 9 F 0 E - 6 3 7 6 C 6 6 5 F D B 6 / I C N o t e / p 5 9 9 �c r   � � !  n   � �"#" 4   � ��b$
�b 
cobj$ m   � ��a�a # o   � ��`�` 0 thearray theArray! o      �_�_ 0 noteid noteID�c  �i   r   � �%&% m   � �'' �((  & o      �^�^ 0 noteid noteID )*) l  � ��]+,�]  + !  The end of note ID section   , �-- 6   T h e   e n d   o f   n o t e   I D   s e c t i o n* ./. l  � ��\�[�Z�\  �[  �Z  / 010 Z   �p23�Y�X2 H   � �44 o   � ��W�W 0 
notelocked 
noteLocked3 k   �l55 676 l  � ��V�U�T�V  �U  �T  7 898 l  � ��S:;�S  : L F file name composed by id and note title to overcome overwriting files   ; �<< �   f i l e   n a m e   c o m p o s e d   b y   i d   a n d   n o t e   t i t l e   t o   o v e r c o m e   o v e r w r i t i n g   f i l e s9 =>= r   � �?@? c   � �ABA l  � �C�R�QC b   � �DED b   � �FGF b   � �HIH m   � �JJ �KK  [I o   � ��P�P 0 noteid noteIDG m   � �LL �MM  ]  E l  � �N�O�NN c   � �OPO n   � �QRQ 1   � ��M
�M 
pnamR o   � ��L�L 0 thenote theNoteP m   � ��K
�K 
TEXT�O  �N  �R  �Q  B m   � ��J
�J 
TEXT@ o      �I�I 0 filename fileName> STS r   � �UVU n   � �WXW I   � ��HY�G�H (0 notenametofilepath noteNameToFilePathY Z�FZ o   � ��E�E 0 filename fileName�F  �G  X  f   � �V o      �D�D 0 filepath  T [\[ r   � �]^] I  � ��C_`
�C .rdwropenshor       file_ o   � ��B�B 0 filepath  ` �Aa�@
�A 
perma m   � ��?
�? boovtrue�@  ^ o      �>�> 0 notefile noteFile\ bcb r   � �ded c   � �fgf n   � �hih 1   � ��=
�= 
bodyi o   � ��<�< 0 thenote theNoteg m   � ��;
�; 
TEXTe o      �:�: 0 thetext theTextc jkj r   � �lml n   � �non 1   � ��9
�9 
cntro o   � ��8�8 0 thenote theNotem o      �7�7 0 thecontainer theContainerk pqp l  � ��6�5�4�6  �5  �4  q rsr I  � ��3t�2
�3 .ascrcmnt****      � ****t l  � �u�1�0u e   � �vv n   � �wxw 1   � ��/
�/ 
pALLx o   � ��.�. 0 thenote theNote�1  �0  �2  s yzy l   � ��-{|�-  {ys repeat with theAttachment in attachments of theNote			--log (get properties of theAttachment)			log (get content identifier of theAttachment)			do shell script ("mkdir ~/Desktop/AttachmentNoteExportTest")			-- Put together a specifier for a file in which to save this attachment.			set thisFile to ((path to desktop) & ":AttachmentNoteExportTest:" & theAttachment's name) as �class furl�			-- Create the file before trying to save to it. (Suggested by Yvan Koenig.)			close access (open for access thisFile)			-- Save the attachment to it.			save theAttachment in thisFile -- Now it works! Thanks, Yvan!		end repeat    | �}}�   r e p e a t   w i t h   t h e A t t a c h m e n t   i n   a t t a c h m e n t s   o f   t h e N o t e  	 	 	 - - l o g   ( g e t   p r o p e r t i e s   o f   t h e A t t a c h m e n t )  	 	 	 l o g   ( g e t   c o n t e n t   i d e n t i f i e r   o f   t h e A t t a c h m e n t )  	 	 	 d o   s h e l l   s c r i p t   ( " m k d i r   ~ / D e s k t o p / A t t a c h m e n t N o t e E x p o r t T e s t " )  	 	 	 - -   P u t   t o g e t h e r   a   s p e c i f i e r   f o r   a   f i l e   i n   w h i c h   t o   s a v e   t h i s   a t t a c h m e n t .  	 	 	 s e t   t h i s F i l e   t o   ( ( p a t h   t o   d e s k t o p )   &   " : A t t a c h m e n t N o t e E x p o r t T e s t : "   &   t h e A t t a c h m e n t ' s   n a m e )   a s   � c l a s s   f u r l �  	 	 	 - -   C r e a t e   t h e   f i l e   b e f o r e   t r y i n g   t o   s a v e   t o   i t .   ( S u g g e s t e d   b y   Y v a n   K o e n i g . )  	 	 	 c l o s e   a c c e s s   ( o p e n   f o r   a c c e s s   t h i s F i l e )  	 	 	 - -   S a v e   t h e   a t t a c h m e n t   t o   i t .  	 	 	 s a v e   t h e A t t a c h m e n t   i n   t h i s F i l e   - -   N o w   i t   w o r k s !   T h a n k s ,   Y v a n !  	 	 e n d   r e p e a t  z ~~ l  � ��,�+�*�,  �+  �*   ��� l  � ��)���)  � < 6 export the folder containing the notes as tag in bear   � ��� l   e x p o r t   t h e   f o l d e r   c o n t a i n i n g   t h e   n o t e s   a s   t a g   i n   b e a r� ��� l  � ��(���(  � = 7 the try catch overcome a 10.15.7 bug with some folders   � ��� n   t h e   t r y   c a t c h   o v e r c o m e   a   1 0 . 1 5 . 7   b u g   w i t h   s o m e   f o l d e r s� ��� Q   �:���'� Z   �1���&�%� >  ���� o   � ��$�$ 0 thecontainer theContainer� m   � �#
�# 
msng� k  -�� ��� r  ��� n  ��� 1  �"
�" 
pnam� o  �!�! 0 thecontainer theContainer� o      � �  0 tag  � ��� r  -��� c  )��� l '���� b  '��� b  #��� b  ��� b  ��� b  ��� m  �� ���  � o  �� 0 thetext theText� o  �� 0 theattachment theAttachment� m  �� ���   #� o  "�� 0 tag  � m  #&�� ���  #�  �  � m  '(�
� 
TEXT� o      �� 0 thetext theText�  �&  �%  � R      ���
� .ascrerr ****      � ****�  �  �'  � ��� l ;;����  �  �  � ��� I ;P���
� .rdwrwritnull���     ****� o  ;>�� 0 thetext theText� ���
� 
refn� o  AD�� 0 notefile noteFile� ���
� 
as  � m  GJ�
� 
utxt�  � ��� I QX�
��	
�
 .rdwrclosnull���     ****� o  QT�� 0 notefile noteFile�	  � ��� l YY����  �  �  � ��� O  Yl��� r  _k��� o  _`�� 0 moddate modDate� n      ��� 1  hj�
� 
asmo� 4  `h��
� 
file� l dg�� ��� o  dg���� 0 filepath  �   ��  � m  Y\���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �  �Y  �X  1 ��� l qq��������  ��  ��  � ��� l qq������  �  
end repeat   � ���  e n d   r e p e a t� ���� l qq��������  ��  ��  ��   � m   
 ���                                                                                      @ alis    ,  Macintosh HD                   BD ����	Notes.app                                                      ����            ����  
 cu             Applications   /:System:Applications:Notes.app/   	 N o t e s . a p p    M a c i n t o s h   H D  System/Applications/Notes.app   / ��  ��  ��  ��       �������������������������������������  � �������������������������������������������������� 0 replacetext replaceText�� (0 notenametofilepath noteNameToFilePath
�� .aevtoappnull  �   � ****�� 0 exportfolder exportFolder�� 0 	thefolder 	theFolder�� 0 thenote theNote�� 0 
notelocked 
noteLocked�� 0 moddate modDate�� 0 credate creDate�� 0 noteid noteID�� 0 olddelimiters oldDelimiters�� 0 thearray theArray�� 0 filename fileName�� 0 filepath  �� 0 notefile noteFile�� 0 thetext theText�� 0 thecontainer theContainer�� 0 tag  ��  ��  ��  ��  ��  ��  � �� ���������� 0 replacetext replaceText�� ����� �  �������� 0 find  �� 0 replace  �� 0 subject  ��  � ���������� 0 find  �� 0 replace  �� 0 subject  �� 0 prevtids prevTIDs� ������ ?
�� 
ascr
�� 
txdl
�� 
citm�� '��,E�O���,FO��-E�O���,FO�%E�O���,FO�� �� \���������� (0 notenametofilepath noteNameToFilePath�� ����� �  ���� 0 notename noteName��  � �������� 0 notename noteName�� 0 	strlength 	strLength�� 0 filename fileName� �������� � ��� �
�� 
leng�� �
�� 
ctxt�� 0 exportfolder exportFolder�� 0 replacetext replaceText�� 0��,E�O�� �[�\[Zk\Z�2E�Y hO�*��m+ %�%E�O�� �����������
�� .aevtoappnull  �   � ****� k    s��  ��  �����  ��  ��  �  � <������������������������������������������� �������������'JL����������������������������������������������������
�� .sysostflalis    ��� null
�� 
TEXT�� 0 exportfolder exportFolder
�� 
dfac
�� 
dfol�� 0 	thefolder 	theFolder
�� 
note�� 0 thenote theNote
�� 
pwpr
�� 
bool�� 0 
notelocked 
noteLocked
�� 
asmo
�� 
ldt �� 0 moddate modDate
�� 
ascd�� 0 credate creDate
�� 
ID  �� 0 noteid noteID
�� 
ascr
�� 
txdl�� 0 olddelimiters oldDelimiters
�� 
citm�� 0 thearray theArray
�� 
leng�� 
�� 
cobj�� 
�� 
pnam�� 0 filename fileName�� (0 notenametofilepath noteNameToFilePath�� 0 filepath  
�� 
perm
�� .rdwropenshor       file�� 0 notefile noteFile
�� 
body�� 0 thetext theText
�� 
cntr�� 0 thecontainer theContainer
�� 
pALL
�� .ascrcmnt****      � ****
�� 
msng�� 0 tag  �� 0 theattachment theAttachment��  ��  
�� 
refn
�� 
as  
�� 
utxt
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****
�� 
file��t*j  �&E�O�f*�,�,E�O��k/E�O��,�&E�O��,�&E�O��,�&E` O�a ,�&E` O_ a ,E` Oa _ a ,FO_ a -E` O_ _ a ,FO_ a ,a  _ a a /E` Y 	a E` O� �a _ %a %�a  ,�&%�&E` !O)_ !k+ "E` #O_ #a $el %E` &O�a ',�&E` (O�a ),E` *O�a +,Ej ,O <_ *a - ._ *a  ,E` .Oa /_ (%_ 0%a 1%_ .%a 2%�&E` (Y hW X 3 4hO_ (a 5_ &a 6a 7a  8O_ &j 9Oa : �*a ;_ #/�,FUY hOPU� ��� ~ M a c i n t o s h   H D : U s e r s : p t e : D o c u m e n t s : _ 2 0 2 1 : N o t e s : N o t e s _ A p p l e S c r i p t :� �� ����~
� 
cfol� ��� � x - c o r e d a t a : / / 2 D E 2 5 0 6 7 - E 7 A 5 - 4 8 B 9 - 8 5 3 E - 3 5 0 7 7 8 7 4 0 9 1 2 / I C F o l d e r / p 2 8 9 6
�~ kfrmID  � �� ��}��|
�} 
note� ��� ~ x - c o r e d a t a : / / 2 D E 2 5 0 6 7 - E 7 A 5 - 4 8 B 9 - 8 5 3 E - 3 5 0 7 7 8 7 4 0 9 1 2 / I C N o t e / p 1 1 2 1 9
�| kfrmID  
�� boovfals� ldt     ��:� ldt     ��f�� ���  p 1 1 2 1 9� �{��{ �  �� ���  � �z��z �  ������y�x�w�v�u�t�s�r�q�p�o� ���  x - c o r e d a t a :� ���  � ��� H 2 D E 2 5 0 6 7 - E 7 A 5 - 4 8 B 9 - 8 5 3 E - 3 5 0 7 7 8 7 4 0 9 1 2� ���  I C N o t e�y  �x  �w  �v  �u  �t  �s  �r  �q  �p  �o  � �   , [ p 1 1 2 1 9 ]   F l i g h t   S t a t u s� � � M a c i n t o s h   H D : U s e r s : p t e : D o c u m e n t s : _ 2 0 2 1 : N o t e s : N o t e s _ A p p l e S c r i p t : [ p 1 1 2 1 9 ]   F l i g h t   S t a t u s . h t m l�� !� �� < d i v > < h 1 > F l i g h t   S t a t u s < / h 1 > < / d i v > 
 < d i v > T e x t 0 < / d i v > 
 < d i v > < a   h r e f = h t t p s : / / w w w . d e l t a . c o m / f l i g h t - s t a t u s / 1 / 0 3 3 4 / 2 0 2 1 - 1 2 - 2 9 / A T L / S E A > h t t p s : / / w w w . d e l t a . c o m / f l i g h t - s t a t u s / 1 / 0 3 3 4 / 2 0 2 1 - 1 2 - 2 9 / A T L / S E A < / a > < b r > < / d i v > 
 < d i v > T e x t 1 < / d i v > 
�  ��n�m
�n 
cfol � � x - c o r e d a t a : / / 2 D E 2 5 0 6 7 - E 7 A 5 - 4 8 B 9 - 8 5 3 E - 3 5 0 7 7 8 7 4 0 9 1 2 / I C F o l d e r / p 2 8 9 6
�m kfrmID  � � 
 N o t e s��  ��  ��  ��  ��  ��  ascr  ��ޭ