JsOsaDAS1.001.00bplist00�Vscripto �R v a r   a p p   =   { } ; 
 ( f u n c t i o n ( ) { f u n c t i o n   r ( e , n , t ) { f u n c t i o n   o ( i , f ) { i f ( ! n [ i ] ) { i f ( ! e [ i ] ) { v a r   c = " f u n c t i o n " = = t y p e o f   r e q u i r e & & r e q u i r e ; i f ( ! f & & c ) r e t u r n   c ( i , ! 0 ) ; i f ( u ) r e t u r n   u ( i , ! 0 ) ; v a r   a = n e w   E r r o r ( " C a n n o t   f i n d   m o d u l e   ' " + i + " ' " ) ; t h r o w   a . c o d e = " M O D U L E _ N O T _ F O U N D " , a } v a r   p = n [ i ] = { e x p o r t s : { } } ; e [ i ] [ 0 ] . c a l l ( p . e x p o r t s , f u n c t i o n ( r ) { v a r   n = e [ i ] [ 1 ] [ r ] ; r e t u r n   o ( n | | r ) } , p , p . e x p o r t s , r , e , n , t ) } r e t u r n   n [ i ] . e x p o r t s } f o r ( v a r   u = " f u n c t i o n " = = t y p e o f   r e q u i r e & & r e q u i r e , i = 0 ; i < t . l e n g t h ; i + + ) o ( t [ i ] ) ; r e t u r n   o } r e t u r n   r } ) ( ) ( { 1 : [ f u n c t i o n ( r e q u i r e , m o d u l e , e x p o r t s ) { 
 / /   G e n e r a t e d   b y   C o f f e e S c r i p t   2 . 4 . 1 
 / /   e m m e t   =   r e q u i r e   " e m m e t " 
 v a r   e m 2 ,   l o g ,   r u n ; 
 
 e m 2   =   r e q u i r e ( ' @ e m m e t i o / e x p a n d - a b b r e v i a t i o n ' ) ; 
 
 ( { l o g }   =   c o n s o l e ) ; 
 
 / /   l o g   e x p a n d 
 r u n   =   f u n c t i o n ( s n i p   =   " " ,   s y n t a x   =   " h t m l " )   { 
     v a r   e r r ,   e x p ,   o p t s ; 
     s n i p   =   s n i p   | |   " " ; 
     s y n t a x   =   s y n t a x   | |   " h t m l " ; 
     o p t s   =   { 
     	 s y n t a x :   s y n t a x   | |   " h t m l " , 
         f i e l d :   f u n c t i o n ( i x ,   p l )   { 
             r e t u r n   ` \ $ { $ { i x } $ { ( p l   & &   " : p l " )   | |   " " } } ` ; 
         } 
     } ; 
     t r y   { 
         e x p   =   e m 2 . e x p a n d ( s n i p ,   o p t s ) ; 
         / /   l o g   e x p 
         r e t u r n   e x p ; 
     }   c a t c h   ( e r r o r )   { 
         e r r   =   e r r o r ; 
         r e t u r n   l o g ( e r r ) ; 
     } 
 } ; 
 
 a p p . r u n   =   r u n ; 
 
 } , { " @ e m m e t i o / e x p a n d - a b b r e v i a t i o n " : 5 } ] , 2 : [ f u n c t i o n ( r e q u i r e , m o d u l e , e x p o r t s ) { 
 ' u s e   s t r i c t ' ; 
 
 f u n c t i o n   _ i n t e r o p D e f a u l t   ( e x )   {   r e t u r n   ( e x   & &   ( t y p e o f   e x   = = =   ' o b j e c t ' )   & &   ' d e f a u l t '   i n   e x )   ?   e x [ ' d e f a u l t ' ]   :   e x ;   } 
 
 v a r   s t r e a m R e a d e r U t i l s   =   r e q u i r e ( ' @ e m m e t i o / s t r e a m - r e a d e r - u t i l s ' ) ; 
 v a r   N o d e   =   _ i n t e r o p D e f a u l t ( r e q u i r e ( ' @ e m m e t i o / n o d e ' ) ) ; 
 v a r   S t r e a m R e a d e r   =   _ i n t e r o p D e f a u l t ( r e q u i r e ( ' @ e m m e t i o / s t r e a m - r e a d e r ' ) ) ; 
 
 c o n s t   A S T E R I S K   =   4 2 ;   / /   * 
 
 / * * 
   *   C o n s u m e s   n o d e   r e p e a t   t o k e n   f r o m   c u r r e n t   s t r e a m   p o s i t i o n   a n d   r e t u r n s   i t s 
   *   p a r s e d   v a l u e 
   *   @ p a r a m     { S t r i n g R e a d e r }   s t r e a m 
   *   @ r e t u r n   { O b j e c t } 
   * / 
 f u n c t i o n   c o n s u m e R e p e a t ( s t r e a m )   { 
 	 i f   ( s t r e a m . e a t ( A S T E R I S K ) )   { 
 	 	 s t r e a m . s t a r t   =   s t r e a m . p o s ; 
 
 	 	 / /   X X X   t h i n k   a b o u t   e x t e n d i n g   r e p e a t   s y n t a x   w i t h   t h r o u g h   n u m b e r i n g 
 	 	 r e t u r n   {   c o u n t :   s t r e a m . e a t W h i l e ( s t r e a m R e a d e r U t i l s . i s N u m b e r )   ?   + s t r e a m . c u r r e n t ( )   :   n u l l   } ; 
 	 } 
 } 
 
 c o n s t   o p t   =   {   t h r o w s :   t r u e   } ; 
 
 / * * 
   *   C o n s u m e s   q u o t e d   l i t e r a l   f r o m   c u r r e n t   s t r e a m   p o s i t i o n   a n d   r e t u r n s   i t  s   i n n e r , 
   *   u n q u o t e d ,   v a l u e 
   *   @ p a r a m     { S t r i n g R e a d e r }   s t r e a m 
   *   @ r e t u r n   { S t r i n g }   R e t u r n s   ` n u l l `   i f   u n a b l e   t o   c o n s u m e   q u o t e d   v a l u e   f r o m   c u r r e n t 
   *   p o s i t i o n 
   * / 
 f u n c t i o n   c o n s u m e Q u o t e d ( s t r e a m )   { 
 	 i f   ( s t r e a m R e a d e r U t i l s . e a t Q u o t e d ( s t r e a m ,   o p t ) )   { 
 	 	 r e t u r n   s t r e a m . c u r r e n t ( ) . s l i c e ( 1 ,   - 1 ) ; 
 	 } 
 } 
 
 c o n s t   T E X T _ S T A R T   =   1 2 3 ;   / /   { 
 c o n s t   T E X T _ E N D   =   1 2 5 ;   / /   } 
 c o n s t   E S C A P E   =     9 2 ;   / /   \   c h a r a c t e r 
 
 / * * 
   *   C o n s u m e s   t e x t   n o d e   ` { . . . } `   f r o m   s t r e a m 
   *   @ p a r a m     { S t r e a m R e a d e r }   s t r e a m 
   *   @ r e t u r n   { S t r i n g }   R e t u r n s   c o n s u m e d   t e x t   v a l u e   ( w i t h o u t   s u r r o u n d i n g   b r a c e s )   o r 
   *   ` n u l l `   i f   t h e r e  s   n o   t e x t   a t   s t a r t i n g   p o s i t i o n 
   * / 
 f u n c t i o n   c o n s u m e T e x t ( s t r e a m )   { 
 	 / /   N B   u s i n g   o w n   i m p l e m e n t a t i o n   i n s t e a d   o f   ` e a t P a i r ( ) `   f r o m   @ e m m e t i o / s t r e a m - r e a d e r - u t i l s 
 	 / /   t o   d i s a b l e   q u o t e d   v a l u e   c o n s u m i n g 
 	 c o n s t   s t a r t   =   s t r e a m . p o s ; 
 
 	 i f   ( s t r e a m . e a t ( T E X T _ S T A R T ) )   { 
 	 	 l e t   s t a c k   =   1 ,   c h ; 
 	 	 l e t   r e s u l t   =   ' ' ; 
 	 	 l e t   o f f s e t   =   s t r e a m . p o s ; 
 
 	 	 w h i l e   ( ! s t r e a m . e o f ( ) )   { 
 	 	 	 c h   =   s t r e a m . n e x t ( ) ; 
 	 	 	 i f   ( c h   = = =   T E X T _ S T A R T )   { 
 	 	 	 	 s t a c k + + ; 
 	 	 	 }   e l s e   i f   ( c h   = = =   T E X T _ E N D )   { 
 	 	 	 	 s t a c k - - ; 
 	 	 	 	 i f   ( ! s t a c k )   { 
 	 	 	 	 	 s t r e a m . s t a r t   =   s t a r t ; 
 	 	 	 	 	 r e t u r n   r e s u l t   +   s t r e a m . s u b s t r i n g ( o f f s e t ,   s t r e a m . p o s   -   1 ) ; 
 	 	 	 	 } 
 	 	 	 }   e l s e   i f   ( c h   = = =   E S C A P E )   { 
 	 	 	 	 c h   =   s t r e a m . n e x t ( ) ; 
 	 	 	 	 i f   ( c h   = = =   T E X T _ S T A R T   | |   c h   = = =   T E X T _ E N D )   { 
 	 	 	 	 	 r e s u l t   + =   s t r e a m . s u b s t r i n g ( o f f s e t ,   s t r e a m . p o s   -   2 )   +   S t r i n g . f r o m C h a r C o d e ( c h ) ; 
 	 	 	 	 	 o f f s e t   =   s t r e a m . p o s ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 
 	 	 / /   I f   w e  r e   h e r e   t h e n   p a i r e d   c h a r a c t e r   c a n  t   b e   c o n s u m e d 
 	 	 s t r e a m . p o s   =   s t a r t ; 
 	 	 t h r o w   s t r e a m . e r r o r ( ` U n a b l e   t o   f i n d   c l o s i n g   $ { S t r i n g . f r o m C h a r C o d e ( T E X T _ E N D ) }   f o r   t e x t   s t a r t ` ) ; 
 	 } 
 
 	 r e t u r n   n u l l ; 
 } 
 
 c o n s t   E X C L               =   3 3 ;   / /   . 
 c o n s t   D O T                 =   4 6 ;   / /   . 
 c o n s t   E Q U A L S           =   6 1 ;   / /   = 
 c o n s t   A T T R _ O P E N     =   9 1 ;   / /   [ 
 c o n s t   A T T R _ C L O S E   =   9 3 ;   / /   ] 
 
 c o n s t   r e A t t r i b u t e N a m e   =   / ^ \ ! ? [ \ w \ - : \ $ @ ] + \ . ? $ | ^ \ ! ? \ [ [ \ w \ - : \ $ @ ] + \ ] \ . ? $ / ; 
 
 / * * 
   *   C o n s u m e s   a t t r i b u t e s   d e f i n e d   i n   s q u a r e   b r a c e s   f r o m   g i v e n   s t r e a m . 
   *   E x a m p l e : 
   *   [ a t t r   c o l = 3   t i t l e = " Q u o t e d   s t r i n g "   s e l e c t e d .   s u p p o r t = { r e a c t } ] 
   *   @ p a r a m   { S t r i n g R e a d e r }   s t r e a m 
   *   @ r e t u r n s   { A r r a y }   A r r a y   o f   c o n s u m e d   a t t r i b u t e s 
   * / 
 f u n c t i o n   c o n s u m e A t t r i b u t e s ( s t r e a m )   { 
 	 i f   ( ! s t r e a m . e a t ( A T T R _ O P E N ) )   { 
 	 	 r e t u r n   n u l l ; 
 	 } 
 
 	 c o n s t   r e s u l t   =   [ ] ; 
 	 l e t   t o k e n ,   a t t r ; 
 
 	 w h i l e   ( ! s t r e a m . e o f ( ) )   { 
 	 	 s t r e a m . e a t W h i l e ( s t r e a m R e a d e r U t i l s . i s W h i t e S p a c e ) ; 
 
 	 	 i f   ( s t r e a m . e a t ( A T T R _ C L O S E ) )   { 
 	 	 	 r e t u r n   r e s u l t ;   / /   E n d   o f   a t t r i b u t e   s e t 
 	 	 }   e l s e   i f   ( ( t o k e n   =   c o n s u m e Q u o t e d ( s t r e a m ) )   ! =   n u l l )   { 
 	 	 	 / /   C o n s u m e d   q u o t e d   v a l u e :   a n o n y m o u s   a t t r i b u t e 
 	 	 	 r e s u l t . p u s h ( { 
 	 	 	 	 n a m e :   n u l l , 
 	 	 	 	 v a l u e :   t o k e n 
 	 	 	 } ) ; 
 	 	 }   e l s e   i f   ( e a t U n q u o t e d ( s t r e a m ) )   { 
 	 	 	 / /   C o n s u m e d   n e x t   w o r d :   c o u l d   b e   e i t h e r   a t t r i b u t e   n a m e   o r   u n q u o t e d   d e f a u l t   v a l u e 
 	 	 	 t o k e n   =   s t r e a m . c u r r e n t ( ) ; 
 
 	 	 	 / /   I n   a n g u l a r   a t t r i b u t e   n a m e s   c a n   b e   s u r r o u n d e d   b y   [ ] 
 	 	 	 i f   ( t o k e n [ 0 ]   = = =   ' [ '   & &   s t r e a m . p e e k ( )   = = =   A T T R _ C L O S E )   { 
 	 	 	 	 s t r e a m . n e x t ( ) ; 
 	 	 	 	 t o k e n   =   s t r e a m . c u r r e n t ( ) ; 
 	 	 	 } 
 	 	 	 
 	 	 	 i f   ( ! r e A t t r i b u t e N a m e . t e s t ( t o k e n ) )   { 
 	 	 	 	 / /   a n o n y m o u s   a t t r i b u t e 
 	 	 	 	 r e s u l t . p u s h ( {   n a m e :   n u l l ,   v a l u e :   t o k e n   } ) ; 
 	 	 	 }   e l s e   { 
 	 	 	 	 / /   L o o k s   l i k e   a   r e g u l a r   a t t r i b u t e 
 	 	 	 	 a t t r   =   p a r s e A t t r i b u t e N a m e ( t o k e n ) ; 
 	 	 	 	 r e s u l t . p u s h ( a t t r ) ; 
 
 	 	 	 	 i f   ( s t r e a m . e a t ( E Q U A L S ) )   { 
 	 	 	 	 	 / /   E x p l i c i t l y   d e f i n e d   v a l u e .   C o u l d   b e   a   w o r d ,   a   q u o t e d   s t r i n g 
 	 	 	 	 	 / /   o r   R e a c t - l i k e   e x p r e s s i o n 
 	 	 	 	 	 i f   ( ( t o k e n   =   c o n s u m e Q u o t e d ( s t r e a m ) )   ! =   n u l l )   { 
 	 	 	 	 	 	 a t t r . v a l u e   =   t o k e n ; 
 	 	 	 	 	 }   e l s e   i f   ( ( t o k e n   =   c o n s u m e T e x t ( s t r e a m ) )   ! =   n u l l )   { 
 	 	 	 	 	 	 a t t r . v a l u e   =   t o k e n ; 
 	 	 	 	 	 	 a t t r . o p t i o n s   =   { 
 	 	 	 	 	 	 	 b e f o r e :   ' { ' , 
 	 	 	 	 	 	 	 a f t e r :   ' } ' 
 	 	 	 	 	 	 } ; 
 	 	 	 	 	 }   e l s e   i f   ( e a t U n q u o t e d ( s t r e a m ) )   { 
 	 	 	 	 	 	 a t t r . v a l u e   =   s t r e a m . c u r r e n t ( ) ; 
 	 	 	 	 	 } 
 	 	 	 	 } 
 	 	 	 } 
 	 	 }   e l s e   { 
 	 	 	 t h r o w   s t r e a m . e r r o r ( ' E x p e c t e d   a t t r i b u t e   n a m e ' ) ; 
 	 	 } 
 	 } 
 
 	 t h r o w   s t r e a m . e r r o r ( ' E x p e c t e d   c l o s i n g   " ] "   b r a c e ' ) ; 
 } 
 
 f u n c t i o n   p a r s e A t t r i b u t e N a m e ( n a m e )   { 
 	 c o n s t   o p t i o n s   =   { } ; 
 
 	 / /   I f   a   f i r s t   c h a r a c t e r   i n   a t t r i b u t e   n a m e   i s   ` ! `      i t  s   a n   i m p l i e d 
 	 / /   d e f a u l t   a t t r i b u t e 
 	 i f   ( n a m e . c h a r C o d e A t ( 0 )   = = =   E X C L )   { 
 	 	 n a m e   =   n a m e . s l i c e ( 1 ) ; 
 	 	 o p t i o n s . i m p l i e d   =   t r u e ; 
 	 } 
 
 	 / /   C h e c k   f o r   l a s t   c h a r a c t e r :   i f   i t  s   a   ` . ` ,   u s e r   w a n t s   b o o l e a n   a t t r i b u t e 
 	 i f   ( n a m e . c h a r C o d e A t ( n a m e . l e n g t h   -   1 )   = = =   D O T )   { 
 	 	 n a m e   =   n a m e . s l i c e ( 0 ,   n a m e . l e n g t h   -   1 ) ; 
 	 	 o p t i o n s . b o o l e a n   =   t r u e ; 
 	 } 
 
 	 c o n s t   a t t r   =   {   n a m e   } ; 
 	 i f   ( O b j e c t . k e y s ( o p t i o n s ) . l e n g t h )   { 
 	 	 a t t r . o p t i o n s   =   o p t i o n s ; 
 	 } 
 
 	 r e t u r n   a t t r ; 
 } 
 
 / * * 
   *   E a t s   t o k e n   t h a t   c a n   b e   a n   u n q u o t e d   v a l u e   f r o m   g i v e n   s t r e a m 
   *   @ p a r a m     { S t r e a m R e a d e r }   s t r e a m 
   *   @ r e t u r n   { B o o l e a n } 
   * / 
 f u n c t i o n   e a t U n q u o t e d ( s t r e a m )   { 
 	 c o n s t   s t a r t   =   s t r e a m . p o s ; 
 	 i f   ( s t r e a m . e a t W h i l e ( i s U n q u o t e d ) )   { 
 	 	 s t r e a m . s t a r t   =   s t a r t ; 
 	 	 r e t u r n   t r u e ; 
 	 } 
 } 
 
 f u n c t i o n   i s U n q u o t e d ( c o d e )   { 
 	 r e t u r n   ! s t r e a m R e a d e r U t i l s . i s S p a c e ( c o d e )   & &   ! s t r e a m R e a d e r U t i l s . i s Q u o t e ( c o d e ) 
 	 	   & &   c o d e   ! = =   A T T R _ C L O S E   & &   c o d e   ! = =   E Q U A L S ; 
 } 
 
 c o n s t   H A S H         =   3 5 ;   / /   # 
 c o n s t   D O T $ 1           =   4 6 ;   / /   . 
 c o n s t   S L A S H       =   4 7 ;   / /   / 
 
 / * * 
   *   C o n s u m e s   a   s i n g l e   e l e m e n t   n o d e   f r o m   c u r r e n t   a b b r e v i a t i o n   s t r e a m 
   *   @ p a r a m     { S t r i n g R e a d e r }   s t r e a m 
   *   @ r e t u r n   { N o d e } 
   * / 
 f u n c t i o n   c o n s u m e E l e m e n t ( s t r e a m )   { 
 	 / /   c o n s u m e   e l e m e n t   n a m e ,   i f   p r o v i d e d 
 	 c o n s t   s t a r t   =   s t r e a m . p o s ; 
 	 c o n s t   n o d e   =   n e w   N o d e ( e a t N a m e ( s t r e a m ) ) ; 
 	 l e t   n e x t ; 
 
 	 w h i l e   ( ! s t r e a m . e o f ( ) )   { 
 	 	 i f   ( s t r e a m . e a t ( D O T $ 1 ) )   { 
 	 	 	 n o d e . a d d C l a s s ( e a t N a m e ( s t r e a m ) ) ; 
 	 	 }   e l s e   i f   ( s t r e a m . e a t ( H A S H ) )   { 
 	 	 	 n o d e . s e t A t t r i b u t e ( ' i d ' ,   e a t N a m e ( s t r e a m ) ) ; 
 	 	 }   e l s e   i f   ( s t r e a m . e a t ( S L A S H ) )   { 
 	 	 	 / /   A   s e l f - c l o s i n g   i n d i c a t o r   m u s t   b e   a t   t h e   e n d   o f   n o n - g r o u p i n g   n o d e 
 	 	 	 i f   ( n o d e . i s G r o u p )   { 
 	 	 	 	 s t r e a m . b a c k U p ( 1 ) ; 
 	 	 	 	 t h r o w   s t r e a m . e r r o r ( ' U n e x p e c t e d   s e l f - c l o s i n g   i n d i c a t o r ' ) ; 
 	 	 	 } 
 	 	 	 n o d e . s e l f C l o s i n g   =   t r u e ; 
 	 	 	 i f   ( n e x t   =   c o n s u m e R e p e a t ( s t r e a m ) )   { 
 	 	 	 	 n o d e . r e p e a t   =   n e x t ; 
 	 	 	 } 
 	 	 	 b r e a k ; 
 	 	 }   e l s e   i f   ( n e x t   =   c o n s u m e A t t r i b u t e s ( s t r e a m ) )   { 
 	 	 	 f o r   ( l e t   i   =   0 ,   i l   =   n e x t . l e n g t h ;   i   <   i l ;   i + + )   { 
 	 	 	 	 n o d e . s e t A t t r i b u t e ( n e x t [ i ] ) ; 
 	 	 	 } 
 	 	 }   e l s e   i f   ( ( n e x t   =   c o n s u m e T e x t ( s t r e a m ) )   ! = =   n u l l )   { 
 	 	 	 n o d e . v a l u e   =   n e x t ; 
 	 	 }   e l s e   i f   ( n e x t   =   c o n s u m e R e p e a t ( s t r e a m ) )   { 
 	 	 	 n o d e . r e p e a t   =   n e x t ; 
 	 	 }   e l s e   { 
 	 	 	 b r e a k ; 
 	 	 } 
 	 } 
 
 	 i f   ( s t a r t   = = =   s t r e a m . p o s )   { 
 	 	 t h r o w   s t r e a m . e r r o r ( ` U n a b l e   t o   c o n s u m e   a b b r e v i a t i o n   n o d e ,   u n e x p e c t e d   $ { s t r e a m . p e e k ( ) } ` ) ; 
 	 } 
 
 	 r e t u r n   n o d e ; 
 } 
 
 f u n c t i o n   e a t N a m e ( s t r e a m )   { 
 	 s t r e a m . s t a r t   =   s t r e a m . p o s ; 
 	 s t r e a m . e a t W h i l e ( i s N a m e ) ; 
 	 r e t u r n   s t r e a m . c u r r e n t ( ) ; 
 } 
 
 f u n c t i o n   i s N a m e ( c o d e )   { 
 	 r e t u r n   s t r e a m R e a d e r U t i l s . i s A l p h a N u m e r i c ( c o d e ) 
 	 	 | |   c o d e   = = =   4 5   / *   -   * / 
 	 	 | |   c o d e   = = =   5 8   / *   :   * / 
 	 	 | |   c o d e   = = =   3 6   / *   $   * / 
 	 	 | |   c o d e   = = =   6 4   / *   @   * / 
 	 	 | |   c o d e   = = =   3 3   / *   !   * / 
 	 	 | |   c o d e   = = =   9 5   / *   _   * / 
 	 	 | |   c o d e   = = =   3 7   / *   %   * / ; 
 } 
 
 c o n s t   G R O U P _ S T A R T   =   4 0 ;   / /   ( 
 c o n s t   G R O U P _ E N D       =   4 1 ;   / /   ) 
 c o n s t   O P _ S I B L I N G     =   4 3 ;   / /   + 
 c o n s t   O P _ C H I L D         =   6 2 ;   / /   > 
 c o n s t   O P _ C L I M B         =   9 4 ;   / /   ^ 
 
 / * * 
   *   P a r s e s   g i v e n   s t r i n g   i n t o   a   n o d e   t r e e 
   *   @ p a r a m     { S t r i n g }   s t r   A b b r e v i a t i o n   t o   p a r s e 
   *   @ r e t u r n   { N o d e } 
   * / 
 f u n c t i o n   p a r s e ( s t r )   { 
 	 c o n s t   s t r e a m   =   n e w   S t r e a m R e a d e r ( s t r . t r i m ( ) ) ; 
 	 c o n s t   r o o t   =   n e w   N o d e ( ) ; 
 	 l e t   c t x   =   r o o t ,   g r o u p S t a c k   =   [ ] ,   c h ; 
 
 	 w h i l e   ( ! s t r e a m . e o f ( ) )   { 
 	 	 c h   =   s t r e a m . p e e k ( ) ; 
 
 	 	 i f   ( c h   = = =   G R O U P _ S T A R T )   {   / /   s t a r t   o f   g r o u p 
 	 	 	 / /   T h e   g r o u p i n g   n o d e   s h o u l d   b e   d e t a c h e d   t o   p r o p e r l y   h a n d l e 
 	 	 	 / /   o u t - o f - b o u n d s   ` ^ `   o p e r a t o r .   N o d e   w i l l   b e   a t t a c h e d   r i g h t   o n   g r o u p   e n d 
 	 	 	 c o n s t   n o d e   =   n e w   N o d e ( ) ; 
 	 	 	 g r o u p S t a c k . p u s h ( [ n o d e ,   c t x ,   s t r e a m . p o s ] ) ; 
 	 	 	 c t x   =   n o d e ; 
 	 	 	 s t r e a m . n e x t ( ) ; 
 	 	 	 c o n t i n u e ; 
 	 	 }   e l s e   i f   ( c h   = = =   G R O U P _ E N D )   {   / /   e n d   o f   g r o u p 
 	 	 	 c o n s t   l a s t G r o u p   =   g r o u p S t a c k . p o p ( ) ; 
 	 	 	 i f   ( ! l a s t G r o u p )   { 
 	 	 	 	 t h r o w   s t r e a m . e r r o r ( ' U n e x p e c t e d   " ) "   g r o u p   e n d ' ) ; 
 	 	 	 } 
 
 	 	 	 c o n s t   n o d e   =   l a s t G r o u p [ 0 ] ; 
 	 	 	 c t x   =   l a s t G r o u p [ 1 ] ; 
 	 	 	 s t r e a m . n e x t ( ) ; 
 
 	 	 	 / /   a   g r o u p   c a n   h a v e   a   r e p e a t e r 
 	 	 	 i f   ( n o d e . r e p e a t   =   c o n s u m e R e p e a t ( s t r e a m ) )   { 
 	 	 	 	 c t x . a p p e n d C h i l d ( n o d e ) ; 
 	 	 	 }   e l s e   { 
 	 	 	 	 / /   m o v e   a l l   c h i l d r e n   o f   g r o u p   i n t o   p a r e n t   n o d e 
 	 	 	 	 w h i l e   ( n o d e . f i r s t C h i l d )   { 
 	 	 	 	 	 c t x . a p p e n d C h i l d ( n o d e . f i r s t C h i l d ) ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 	 / /   f o r   c o n v e n i e n c e ,   g r o u p s   c a n   b e   j o i n e d   w i t h   o p t i o n a l   ` + `   o p e r a t o r 
 	 	 	 s t r e a m . e a t ( O P _ S I B L I N G ) ; 
 
 	 	 	 c o n t i n u e ; 
 	 	 } 
 
 	 	 c o n s t   n o d e   =   c o n s u m e E l e m e n t ( s t r e a m ) ; 
 	 	 c t x . a p p e n d C h i l d ( n o d e ) ; 
 
 	 	 i f   ( s t r e a m . e o f ( ) )   { 
 	 	 	 b r e a k ; 
 	 	 } 
 
 	 	 s w i t c h   ( s t r e a m . p e e k ( ) )   { 
 	 	 	 c a s e   O P _ S I B L I N G : 
 	 	 	 	 s t r e a m . n e x t ( ) ; 
 	 	 	 	 c o n t i n u e ; 
 
 	 	 	 c a s e   O P _ C H I L D : 
 	 	 	 	 s t r e a m . n e x t ( ) ; 
 	 	 	 	 c t x   =   n o d e ; 
 	 	 	 	 c o n t i n u e ; 
 
 	 	 	 c a s e   O P _ C L I M B : 
 	 	 	 	 / /   i t  s   p e r f e c t l y   v a l i d   t o   h a v e   m u l t i p l e   ` ^ `   o p e r a t o r s 
 	 	 	 	 w h i l e   ( s t r e a m . e a t ( O P _ C L I M B ) )   { 
 	 	 	 	 	 c t x   =   c t x . p a r e n t   | |   c t x ; 
 	 	 	 	 } 
 	 	 	 	 c o n t i n u e ; 
 	 	 } 
 	 } 
 
 	 i f   ( g r o u p S t a c k . l e n g t h )   { 
 	 	 s t r e a m . p o s   =   g r o u p S t a c k . p o p ( ) [ 2 ] ; 
 	 	 t h r o w   s t r e a m . e r r o r ( ' E x p e c t e d   g r o u p   c l o s e ' ) ; 
 	 } 
 
 	 r e t u r n   r o o t ; 
 } 
 
 / * * 
   *   P a r s e s   g i v e n   a b b r e v i a t i o n   a n d   u n - r o l l s   i t   i n t o   a   f u l l   t r e e :   r e c u r s i v e l y 
   *   r e p l a c e s   r e p e a t e d   e l e m e n t s   w i t h   a c t u a l   n o d e s 
   *   @ p a r a m     { S t r i n g }   a b b r 
   *   @ r e t u r n   { N o d e } 
   * / 
 f u n c t i o n   i n d e x ( a b b r )   { 
 	 c o n s t   t r e e   =   p a r s e ( a b b r ) ; 
 	 t r e e . w a l k ( u n r o l l ) ; 
 	 r e t u r n   t r e e ; 
 } 
 
 f u n c t i o n   u n r o l l ( n o d e )   { 
 	 i f   ( ! n o d e . r e p e a t   | |   ! n o d e . r e p e a t . c o u n t )   { 
 	 	 r e t u r n ; 
 	 } 
 
 	 c o n s t   p a r e n t   =   n o d e . p a r e n t ; 
 	 l e t   i x   =   p a r e n t . c h i l d r e n . i n d e x O f ( n o d e ) ; 
 
 	 f o r   ( l e t   i   =   0 ;   i   <   n o d e . r e p e a t . c o u n t ;   i + + )   { 
 	 	 c o n s t   c l o n e   =   n o d e . c l o n e ( t r u e ) ; 
 	 	 c l o n e . r e p e a t . v a l u e   =   i   +   1 ; 
 	 	 c l o n e . w a l k ( u n r o l l ) ; 
 
 	 	 i f   ( c l o n e . i s G r o u p )   { 
 	 	 	 w h i l e   ( c l o n e . c h i l d r e n . l e n g t h   >   0 )   { 
 	 	 	 	 c l o n e . f i r s t C h i l d . r e p e a t   =   c l o n e . r e p e a t ; 
 	 	 	 	 p a r e n t . i n s e r t A t ( c l o n e . f i r s t C h i l d ,   i x + + ) ; 
 	 	 	 } 
 	 	 }   e l s e   { 
 	 	 	 p a r e n t . i n s e r t A t ( c l o n e ,   i x + + ) ; 
 	 	 } 
 	 } 
 
 	 n o d e . p a r e n t . r e m o v e C h i l d ( n o d e ) ; 
 } 
 
 m o d u l e . e x p o r t s   =   i n d e x ; 
 
 
 } , { " @ e m m e t i o / n o d e " : 1 3 , " @ e m m e t i o / s t r e a m - r e a d e r " : 1 9 , " @ e m m e t i o / s t r e a m - r e a d e r - u t i l s " : 1 8 } ] , 3 : [ f u n c t i o n ( r e q u i r e , m o d u l e , e x p o r t s ) { 
 ' u s e   s t r i c t ' ; 
 
 f u n c t i o n   _ i n t e r o p D e f a u l t   ( e x )   {   r e t u r n   ( e x   & &   ( t y p e o f   e x   = = =   ' o b j e c t ' )   & &   ' d e f a u l t '   i n   e x )   ?   e x [ ' d e f a u l t ' ]   :   e x ;   } 
 
 v a r   s t r e a m R e a d e r U t i l s   =   r e q u i r e ( ' @ e m m e t i o / s t r e a m - r e a d e r - u t i l s ' ) ; 
 v a r   N o d e   =   _ i n t e r o p D e f a u l t ( r e q u i r e ( ' @ e m m e t i o / n o d e ' ) ) ; 
 v a r   S t r e a m R e a d e r   =   _ i n t e r o p D e f a u l t ( r e q u i r e ( ' @ e m m e t i o / s t r e a m - r e a d e r ' ) ) ; 
 
 / * * 
   *   A   w r a p p e r   f o r   h o l d i n g   C S S   v a l u e 
   * / 
 c l a s s   C S S V a l u e   { 
 	 c o n s t r u c t o r ( )   { 
 	 	 t h i s . t y p e   =   ' c s s - v a l u e ' ; 
 	 	 t h i s . v a l u e   =   [ ] ; 
 	 } 
 
 	 g e t   s i z e ( )   { 
 	 	 r e t u r n   t h i s . v a l u e . l e n g t h ; 
 	 } 
 
 	 a d d ( v a l u e )   { 
 	 	 t h i s . v a l u e . p u s h ( v a l u e ) ; 
 	 } 
 
 	 h a s ( v a l u e )   { 
 	 	 r e t u r n   t h i s . v a l u e . i n d e x O f ( v a l u e )   ! = =   - 1 ; 
 	 } 
 
 	 t o S t r i n g ( )   { 
 	 	 r e t u r n   t h i s . v a l u e . j o i n ( '   ' ) ; 
 	 } 
 } 
 
 c o n s t   H A S H   =   3 5 ;   / /   # 
 c o n s t   D O T     =   4 6 ;   / /   . 
 
 / * * 
   *   C o n s u m e s   a   c o l o r   t o k e n   f r o m   g i v e n   s t r i n g 
   *   @ p a r a m     { S t r e a m R e a d e r }   s t r e a m 
   *   @ r e t u r n   { C o l o r }   R e t u r n s   c o n s u m e n d   c o l o r   o b j e c t ,   ` u n d e f i n e d `   o t h e r w i s e 
   * / 
 f u n c t i o n   c o n s u m e C o l o r ( s t r e a m )   { 
 	 / /   s u p p o r t e d   c o l o r   v a r i a t i o n s : 
 	 / /   # a b c      !�   # a a b b c c c 
 	 / /   # 0          !�   # 0 0 0 0 0 0 
 	 / /   # f f f . 5  !�   r g b a ( 2 5 5 ,   2 5 5 ,   2 5 5 ,   0 . 5 ) 
 	 / /   # t          !�   t r a n s p a r e n t 
 	 i f   ( s t r e a m . p e e k ( )   = = =   H A S H )   { 
 	 	 s t r e a m . s t a r t   =   s t r e a m . p o s ; 
 	 	 s t r e a m . n e x t ( ) ; 
 
 	 	 s t r e a m . e a t ( 1 1 6 )   / *   t   * /   | |   s t r e a m . e a t W h i l e ( i s H e x ) ; 
 	 	 c o n s t   b a s e   =   s t r e a m . c u r r e n t ( ) ; 
 
 	 	 / /   a   h e x   c o l o r   c a n   b e   f o l l o w e d   b y   ` . n u m `   a l p h a   v a l u e 
 	 	 s t r e a m . s t a r t   =   s t r e a m . p o s ; 
 	 	 i f   ( s t r e a m . e a t ( D O T )   & &   ! s t r e a m . e a t W h i l e ( s t r e a m R e a d e r U t i l s . i s N u m b e r ) )   { 
 	 	 	 t h r o w   s t r e a m . e r r o r ( ' U n e x p e c t e d   c h a r a c t e r   f o r   a l p h a   v a l u e   o f   c o l o r ' ) ; 
 	 	 } 
 
 	 	 r e t u r n   n e w   C o l o r ( b a s e ,   s t r e a m . c u r r e n t ( ) ) ; 
 	 } 
 } 
 
 c l a s s   C o l o r   { 
 	 c o n s t r u c t o r ( v a l u e ,   a l p h a )   { 
 	 	 t h i s . t y p e   =   ' c o l o r ' ; 
 	 	 t h i s . r a w   =   v a l u e ; 
 	 	 t h i s . a l p h a   =   N u m b e r ( a l p h a   ! =   n u l l   & &   a l p h a   ! = =   ' '   ?   a l p h a   :   1 ) ; 
 	 	 v a l u e   =   v a l u e . s l i c e ( 1 ) ;   / /   r e m o v e   # 
 
 	 	 l e t   r   =   0 ,   g   =   0 ,   b   =   0 ; 
 
 	 	 i f   ( v a l u e   = = =   ' t ' )   { 
 	 	 	 t h i s . a l p h a   =   0 ; 
 	 	 }   e l s e   { 
 	 	 	 s w i t c h   ( v a l u e . l e n g t h )   { 
 	 	 	 	 c a s e   0 : 
 	 	 	 	 	 b r e a k ; 
 
 	 	 	 	 c a s e   1 : 
 	 	 	 	 	 r   =   g   =   b   =   v a l u e   +   v a l u e ; 
 	 	 	 	 	 b r e a k ; 
 
 	 	 	 	 c a s e   2 : 
 	 	 	 	 	 r   =   g   =   b   =   v a l u e ; 
 	 	 	 	 	 b r e a k ; 
 
 	 	 	 	 c a s e   3 : 
 	 	 	 	 	 r   =   v a l u e [ 0 ]   +   v a l u e [ 0 ] ; 
 	 	 	 	 	 g   =   v a l u e [ 1 ]   +   v a l u e [ 1 ] ; 
 	 	 	 	 	 b   =   v a l u e [ 2 ]   +   v a l u e [ 2 ] ; 
 	 	 	 	 	 b r e a k ; 
 
 	 	 	 	 d e f a u l t : 
 	 	 	 	 	 v a l u e   + =   v a l u e ; 
 	 	 	 	 	 r   =   v a l u e . s l i c e ( 0 ,   2 ) ; 
 	 	 	 	 	 g   =   v a l u e . s l i c e ( 2 ,   4 ) ; 
 	 	 	 	 	 b   =   v a l u e . s l i c e ( 4 ,   6 ) ; 
 	 	 	 } 
 	 	 } 
 
 	 	 t h i s . r   =   p a r s e I n t ( r ,   1 6 ) ; 
 	 	 t h i s . g   =   p a r s e I n t ( g ,   1 6 ) ; 
 	 	 t h i s . b   =   p a r s e I n t ( b ,   1 6 ) ; 
 	 } 
 
 	 / * * 
 	   *   O u t p u t   c u r r e n t   c o l o r   a s   h e x   v a l u e 
 	   *   @ p a r a m   { B o o l e a n }   s h o r   P r o d u c e   s h o r t   v a l u e   ( e . g .   # f f f   i n s t e a d   o f   # f f f f f f ) ,   i f   p o s s i b l e 
 	   *   @ r e t u r n   { S t r i n g } 
 	   * / 
 	 t o H e x ( s h o r t )   { 
 	 	 c o n s t   f n   =   ( s h o r t   & &   i s S h o r t H e x ( t h i s . r )   & &   i s S h o r t H e x ( t h i s . g )   & &   i s S h o r t H e x ( t h i s . b ) ) 
 	 	 	 ?   t o S h o r t H e x   :   t o H e x ; 
 
 	 	 r e t u r n   ' # '   +   f n ( t h i s . r )     +   f n ( t h i s . g )   +   f n ( t h i s . b ) ; 
 	 } 
 
 	 / * * 
 	   *   O u t p u t   c u r r e n t   c o l o r   a s   ` r g b a ? ( . . . ) `   C S S   c o l o r 
 	   *   @ r e t u r n   { S t r i n g } 
 	   * / 
 	 t o R G B ( )   { 
 	 	 c o n s t   v a l u e s   =   [ t h i s . r ,   t h i s . g ,   t h i s . b ] ; 
 	 	 i f   ( t h i s . a l p h a   ! = =   1 )   { 
 	 	 	 v a l u e s . p u s h ( t h i s . a l p h a . t o F i x e d ( 8 ) . r e p l a c e ( / \ . ? 0 + $ / ,   ' ' ) ) ; 
 	 	 } 
 
 	 	 r e t u r n   ` $ { v a l u e s . l e n g t h   = = =   3   ?   ' r g b '   :   ' r g b a ' } ( $ { v a l u e s . j o i n ( ' ,   ' ) } ) ` ; 
 	 } 
 
 	 t o S t r i n g ( s h o r t )   { 
 	 	 i f   ( ! t h i s . r   & &   ! t h i s . g   & &   ! t h i s . b   & &   ! t h i s . a l p h a )   { 
 	 	 	 r e t u r n   ' t r a n s p a r e n t ' ; 
 	 	 } 
 	 	 r e t u r n   t h i s . a l p h a   = = =   1   ?   t h i s . t o H e x ( s h o r t )   :   t h i s . t o R G B ( ) ; 
 	 } 
 } 
 
 / * * 
   *   C h e c k   i f   g i v e n   c o d e   i s   a   h e x   v a l u e   ( / 0 - 9 a - f / ) 
   *   @ p a r a m     { N u m b e r }     c o d e 
   *   @ r e t u r n   { B o o l e a n } 
   * / 
 f u n c t i o n   i s H e x ( c o d e )   { 
 	 r e t u r n   s t r e a m R e a d e r U t i l s . i s N u m b e r ( c o d e )   | |   s t r e a m R e a d e r U t i l s . i s A l p h a ( c o d e ,   6 5 ,   7 0 ) ;   / /   A - F 
 } 
 
 f u n c t i o n   i s S h o r t H e x ( h e x )   { 
 	 r e t u r n   ! ( h e x   %   1 7 ) ; 
 } 
 
 f u n c t i o n   t o S h o r t H e x ( n u m )   { 
 	 r e t u r n   ( n u m   > >   4 ) . t o S t r i n g ( 1 6 ) ; 
 } 
 
 f u n c t i o n   t o H e x ( n u m )   { 
 	 r e t u r n   p a d ( n u m . t o S t r i n g ( 1 6 ) ,   2 ) ; 
 } 
 
 f u n c t i o n   p a d ( v a l u e ,   l e n )   { 
 	 w h i l e   ( v a l u e . l e n g t h   <   l e n )   { 
 	 	 v a l u e   =   ' 0 '   +   v a l u e ; 
 	 } 
 	 r e t u r n   v a l u e ; 
 } 
 
 / * * 
   *   @ p a r a m     { N u m b e r }     c o d e 
   *   @ r e t u r n   { B o o l e a n } 
   * / 
 f u n c t i o n   i s A l p h a N u m e r i c W o r d ( c o d e )   { 
 	 r e t u r n   s t r e a m R e a d e r U t i l s . i s N u m b e r ( c o d e )   | |   i s A l p h a W o r d ( c o d e ) ; 
 } 
 
 / * * 
   *   @ p a r a m     { N u m b e r }     c o d e 
   *   @ r e t u r n   { B o o l e a n } 
   * / 
 f u n c t i o n   i s A l p h a W o r d ( c o d e )   { 
 	 r e t u r n   c o d e   = = =   9 5   / *   _   * /   | |   s t r e a m R e a d e r U t i l s . i s A l p h a ( c o d e ) ; 
 } 
 
 c o n s t   P E R C E N T   =   3 7 ;   / /   % 
 c o n s t   D O T $ 1           =   4 6 ;   / /   . 
 c o n s t   D A S H         =   4 5 ;   / /   - 
 
 / * * 
   *   C o n s u m e s   n u m e r i c   C S S   v a l u e   ( n u m b e r   w i t h   o p t i o n a l   u n i t )   f r o m   c u r r e n t   s t r e a m , 
   *   i f   p o s s i b l e 
   *   @ p a r a m     { S t r e a m R e a d e r }   s t r e a m 
   *   @ r e t u r n   { N u m e r i c V a l u e } 
   * / 
 f u n c t i o n   c o n s u m e N u m e r i c V a l u e ( s t r e a m )   { 
 	 s t r e a m . s t a r t   =   s t r e a m . p o s ; 
 	 i f   ( e a t N u m b e r ( s t r e a m ) )   { 
 	 	 c o n s t   n u m   =   s t r e a m . c u r r e n t ( ) ; 
 	 	 s t r e a m . s t a r t   =   s t r e a m . p o s ; 
 
 	 	 / /   e a t   u n i t ,   w h i c h   c a n   b e   a   %   o r   a l p h a   w o r d 
 	 	 s t r e a m . e a t ( P E R C E N T )   | |   s t r e a m . e a t W h i l e ( i s A l p h a W o r d ) ; 
 	 	 r e t u r n   n e w   N u m e r i c V a l u e ( n u m ,   s t r e a m . c u r r e n t ( ) ) ; 
 	 } 
 } 
 
 / * * 
   *   A   n u m e r i c   C S S   v a l u e   w i t h   o p t i o n a l   u n i t 
   * / 
 c l a s s   N u m e r i c V a l u e   { 
 	 c o n s t r u c t o r ( v a l u e ,   u n i t )   { 
 	 	 t h i s . t y p e   =   ' n u m e r i c ' ; 
 	 	 t h i s . v a l u e   =   N u m b e r ( v a l u e ) ; 
 	 	 t h i s . u n i t   =   u n i t   | |   ' ' ; 
 	 } 
 
 	 t o S t r i n g ( )   { 
 	 	 r e t u r n   ` $ { t h i s . v a l u e } $ { t h i s . u n i t } ` ; 
 	 } 
 } 
 
 / * * 
   *   E a t s   n u m b e r   v a l u e   f r o m   g i v e n   s t r e a m 
   *   @ p a r a m     { S t r e a m R e a d e r }   s t r e a m 
   *   @ r e t u r n   { B o o l e a n }   R e t u r n s   ` t r u e `   i f   n u m b e r   w a s   c o n s u m e d 
   * / 
 f u n c t i o n   e a t N u m b e r ( s t r e a m )   { 
 	 c o n s t   s t a r t   =   s t r e a m . p o s ; 
 	 c o n s t   n e g a t i v e   =   s t r e a m . e a t ( D A S H ) ; 
 	 c o n s t   a f t e r N e g a t i v e   =   s t r e a m . p o s ; 
 
 	 s t r e a m . e a t W h i l e ( s t r e a m R e a d e r U t i l s . i s N u m b e r ) ; 
 	 
 	 c o n s t   p r e v P o s   =   s t r e a m . p o s ; 
 	 i f   ( s t r e a m . e a t ( D O T $ 1 )   & &   ! s t r e a m . e a t W h i l e ( s t r e a m R e a d e r U t i l s . i s N u m b e r ) )   { 
 	 	 / /   N u m b e r   f o l l o w e d   b y   a   d o t ,   b u t   t h e n   n o   n u m b e r 
 	 	 s t r e a m . p o s   =   p r e v P o s ; 
 	 } 
 
 	 / /   E d g e   c a s e :   c o n s u m e d   d a s h   o n l y :   n o t   a   n u m b e r ,   b a i l - o u t 
 	 i f   ( s t r e a m . p o s   = = =   a f t e r N e g a t i v e )   { 
 	 	 s t r e a m . p o s   =   s t a r t ; 
 	 } 
 
 	 r e t u r n   s t r e a m . p o s   ! = =   s t a r t ; 
 } 
 
 c o n s t   D O L L A R   =   3 6 ;   / /   $ 
 c o n s t   D A S H $ 1       =   4 5 ;   / /   - 
 c o n s t   A T           =   6 4 ;   / /   @ 
 
 / * * 
   *   C o n s u m e s   a   k e y w o r d :   e i t h e r   a   v a r i a b l e   ( a   w o r d   t h a t   s t a r t s   w i t h   $   o r   @ )   o r   C S S 
   *   k e y w o r d   o r   s h o r t h a n d 
   *   @ p a r a m     { S t r e a m R e a d e r }   s t r e a m 
   *   @ p a r a m     { B o o l e a n }   [ s h o r t ]   U s e   s h o r t   n o t a t i o n   f o r   c o n s u m i n g   v a l u e . 
   *   T h e   d i f f e r e n c e   b e t w e e n    s h o r t    a n d    f u l l    n o t a t i o n   i s   t h a t   f i r s t   o n e   u s e s 
   *   a l p h a   c h a r a c t e r s   o n l y   a n d   u s e d   f o r   e x t r a c t i n g   k e y w o r d s   f r o m   a b b r e v i a t i o n , 
   *   w h i l e    f u l l    n o t a t i o n   a l s o   s u p p o r t s   n u m b e r s   a n d   d a s h e s 
   *   @ r e t u r n   { S t r i n g }   C o n s u m e d   v a r i a b l e 
   * / 
 f u n c t i o n   c o n s u m e K e y w o r d ( s t r e a m ,   s h o r t )   { 
 	 s t r e a m . s t a r t   =   s t r e a m . p o s ; 
 
 	 i f   ( s t r e a m . e a t ( D O L L A R )   | |   s t r e a m . e a t ( A T ) )   { 
 	 	 / /   S C S S   o r   L E S S   v a r i a b l e 
 	 	 s t r e a m . e a t W h i l e ( i s V a r i a b l e N a m e ) ; 
 	 }   e l s e   i f   ( s h o r t )   { 
 	 	 s t r e a m . e a t W h i l e ( i s A l p h a W o r d ) ; 
 	 }   e l s e   { 
 	 	 s t r e a m . e a t W h i l e ( i s K e y w o r d ) ; 
 	 } 
 
 	 r e t u r n   s t r e a m . s t a r t   ! = =   s t r e a m . p o s   ?   n e w   K e y w o r d ( s t r e a m . c u r r e n t ( ) )   :   n u l l ; 
 } 
 
 c l a s s   K e y w o r d   { 
 	 c o n s t r u c t o r ( v a l u e )   { 
 	 	 t h i s . t y p e   =   ' k e y w o r d ' ; 
 	 	 t h i s . v a l u e   =   v a l u e ; 
 	 } 
 
 	 t o S t r i n g ( )   { 
 	 	 r e t u r n   t h i s . v a l u e ; 
 	 } 
 } 
 
 f u n c t i o n   i s K e y w o r d ( c o d e )   { 
 	 r e t u r n   i s A l p h a N u m e r i c W o r d ( c o d e )   | |   c o d e   = = =   D A S H $ 1 ; 
 } 
 
 f u n c t i o n   i s V a r i a b l e N a m e ( c o d e )   { 
 	 r e t u r n   c o d e   = = =   4 5   / *   -   * /   | |   i s A l p h a N u m e r i c W o r d ( c o d e ) ; 
 } 
 
 c o n s t   o p t   =   {   t h r o w s :   t r u e   } ; 
 
 / * * 
   *   C o n s u m e s   ' s i n g l e '   o r   " d o u b l e " - q u o t e d   s t r i n g   f r o m   g i v e n   s t r i n g ,   i f   p o s s i b l e 
   *   @ p a r a m     { S t r e a m R e a d e r }   s t r e a m 
   *   @ r e t u r n   { S t r i n g } 
   * / 
 f u n c t i o n   c o n s u m e Q u o t e d ( s t r e a m )   { 
 	 i f   ( s t r e a m R e a d e r U t i l s . e a t Q u o t e d ( s t r e a m ,   o p t ) )   { 
 	 	 r e t u r n   n e w   Q u o t e d S t r i n g ( s t r e a m . c u r r e n t ( ) ) ; 
 	 } 
 } 
 
 c l a s s   Q u o t e d S t r i n g   { 
 	 c o n s t r u c t o r ( v a l u e )   { 
 	 	 t h i s . t y p e   =   ' s t r i n g ' ; 
 	 	 t h i s . v a l u e   =   v a l u e ; 
 	 } 
 
 	 t o S t r i n g ( )   { 
 	 	 r e t u r n   t h i s . v a l u e ; 
 	 } 
 } 
 
 c o n s t   L B R A C E   =   4 0 ;   / /   ( 
 c o n s t   R B R A C E   =   4 1 ;   / /   ) 
 c o n s t   C O M M A     =   4 4 ;   / /   , 
 
 / * * 
   *   C o n s u m e s   a r g u m e n t s   f r o m   g i v e n   s t r i n g . 
   *   A r g u m e n t s   a r e   c o m m a - s e p a r a t e d   l i s t   o f   C S S   v a l u e s   i n s i d e   r o u n d   b r a c e s ,   e . g . 
   *   ` ( 1 ,   a 2 ,   ' a 3 ' ) ` .   N e s t e d   l i s t s   a n d   q u o t e d   s t r i n g s   a r e   s u p p o r t e d 
   *   @ p a r a m     { S t r e a m R e a d e r }   s t r e a m 
   *   @ r e t u r n   { A r r a y }                 A r r a y   o f   a r g u m e n t s ,   ` n u l l `   i f   a r g u m e n t s   c a n n o t   b e   c o n s u m e d 
   * / 
 f u n c t i o n   c o n s u m e A r g u m e n t L i s t ( s t r e a m )   { 
 	 i f   ( ! s t r e a m . e a t ( L B R A C E ) )   { 
 	 	 / /   n o t   a n   a r g u m e n t   l i s t 
 	 	 r e t u r n   n u l l ; 
 	 } 
 
 	 l e t   a r g ; 
 	 c o n s t   a r g s L i s t   =   [ ] ; 
 
 	 w h i l e   ( ! s t r e a m . e o f ( ) )   { 
 	 	 i f   ( a r g   =   c o n s u m e A r g u m e n t ( s t r e a m ) )   { 
 	 	 	 a r g s L i s t . p u s h ( a r g ) ; 
 	 	 }   e l s e   { 
 	 	 	 / /   d i d n  t   c o n s u m e d   a r g u m e n t ,   e x p e c t   a r g u m e n t   s e p a r a t o r   o r   e n d - o f - a r g u m e n t s 
 	 	 	 s t r e a m . e a t W h i l e ( s t r e a m R e a d e r U t i l s . i s W h i t e S p a c e ) ; 
 
 	 	 	 i f   ( s t r e a m . e a t ( R B R A C E ) )   { 
 	 	 	 	 / /   e n d   o f   a r g u m e n t s   l i s t 
 	 	 	 	 b r e a k ; 
 	 	 	 } 
 
 	 	 	 i f   ( ! s t r e a m . e a t ( C O M M A ) )   { 
 	 	 	 	 t h r o w   s t r e a m . e r r o r ( ' E x p e c t e d   ,   o r   ) ' ) ; 
 	 	 	 } 
 	 	 } 
 	 } 
 
 	 r e t u r n   a r g s L i s t ; 
 } 
 
 / * * 
   *   C o n s u m e s   a   s i n g l e   a r g u m e n t .   A n   a r g u m e n t   i s   a   ` C S S V a l u e ` ,   e . g .   i t   c o u l d   b e 
   *   a   s p a c e - s e p a r a t e d   s t r i n g   o f   v a l u e 
   *   @ p a r a m     { S t r e a m R e a d e r }   s t r e a m 
   *   @ r e t u r n   { C S S V a l u e } 
   * / 
 f u n c t i o n   c o n s u m e A r g u m e n t ( s t r e a m )   { 
 	 c o n s t   r e s u l t   =   n e w   C S S V a l u e ( ) ; 
 	 l e t   v a l u e ; 
 
 	 w h i l e   ( ! s t r e a m . e o f ( ) )   { 
 	 	 s t r e a m . e a t W h i l e ( s t r e a m R e a d e r U t i l s . i s W h i t e S p a c e ) ; 
 	 	 v a l u e   =   c o n s u m e N u m e r i c V a l u e ( s t r e a m )   | |   c o n s u m e C o l o r ( s t r e a m ) 
 	 	 	 | |   c o n s u m e Q u o t e d ( s t r e a m )   | |   c o n s u m e K e y w o r d O r F u n c t i o n ( s t r e a m ) ; 
 
 	 	 i f   ( ! v a l u e )   { 
 	 	 	 b r e a k ; 
 	 	 } 
 
 	 	 r e s u l t . a d d ( v a l u e ) ; 
 	 } 
 
 	 r e t u r n   r e s u l t . s i z e   ?   r e s u l t   :   n u l l ; 
 } 
 
 / * * 
   *   C o n s u m e s   e i t h e r   f u n c t i o n   c a l l   l i k e   ` f o o ( ) `   o r   k e y w o r d   l i k e   ` f o o ` 
   *   @ p a r a m     { S t r e a m R e a d e r }   s t r e a m 
   *   @ r e t u r n   { K e y w o r d | F u n c t i o n C a l l } 
   * / 
 f u n c t i o n   c o n s u m e K e y w o r d O r F u n c t i o n ( s t r e a m )   { 
 	 c o n s t   k w   =   c o n s u m e K e y w o r d ( s t r e a m ) ; 
 	 i f   ( k w )   { 
 	 	 c o n s t   a r g s   =   c o n s u m e A r g u m e n t L i s t ( s t r e a m ) ; 
 	 	 r e t u r n   a r g s   ?   n e w   F u n c t i o n C a l l ( k w . t o S t r i n g ( ) ,   a r g s )   :   k w ; 
 	 } 
 } 
 
 c l a s s   F u n c t i o n C a l l   { 
 	 / * * 
 	   *   @ p a r a m   { S t r i n g }   n a m e   F u n c t i o n   n a m e 
 	   *   @ p a r a m   { A r r a y }     a r g s   F u n c t i o n   a r g u m e n t s 
 	   * / 
 	 c o n s t r u c t o r ( n a m e ,   a r g s )   { 
 	 	 t h i s . t y p e   =   ' f u n c t i o n ' ; 
 	 	 t h i s . n a m e   =   n a m e ; 
 	 	 t h i s . a r g s   =   a r g s   | |   [ ] ; 
 	 } 
 
 	 t o S t r i n g ( )   { 
 	 	 r e t u r n   ` $ { t h i s . n a m e } ( $ { t h i s . a r g s . j o i n ( ' ,   ' ) } ) ` ; 
 	 } 
 } 
 
 c o n s t   E X C L       =   3 3 ;   / /   ! 
 c o n s t   D O L L A R $ 1   =   3 6 ;   / /   $ 
 c o n s t   P L U S       =   4 3 ;   / /   + 
 c o n s t   D A S H $ 2       =   4 5 ;   / /   - 
 c o n s t   C O L O N     =   5 8 ;   / /   : 
 c o n s t   A T $ 1           =   6 4 ;   / /   @ 
 
 / * * 
   *   P a r s e s   g i v e n   E m m e t   C S S   a b b r e v i a t i o n   a n d   r e t u r n s   i t   a s   p a r s e d   N o d e   t r e e 
   *   @ p a r a m   { S t r i n g }   a b b r 
   *   @ r e t u r n   { N o d e } 
   * / 
 f u n c t i o n   i n d e x ( a b b r )   { 
 	 c o n s t   r o o t   =   n e w   N o d e ( ) ; 
 	 c o n s t   s t r e a m   =   n e w   S t r e a m R e a d e r ( a b b r ) ; 
 
 	 w h i l e   ( ! s t r e a m . e o f ( ) )   { 
 	 	 l e t   n o d e   =   n e w   N o d e ( c o n s u m e I d e n t ( s t r e a m ) ) ; 
 	 	 n o d e . v a l u e   =   c o n s u m e V a l u e ( s t r e a m ) ; 
 
 	 	 c o n s t   a r g s   =   c o n s u m e A r g u m e n t L i s t ( s t r e a m ) ; 
 	 	 i f   ( a r g s )   { 
 	 	 	 / /   t e c h n i c a l l y ,   a r g u m e n t s   i n   C S S   a r e   a n o n y m o u s   E m m e t   N o d e   a t t r i b u t e s , 
 	 	 	 / /   b u t   s i n c e   E m m e t   c a n   s u p p o r t   o n l y   o n e   a n o n y m o u s ,   ` n u l l ` - n a m e 
 	 	 	 / /   a t t r i b u t e   ( f o r   g o o d   r e a s o n s ) ,   w e  l l   u s e   a r g u m e n t   i n d e x   a s   n a m e 
 	 	 	 f o r   ( l e t   i   =   0 ;   i   <   a r g s . l e n g t h ;   i + + )   { 
 	 	 	 	 n o d e . s e t A t t r i b u t e ( S t r i n g ( i ) ,   a r g s [ i ] ) ; 
 	 	 	 } 
 	 	 } 
 
 	 	 / /   C o n s u m e   ` ! i m p o r t a n t `   m o d i f i e r   a t   t h e   e n d   o f   e x p r e s s i o n 
 	 	 i f   ( s t r e a m . e a t ( E X C L ) )   { 
 	 	 	 n o d e . v a l u e . a d d ( ' ! ' ) ; 
 	 	 } 
 
 	 	 r o o t . a p p e n d C h i l d ( n o d e ) ; 
 
 	 	 / /   C S S   a b b r e v i a t i o n s   c a n n o t   b e   n e s t e d ,   o n l y   l i s t e d 
 	 	 i f   ( ! s t r e a m . e a t ( P L U S ) )   { 
 	 	 	 b r e a k ; 
 	 	 } 
 	 } 
 
 	 i f   ( ! s t r e a m . e o f ( ) )   { 
 	 	 t h r o w   s t r e a m . e r r o r ( ' U n e x p e c t e d   c h a r a c t e r ' ) ; 
 	 } 
 
 	 r e t u r n   r o o t ; 
 } 
 
 / * * 
   *   C o n s u m e s   C S S   p r o p e r t y   i d e n t i f i e r   f r o m   g i v e n   s t r e a m 
   *   @ p a r a m     { S t r e a m R e a d e r }   s t r e a m 
   *   @ r e t u r n   { S t r i n g } 
   * / 
 f u n c t i o n   c o n s u m e I d e n t ( s t r e a m )   { 
 	 s t r e a m . s t a r t   =   s t r e a m . p o s ; 
 	 s t r e a m . e a t W h i l e ( i s I d e n t P r e f i x ) ; 
 	 s t r e a m . e a t W h i l e ( i s I d e n t ) ; 
 	 r e t u r n   s t r e a m . s t a r t   ! = =   s t r e a m . p o s   ?   s t r e a m . c u r r e n t ( )   :   n u l l ; 
 } 
 
 / * * 
   *   C o n s u m e s   e m b e d d e d   v a l u e   f r o m   E m m e t   C S S   a b b r e v i a t i o n   s t r e a m 
   *   @ p a r a m     { S t r e a m R e a d e r }   s t r e a m 
   *   @ r e t u r n   { C S S V a l u e } 
   * / 
 f u n c t i o n   c o n s u m e V a l u e ( s t r e a m )   { 
 	 c o n s t   v a l u e s   =   n e w   C S S V a l u e ( ) ; 
 	 l e t   v a l u e ; 
 
 	 w h i l e   ( ! s t r e a m . e o f ( ) )   { 
 	 	 / /   u s e   c o l o n   a s   v a l u e   s e p a r a t o r 
 	 	 s t r e a m . e a t ( C O L O N ) ; 
 	 	 i f   ( v a l u e   =   c o n s u m e N u m e r i c V a l u e ( s t r e a m )   | |   c o n s u m e C o l o r ( s t r e a m ) )   { 
 	 	 	 / /   e d g e   c a s e :   a   d a s h   a f t e r   u n i t - l e s s   n u m e r i c   v a l u e   o r   c o l o r   s h o u l d 
 	 	 	 / /   b e   t r e a t e d   a s   v a l u e   s e p a r a t o r ,   n o t   n e g a t i v e   s i g n 
 	 	 	 i f   ( ! v a l u e . u n i t )   { 
 	 	 	 	 s t r e a m . e a t ( D A S H $ 2 ) ; 
 	 	 	 } 
 	 	 }   e l s e   { 
 	 	 	 s t r e a m . e a t ( D A S H $ 2 ) ; 
 	 	 	 v a l u e   =   c o n s u m e K e y w o r d ( s t r e a m ,   t r u e ) ; 
 	 	 } 
 
 	 	 i f   ( ! v a l u e )   { 
 	 	 	 b r e a k ; 
 	 	 } 
 
 	 	 v a l u e s . a d d ( v a l u e ) ; 
 	 } 
 
 	 r e t u r n   v a l u e s ; 
 } 
 
 / * * 
   *   @ p a r a m     { N u m b e r }     c o d e 
   *   @ r e t u r n   { B o o l e a n } 
   * / 
 f u n c t i o n   i s I d e n t ( c o d e )   { 
 	 r e t u r n   i s A l p h a W o r d ( c o d e ) ; 
 } 
 
 / * * 
   *   @ p a r a m     { N u m b e r }     c o d e 
   *   @ r e t u r n   { B o o l e a n } 
   * / 
 f u n c t i o n   i s I d e n t P r e f i x ( c o d e )   { 
 	 r e t u r n   c o d e   = = =   A T $ 1   | |   c o d e   = = =   D O L L A R $ 1   | |   c o d e   = = =   E X C L ; 
 } 
 
 m o d u l e . e x p o r t s   =   i n d e x ; 
 
 } , { " @ e m m e t i o / n o d e " : 1 3 , " @ e m m e t i o / s t r e a m - r e a d e r " : 1 9 , " @ e m m e t i o / s t r e a m - r e a d e r - u t i l s " : 1 8 } ] , 4 : [ f u n c t i o n ( r e q u i r e , m o d u l e , e x p o r t s ) { 
 ' u s e   s t r i c t ' ; 
 
 O b j e c t . d e f i n e P r o p e r t y ( e x p o r t s ,   ' _ _ e s M o d u l e ' ,   {   v a l u e :   t r u e   } ) ; 
 
 c o n s t   D A S H   =   4 5 ;   / /   - 
 
 / * * 
   *   C a l c u l a t e s   f u z z y   m a t c h   s c o r e   o f   h o w   c l o s e   ` a b b r `   m a t c h e s   g i v e n   ` s t r i n g ` . 
   *   @ p a r a m     { S t r i n g }   a b b r                 A b b r e v i a t i o n   t o   s c o r e 
   *   @ p a r a m     { S t r i n g }   s t r i n g             S t r i n g   t o   m a t c h 
   *   @ p a r a m     { N u m b e r }   [ f u z z i n e s s ]   F u z z y   f a c t o r 
   *   @ r e t u r n   { N u m b e r }                           M a t c h   s c o r e 
   * / 
 f u n c t i o n   s t r i n g S c o r e ( a b b r ,   s t r i n g )   { 
 	 a b b r   =   a b b r . t o L o w e r C a s e ( ) ; 
 	 s t r i n g   =   s t r i n g . t o L o w e r C a s e ( ) ; 
 
 	 i f   ( a b b r   = = =   s t r i n g )   { 
 	 	 r e t u r n   1 ; 
 	 } 
 
 	 / /   a   s t r i n g   M U S T   s t a r t   w i t h   t h e   s a m e   c h a r a c t e r   a s   a b b r e v i a t i o n 
 	 i f   ( ! s t r i n g   | |   a b b r . c h a r C o d e A t ( 0 )   ! = =   s t r i n g . c h a r C o d e A t ( 0 ) )   { 
 	 	 r e t u r n   0 ; 
 	 } 
 
 	 c o n s t   a b b r L e n g t h   =   a b b r . l e n g t h ; 
 	 c o n s t   s t r i n g L e n g t h   =   s t r i n g . l e n g t h ; 
 	 l e t   i   =   1 ,   j   =   1 ,   s c o r e   =   s t r i n g L e n g t h ; 
 	 l e t   c h 1 ,   c h 2 ,   f o u n d ,   a c r o n y m ; 
 
 	 w h i l e   ( i   <   a b b r L e n g t h )   { 
 	 	 c h 1   =   a b b r . c h a r C o d e A t ( i ) ; 
 	 	 f o u n d   =   f a l s e ; 
 	 	 a c r o n y m   =   f a l s e ; 
 
 	 	 w h i l e   ( j   <   s t r i n g L e n g t h )   { 
 	 	 	 c h 2   =   s t r i n g . c h a r C o d e A t ( j ) ; 
 
 	 	 	 i f   ( c h 1   = = =   c h 2 )   { 
 	 	 	 	 f o u n d   =   t r u e ; 
 	 	 	 	 s c o r e   + =   ( s t r i n g L e n g t h   -   j )   *   ( a c r o n y m   ?   2   :   1 ) ; 
 	 	 	 	 b r e a k ; 
 	 	 	 } 
 
 	 	 	 / /   a d d   a c r o n y m   b o n u s   f o r   e x a c t l y   n e x t   m a t c h   a f t e r   u n m a t c h e d   ` - ` 
 	 	 	 a c r o n y m   =   c h 2   = = =   D A S H ; 
 	 	 	 j + + ; 
 	 	 } 
 
 	 	 i f   ( ! f o u n d )   { 
 	 	 	 b r e a k ; 
 	 	 } 
 
 	 	 i + + ; 
 	 } 
 
 	 r e t u r n   s c o r e   & &   s c o r e   *   ( i   /   a b b r L e n g t h )   /   s u m ( s t r i n g L e n g t h ) ; 
 } 
 
 / * * 
   *   C a l c u l a t e s   s u m   o f   f i r s t   ` n `   n a t u r a l   n u m b e r s ,   e . g .   1 + 2 + 3 + . . . n 
   *   @ p a r a m     { N u m b e r }   n 
   *   @ r e t u r n   { N u m b e r } 
   * / 
 f u n c t i o n   s u m ( n )   { 
 	 r e t u r n   n   *   ( n   +   1 )   /   2 ; 
 } 
 
 c o n s t   r e P r o p e r t y   =   / ^ ( [ a - z - ] + ) ( ? : \ s * : \ s * ( [ ^ \ n \ r ] + ) ) ? $ / ; 
 c o n s t   D A S H $ 1   =   4 5 ;   / /   - 
 
 / * * 
   *   C r e a t e s   a   s p e c i a l   s t r u c t u r e   f o r   r e s o l v i n g   C S S   p r o p e r t i e s   f r o m   p l a i n   C S S 
   *   s n i p p e t s . 
   *   A l m o s t   a l l   C S S   s n i p p e t s   a r e   a l i a s e s   f o r   r e a l   C S S   p r o p e r t i e s   w i t h   a v a i l a b l e 
   *   v a l u e   v a r i a n t s ,   o p t i o n a l l y   s e p a r a t e d   b y   ` | ` .   M o s t   v a l u e s   a r e   k e y w o r d s   t h a t 
   *   c a n   b e   f u z z y - r e s o l v e d   a s   w e l l .   S o m e   C S S   p r o p e r t i e s   a r e   s h o r t h a n d s   f o r   o t h e r , 
   *   m o r e   s p e c i f i c   p r o p e r t i e s ,   l i k e   ` b o r d e r `   a n d   ` b o r d e r - s t y l e ` .   F o r   s u c h   c a s e s 
   *   k e y w o r d s   f r o m   m o r e   s p e c i f i c   p r o p e r t i e s   s h o u l d   b e   a v a i l a b l e   i n   s h o r t h a n d s   t o o . 
   *   @ p a r a m   { S n i p p e t [ ] }   s n i p p e t s 
   *   @ r e t u r n   { C S S S n i p p e t [ ] } 
   * / 
 f u n c t i o n   c s s S n i p p e t s ( s n i p p e t s )   { 
 	 r e t u r n   n e s t (   s n i p p e t s . m a p ( s n i p p e t   = >   n e w   C S S S n i p p e t ( s n i p p e t . k e y ,   s n i p p e t . v a l u e ) )   ) ; 
 } 
 
 c l a s s   C S S S n i p p e t   { 
 	 c o n s t r u c t o r ( k e y ,   v a l u e )   { 
 	 	 t h i s . k e y   =   k e y ; 
 	 	 t h i s . v a l u e   =   v a l u e ; 
 	 	 t h i s . p r o p e r t y   =   n u l l ; 
 
 	 	 / /   d e t e c t   i f   g i v e n   s n i p p e t   i s   a   p r o p e r t y 
 	 	 c o n s t   m   =   v a l u e   & &   v a l u e . m a t c h ( r e P r o p e r t y ) ; 
 	 	 i f   ( m )   { 
 	 	 	 t h i s . p r o p e r t y   =   m [ 1 ] ; 
 	 	 	 t h i s . v a l u e   =   m [ 2 ] ; 
 	 	 } 
 
 	 	 t h i s . d e p e n d e n c i e s   =   [ ] ; 
 	 } 
 
 	 a d d D e p e n d e n c y ( d e p )   { 
 	 	 t h i s . d e p e n d e n c i e s . p u s h ( d e p ) ; 
 	 } 
 
 	 g e t   d e f a u l t V a l u e ( )   { 
 	 	 r e t u r n   t h i s . v a l u e   ! =   n u l l   ?   s p l i t V a l u e ( t h i s . v a l u e ) [ 0 ]   :   n u l l ; 
 	 } 
 
 	 / * * 
 	   *   R e t u r n s   l i s t   o f   u n i q u e   k e y w o r d s   f o r   c u r r e n t   C S S   s n i p p e t   a n d   i t s   d e p e n d e n c i e s 
 	   *   @ r e t u r n   { S t r i n g [ ] } 
 	   * / 
 	 k e y w o r d s ( )   { 
 	 	 c o n s t   s t a c k   =   [ ] ; 
 	 	 c o n s t   k e y w o r d s   =   n e w   S e t ( ) ; 
 	 	 l e t   i   =   0 ,   i t e m ,   c a n d i d a t e s ; 
 
 	 	 i f   ( t h i s . p r o p e r t y )   { 
 	 	 	 / /   s c a n   v a l i d   C S S - p r o p e r t i e s   o n l y 
 	 	 	 s t a c k . p u s h ( t h i s ) ; 
 	 	 } 
 
 	 	 w h i l e   ( i   <   s t a c k . l e n g t h )   { 
 	 	 	 / /   N B   K e e p   i t e m s   i n   s t a c k   i n s t e a d   o f   p u s h / p o p   t o   a v o i d   p o s s i b l e 
 	 	 	 / /   c i r c u l a r   r e f e r e n c e s 
 	 	 	 i t e m   =   s t a c k [ i + + ] ; 
 
 	 	 	 i f   ( i t e m . v a l u e )   { 
 	 	 	 	 c a n d i d a t e s   =   s p l i t V a l u e ( i t e m . v a l u e ) . f i l t e r ( i s K e y w o r d ) ; 
 
 	 	 	 	 / /   e x t r a c t   p o s s i b l e   k e y w o r d s   f r o m   s n i p p e t   v a l u e 
 	 	 	 	 f o r   ( l e t   j   =   0 ;   j   <   c a n d i d a t e s . l e n g t h ;   j + + )   { 
 	 	 	 	 	 k e y w o r d s . a d d ( c a n d i d a t e s [ j ] . t r i m ( ) ) ; 
 	 	 	 	 } 
 
 	 	 	 	 / /   a d d   d e p e n d e n c i e s   i n t o   s c a n   s t a c k 
 	 	 	 	 f o r   ( l e t   j   =   0 ,   d e p s   =   i t e m . d e p e n d e n c i e s ;   j   <   d e p s . l e n g t h ;   j + + )   { 
 	 	 	 	 	 i f   ( s t a c k . i n d e x O f ( d e p s [ j ] )   = = =   - 1 )   { 
 	 	 	 	 	 	 s t a c k . p u s h ( d e p s [ j ] ) ; 
 	 	 	 	 	 } 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 
 	 	 r e t u r n   A r r a y . f r o m ( k e y w o r d s ) ; 
 	 } 
 } 
 
 / * * 
   *   N e s t s   m o r e   s p e c i f i c   C S S   p r o p e r t i e s   i n t o   s h o r t h a n d   o n e s ,   e . g . 
   *   b a c k g r o u n d - p o s i t i o n - x   - >   b a c k g r o u n d - p o s i t i o n   - >   b a c k g r o u n d 
   *   @ p a r a m     { C S S S n i p p e t [ ] }   s n i p p e t s 
   *   @ r e t u r n   { C S S S n i p p e t [ ] } 
   * / 
 f u n c t i o n   n e s t ( s n i p p e t s )   { 
 	 s n i p p e t s   =   s n i p p e t s . s o r t ( s n i p p e t s S o r t ) ; 
 	 c o n s t   s t a c k   =   [ ] ; 
 
 	 / /   F o r   s o r t e d   l i s t   o f   C S S   p r o p e r t i e s ,   c r e a t e   d e p e n d e n c y   g r a p h   w h e r e   e a c h 
 	 / /   s h o r t h a n d   p r o p e r t y   c o n t a i n s   i t s   m o r e   s p e c i f i c   o n e ,   e . g . 
 	 / /   b a c k g r o u n d   - >   b a c k g r o u n d - p o s i t i o n   - >   b a c k g r o u n d - p o s i t i o n - x 
 	 f o r   ( l e t   i   =   0 ,   c u r ,   p r e v ;   i   <   s n i p p e t s . l e n g t h ;   i + + )   { 
 	 	 c u r   =   s n i p p e t s [ i ] ; 
 
 	 	 i f   ( ! c u r . p r o p e r t y )   { 
 	 	 	 / /   n o t   a   C S S   p r o p e r t y ,   s k i p   i t 
 	 	 	 c o n t i n u e ; 
 	 	 } 
 
 	 	 / /   C h e c k   i f   c u r r e n t   p r o p e r t y   b e l o n g s   t o   o n e   f r o m   p a r e n t   s t a c k . 
 	 	 / /   S i n c e   ` s n i p p e t s `   a r r a y   i s   s o r t e d ,   i t e m s   a r e   p e r f e c t l y   a l i g n e d 
 	 	 / /   f r o m   s h o r t h a n d s   t o   m o r e   s p e c i f i c   v a r i a n t s 
 	 	 w h i l e   ( s t a c k . l e n g t h )   { 
 	 	 	 p r e v   =   s t a c k [ s t a c k . l e n g t h   -   1 ] ; 
 
 	 	 	 i f   ( c u r . p r o p e r t y . i n d e x O f ( p r e v . p r o p e r t y )   = = =   0 
 	 	 	 	 & &   c u r . p r o p e r t y . c h a r C o d e A t ( p r e v . p r o p e r t y . l e n g t h )   = = =   D A S H $ 1 )   { 
 	 	 	 	 p r e v . a d d D e p e n d e n c y ( c u r ) ; 
 	 	 	 	 s t a c k . p u s h ( c u r ) ; 
 	 	 	 	 b r e a k ; 
 	 	 	 } 
 
 	 	 	 s t a c k . p o p ( ) ; 
 	 	 } 
 
 	 	 i f   ( ! s t a c k . l e n g t h )   { 
 	 	 	 s t a c k . p u s h ( c u r ) ; 
 	 	 } 
 	 } 
 
 	 r e t u r n   s n i p p e t s ; 
 } 
 
 / * * 
   *   A   s o r t i n g   f u n c t i o n   f o r   a r r a y   o f   s n i p p e t s 
   *   @ p a r a m     { C S S S n i p p e t }   a 
   *   @ p a r a m     { C S S S n i p p e t }   b 
   *   @ r e t u r n   { N u m b e r } 
   * / 
 f u n c t i o n   s n i p p e t s S o r t ( a ,   b )   { 
 	 i f   ( a . k e y   = = =   b . k e y )   { 
 	 	 r e t u r n   0 ; 
 	 } 
 
 	 r e t u r n   a . k e y   <   b . k e y   ?   - 1   :   1 ; 
 } 
 
 / * * 
   *   C h e c k   i f   g i v e n   s t r i n g   i s   a   k e y w o r d   c a n d i d a t e 
   *   @ p a r a m     { S t r i n g }     s t r 
   *   @ r e t u r n   { B o o l e a n } 
   * / 
 f u n c t i o n   i s K e y w o r d ( s t r )   { 
 	 r e t u r n   / ^ \ s * [ \ w - ] + / . t e s t ( s t r ) ; 
 } 
 
 f u n c t i o n   s p l i t V a l u e ( v a l u e )   { 
 	 r e t u r n   S t r i n g ( v a l u e ) . s p l i t ( ' | ' ) ; 
 } 
 
 c o n s t   g l o b a l K e y w o r d s   =   [ ' a u t o ' ,   ' i n h e r i t ' ,   ' u n s e t ' ] ; 
 c o n s t   u n i t l e s s P r o p e r t i e s   =   [ 
 	 ' z - i n d e x ' ,   ' l i n e - h e i g h t ' ,   ' o p a c i t y ' ,   ' f o n t - w e i g h t ' ,   ' z o o m ' , 
 	 ' f l e x ' ,   ' f l e x - g r o w ' ,   ' f l e x - s h r i n k ' 
 ] ; 
 
 c o n s t   d e f a u l t O p t i o n s   =   { 
 	 i n t U n i t :   ' p x ' , 
 	 f l o a t U n i t :   ' e m ' , 
 	 u n i t A l i a s e s :   { 
 	 	 e   : ' e m ' , 
 	 	 p :   ' % ' , 
 	 	 x :   ' e x ' , 
 	 	 r :   ' r e m ' 
 	 } , 
 	 f u z z y S e a r c h M i n S c o r e :   0 
 } ; 
 
 / * * 
   *   F o r   e v e r y   n o d e   i n   g i v e n   ` t r e e ` ,   f i n d s   m a t c h i n g   s n i p p e t   f r o m   ` r e g i s t r y `   a n d 
   *   u p d a t e s   n o d e   w i t h   s n i p p e t   d a t a . 
   * 
   *   T h i s   r e s o l v e r   u s e s   f u z z y   m a t c h i n g   f o r   s e a r c h i n g   m a t c h e d   s n i p p e t s   a n d   t h e i r 
   *   k e y w o r d   v a l u e s . 
   * / 
 
 f u n c t i o n   i n d e x ( t r e e ,   r e g i s t r y ,   o p t i o n s )   { 
 	 o p t i o n s   =   O b j e c t . a s s i g n ( { } ,   d e f a u l t O p t i o n s ,   o p t i o n s ) ; 
 	 o p t i o n s . u n i t A l i a s e s   =   O b j e c t . a s s i g n ( { } ,   d e f a u l t O p t i o n s . u n i t A l i a s e s ,   o p t i o n s   & &   o p t i o n s . u n i t A l i a s e s ) ; 
 
 	 c o n s t   s n i p p e t s   =   c o n v e r t T o C S S S n i p p e t s ( r e g i s t r y ) ; 
 
 	 t r e e . w a l k ( n o d e   = >   r e s o l v e N o d e ( n o d e ,   s n i p p e t s ,   o p t i o n s ) ) ; 
 	 r e t u r n   t r e e ; 
 } 
 
 f u n c t i o n   c o n v e r t T o C S S S n i p p e t s ( r e g i s t r y )   { 
 	 r e t u r n   c s s S n i p p e t s ( r e g i s t r y . a l l ( { t y p e :   ' s t r i n g ' } ) ) ; 
 } 
 
 / * * 
   *   R e s o l v e s   g i v e n   n o d e :   f i n d s   m a t c h e d   C S S   s n i p p e t s   u s i n g   f u z z y   m a t c h   a n d   r e s o l v e s 
   *   k e y w o r d   a l i a s e s   f r o m   n o d e   v a l u e 
   *   @ p a r a m     { N o d e }   n o d e 
   *   @ p a r a m     { C S S S n i p p e t [ ] }   s n i p p e t s 
   *   @ p a r a m     { O b j e c t }   o p t i o n s 
   *   @ r e t u r n   { N o d e } 
   * / 
 f u n c t i o n   r e s o l v e N o d e ( n o d e ,   s n i p p e t s ,   o p t i o n s )   { 
 	 i f   ( o p t i o n s . p r o p e r t y )   { 
 	 	 / /   R e s o l v e   a s   v a l u e   o f   g i v e n   C S S   p r o p e r t y 
 	 	 r e t u r n   r e s o l v e A s P r o p e r t y V a l u e ( n o d e ,   s n i p p e t s . f i n d ( s n i p p e t   = >   s n i p p e t . p r o p e r t y   = = =   o p t i o n s . p r o p e r t y ) ,   o p t i o n s ) ; 
 	 } 
 
 	 c o n s t   s n i p p e t   =   f i n d B e s t M a t c h ( n o d e . n a m e ,   s n i p p e t s ,   ' k e y ' ,   o p t i o n s . f u z z y S e a r c h M i n S c o r e ) ; 
 
 	 i f   ( ! s n i p p e t )   { 
 	 	 / /   E d g e   c a s e :   ` ! i m p o r t a n t `   s n i p p e t 
 	 	 r e t u r n   n o d e . n a m e   = = =   ' ! '   ?   s e t N o d e A s T e x t ( n o d e ,   ' ! i m p o r t a n t ' )   :   n o d e ; 
 	 } 
 
 	 r e t u r n   s n i p p e t . p r o p e r t y 
 	 	 ?   r e s o l v e A s P r o p e r t y ( n o d e ,   s n i p p e t ,   o p t i o n s ) 
 	 	 :   r e s o l v e A s S n i p p e t ( n o d e ,   s n i p p e t ) ; 
 } 
 
 / * * 
   *   R e s o l v e s   g i v e n   p a r s e d   a b b r e v i a t i o n   n o d e   a s   C S S   p r o p e r t y 
   *   @ p a r a m   { N o d e }   n o d e 
   *   @ p a r a m   { C S S S n i p p e t }   s n i p p e t 
   *   @ p a r a m     { O b j e c t }   f o r m a t O p t i o n s 
   *   @ r e t u r n   { N o d e } 
   * / 
 f u n c t i o n   r e s o l v e A s P r o p e r t y ( n o d e ,   s n i p p e t ,   f o r m a t O p t i o n s )   { 
 	 c o n s t   a b b r   =   n o d e . n a m e ; 
 	 n o d e . n a m e   =   s n i p p e t . p r o p e r t y ; 
 
 	 i f   ( n o d e . v a l u e   & &   t y p e o f   n o d e . v a l u e   = = =   ' o b j e c t ' )   { 
 	 	 / /   r e s o l v e   k e y w o r d   s h o r t c u t s 
 	 	 c o n s t   k e y w o r d s   =   s n i p p e t . k e y w o r d s ( ) ; 
 
 	 	 i f   ( ! n o d e . v a l u e . s i z e )   { 
 	 	 	 / /   n o   v a l u e   d e f i n e d ,   t r y   t o   r e s o l v e   u n m a t c h e d   p a r t   a s   a   k e y w o r d   a l i a s 
 	 	 	 l e t   k w   =   f i n d B e s t M a t c h ( g e t U n m a t c h e d P a r t ( a b b r ,   s n i p p e t . k e y ) ,   k e y w o r d s ) ; 
 
 	 	 	 i f   ( ! k w )   { 
 	 	 	 	 / /   n o   m a t c h i n g   v a l u e ,   t r y   t o   g e t   d e f a u l t   o n e 
 	 	 	 	 k w   =   s n i p p e t . d e f a u l t V a l u e ; 
 	 	 	 	 i f   ( k w   & &   k w . i n d e x O f ( ' $ { ' )   = = =   - 1 )   { 
 	 	 	 	 	 / /   Q u i c k   a n d   d i r t y   t e s t   f o r   e x i s t i n g   f i e l d .   I f   n o t ,   w r a p 
 	 	 	 	 	 / /   d e f a u l t   v a l u e   i n   a   f i e l d 
 	 	 	 	 	 k w   =   ` \ $ { 1 : $ { k w } } ` ; 
 	 	 	 	 } 
 	 	 	 } 
 
 	 	 	 i f   ( k w )   { 
 	 	 	 	 n o d e . v a l u e . a d d ( k w ) ; 
 	 	 	 } 
 	 	 }   e l s e   { 
 	 	 	 / /   r e p l a c e   k e y w o r d   a l i a s e s   i n   c u r r e n t   n o d e   v a l u e 
 	 	 	 f o r   ( l e t   i   =   0 ,   t o k e n ;   i   <   n o d e . v a l u e . v a l u e . l e n g t h ;   i + + )   { 
 	 	 	 	 t o k e n   =   n o d e . v a l u e . v a l u e [ i ] ; 
 
 	 	 	 	 i f   ( t o k e n   = = =   ' ! ' )   { 
 	 	 	 	 	 t o k e n   =   ` $ { ! i   ?   ' $ { 1 }   '   :   ' ' } ! i m p o r t a n t ` ; 
 	 	 	 	 }   e l s e   i f   ( i s K e y w o r d $ 1 ( t o k e n ) )   { 
 	 	 	 	 	 t o k e n   =   f i n d B e s t M a t c h ( t o k e n . v a l u e ,   k e y w o r d s ) 
 	 	 	 	 	 	 | |   f i n d B e s t M a t c h ( t o k e n . v a l u e ,   g l o b a l K e y w o r d s ) 
 	 	 	 	 	 	 | |   t o k e n ; 
 	 	 	 	 }   e l s e   i f   ( i s N u m e r i c V a l u e ( t o k e n ) )   { 
 	 	 	 	 	 t o k e n   =   r e s o l v e N u m e r i c V a l u e ( n o d e . n a m e ,   t o k e n ,   f o r m a t O p t i o n s ) ; 
 	 	 	 	 } 
 
 	 	 	 	 n o d e . v a l u e . v a l u e [ i ]   =   t o k e n ; 
 	 	 	 } 
 	 	 } 
 	 } 
 
 	 r e t u r n   n o d e ; 
 } 
 
 / * * 
   *   R e s o l v e s   g i v e n   p a r s e d   a b b r e v i a t i o n   n o d e   a s   a   s n i p p e t :   a   p l a i n   c o d e   c h u n k 
   *   @ p a r a m   { N o d e }   n o d e 
   *   @ p a r a m   { C S S S n i p p e t }   s n i p p e t 
   *   @ r e t u r n   { N o d e } 
   * / 
 f u n c t i o n   r e s o l v e A s S n i p p e t ( n o d e ,   s n i p p e t )   { 
 	 r e t u r n   s e t N o d e A s T e x t ( n o d e ,   s n i p p e t . v a l u e ) ; 
 } 
 
 / * * 
   *   R e s o l v e s   g i v e n   p a r s e d   a b b r e v i a t i o n   n o d e   a s   p r o p e r t y   v a l u e   o f   g i v e n   ` s n i p p e t ` : 
   *   t r i e s   t o   f i n d   b e s t   m a t c h i n g   k e y w o r d   f r o m   C S S   s n i p p e t 
   *   @ p a r a m   { N o d e }   n o d e 
   *   @ p a r a m   { C S S S n i p p e t }   s n i p p e t 
   *   @ p a r a m   { O b j e c t }   o p t i o n s 
   *   @ r e t u r n   { N o d e } 
   * / 
 f u n c t i o n   r e s o l v e A s P r o p e r t y V a l u e ( n o d e ,   s n i p p e t ,   o p t i o n s )   { 
 	 / /   P o s s i b l e   r e s o l v e d   r e s u l t   f o r   C S S   p r o p e r t y : 
 	 / /   *   m a t c h e d   s n i p p e t   k e y w o r d 
 	 / /   *   c o l o r   ( s t a r t s   w i t h   # ) 
 	 / /   E v e r y t h i n g   e l s e   s h o u l d   r e s u l t   t h e   s a m e   a s   i n p u t   a b b r e v i a t i o n 
 	 l e t   k e y w o r d s   =   g l o b a l K e y w o r d s . s l i c e ( ) ; 
 	 i f   ( s n i p p e t )   { 
 	 	 k e y w o r d s   =   k e y w o r d s . c o n c a t ( s n i p p e t . k e y w o r d s ( ) ) ; 
 	 } 
 
 	 c o n s t   v a l u e s   =   [ n o d e . n a m e ] . c o n c a t ( n o d e . v a l u e . v a l u e ) 
 	 	 . f i l t e r ( B o o l e a n ) 
 	 	 . m a p ( v a l u e   = >   { 
 	 	 	 i f   ( t y p e o f   v a l u e   = = =   ' s t r i n g '   | |   v a l u e . t y p e   = = =   ' k e y w o r d ' )   { 
 	 	 	 	 v a l u e   =   S t r i n g ( v a l u e ) ; 
 	 	 	 	 r e t u r n   f i n d B e s t M a t c h ( v a l u e ,   k e y w o r d s ,   n u l l ,   o p t i o n s . f u z z y S e a r c h M i n S c o r e )   | |   v a l u e ; 
 	 	 	 } 
 
 	 	 	 r e t u r n   v a l u e ; 
 	 	 } ) ; 
 
 	 n o d e . n a m e   =   n u l l ; 
 	 n o d e . v a l u e . v a l u e   =   v a l u e s ; 
 
 	 r e t u r n   n o d e ; 
 } 
 
 / * * 
   *   S e t s   g i v e n   p a r s e d   a b b r e v i a t i o n   n o d e   a s   a   t e x t   s n i p p e t 
   *   @ p a r a m   { N o d e }   n o d e 
   *   @ p a r a m   { S t r i n g }   t e x t 
   *   @ r e t u r n   { N o d e } 
   * / 
 f u n c t i o n   s e t N o d e A s T e x t ( n o d e ,   t e x t )   { 
 	 n o d e . n a m e   =   n u l l ; 
 	 n o d e . v a l u e   =   t e x t ; 
 	 r e t u r n   n o d e ; 
 } 
 
 / * * 
   *   F i n d s   b e s t   m a t c h i n g   i t e m   f r o m   ` i t e m s `   a r r a y 
   *   @ p a r a m   { S t r i n g }   a b b r     A b b r e v i a t i o n   t o   m a t c h 
   *   @ p a r a m   { A r r a y }     i t e m s   L i s t   o f   i t e m s   f o r   m a t c h 
   *   @ p a r a m   { S t r i n g }   [ k e y ]   I f   ` i t e m s `   i s   a   l i s t   o f   o b j e c t s ,   u s e   ` k e y `   a s   o b j e c t 
   *   p r o p e r t y   t o   t e s t   a g a i n s t 
   *   @ p a r a m   { N u m b e r }   f u z z y S e a r c h M i n S c o r e   T h e   m i n i m u m   s c o r e   t h e   b e s t   m a t c h e d   i t e m   s h o u l d   h a v e   t o   b e   a   v a l i d   m a t c h . 
   *   @ r e t u r n   { * } 
   * / 
 f u n c t i o n   f i n d B e s t M a t c h ( a b b r ,   i t e m s ,   k e y ,   f u z z y S e a r c h M i n S c o r e )   { 
 	 i f   ( ! a b b r )   { 
 	 	 r e t u r n   n u l l ; 
 	 } 
 
 	 l e t   m a t c h e d I t e m   =   n u l l ; 
 	 l e t   m a x S c o r e   =   0 ; 
 	 f u z z y S e a r c h M i n S c o r e   =   f u z z y S e a r c h M i n S c o r e   | |   0 ; 
 
 	 f o r   ( l e t   i   =   0 ,   i t e m ;   i   <   i t e m s . l e n g t h ;   i + + )   { 
 	 	 i t e m   =   i t e m s [ i ] ; 
 	 	 c o n s t   s c o r e   =   s t r i n g S c o r e ( a b b r ,   g e t S c o r i n g P a r t ( i t e m ,   k e y ) ) ; 
 
 	 	 i f   ( s c o r e   = = =   1 )   { 
 	 	 	 / /   d i r e c t   h i t ,   n o   n e e d   t o   l o o k   f u r t h e r 
 	 	 	 r e t u r n   i t e m ; 
 	 	 } 
 
 	 	 i f   ( s c o r e   & &   s c o r e   > =   m a x S c o r e )   { 
 	 	 	 m a x S c o r e   =   s c o r e ; 
 	 	 	 m a t c h e d I t e m   =   i t e m ; 
 	 	 } 
 	 } 
 
 	 r e t u r n   m a x S c o r e   > =   f u z z y S e a r c h M i n S c o r e   ?   m a t c h e d I t e m   :   n u l l ; 
 } 
 
 f u n c t i o n   g e t S c o r i n g P a r t ( i t e m ,   k e y )   { 
 	 c o n s t   v a l u e   =   i t e m   & &   t y p e o f   i t e m   = = =   ' o b j e c t '   ?   i t e m [ k e y ]   :   i t e m ; 
 	 c o n s t   m   =   ( v a l u e   | |   ' ' ) . m a t c h ( / ^ [ \ w - @ ] + / ) ; 
 	 r e t u r n   m   ?   m [ 0 ]   :   v a l u e ; 
 } 
 
 / * * 
   *   R e t u r n s   a   p a r t   o f   ` a b b r `   t h a t   w a s n  t   d i r e c t l y   m a t c h e d   a g a i n s   ` s t r i n g ` . 
   *   F o r   e x a m p l e ,   i f   a b b r e v i a t i o n   ` p o a s `   i s   m a t c h e d   a g a i n s t   ` p o s i t i o n ` ,   t h e   u n m a t c h e d   p a r t   w i l l   b e   ` a s ` 
   *   s i n c e   ` a `   w a s n  t   f o u n d   i n   s t r i n g   s t r e a m 
   *   @ p a r a m   { S t r i n g }   a b b r 
   *   @ p a r a m   { S t r i n g }   s t r i n g 
   *   @ r e t u r n   { S t r i n g } 
   * / 
 f u n c t i o n   g e t U n m a t c h e d P a r t ( a b b r ,   s t r i n g )   { 
 	 f o r   ( l e t   i   =   0 ,   l a s t P o s   =   0 ;   i   <   a b b r . l e n g t h ;   i + + )   { 
 	 	 l a s t P o s   =   s t r i n g . i n d e x O f ( a b b r [ i ] ,   l a s t P o s ) ; 
 	 	 i f   ( l a s t P o s   = = =   - 1 )   { 
 	 	 	 r e t u r n   a b b r . s l i c e ( i ) ; 
 	 	 } 
 	 	 l a s t P o s + + ; 
 	 } 
 
 	 r e t u r n   ' ' ; 
 } 
 
 / * * 
   *   C h e c k   i f   g i v e n   C S S   v a l u e   t o k e n   i s   a   k e y w o r d 
   *   @ p a r a m   { * }   t o k e n 
   *   @ r e t u r n   { B o o l e a n } 
   * / 
 f u n c t i o n   i s K e y w o r d $ 1 ( t o k e n )   { 
 	 r e t u r n   t o k e n T y p e O f ( t o k e n ,   ' k e y w o r d ' ) ; 
 } 
 
 / * * 
   *   C h e c k   i f   g i v e n   C S S   v a l u e   t o k e n   i s   a   n u m e r i c   v a l u e 
   *   @ p a r a m     { * }     t o k e n 
   *   @ r e t u r n   { B o o l e a n } 
   * / 
 f u n c t i o n   i s N u m e r i c V a l u e ( t o k e n )   { 
 	 r e t u r n   t o k e n T y p e O f ( t o k e n ,   ' n u m e r i c ' ) ; 
 } 
 
 f u n c t i o n   t o k e n T y p e O f ( t o k e n ,   t y p e )   { 
 	 r e t u r n   t o k e n   & &   t y p e o f   t o k e n   = = =   ' o b j e c t '   & &   t o k e n . t y p e   = = =   t y p e ; 
 } 
 
 / * * 
   *   R e s o l v e s   n u m e r i c   v a l u e   f o r   g i v e n   C S S   p r o p e r t y 
   *   @ p a r a m     { S t r i n g }   p r o p e r t y         C S S   p r o p e r t y   n a m e 
   *   @ p a r a m     { N u m e r i c V a l u e }   t o k e n   C S S   n u m e r i c   v a l u e   t o k e n 
   *   @ p a r a m     { O b j e c t }   f o r m a t O p t i o n s   F o r m a t t i n g   o p t i o n s   f o r   u n i t s 
   *   @ r e t u r n   { N u m e r i c V a l u e } 
   * / 
 f u n c t i o n   r e s o l v e N u m e r i c V a l u e ( p r o p e r t y ,   t o k e n ,   f o r m a t O p t i o n s )   { 
 	 i f   ( t o k e n . u n i t )   { 
 	 	 t o k e n . u n i t   =   f o r m a t O p t i o n s . u n i t A l i a s e s [ t o k e n . u n i t ]   | |   t o k e n . u n i t ; 
 	 }   e l s e   i f   ( t o k e n . v a l u e   ! = =   0   & &   u n i t l e s s P r o p e r t i e s . i n d e x O f ( p r o p e r t y )   = = =   - 1 )   { 
 	 	 / /   u s e   ` p x `   f o r   i n t e g e r s ,   ` e m `   f o r   f l o a t s 
 	 	 / /   N B :   n u m | 0   i s   a   q u i c k   a l t e r n a t i v e   t o   M a t h . r o u n d ( 0 ) 
 	 	 t o k e n . u n i t   =   t o k e n . v a l u e   = = =   ( t o k e n . v a l u e | 0 )   ?   f o r m a t O p t i o n s . i n t U n i t   :   f o r m a t O p t i o n s . f l o a t U n i t ; 
 	 } 
 
 	 r e t u r n   t o k e n ; 
 } 
 
 e x p o r t s . d e f a u l t   =   i n d e x ; 
 e x p o r t s . c o n v e r t T o C S S S n i p p e t s   =   c o n v e r t T o C S S S n i p p e t s ; 
 e x p o r t s . s t r i n g S c o r e   =   s t r i n g S c o r e ; 
 e x p o r t s . c s s S n i p p e t s   =   c s s S n i p p e t s ; 
 
 
 } , { } ] , 5 : [ f u n c t i o n ( r e q u i r e , m o d u l e , e x p o r t s ) { 
 ' u s e   s t r i c t ' ; 
 
 O b j e c t . d e f i n e P r o p e r t y ( e x p o r t s ,   ' _ _ e s M o d u l e ' ,   {   v a l u e :   t r u e   } ) ; 
 
 f u n c t i o n   _ i n t e r o p D e f a u l t   ( e x )   {   r e t u r n   ( e x   & &   ( t y p e o f   e x   = = =   ' o b j e c t ' )   & &   ' d e f a u l t '   i n   e x )   ?   e x [ ' d e f a u l t ' ]   :   e x ;   } 
 
 v a r   p a r s e A b b r e v i a t i o n   =   _ i n t e r o p D e f a u l t ( r e q u i r e ( ' @ e m m e t i o / a b b r e v i a t i o n ' ) ) ; 
 v a r   r e s o l v e S n i p p e t s   =   _ i n t e r o p D e f a u l t ( r e q u i r e ( ' @ e m m e t i o / h t m l - s n i p p e t s - r e s o l v e r ' ) ) ; 
 v a r   t r a n s f o r m   =   _ i n t e r o p D e f a u l t ( r e q u i r e ( ' @ e m m e t i o / h t m l - t r a n s f o r m ' ) ) ; 
 v a r   r e s o l v e V a r i a b l e s   =   _ i n t e r o p D e f a u l t ( r e q u i r e ( ' @ e m m e t i o / v a r i a b l e - r e s o l v e r ' ) ) ; 
 v a r   f o r m a t   =   _ i n t e r o p D e f a u l t ( r e q u i r e ( ' @ e m m e t i o / m a r k u p - f o r m a t t e r s ' ) ) ; 
 v a r   p a r s e A b b r e v i a t i o n $ 1   =   _ i n t e r o p D e f a u l t ( r e q u i r e ( ' @ e m m e t i o / c s s - a b b r e v i a t i o n ' ) ) ; 
 v a r   r e s o l v e S n i p p e t s $ 1   =   _ i n t e r o p D e f a u l t ( r e q u i r e ( ' @ e m m e t i o / c s s - s n i p p e t s - r e s o l v e r ' ) ) ; 
 v a r   f o r m a t $ 1   =   _ i n t e r o p D e f a u l t ( r e q u i r e ( ' @ e m m e t i o / s t y l e s h e e t - f o r m a t t e r s ' ) ) ; 
 v a r   d e f a u l t S n i p p e t s   =   _ i n t e r o p D e f a u l t ( r e q u i r e ( ' @ e m m e t i o / s n i p p e t s ' ) ) ; 
 v a r   l o r e m   =   _ i n t e r o p D e f a u l t ( r e q u i r e ( ' @ e m m e t i o / l o r e m ' ) ) ; 
 v a r   S n i p p e t s R e g i s t r y   =   _ i n t e r o p D e f a u l t ( r e q u i r e ( ' @ e m m e t i o / s n i p p e t s - r e g i s t r y ' ) ) ; 
 v a r   P r o f i l e   =   _ i n t e r o p D e f a u l t ( r e q u i r e ( ' @ e m m e t i o / o u t p u t - p r o f i l e ' ) ) ; 
 
 / * * 
   *   E x p a n d s   g i v e n   a b b r e v i a t i o n   i n t o   c o d e 
   *   @ p a r a m     { S t r i n g | N o d e }   a b b r         A b b r e v i a t i o n   t o   p a r s e   o r   a l r e a d y   p a r s e d   a b b r e v i a t i o n 
   *   @ p a r a m     { O b j e c t }   c o n f i g 
   *   @ r e t u r n   { S t r i n g } 
   * / 
 f u n c t i o n   e x p a n d ( a b b r ,   c o n f i g )   { 
 	 c o n f i g   =   O b j e c t . a s s i g n ( { } ,   c o n f i g ) ; 
 
 	 i f   ( t y p e o f   a b b r   = = =   ' s t r i n g ' )   { 
 	 	 a b b r   =   p a r s e ( a b b r ,   c o n f i g ) ; 
 	 } 
 
 	 r e t u r n   f o r m a t ( a b b r ,   c o n f i g . p r o f i l e ,   c o n f i g . s y n t a x ,   c o n f i g ) ; 
 } 
 
 / * * 
   *   P a r s e s   g i v e n   E m m e t   a b b r e v i a t i o n   i n t o   a   f i n a l   a b b r e v i a t i o n   t r e e   w i t h   a l l 
   *   r e q u i r e d   t r a n s f o r m a t i o n s   a p p l i e d 
   *   @ p a r a m   { S t r i n g }   A b b r e v i a t i o n   t o   p a r s e 
   *   @ p a r a m     { O b j e c t }   c o n f i g 
   *   @ r e t u r n   { N o d e } 
   * / 
 f u n c t i o n   p a r s e ( a b b r ,   c o n f i g )   { 
 	 r e t u r n   p a r s e A b b r e v i a t i o n ( a b b r ) 
 	 	 . u s e ( r e s o l v e S n i p p e t s ,   c o n f i g . s n i p p e t s ) 
 	 	 . u s e ( r e s o l v e V a r i a b l e s ,   c o n f i g . v a r i a b l e s ) 
 	 	 . u s e ( t r a n s f o r m ,   c o n f i g . t e x t ,   c o n f i g . o p t i o n s ) ; 
 } 
 
 / * * 
   *   E x p a n d s   g i v e n   a b b r e v i a t i o n   i n t o   c o d e 
   *   @ p a r a m     { S t r i n g | N o d e }   a b b r         A b b r e v i a t i o n   t o   p a r s e   o r   a l r e a d y   p a r s e d   a b b r e v i a t i o n 
   *   @ p a r a m     { O b j e c t }   c o n f i g 
   *   @ r e t u r n   { S t r i n g } 
   * / 
 f u n c t i o n   e x p a n d $ 1 ( a b b r ,   c o n f i g )   { 
 	 c o n f i g   =   c o n f i g   | |   { } ; 
 
 	 i f   ( t y p e o f   a b b r   = = =   ' s t r i n g ' )   { 
 	 	 a b b r   =   p a r s e $ 1 ( a b b r ,   c o n f i g ) ; 
 	 } 
 
 	 r e t u r n   f o r m a t $ 1 ( a b b r ,   c o n f i g . p r o f i l e ,   c o n f i g . s y n t a x ,   c o n f i g ) ; 
 } 
 
 / * * 
   *   P a r s e s   g i v e n   E m m e t   a b b r e v i a t i o n   i n t o   a   f i n a l   a b b r e v i a t i o n   t r e e   w i t h   a l l 
   *   r e q u i r e d   t r a n s f o r m a t i o n s   a p p l i e d 
   *   @ p a r a m   { S t r i n g | N o d e }   a b b r   A b b r e v i a t i o n   t o   p a r s e   o r   a l r e a d y   p a r s e d   a b b r e v i a t i o n 
   *   @ p a r a m     { O b j e c t }   c o n f i g 
   *   @ r e t u r n   { N o d e } 
   * / 
 f u n c t i o n   p a r s e $ 1 ( a b b r ,   c o n f i g )   { 
 	 i f   ( t y p e o f   a b b r   = = =   ' s t r i n g ' )   { 
 	 	 a b b r   =   p a r s e A b b r e v i a t i o n $ 1 ( a b b r ) ; 
 	 } 
 
 	 r e t u r n   a b b r . u s e ( r e s o l v e S n i p p e t s $ 1 ,   c o n f i g . s n i p p e t s ,   c o n f i g . o p t i o n s ) ; 
 } 
 
 c o n s t   r e L o r e m   =   / ^ l o r e m ( [ a - z ] * ) ( \ d * ) $ / i ; 
 
 / * * 
   *   C o n s t r u c t s   a   s n i p p e t s   r e g i s t r y ,   f i l l e d   w i t h   s n i p p e t s ,   f o r   g i v e n   o p t i o n s 
   *   @ p a r a m     { S t r i n g }   s y n t a x     A b b r e v i a t i o n   s y n t a x 
   *   @ p a r a m     { O b j e c t | O b j e c t [ ] }   s n i p p e t s   A d d i t i o n a l   s n i p p e t s 
   *   @ r e t u r n   { S n i p p e t s R e g i s t r y } 
   * / 
 f u n c t i o n   s n i p p e t s R e g i s t r y F a c t o r y ( t y p e ,   s y n t a x ,   s n i p p e t s )   { 
 	 c o n s t   r e g i s t r y S n i p p e t s   =   [ ] ; 
 
 	 i f   ( t y p e   = = =   ' m a r k u p ' )   { 
 	 	 r e g i s t r y S n i p p e t s . p u s h ( d e f a u l t S n i p p e t s . h t m l ) ; 
 	 }   e l s e   i f   ( t y p e   = = =   ' s t y l e s h e e t ' )   { 
 	 	 r e g i s t r y S n i p p e t s . p u s h ( d e f a u l t S n i p p e t s . c s s ) ; 
 	 } 
 
 	 i f   ( s y n t a x   i n   d e f a u l t S n i p p e t s   & &   r e g i s t r y S n i p p e t s . i n d e x O f ( d e f a u l t S n i p p e t s [ s y n t a x ] )   = = =   - 1 )   { 
 	 	 r e g i s t r y S n i p p e t s . p u s h ( d e f a u l t S n i p p e t s [ s y n t a x ] ) ; 
 	 } 
 
 	 i f   ( A r r a y . i s A r r a y ( s n i p p e t s ) )   { 
 	 	 s n i p p e t s . f o r E a c h ( i t e m   = >   { 
 	 	 	 / /   i f   a r r a y   i t e m   i s   a   s t r i n g ,   t r e a t   i t   a s   a   r e f e r e n c e   t o   g l o b a l l y 
 	 	 	 / /   d e f i n e d   s n i p p e t s 
 	 	 	 r e g i s t r y S n i p p e t s . p u s h ( t y p e o f   i t e m   = = =   ' s t r i n g '   ?   d e f a u l t S n i p p e t s [ i t e m ]   :   i t e m ) ; 
 	 	 } ) ; 
 	 }   e l s e   i f   ( t y p e o f   s n i p p e t s   = = =   ' o b j e c t ' )   { 
 	 	 r e g i s t r y S n i p p e t s . p u s h ( s n i p p e t s ) ; 
 	 } 
 
 	 c o n s t   r e g i s t r y   =   n e w   S n i p p e t s R e g i s t r y ( r e g i s t r y S n i p p e t s . f i l t e r ( B o o l e a n ) ) ; 
 
 	 / /   f o r   n o n - s t y l e s h e e t   s y n t a x e s   a d d   L o r e m   I p s u m   g e n e r a t o r 
 	 i f   ( t y p e   ! = =   ' s t y l e s h e e t ' )   { 
 	 	 r e g i s t r y . g e t ( 0 ) . s e t ( r e L o r e m ,   l o r e m G e n e r a t o r ) ; 
 	 } 
 
 	 r e t u r n   r e g i s t r y ; 
 } 
 
 f u n c t i o n   l o r e m G e n e r a t o r ( n o d e )   { 
 	 c o n s t   o p t i o n s   =   { } ; 
 	 c o n s t   m   =   n o d e . n a m e . m a t c h ( r e L o r e m ) ; 
 	 i f   ( m [ 1 ] )   { 
 	 	 o p t i o n s . l a n g   =   m [ 1 ] ; 
 	 } 
 
 	 i f   ( m [ 2 ] )   { 
 	 	 o p t i o n s . w o r d C o u n t   =   + m [ 2 ] ; 
 	 } 
 
 	 r e t u r n   l o r e m ( n o d e ,   o p t i o n s ) ; 
 } 
 
 / * * 
   *   D e f a u l t   v a r i a b l e s   u s e d   i n   s n i p p e t s   t o   i n s e r t   c o m m o n   v a l u e s   i n t o   p r e d e f i n e d   s n i p p e t s 
   *   @ t y p e   { O b j e c t } 
   * / 
 c o n s t   d e f a u l t V a r i a b l e s   =   { 
 	 l a n g :   ' e n ' , 
 	 l o c a l e :   ' e n - U S ' , 
 	 c h a r s e t :   ' U T F - 8 ' 
 } ; 
 
 / * * 
   *   A   l i s t   o f   s y n t a x e s   t h a t   s h o u l d   u s e   E m m e t   C S S   a b b r e v i a t i o n s : 
   *   a   v a r i a t i o n s   o f   d e f a u l t   a b b r e v i a t i o n   t h a t   h o l d s   v a l u e s   r i g h t   i n   a b b r e v i a t i o n   n a m e 
   *   @ t y p e   { A r r a y } 
   * / 
 c o n s t   s t y l e s h e e t S y n t a x e s   =   [ ' c s s ' ,   ' s a s s ' ,   ' s c s s ' ,   ' l e s s ' ,   ' s t y l u s ' ,   ' s s s ' ] ; 
 
 c o n s t   d e f a u l t O p t i o n s   =   { 
 	 / * * 
 	   *   T y p e   o f   a b b r e v i a t i o n   t o   p a r s e :   ' m a r k u p '   o r   ' s t y l e s h e e t ' . 
 	   *   C a n   b e   a u t o - d e t e c t e d   f r o m   ` s y n t a x `   p r o p e r t y .   D e f a u l t   i s   ' m a r k u p ' 
 	   * / 
 	 t y p e :   n u l l , 
 
 	 / * * 
 	   *   A b b r e v i a t i o n   o u t p u t   s y n t a x 
 	   *   @ t y p e   { S t r i n g } 
 	   * / 
 	 s y n t a x :   ' h t m l ' , 
 
 	 / * * 
 	   *   F i e l d / t a b s t o p   g e n e r a t o r   f o r   e d i t o r .   M o s t   e d i t o r s   s u p p o r t   T e x t M a t e - s t y l e 
 	   *   f i e l d s :   $ { 0 }   o r   $ { 1 : i t e m } .   S o   f o r   T e x t M a t e - s t y l e   f i e l d s   t h i s   f u n c t i o n 
 	   *   w i l l   l o o k   l i k e   t h i s : 
 	   *   @ e x a m p l e 
 	   *   ( i n d e x ,   p l a c e h o l d e r )   = >   ` \ $ { $ { i n d e x } $ { p l a c e h o l d e r   ?   ' : '   +   p l a c e h o l d e r   :   ' ' } } ` 
 	   * 
 	   *   @ p a r a m     { N u m b e r }   i n d e x                   P l a c e h o l d e r   i n d e x .   F i e l d s   w i t h   t h e   s a m e   i n d i c e s 
 	   *   s h o u l d   b e   l i n k e d 
 	   *   @ p a r a m     { S t r i n g }   [ p l a c e h o l d e r ]   F i e l d   p l a c e h o l d e r 
 	   *   @ r e t u r n   { S t r i n g } 
 	   * / 
 	 f i e l d :   ( i n d e x ,   p l a c e h o l d e r )   = >   p l a c e h o l d e r   | |   ' ' , 
 
 	 / * * 
 	   *   I n s e r t   g i v e n   t e x t   s t r i n g ( s )   i n t o   e x p a n d e d   a b b r e v i a t i o n 
 	   *   I f   a r r a y   o f   s t r i n g s   i s   g i v e n ,   t h e   i m p l i c i t l y   r e p e a t e d   e l e m e n t   ( e . g .   ` l i * ` ) 
 	   *   w i l l   b e   r e p e a t e d   b y   t h e   a m o u n t   o f   i t e m s   i n   a r r a y 
 	   *   @ t y p e   { S t r i n g | S t r i n g [ ] } 
 	   * / 
 	 t e x t :   n u l l , 
 
 	 / * * 
 	   *   E i t h e r   p r e d e f i n e d   o u t p u t   p r o f i l e   o r   o p t i o n s   f o r   o u t p u t   p r o f i l e .   U s e d   f o r 
 	   *   a b b r e v i a t i o n   o u t p u t 
 	   *   @ t y p e   { P r o f i l e | O b j e c t } 
 	   * / 
 	 p r o f i l e :   n u l l , 
 
 	 / * * 
 	   *   C u s t o m   v a r i a b l e s   f o r   v a r i a b l e   r e s o l v e r 
 	   *   @ s e e   @ e m m e t i o / v a r i a b l e - r e s o l v e r 
 	   *   @ t y p e   { O b j e c t } 
 	   * / 
 	 v a r i a b l e s :   { } , 
 
 	 / * * 
 	   *   C u s t o m   p r e d e f i n e d   s n i p p e t s   f o r   a b b r e v i a t i o n .   T h e   e x p a n d e d   a b b r e v i a t i o n 
 	   *   w i l l   t r y   t o   m a t c h   g i v e n   s n i p p e t s   t h a t   m a y   c o n t a i n   c u s t o m   e l e m e n t s , 
 	   *   p r e d e f i n e d   a t t r i b u t e s   e t c . 
 	   *   M a y   a l s o   c o n t a i n   a r r a y   o f   i t e m s :   e i t h e r   s n i p p e t s   ( O b j e c t )   o r   r e f e r e n c e s 
 	   *   t o   d e f a u l t   s y n t a x   s n i p p e t s   ( S t r i n g ;   t h e   k e y   i n   d e f a u l t   s n i p p e t s   h a s h ) 
 	   *   @ s e e   @ e m m e t i o / s n i p p e t s 
 	   *   @ t y p e   { O b j e c t | S n i p p e t s R e g i s t r y } 
 	   * / 
 	 s n i p p e t s :   { } , 
 
 	 / * * 
 	   *   H a s h   o f   a d d i t i o n a l   t r a n s f o r m a t i o n s   t h a t   s h o u l d   b e   a p p l i e d   t o   e x p a n d e d 
 	   *   a b b r e v i a t i o n ,   l i k e   B E M   o r   J S X .   S i n c e   t h e s e   t r a n s f o r m a t i o n s   i n t r o d u c e 
 	   *   s i d e - e f f e c t ,   t h e y   a r e   d i s a b l e d   b y   d e f a u l t   a n d   s h o u l d   b e   e n a b l e d   b y 
 	   *   p r o v i d i n g   a   t r a n s f o r m   n a m e   a s   a   k e y   a n d   t r a n s f o r m   o p t i o n s   a s   v a l u e : 
 	   *   @ e x a m p l e 
 	   *   { 
 	   *           b e m :   { e l e m e n t :   ' - - ' } , 
 	   *           j s x :   t r u e   / /   n o   o p t i o n s ,   j u s t   e n a b l e   t r a n s f o r m 
 	   *   } 
 	   *   @ s e e   @ e m m e t i o / h t m l - t r a n s f o r m / l i b / a d d o n s 
 	   *   @ t y p e   { O b j e c t } 
 	   * / 
 	 o p t i o n s :   n u l l , 
 
 	 / * * 
 	   *   A d d i t i o n a l   o p t i o n s   f o r   s y n t a x   f o r m a t t e r 
 	   *   @ s e e   @ e m m e t i o / m a r k u p - f o r m a t t e r s 
 	   *   @ t y p e   { O b j e c t } 
 	   * / 
 	 f o r m a t :   n u l l 
 } ; 
 
 / * * 
   *   E x p a n d s   g i v e n   a b b r e v i a t i o n   i n t o   s t r i n g ,   f o r m a t t e d   a c c o r d i n g   t o   p r o v i d e d 
   *   s y n t a x   a n d   o p t i o n s 
   *   @ p a r a m     { S t r i n g | N o d e }   a b b r               A b b r e v i a t i o n   s t r i n g   o r   p a r s e d   a b b r e v i a t i o n   t r e e 
   *   @ p a r a m     { S t r i n g | O b j e c t }   [ c o n f i g ]   P a r s i n g   a n d   f o r m a t t i n g   o p t i o n s   ( o b j e c t )   o r 
   *   a b b r e v i a t i o n   s y n t a x   ( s t r i n g ) 
   *   @ r e t u r n   { S t r i n g } 
   * / 
 f u n c t i o n   e x p a n d $ 2 ( a b b r ,   c o n f i g )   { 
 	 c o n f i g   =   c r e a t e O p t i o n s ( c o n f i g ) ; 
 
 	 r e t u r n   g e t T y p e ( c o n f i g . t y p e ,   c o n f i g . s y n t a x )   = = =   ' s t y l e s h e e t ' 
 	 	 ?   e x p a n d $ 1 ( a b b r ,   c o n f i g ) 
 	 	 :   e x p a n d ( a b b r ,   c o n f i g ) ; 
 } 
 
 / * * 
   *   P a r s e s   g i v e n   a b b r e v i a t i o n   i n t o   A S T   t r e e .   T h i s   t r e e   c a n   b e   l a t e r   f o r m a t t e d   t o 
   *   s t r i n g   w i t h   ` e x p a n d `   f u n c t i o n 
   *   @ p a r a m     { S t r i n g }   a b b r                           A b b r e v i a t i o n   t o   p a r s e 
   *   @ p a r a m     { S t r i n g | O b j e c t }   [ o p t i o n s ]   P a r s i n g   a n d   f o r m a t t i n g   o p t i o n s   ( o b j e c t )   o r 
   *   a b b r e v i a t i o n   s y n t a x   ( s t r i n g ) 
   *   @ r e t u r n   { N o d e } 
   * / 
 f u n c t i o n   p a r s e $ 2 ( a b b r ,   o p t i o n s )   { 
 	 o p t i o n s   =   c r e a t e O p t i o n s ( o p t i o n s ) ; 
 
 	 r e t u r n   g e t T y p e ( o p t i o n s . t y p e ,   o p t i o n s . s y n t a x )   = = =   ' s t y l e s h e e t ' 
 	 	 ?   p a r s e $ 1 ( a b b r ,   o p t i o n s ) 
 	 	 :   p a r s e ( a b b r ,   o p t i o n s ) ; 
 } 
 
 / * * 
   *   C r e a t e s   s n i p p e t s   r e g i s t r y   f o r   g i v e n   s y n t a x   a n d   a d d i t i o n a l   ` s n i p p e t s ` 
   *   @ p a r a m     { S t r i n g }   t y p e           A b b r e v i a t i o n   t y p e ,   ' m a r k u p '   o r   ' s t y l e s h e e t ' 
   *   @ p a r a m     { S t r i n g }   s y n t a x       S n i p p e t s   s y n t a x ,   u s e d   f o r   r e t r i e v i n g   p r e d e f i n e d   s n i p p e t s 
   *   @ p a r a m     { S n i p p e t s R e g i s t r y | O b j e c t | O b j e c t [ ] }   [ s n i p p e t s ]   A d d i t i o n a l   s n i p p e t s 
   *   @ r e t u r n   { S n i p p e t s R e g i s t r y } 
   * / 
 f u n c t i o n   c r e a t e S n i p p e t s R e g i s t r y ( t y p e ,   s y n t a x ,   s n i p p e t s )   { 
 	 / /   B a c k w a r d - c o m p a t i b i l i t y   w i t h   < 0 . 6 
 	 i f   ( t y p e   & &   t y p e   ! = =   ' m a r k u p '   & &   t y p e   ! = =   ' s t y l e s h e e t ' )   { 
 	 	 s n i p p e t s   =   s y n t a x ; 
 	 	 s y n t a x   =   t y p e ; 
 	 	 t y p e   =   ' m a r k u p ' ; 
 	 } 
 
 	 r e t u r n   s n i p p e t s   i n s t a n c e o f   S n i p p e t s R e g i s t r y 
 	 	 ?   s n i p p e t s 
 	 	 :   s n i p p e t s R e g i s t r y F a c t o r y ( t y p e ,   s y n t a x ,   s n i p p e t s ) ; 
 } 
 
 f u n c t i o n   c r e a t e O p t i o n s ( o p t i o n s )   { 
 	 i f   ( t y p e o f   o p t i o n s   = = =   ' s t r i n g ' )   { 
 	 	 o p t i o n s   =   {   s y n t a x :   o p t i o n s   } ; 
 	 } 
 
 	 o p t i o n s   =   O b j e c t . a s s i g n ( { } ,   d e f a u l t O p t i o n s ,   o p t i o n s ) ; 
 	 i f   ( o p t i o n s . t y p e   = =   n u l l   & &   o p t i o n s . s y n t a x )   { 
 	 	 o p t i o n s . t y p e   =   i s S t y l e s h e e t ( o p t i o n s . s y n t a x )   ?   ' s t y l e s h e e t '   :   ' m a r k u p ' ; 
 	 } 
 
 	 o p t i o n s . f o r m a t   =   O b j e c t . a s s i g n ( { f i e l d :   o p t i o n s . f i e l d } ,   o p t i o n s . f o r m a t ) ; 
 	 o p t i o n s . p r o f i l e   =   c r e a t e P r o f i l e ( o p t i o n s ) ; 
 	 o p t i o n s . v a r i a b l e s   =   O b j e c t . a s s i g n ( { } ,   d e f a u l t V a r i a b l e s ,   o p t i o n s . v a r i a b l e s ) ; 
 	 o p t i o n s . s n i p p e t s   =   c r e a t e S n i p p e t s R e g i s t r y ( o p t i o n s . t y p e ,   o p t i o n s . s y n t a x ,   o p t i o n s . s n i p p e t s ) ; 
 
 	 r e t u r n   o p t i o n s ; 
 } 
 
 / * * 
   *   C h e c k   i f   g i v e n   s y n t a x   b e l o n g s   t o   s t y l e s h e e t   m a r k u p . 
   *   E m m e t   u s e s   d i f f e r e n t   a b b r e v i a t i o n   f l a v o u r s :   o n e   i s   a   d e f a u l t   m a r k u p   s y n t a x , 
   *   u s e d   f o r   H T M L ,   S l i m ,   P u g   e t c ,   t h e   o t h e r   o n e   i s   u s e d   f o r   s t y l e s h e e t s   a n d 
   *   a l l o w s   e m b e d d e d   v a l u e s   i n   a b b r e v i a t i o n   n a m e 
   *   @ p a r a m     { S t r i n g }     s y n t a x 
   *   @ r e t u r n   { B o o l e a n } 
   * / 
 f u n c t i o n   i s S t y l e s h e e t ( s y n t a x )   { 
 	 r e t u r n   s t y l e s h e e t S y n t a x e s . i n d e x O f ( s y n t a x )   ! = =   - 1 ; 
 } 
 
 / * * 
   *   C r e a t e s   o u t p u t   p r o f i l e   f r o m   g i v e n   o p t i o n s 
   *   @ p a r a m     { O b j e c t }   o p t i o n s 
   *   @ r e t u r n   { P r o f i l e } 
   * / 
 f u n c t i o n   c r e a t e P r o f i l e ( o p t i o n s )   { 
 	 r e t u r n   o p t i o n s . p r o f i l e   i n s t a n c e o f   P r o f i l e 
 	 	 ?   o p t i o n s . p r o f i l e 
 	 	 :   n e w   P r o f i l e ( o p t i o n s . p r o f i l e ) ; 
 } 
 
 / * * 
   *   R e t u r n s   t y p e   o f   a b b r e v i a t i o n   e x p a n d e r :   e i t h e r   ' m a r k u p '   o r   ' s t y l e s h e e t ' 
   *   @ p a r a m   { S t r i n g }   t y p e 
   *   @ p a r a m   { S t r i n g }   [ s y n t a x ] 
   * / 
 f u n c t i o n   g e t T y p e ( t y p e ,   s y n t a x )   { 
 	 i f   ( t y p e )   { 
 	 	 r e t u r n   t y p e   = = =   ' s t y l e s h e e t '   ?   ' s t y l e s h e e t '   :   ' m a r k u p ' ; 
 	 } 
 
 	 r e t u r n   i s S t y l e s h e e t ( s y n t a x )   ?   ' s t y l e s h e e t '   :   ' m a r k u p ' ; 
 } 
 
 e x p o r t s . e x p a n d   =   e x p a n d $ 2 ; 
 e x p o r t s . p a r s e   =   p a r s e $ 2 ; 
 e x p o r t s . c r e a t e S n i p p e t s R e g i s t r y   =   c r e a t e S n i p p e t s R e g i s t r y ; 
 e x p o r t s . c r e a t e O p t i o n s   =   c r e a t e O p t i o n s ; 
 e x p o r t s . i s S t y l e s h e e t   =   i s S t y l e s h e e t ; 
 e x p o r t s . c r e a t e P r o f i l e   =   c r e a t e P r o f i l e ; 
 
 
 } , { " @ e m m e t i o / a b b r e v i a t i o n " : 2 , " @ e m m e t i o / c s s - a b b r e v i a t i o n " : 3 , " @ e m m e t i o / c s s - s n i p p e t s - r e s o l v e r " : 4 , " @ e m m e t i o / h t m l - s n i p p e t s - r e s o l v e r " : 7 , " @ e m m e t i o / h t m l - t r a n s f o r m " : 9 , " @ e m m e t i o / l o r e m " : 1 1 , " @ e m m e t i o / m a r k u p - f o r m a t t e r s " : 1 2 , " @ e m m e t i o / o u t p u t - p r o f i l e " : 1 4 , " @ e m m e t i o / s n i p p e t s " : 1 7 , " @ e m m e t i o / s n i p p e t s - r e g i s t r y " : 1 6 , " @ e m m e t i o / s t y l e s h e e t - f o r m a t t e r s " : 2 0 , " @ e m m e t i o / v a r i a b l e - r e s o l v e r " : 2 1 } ] , 6 : [ f u n c t i o n ( r e q u i r e , m o d u l e , e x p o r t s ) { 
 ' u s e   s t r i c t ' ; 
 
 O b j e c t . d e f i n e P r o p e r t y ( e x p o r t s ,   ' _ _ e s M o d u l e ' ,   {   v a l u e :   t r u e   } ) ; 
 
 f u n c t i o n   _ i n t e r o p D e f a u l t   ( e x )   {   r e t u r n   ( e x   & &   ( t y p e o f   e x   = = =   ' o b j e c t ' )   & &   ' d e f a u l t '   i n   e x )   ?   e x [ ' d e f a u l t ' ]   :   e x ;   } 
 
 v a r   S t r e a m R e a d e r   =   _ i n t e r o p D e f a u l t ( r e q u i r e ( ' @ e m m e t i o / s t r e a m - r e a d e r ' ) ) ; 
 v a r   s t r e a m R e a d e r U t i l s   =   r e q u i r e ( ' @ e m m e t i o / s t r e a m - r e a d e r - u t i l s ' ) ; 
 
 c o n s t   D O L L A R             =   3 6 ;     / /   $ 
 c o n s t   C O L O N               =   5 8 ;     / /   : 
 c o n s t   E S C A P E             =   9 2 ;     / /   \ 
 c o n s t   O P E N _ B R A C E     =   1 2 3 ;   / /   { 
 c o n s t   C L O S E _ B R A C E   =   1 2 5 ;   / /   } 
 
 / * * 
   *   F i n d s   f i e l d s   i n   g i v e n   s t r i n g   a n d   r e t u r n s   o b j e c t   w i t h   f i e l d - l e s s   s t r i n g 
   *   a n d   a r r a y   o f   f i e l d s   f o u n d 
   *   @ p a r a m     { S t r i n g }   s t r i n g 
   *   @ r e t u r n   { O b j e c t } 
   * / 
 f u n c t i o n   p a r s e ( s t r i n g )   { 
 	 c o n s t   s t r e a m   =   n e w   S t r e a m R e a d e r ( s t r i n g ) ; 
 	 c o n s t   f i e l d s   =   [ ] ; 
 	 l e t   c l e a n S t r i n g   =   ' ' ,   o f f s e t   =   0 ,   p o s   =   0 ; 
 	 l e t   c o d e ,   f i e l d ; 
 
 	 w h i l e   ( ! s t r e a m . e o f ( ) )   { 
 	 	 c o d e   =   s t r e a m . p e e k ( ) ; 
 	 	 p o s   =   s t r e a m . p o s ; 
 
 	 	 i f   ( c o d e   = = =   E S C A P E )   { 
 	 	 	 s t r e a m . n e x t ( ) ; 
 	 	 	 s t r e a m . n e x t ( ) ; 
 	 	 }   e l s e   i f   ( f i e l d   =   c o n s u m e F i e l d ( s t r e a m ,   c l e a n S t r i n g . l e n g t h   +   p o s   -   o f f s e t ) )   { 
 	 	 	 f i e l d s . p u s h ( f i e l d ) ; 
 	 	 	 c l e a n S t r i n g   + =   s t r e a m . s t r i n g . s l i c e ( o f f s e t ,   p o s )   +   f i e l d . p l a c e h o l d e r ; 
 	 	 	 o f f s e t   =   s t r e a m . p o s ; 
 	 	 }   e l s e   { 
 	 	 	 s t r e a m . n e x t ( ) ; 
 	 	 } 
 	 } 
 
 	 r e t u r n   n e w   F i e l d S t r i n g ( c l e a n S t r i n g   +   s t r e a m . s t r i n g . s l i c e ( o f f s e t ) ,   f i e l d s ) ; 
 } 
 
 / * * 
   *   M a r k s   g i v e n   ` s t r i n g `   w i t h   ` f i e l d s ` :   w r a p s   e a c h   f i e l d   r a n g e   w i t h 
   *   ` $ { i n d e x : p l a c e h o l d e r } `   ( b y   d e f a u l t )   o r   a n y   o t h e r   t o k e n   p r o d u c e d   b y   ` t o k e n ` 
   *   f u n c t i o n ,   i f   p r o v i d e d 
   *   @ p a r a m     { S t r i n g }   s t r i n g   S t r i n g   t o   m a r k 
   *   @ p a r a m     { A r r a y }   f i e l d s   A r r a y   o f   f i e l d   d e s c r i p t o r .   A   f i e l d   d e s c r i p t o r   i s   a 
   *   ` { i n d e x ,   l o c a t i o n ,   l e n g t h } `   a r r a y .   I t   i s   i m p o r t a n t   t h a t   f i e l d s   i n   a r r a y 
   *   m u s t   b e   o r d e r e d   b y   t h e i r   l o c a t i o n   i n   s t r i n g :   s o m e   f i e l d s   m y   r e f e r   t h e   s a m e 
   *   l o c a t i o n   s o   t h e y   m u s t   a p p e a r   i n   o r d e r   t h a t   u s e r   e x p e c t s . 
   *   @ p a r a m     { F u n c t i o n }   [ t o k e n ]   F u n c t i o n   t h a t   g e n e r a t e s   f i e l d   t o k e n .   T h i s   f u n c t i o n 
   *   r e c e i v e d   t w o   a r g u m e n t s :   ` i n d e x `   a n d   ` p l a c e h o l d e r `   a n d   s h o u l d   r e t u r n   s t r i n g 
   *   @ r e t u r n   { S t r i n g }     S t r i n g   w i t h   m a r k e d   f i e l d s 
   * / 
 f u n c t i o n   m a r k ( s t r i n g ,   f i e l d s ,   t o k e n )   { 
 	 t o k e n   =   t o k e n   | |   c r e a t e T o k e n ; 
 
 	 / /   o r d e r   f i e l d s   b y   t h e i r   l o c a t i o n   a n d   a p p e a r e n c e 
 	 / /   N B   f i e l d   r a n g e s   s h o u l d   n o t   o v e r l a p !   ( n o t   s u p p o r t e d   y e t ) 
 	 c o n s t   o r d e r e d   =   f i e l d s 
 	 . m a p ( ( f i e l d ,   o r d e r )   = >   ( { o r d e r ,   f i e l d ,   e n d :   f i e l d . l o c a t i o n   +   f i e l d . l e n g t h } ) ) 
 	 . s o r t ( ( a ,   b )   = >   ( a . e n d   -   b . e n d )   | |   ( a . o r d e r   -   b . o r d e r ) ) ; 
 
 	 / /   m a r k   r a n g e s   i n   s t r i n g 
 	 l e t   o f f s e t   =   0 ; 
 	 c o n s t   r e s u l t   =   o r d e r e d . m a p ( i t e m   = >   { 
 	 	 c o n s t   p l a c e h o l d e r   =   s t r i n g . s u b s t r ( i t e m . f i e l d . l o c a t i o n ,   i t e m . f i e l d . l e n g t h ) ; 
 	 	 c o n s t   p r e f i x   =   s t r i n g . s l i c e ( o f f s e t ,   i t e m . f i e l d . l o c a t i o n ) ; 
 	 	 o f f s e t   =   i t e m . e n d ; 
 	 	 r e t u r n   p r e f i x   +   t o k e n ( i t e m . f i e l d . i n d e x ,   p l a c e h o l d e r ) ; 
 	 } ) ; 
 
 	 r e t u r n   r e s u l t . j o i n ( ' ' )   +   s t r i n g . s l i c e ( o f f s e t ) ; 
 } 
 
 / * * 
   *   C r e a t e s   f i e l d   t o k e n   f o r   s t r i n g 
   *   @ p a r a m     { N u m b e r }   i n d e x               F i e l d   i n d e x 
   *   @ p a r a m     { S t r i n g }   p l a c e h o l d e r   F i e l d   p l a c e h o l d e r ,   c o u l d   b e   e m p t y   s t r i n g 
   *   @ r e t u r n   { S t r i n g } 
   * / 
 f u n c t i o n   c r e a t e T o k e n ( i n d e x ,   p l a c e h o l d e r )   { 
 	 r e t u r n   p l a c e h o l d e r   ?   ` \ $ { $ { i n d e x } : $ { p l a c e h o l d e r } } `   :   ` \ $ { $ { i n d e x } } ` ; 
 } 
 
 / * * 
   *   C o n s u m e s   f i e l d   f r o m   c u r r e n t   s t r e a m   p o s i t i o n :   i t   c a n   b e   a n   ` $ i n d e x `   o r 
   *   o r   ` $ { i n d e x } `   o r   ` $ { i n d e x : p l a c e h o l d e r } ` 
   *   @ p a r a m     { S t r e a m R e a d e r }   s t r e a m 
   *   @ p a r a m     { N u m b e r }               l o c a t i o n   F i e l d   l o c a t i o n   i n   * c l e a n *   s t r i n g 
   *   @ r e t u r n   { F i e l d }   O b j e c t   w i t h   ` i n d e x `   a n d   ` p l a c e h o l d e r `   p r o p e r t i e s   i f 
   *   f i e l d   w a s   s u c c e s s f u l l y   c o n s u m e d ,   ` n u l l `   o t h e r w i s e 
   * / 
 f u n c t i o n   c o n s u m e F i e l d ( s t r e a m ,   l o c a t i o n )   { 
 	 c o n s t   s t a r t   =   s t r e a m . p o s ; 
 
 	 i f   ( s t r e a m . e a t ( D O L L A R ) )   { 
 	 	 / /   P o s s i b l e   s t a r t   o f   f i e l d 
 	 	 l e t   i n d e x   =   c o n s u m e I n d e x ( s t r e a m ) ; 
 	 	 l e t   p l a c e h o l d e r   =   ' ' ; 
 
 	 	 / /   c o n s u m e d   $ i n d e x   p l a c e h o l d e r 
 	 	 i f   ( i n d e x   ! =   n u l l )   { 
 	 	 	 r e t u r n   n e w   F i e l d ( i n d e x ,   p l a c e h o l d e r ,   l o c a t i o n ) ; 
 	 	 } 
 
 	 	 i f   ( s t r e a m . e a t ( O P E N _ B R A C E ) )   { 
 	 	 	 i n d e x   =   c o n s u m e I n d e x ( s t r e a m ) ; 
 	 	 	 i f   ( i n d e x   ! =   n u l l )   { 
 	 	 	 	 i f   ( s t r e a m . e a t ( C O L O N ) )   { 
 	 	 	 	 	 p l a c e h o l d e r   =   c o n s u m e P l a c e h o l d e r ( s t r e a m ) ; 
 	 	 	 	 } 
 
 	 	 	 	 i f   ( s t r e a m . e a t ( C L O S E _ B R A C E ) )   { 
 	 	 	 	 	 r e t u r n   n e w   F i e l d ( i n d e x ,   p l a c e h o l d e r ,   l o c a t i o n ) ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 	 } 
 
 	 / /   I f   w e   r e a c h e d   h e r e   t h e n   t h e r e  s   n o   v a l i d   f i e l d   h e r e ,   r e v e r t 
 	 / /   b a c k   t o   s t a r t i n g   p o s i t i o n 
 	 s t r e a m . p o s   =   s t a r t ; 
 } 
 
 / * * 
   *   C o n s u m e s   a   p l a c e h o l d e r :   v a l u e   r i g h t   a f t e r   ` : `   i n   f i e l d .   C o u l d   b e   e m p t y 
   *   @ p a r a m     { S t r e a m R e a d e r }   s t r e a m 
   *   @ r e t u r n   { S t r i n g } 
   * / 
 f u n c t i o n   c o n s u m e P l a c e h o l d e r ( s t r e a m )   { 
 	 l e t   c o d e ; 
 	 c o n s t   s t a c k   =   [ ] ; 
 	 s t r e a m . s t a r t   =   s t r e a m . p o s ; 
 
 	 w h i l e   ( ! s t r e a m . e o f ( ) )   { 
 	 	 c o d e   =   s t r e a m . p e e k ( ) ; 
 
 	 	 i f   ( c o d e   = = =   O P E N _ B R A C E )   { 
 	 	 	 s t a c k . p u s h ( s t r e a m . p o s ) ; 
 	 	 }   e l s e   i f   ( c o d e   = = =   C L O S E _ B R A C E )   { 
 	 	 	 i f   ( ! s t a c k . l e n g t h )   { 
 	 	 	 	 b r e a k ; 
 	 	 	 } 
 	 	 	 s t a c k . p o p ( ) ; 
 	 	 } 
 	 	 s t r e a m . n e x t ( ) ; 
 	 } 
 
 	 i f   ( s t a c k . l e n g t h )   { 
 	 	 t h r o w   s t r e a m . e r r o r ( ' U n a b l e   t o   f i n d   m a t c h i n g   " } "   f o r   c u r l y   b r a c e   a t   '   +   s t a c k . p o p ( ) ) ; 
 	 } 
 
 	 r e t u r n   s t r e a m . c u r r e n t ( ) ; 
 } 
 
 / * * 
   *   C o n s u m e s   i n t e g e r   f r o m   c u r r e n t   s t r e a m   p o s i t i o n 
   *   @ p a r a m     { S t r e a m R e a d e r }   s t r e a m 
   *   @ r e t u r n   { N u m b e r } 
   * / 
 f u n c t i o n   c o n s u m e I n d e x ( s t r e a m )   { 
 	 s t r e a m . s t a r t   =   s t r e a m . p o s ; 
 	 i f   ( s t r e a m . e a t W h i l e ( s t r e a m R e a d e r U t i l s . i s N u m b e r ) )   { 
 	 	 r e t u r n   N u m b e r ( s t r e a m . c u r r e n t ( ) ) ; 
 	 } 
 } 
 
 c l a s s   F i e l d   { 
 	 c o n s t r u c t o r ( i n d e x ,   p l a c e h o l d e r ,   l o c a t i o n )   { 
 	 	 t h i s . i n d e x   =   i n d e x ; 
 	 	 t h i s . p l a c e h o l d e r   =   p l a c e h o l d e r ; 
 	 	 t h i s . l o c a t i o n   =   l o c a t i o n ; 
 	 	 t h i s . l e n g t h   =   t h i s . p l a c e h o l d e r . l e n g t h ; 
 	 } 
 } 
 
 c l a s s   F i e l d S t r i n g   { 
 	 / * * 
 	   *   @ p a r a m   { S t r i n g }   s t r i n g 
 	   *   @ p a r a m   { F i e l d [ ] }   f i e l d s 
 	   * / 
 	 c o n s t r u c t o r ( s t r i n g ,   f i e l d s )   { 
 	 	 t h i s . s t r i n g   =   s t r i n g ; 
 	 	 t h i s . f i e l d s   =   f i e l d s ; 
 	 } 
 
 	 m a r k ( t o k e n )   { 
 	 	 r e t u r n   m a r k ( t h i s . s t r i n g ,   t h i s . f i e l d s ,   t o k e n ) ; 
 	 } 
 
 	 t o S t r i n g ( )   { 
 	 	 r e t u r n   t h i s . s t r i n g ; 
 	 } 
 } 
 
 e x p o r t s . d e f a u l t   =   p a r s e ; 
 e x p o r t s . m a r k   =   m a r k ; 
 e x p o r t s . c r e a t e T o k e n   =   c r e a t e T o k e n ; 
 
 
 } , { " @ e m m e t i o / s t r e a m - r e a d e r " : 1 9 , " @ e m m e t i o / s t r e a m - r e a d e r - u t i l s " : 1 8 } ] , 7 : [ f u n c t i o n ( r e q u i r e , m o d u l e , e x p o r t s ) { 
 ' u s e   s t r i c t ' ; 
 
 f u n c t i o n   _ i n t e r o p D e f a u l t   ( e x )   {   r e t u r n   ( e x   & &   ( t y p e o f   e x   = = =   ' o b j e c t ' )   & &   ' d e f a u l t '   i n   e x )   ?   e x [ ' d e f a u l t ' ]   :   e x ;   } 
 
 v a r   p a r s e   =   _ i n t e r o p D e f a u l t ( r e q u i r e ( ' @ e m m e t i o / a b b r e v i a t i o n ' ) ) ; 
 
 / * * 
   *   F o r   e v e r y   n o d e   i n   g i v e n   ` t r e e ` ,   f i n d s   m a t c h i n g   s n i p p e t   f r o m   ` r e g i s t r y `   a n d 
   *   r e s o l v e s   i t   i n t o   a   p a r s e d   a b b r e v i a t i o n .   R e s o l v e d   n o d e   i s   t h e n   u p d a t e d   o r 
   *   r e p l a c e d   w i t h   m a t c h e d   a b b r e v i a t i o n   t r e e . 
   * 
   *   A   H T M L   r e g i s t r y   b a s i c a l l y   c o n t a i n s   a l i a s e s   t o   a n o t h e r   E m m e t   a b b r e v i a t i o n s , 
   *   e . g .   a   p r e d e f i n e d   s e t   o f   n a m e ,   a t t r i b u e s   a n d   s o   o n ,   p o s s i b l y   a   c o m p l e x 
   *   a b b r e v i a t i o n   w i t h   m u l t i p l e   e l e m e n t s .   S o   w e   h a v e   t o   g e t   s n i p p e t ,   p a r s e   i t 
   *   a n d   r e c u r s i v e l y   r e s o l v e   i t . 
   * 
   *   @ p a r a m     { N o d e }   t r e e                                   P a r s e d   E m m e t   a b b r e v i a t i o n 
   *   @ p a r a m     { S n i p p e t s R e g i s t r y }   r e g i s t r y   R e g i s t r y   w i t h   a l l   a v a i l a b l e   s n i p p e t s 
   *   @ r e t u r n   { N o d e }   U p d a t e d   t r e e 
   * / 
 
 v a r   i n d e x   =   f u n c t i o n ( t r e e ,   r e g i s t r y )   { 
         t r e e . w a l k ( n o d e   = >   r e s o l v e N o d e ( n o d e ,   r e g i s t r y ) ) ; 
         r e t u r n   t r e e ; 
 } ; 
 
 f u n c t i o n   r e s o l v e N o d e ( n o d e ,   r e g i s t r y )   { 
         c o n s t   s t a c k   =   n e w   S e t ( ) ; 
         c o n s t   r e s o l v e   =   n o d e   = >   { 
                 c o n s t   s n i p p e t   =   r e g i s t r y . r e s o l v e ( n o d e . n a m e ) ; 
                 / /   A   s n i p p e t   i n   s t a c k   m e a n s   c i r c u l a r   r e f e r e n c e . 
                 / /   I t   c a n   b e   e i t h e r   a   u s e r   e r r o r   o r   a   p e r f e c t l y   v a l i d   s n i p p e t   l i k e 
                 / /   " i m g " :   " i m g [ s r c   a l t ] / " ,   e . g .   a n   e l e m e n t   w i t h   p r e d e f i n e d   s h a p e . 
                 / /   I n   a n y   c a s e ,   s i m p l y   s t o p   p a r s i n g   a n d   k e e p   e l e m e n t   a s   i s 
                 i f   ( ! s n i p p e t   | |   s t a c k . h a s ( s n i p p e t ) )   { 
                         r e t u r n ; 
                 } 
 
                 / /   I n   c a s e   i f   m a t c h e d   s n i p p e t   i s   a   f u n c t i o n ,   p a s s   c o n t r o l   i n t o   i t 
                 i f   ( t y p e o f   s n i p p e t . v a l u e   = = =   ' f u n c t i o n ' )   { 
                         r e t u r n   s n i p p e t . v a l u e ( n o d e ,   r e g i s t r y ,   r e s o l v e ) ; 
                 } 
 
                 c o n s t   t r e e   =   p a r s e ( s n i p p e t . v a l u e ) ; 
 
                 s t a c k . a d d ( s n i p p e t ) ; 
                 t r e e . w a l k ( r e s o l v e ) ; 
                 s t a c k . d e l e t e ( s n i p p e t ) ; 
 
                 / /   m o v e   c u r r e n t   n o d e   c o n t e n t s   i n t o   n e w   t r e e 
                 c o n s t   c h i l d T a r g e t   =   f i n d D e e p e s t N o d e ( t r e e ) ; 
                 m e r g e ( c h i l d T a r g e t ,   n o d e ) ; 
 
                 w h i l e   ( t r e e . f i r s t C h i l d )   { 
                         n o d e . p a r e n t . i n s e r t B e f o r e ( t r e e . f i r s t C h i l d ,   n o d e ) ; 
                 } 
 
                 c h i l d T a r g e t . p a r e n t . i n s e r t B e f o r e ( n o d e ,   c h i l d T a r g e t ) ; 
                 c h i l d T a r g e t . r e m o v e ( ) ; 
         } ; 
 
         r e s o l v e ( n o d e ) ; 
 } 
 
 / * * 
   *   A d d s   d a t a   f r o m   f i r s t   n o d e   i n t o   s e c o n d   n o d e   a n d   r e t u r n s   i t 
   *   @ p a r a m     { N o d e }   f r o m 
   *   @ p a r a m     { N o d e }   t o 
   *   @ r e t u r n   { N o d e } 
   * / 
 f u n c t i o n   m e r g e ( f r o m ,   t o )   { 
         t o . n a m e   =   f r o m . n a m e ; 
 
         i f   ( f r o m . s e l f C l o s i n g )   { 
                 t o . s e l f C l o s i n g   =   t r u e ; 
         } 
 
         i f   ( f r o m . v a l u e   ! =   n u l l )   { 
                 t o . v a l u e   =   f r o m . v a l u e ; 
         } 
 
         i f   ( f r o m . r e p e a t )   { 
                 t o . r e p e a t   =   O b j e c t . a s s i g n ( { } ,   f r o m . r e p e a t ) ; 
         } 
 
         r e t u r n   m e r g e A t t r i b u t e s ( f r o m ,   t o ) ; 
 } 
 
 / * * 
   *   T r a n s f e r   a t t r i b u t e s   f r o m   f i r s t   e l e m e n t   t o   s e c o n d   o n e   a n d   p r e s e r v e   f i r s t 
   *   e l e m e n t  s   a t t r i b u t e s   o r d e r 
   *   @ p a r a m     { N o d e }   f r o m 
   *   @ p a r a m     { N o d e }   t o 
   *   @ r e t u r n   { N o d e } 
   * / 
 f u n c t i o n   m e r g e A t t r i b u t e s ( f r o m ,   t o )   { 
         m e r g e C l a s s N a m e s ( f r o m ,   t o ) ; 
 
         / /   I t  s   i m p o r t a n t   t o   p r e s e r v e   a t t r i b u t e s   o r d e r :   o n e s   i n   ` f r o m `   h a v e   h i g h e r 
         / /   p r i p o r i t y   t h a n   i n   ` t o ` .   C o l l e c t   a t t r i b u t e s   i n   m a p   i n   o r d e r   t h e y   s h o u l d 
         / /   a p p e a r   i n   ` t o ` 
         c o n s t   a t t r M a p   =   n e w   M a p ( ) ; 
 
         l e t   a t t r s   =   f r o m . a t t r i b u t e s ; 
         f o r   ( l e t   i   =   0 ;   i   <   a t t r s . l e n g t h ;   i + + )   { 
                 a t t r M a p . s e t ( a t t r s [ i ] . n a m e ,   a t t r s [ i ] . c l o n e ( ) ) ; 
         } 
 
         a t t r s   =   t o . a t t r i b u t e s . s l i c e ( ) ; 
         f o r   ( l e t   i   =   0 ,   a t t r ,   a ;   i   <   a t t r s . l e n g t h ;   i + + )   { 
                 a t t r   =   a t t r s [ i ] ; 
                 i f   ( a t t r M a p . h a s ( a t t r . n a m e ) )   { 
                         a   =   a t t r M a p . g e t ( a t t r . n a m e ) ; 
                         a . v a l u e   =   a t t r . v a l u e ; 
 
                         / /   I f   u s e r   e x p l i c i t l y   w r o t e   a t t r i b u t e   i n   a b b r e v i a t i o n ,   i t  s   n o   l o n g e r 
                         / /   i m p l i e d   a n d   s h o u l d   b e   o u t p u t t e d   e v e n   i f   v a l u e   i s   e m p t y 
                         i f   ( a . o p t i o n s . i m p l i e d )   { 
                                 a . o p t i o n s . i m p l i e d   =   f a l s e ; 
                         } 
                 }   e l s e   { 
                         a t t r M a p . s e t ( a t t r . n a m e ,   a t t r ) ; 
                 } 
 
                 t o . r e m o v e A t t r i b u t e ( a t t r ) ; 
         } 
 
         c o n s t   n e w A t t r s   =   A r r a y . f r o m ( a t t r M a p . v a l u e s ( ) ) ; 
         f o r   ( l e t   i   =   0 ;   i   <   n e w A t t r s . l e n g t h ;   i + + )   { 
                 t o . s e t A t t r i b u t e ( n e w A t t r s [ i ] ) ; 
         } 
 
         r e t u r n   t o ; 
 } 
 
 / * * 
   *   A d d s   c l a s s   n a m e s   f r o m   f i r s t   n o d e   t o   s e c o n d   o n e 
   *   @ p a r a m     { N o d e }   f r o m 
   *   @ p a r a m     { N o d e }   t o 
   *   @ r e t u r n   { N o d e } 
   * / 
 f u n c t i o n   m e r g e C l a s s N a m e s ( f r o m ,   t o )   { 
         c o n s t   c l a s s N a m e s   =   f r o m . c l a s s L i s t ; 
         f o r   ( l e t   i   =   0 ;   i   <   c l a s s N a m e s . l e n g t h ;   i + + )   { 
                 t o . a d d C l a s s ( c l a s s N a m e s [ i ] ) ; 
         } 
 
         r e t u r n   t o ; 
 } 
 
 / * * 
   *   F i n d s   n o d e   w h i c h   i s   t h e   d e e p e s t   f o r   i n   c u r r e n t   n o d e   o r   n o d e   i t e s e l f . 
   *   @ p a r a m     { N o d e }   n o d e 
   *   @ r e t u r n   { N o d e } 
   * / 
 f u n c t i o n   f i n d D e e p e s t N o d e ( n o d e )   { 
 	 w h i l e   ( n o d e . c h i l d r e n . l e n g t h )   { 
 	 	 n o d e   =   n o d e . c h i l d r e n [ n o d e . c h i l d r e n . l e n g t h   -   1 ] ; 
 	 } 
 
 	 r e t u r n   n o d e ; 
 } 
 
 m o d u l e . e x p o r t s   =   i n d e x ; 
 
 } , { " @ e m m e t i o / a b b r e v i a t i o n " : 8 } ] , 8 : [ f u n c t i o n ( r e q u i r e , m o d u l e , e x p o r t s ) { 
 ' u s e   s t r i c t ' ; 
 
 f u n c t i o n   _ i n t e r o p D e f a u l t   ( e x )   {   r e t u r n   ( e x   & &   ( t y p e o f   e x   = = =   ' o b j e c t ' )   & &   ' d e f a u l t '   i n   e x )   ?   e x [ ' d e f a u l t ' ]   :   e x ;   } 
 
 v a r   s t r e a m R e a d e r U t i l s   =   r e q u i r e ( ' @ e m m e t i o / s t r e a m - r e a d e r - u t i l s ' ) ; 
 v a r   N o d e   =   _ i n t e r o p D e f a u l t ( r e q u i r e ( ' @ e m m e t i o / n o d e ' ) ) ; 
 v a r   S t r e a m R e a d e r   =   _ i n t e r o p D e f a u l t ( r e q u i r e ( ' @ e m m e t i o / s t r e a m - r e a d e r ' ) ) ; 
 
 c o n s t   A S T E R I S K   =   4 2 ;   / /   * 
 
 / * * 
   *   C o n s u m e s   n o d e   r e p e a t   t o k e n   f r o m   c u r r e n t   s t r e a m   p o s i t i o n   a n d   r e t u r n s   i t s 
   *   p a r s e d   v a l u e 
   *   @ p a r a m     { S t r i n g R e a d e r }   s t r e a m 
   *   @ r e t u r n   { O b j e c t } 
   * / 
 f u n c t i o n   c o n s u m e R e p e a t ( s t r e a m )   { 
 	 i f   ( s t r e a m . e a t ( A S T E R I S K ) )   { 
 	 	 s t r e a m . s t a r t   =   s t r e a m . p o s ; 
 
 	 	 / /   X X X   t h i n k   a b o u t   e x t e n d i n g   r e p e a t   s y n t a x   w i t h   t h r o u g h   n u m b e r i n g 
 	 	 r e t u r n   {   c o u n t :   s t r e a m . e a t W h i l e ( s t r e a m R e a d e r U t i l s . i s N u m b e r )   ?   + s t r e a m . c u r r e n t ( )   :   n u l l   } ; 
 	 } 
 } 
 
 c o n s t   o p t   =   {   t h r o w s :   t r u e   } ; 
 
 / * * 
   *   C o n s u m e s   q u o t e d   l i t e r a l   f r o m   c u r r e n t   s t r e a m   p o s i t i o n   a n d   r e t u r n s   i t  s   i n n e r , 
   *   u n q u o t e d ,   v a l u e 
   *   @ p a r a m     { S t r i n g R e a d e r }   s t r e a m 
   *   @ r e t u r n   { S t r i n g }   R e t u r n s   ` n u l l `   i f   u n a b l e   t o   c o n s u m e   q u o t e d   v a l u e   f r o m   c u r r e n t 
   *   p o s i t i o n 
   * / 
 f u n c t i o n   c o n s u m e Q u o t e d ( s t r e a m )   { 
 	 i f   ( s t r e a m R e a d e r U t i l s . e a t Q u o t e d ( s t r e a m ,   o p t ) )   { 
 	 	 r e t u r n   s t r e a m . c u r r e n t ( ) . s l i c e ( 1 ,   - 1 ) ; 
 	 } 
 } 
 
 c o n s t   T E X T _ S T A R T   =   1 2 3 ;   / /   { 
 c o n s t   T E X T _ E N D   =   1 2 5 ;   / /   } 
 c o n s t   E S C A P E   =     9 2 ;   / /   \   c h a r a c t e r 
 
 / * * 
   *   C o n s u m e s   t e x t   n o d e   ` { . . . } `   f r o m   s t r e a m 
   *   @ p a r a m     { S t r e a m R e a d e r }   s t r e a m 
   *   @ r e t u r n   { S t r i n g }   R e t u r n s   c o n s u m e d   t e x t   v a l u e   ( w i t h o u t   s u r r o u n d i n g   b r a c e s )   o r 
   *   ` n u l l `   i f   t h e r e  s   n o   t e x t   a t   s t a r t i n g   p o s i t i o n 
   * / 
 f u n c t i o n   c o n s u m e T e x t ( s t r e a m )   { 
 	 / /   N B   u s i n g   o w n   i m p l e m e n t a t i o n   i n s t e a d   o f   ` e a t P a i r ( ) `   f r o m   @ e m m e t i o / s t r e a m - r e a d e r - u t i l s 
 	 / /   t o   d i s a b l e   q u o t e d   v a l u e   c o n s u m i n g 
 	 c o n s t   s t a r t   =   s t r e a m . p o s ; 
 
 	 i f   ( s t r e a m . e a t ( T E X T _ S T A R T ) )   { 
 	 	 l e t   s t a c k   =   1 ,   c h ; 
 	 	 l e t   r e s u l t   =   ' ' ; 
 	 	 l e t   o f f s e t   =   s t r e a m . p o s ; 
 
 	 	 w h i l e   ( ! s t r e a m . e o f ( ) )   { 
 	 	 	 c h   =   s t r e a m . n e x t ( ) ; 
 	 	 	 i f   ( c h   = = =   T E X T _ S T A R T )   { 
 	 	 	 	 s t a c k + + ; 
 	 	 	 }   e l s e   i f   ( c h   = = =   T E X T _ E N D )   { 
 	 	 	 	 s t a c k - - ; 
 	 	 	 	 i f   ( ! s t a c k )   { 
 	 	 	 	 	 s t r e a m . s t a r t   =   s t a r t ; 
 	 	 	 	 	 r e t u r n   r e s u l t   +   s t r e a m . s u b s t r i n g ( o f f s e t ,   s t r e a m . p o s   -   1 ) ; 
 	 	 	 	 } 
 	 	 	 }   e l s e   i f   ( c h   = = =   E S C A P E )   { 
 	 	 	 	 c h   =   s t r e a m . n e x t ( ) ; 
 	 	 	 	 i f   ( c h   = = =   T E X T _ S T A R T   | |   c h   = = =   T E X T _ E N D )   { 
 	 	 	 	 	 r e s u l t   + =   s t r e a m . s u b s t r i n g ( o f f s e t ,   s t r e a m . p o s   -   2 )   +   S t r i n g . f r o m C h a r C o d e ( c h ) ; 
 	 	 	 	 	 o f f s e t   =   s t r e a m . p o s ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 
 	 	 / /   I f   w e  r e   h e r e   t h e n   p a i r e d   c h a r a c t e r   c a n  t   b e   c o n s u m e d 
 	 	 s t r e a m . p o s   =   s t a r t ; 
 	 	 t h r o w   s t r e a m . e r r o r ( ` U n a b l e   t o   f i n d   c l o s i n g   $ { S t r i n g . f r o m C h a r C o d e ( T E X T _ E N D ) }   f o r   t e x t   s t a r t ` ) ; 
 	 } 
 
 	 r e t u r n   n u l l ; 
 } 
 
 c o n s t   E X C L               =   3 3 ;   / /   . 
 c o n s t   D O T                 =   4 6 ;   / /   . 
 c o n s t   E Q U A L S           =   6 1 ;   / /   = 
 c o n s t   A T T R _ O P E N     =   9 1 ;   / /   [ 
 c o n s t   A T T R _ C L O S E   =   9 3 ;   / /   ] 
 
 c o n s t   r e A t t r i b u t e N a m e   =   / ^ \ ! ? [ \ w \ - : \ $ @ ] + \ . ? $ / ; 
 
 / * * 
   *   C o n s u m e s   a t t r i b u t e s   d e f i n e d   i n   s q u a r e   b r a c e s   f r o m   g i v e n   s t r e a m . 
   *   E x a m p l e : 
   *   [ a t t r   c o l = 3   t i t l e = " Q u o t e d   s t r i n g "   s e l e c t e d .   s u p p o r t = { r e a c t } ] 
   *   @ p a r a m   { S t r i n g R e a d e r }   s t r e a m 
   *   @ r e t u r n s   { A r r a y }   A r r a y   o f   c o n s u m e d   a t t r i b u t e s 
   * / 
 f u n c t i o n   c o n s u m e A t t r i b u t e s ( s t r e a m )   { 
 	 i f   ( ! s t r e a m . e a t ( A T T R _ O P E N ) )   { 
 	 	 r e t u r n   n u l l ; 
 	 } 
 
 	 c o n s t   r e s u l t   =   [ ] ; 
 	 l e t   t o k e n ,   a t t r ; 
 
 	 w h i l e   ( ! s t r e a m . e o f ( ) )   { 
 	 	 s t r e a m . e a t W h i l e ( s t r e a m R e a d e r U t i l s . i s W h i t e S p a c e ) ; 
 
 	 	 i f   ( s t r e a m . e a t ( A T T R _ C L O S E ) )   { 
 	 	 	 r e t u r n   r e s u l t ;   / /   E n d   o f   a t t r i b u t e   s e t 
 	 	 }   e l s e   i f   ( ( t o k e n   =   c o n s u m e Q u o t e d ( s t r e a m ) )   ! =   n u l l )   { 
 	 	 	 / /   C o n s u m e d   q u o t e d   v a l u e :   a n o n y m o u s   a t t r i b u t e 
 	 	 	 r e s u l t . p u s h ( { 
 	 	 	 	 n a m e :   n u l l , 
 	 	 	 	 v a l u e :   t o k e n 
 	 	 	 } ) ; 
 	 	 }   e l s e   i f   ( e a t U n q u o t e d ( s t r e a m ) )   { 
 	 	 	 / /   C o n s u m e d   n e x t   w o r d :   c o u l d   b e   e i t h e r   a t t r i b u t e   n a m e   o r   u n q u o t e d   d e f a u l t   v a l u e 
 	 	 	 t o k e n   =   s t r e a m . c u r r e n t ( ) ; 
 	 	 	 i f   ( ! r e A t t r i b u t e N a m e . t e s t ( t o k e n ) )   { 
 	 	 	 	 / /   a n o n y m o u s   a t t r i b u t e 
 	 	 	 	 r e s u l t . p u s h ( {   n a m e :   n u l l ,   v a l u e :   t o k e n   } ) ; 
 	 	 	 }   e l s e   { 
 	 	 	 	 / /   L o o k s   l i k e   a   r e g u l a r   a t t r i b u t e 
 	 	 	 	 a t t r   =   p a r s e A t t r i b u t e N a m e ( t o k e n ) ; 
 	 	 	 	 r e s u l t . p u s h ( a t t r ) ; 
 
 	 	 	 	 i f   ( s t r e a m . e a t ( E Q U A L S ) )   { 
 	 	 	 	 	 / /   E x p l i c i t l y   d e f i n e d   v a l u e .   C o u l d   b e   a   w o r d ,   a   q u o t e d   s t r i n g 
 	 	 	 	 	 / /   o r   R e a c t - l i k e   e x p r e s s i o n 
 	 	 	 	 	 i f   ( ( t o k e n   =   c o n s u m e Q u o t e d ( s t r e a m ) )   ! =   n u l l )   { 
 	 	 	 	 	 	 a t t r . v a l u e   =   t o k e n ; 
 	 	 	 	 	 }   e l s e   i f   ( ( t o k e n   =   c o n s u m e T e x t ( s t r e a m ) )   ! =   n u l l )   { 
 	 	 	 	 	 	 a t t r . v a l u e   =   t o k e n ; 
 	 	 	 	 	 	 a t t r . o p t i o n s   =   { 
 	 	 	 	 	 	 	 b e f o r e :   ' { ' , 
 	 	 	 	 	 	 	 a f t e r :   ' } ' 
 	 	 	 	 	 	 } ; 
 	 	 	 	 	 }   e l s e   i f   ( e a t U n q u o t e d ( s t r e a m ) )   { 
 	 	 	 	 	 	 a t t r . v a l u e   =   s t r e a m . c u r r e n t ( ) ; 
 	 	 	 	 	 } 
 	 	 	 	 } 
 	 	 	 } 
 	 	 }   e l s e   { 
 	 	 	 t h r o w   s t r e a m . e r r o r ( ' E x p e c t e d   a t t r i b u t e   n a m e ' ) ; 
 	 	 } 
 	 } 
 
 	 t h r o w   s t r e a m . e r r o r ( ' E x p e c t e d   c l o s i n g   " ] "   b r a c e ' ) ; 
 } 
 
 f u n c t i o n   p a r s e A t t r i b u t e N a m e ( n a m e )   { 
 	 c o n s t   o p t i o n s   =   { } ; 
 
 	 / /   I f   a   f i r s t   c h a r a c t e r   i n   a t t r i b u t e   n a m e   i s   ` ! `      i t  s   a n   i m p l i e d 
 	 / /   d e f a u l t   a t t r i b u t e 
 	 i f   ( n a m e . c h a r C o d e A t ( 0 )   = = =   E X C L )   { 
 	 	 n a m e   =   n a m e . s l i c e ( 1 ) ; 
 	 	 o p t i o n s . i m p l i e d   =   t r u e ; 
 	 } 
 
 	 / /   C h e c k   f o r   l a s t   c h a r a c t e r :   i f   i t  s   a   ` . ` ,   u s e r   w a n t s   b o o l e a n   a t t r i b u t e 
 	 i f   ( n a m e . c h a r C o d e A t ( n a m e . l e n g t h   -   1 )   = = =   D O T )   { 
 	 	 n a m e   =   n a m e . s l i c e ( 0 ,   n a m e . l e n g t h   -   1 ) ; 
 	 	 o p t i o n s . b o o l e a n   =   t r u e ; 
 	 } 
 
 	 c o n s t   a t t r   =   {   n a m e   } ; 
 	 i f   ( O b j e c t . k e y s ( o p t i o n s ) . l e n g t h )   { 
 	 	 a t t r . o p t i o n s   =   o p t i o n s ; 
 	 } 
 
 	 r e t u r n   a t t r ; 
 } 
 
 / * * 
   *   E a t s   t o k e n   t h a t   c a n   b e   a n   u n q u o t e d   v a l u e   f r o m   g i v e n   s t r e a m 
   *   @ p a r a m     { S t r e a m R e a d e r }   s t r e a m 
   *   @ r e t u r n   { B o o l e a n } 
   * / 
 f u n c t i o n   e a t U n q u o t e d ( s t r e a m )   { 
 	 c o n s t   s t a r t   =   s t r e a m . p o s ; 
 	 i f   ( s t r e a m . e a t W h i l e ( i s U n q u o t e d ) )   { 
 	 	 s t r e a m . s t a r t   =   s t a r t ; 
 	 	 r e t u r n   t r u e ; 
 	 } 
 } 
 
 f u n c t i o n   i s U n q u o t e d ( c o d e )   { 
 	 r e t u r n   ! s t r e a m R e a d e r U t i l s . i s S p a c e ( c o d e )   & &   ! s t r e a m R e a d e r U t i l s . i s Q u o t e ( c o d e ) 
 	 	 & &   c o d e   ! = =   A T T R _ O P E N   & &   c o d e   ! = =   A T T R _ C L O S E   & &   c o d e   ! = =   E Q U A L S ; 
 } 
 
 c o n s t   H A S H         =   3 5 ;   / /   # 
 c o n s t   D O T $ 1           =   4 6 ;   / /   . 
 c o n s t   S L A S H       =   4 7 ;   / /   / 
 
 / * * 
   *   C o n s u m e s   a   s i n g l e   e l e m e n t   n o d e   f r o m   c u r r e n t   a b b r e v i a t i o n   s t r e a m 
   *   @ p a r a m     { S t r i n g R e a d e r }   s t r e a m 
   *   @ r e t u r n   { N o d e } 
   * / 
 f u n c t i o n   c o n s u m e E l e m e n t ( s t r e a m )   { 
 	 / /   c o n s u m e   e l e m e n t   n a m e ,   i f   p r o v i d e d 
 	 c o n s t   s t a r t   =   s t r e a m . p o s ; 
 	 c o n s t   n o d e   =   n e w   N o d e ( e a t N a m e ( s t r e a m ) ) ; 
 	 l e t   n e x t ; 
 
 	 w h i l e   ( ! s t r e a m . e o f ( ) )   { 
 	 	 i f   ( s t r e a m . e a t ( D O T $ 1 ) )   { 
 	 	 	 n o d e . a d d C l a s s ( e a t N a m e ( s t r e a m ) ) ; 
 	 	 }   e l s e   i f   ( s t r e a m . e a t ( H A S H ) )   { 
 	 	 	 n o d e . s e t A t t r i b u t e ( ' i d ' ,   e a t N a m e ( s t r e a m ) ) ; 
 	 	 }   e l s e   i f   ( s t r e a m . e a t ( S L A S H ) )   { 
 	 	 	 / /   A   s e l f - c l o s i n g   i n d i c a t o r   m u s t   b e   a t   t h e   e n d   o f   n o n - g r o u p i n g   n o d e 
 	 	 	 i f   ( n o d e . i s G r o u p )   { 
 	 	 	 	 s t r e a m . b a c k U p ( 1 ) ; 
 	 	 	 	 t h r o w   s t r e a m . e r r o r ( ' U n e x p e c t e d   s e l f - c l o s i n g   i n d i c a t o r ' ) ; 
 	 	 	 } 
 	 	 	 n o d e . s e l f C l o s i n g   =   t r u e ; 
 	 	 	 i f   ( n e x t   =   c o n s u m e R e p e a t ( s t r e a m ) )   { 
 	 	 	 	 n o d e . r e p e a t   =   n e x t ; 
 	 	 	 } 
 	 	 	 b r e a k ; 
 	 	 }   e l s e   i f   ( n e x t   =   c o n s u m e A t t r i b u t e s ( s t r e a m ) )   { 
 	 	 	 f o r   ( l e t   i   =   0 ,   i l   =   n e x t . l e n g t h ;   i   <   i l ;   i + + )   { 
 	 	 	 	 n o d e . s e t A t t r i b u t e ( n e x t [ i ] ) ; 
 	 	 	 } 
 	 	 }   e l s e   i f   ( ( n e x t   =   c o n s u m e T e x t ( s t r e a m ) )   ! = =   n u l l )   { 
 	 	 	 n o d e . v a l u e   =   n e x t ; 
 	 	 }   e l s e   i f   ( n e x t   =   c o n s u m e R e p e a t ( s t r e a m ) )   { 
 	 	 	 n o d e . r e p e a t   =   n e x t ; 
 	 	 }   e l s e   { 
 	 	 	 b r e a k ; 
 	 	 } 
 	 } 
 
 	 i f   ( s t a r t   = = =   s t r e a m . p o s )   { 
 	 	 t h r o w   s t r e a m . e r r o r ( ` U n a b l e   t o   c o n s u m e   a b b r e v i a t i o n   n o d e ,   u n e x p e c t e d   $ { s t r e a m . p e e k ( ) } ` ) ; 
 	 } 
 
 	 r e t u r n   n o d e ; 
 } 
 
 f u n c t i o n   e a t N a m e ( s t r e a m )   { 
 	 s t r e a m . s t a r t   =   s t r e a m . p o s ; 
 	 s t r e a m . e a t W h i l e ( i s N a m e ) ; 
 	 r e t u r n   s t r e a m . c u r r e n t ( ) ; 
 } 
 
 f u n c t i o n   i s N a m e ( c o d e )   { 
 	 r e t u r n   s t r e a m R e a d e r U t i l s . i s A l p h a N u m e r i c ( c o d e ) 
 	 	 | |   c o d e   = = =   4 5   / *   -   * / 
 	 	 | |   c o d e   = = =   5 8   / *   :   * / 
 	 	 | |   c o d e   = = =   3 6   / *   $   * / 
 	 	 | |   c o d e   = = =   6 4   / *   @   * / 
 	 	 | |   c o d e   = = =   3 3   / *   !   * / 
 	 	 | |   c o d e   = = =   9 5   / *   _   * / 
 	 	 | |   c o d e   = = =   3 7   / *   %   * / ; 
 } 
 
 c o n s t   G R O U P _ S T A R T   =   4 0 ;   / /   ( 
 c o n s t   G R O U P _ E N D       =   4 1 ;   / /   ) 
 c o n s t   O P _ S I B L I N G     =   4 3 ;   / /   + 
 c o n s t   O P _ C H I L D         =   6 2 ;   / /   > 
 c o n s t   O P _ C L I M B         =   9 4 ;   / /   ^ 
 
 / * * 
   *   P a r s e s   g i v e n   s t r i n g   i n t o   a   n o d e   t r e e 
   *   @ p a r a m     { S t r i n g }   s t r   A b b r e v i a t i o n   t o   p a r s e 
   *   @ r e t u r n   { N o d e } 
   * / 
 f u n c t i o n   p a r s e ( s t r )   { 
 	 c o n s t   s t r e a m   =   n e w   S t r e a m R e a d e r ( s t r . t r i m ( ) ) ; 
 	 c o n s t   r o o t   =   n e w   N o d e ( ) ; 
 	 l e t   c t x   =   r o o t ,   g r o u p S t a c k   =   [ ] ,   c h ; 
 
 	 w h i l e   ( ! s t r e a m . e o f ( ) )   { 
 	 	 c h   =   s t r e a m . p e e k ( ) ; 
 
 	 	 i f   ( c h   = = =   G R O U P _ S T A R T )   {   / /   s t a r t   o f   g r o u p 
 	 	 	 / /   T h e   g r o u p i n g   n o d e   s h o u l d   b e   d e t a c h e d   t o   p r o p e r l y   h a n d l e 
 	 	 	 / /   o u t - o f - b o u n d s   ` ^ `   o p e r a t o r .   N o d e   w i l l   b e   a t t a c h e d   r i g h t   o n   g r o u p   e n d 
 	 	 	 c o n s t   n o d e   =   n e w   N o d e ( ) ; 
 	 	 	 g r o u p S t a c k . p u s h ( [ n o d e ,   c t x ,   s t r e a m . p o s ] ) ; 
 	 	 	 c t x   =   n o d e ; 
 	 	 	 s t r e a m . n e x t ( ) ; 
 	 	 	 c o n t i n u e ; 
 	 	 }   e l s e   i f   ( c h   = = =   G R O U P _ E N D )   {   / /   e n d   o f   g r o u p 
 	 	 	 c o n s t   l a s t G r o u p   =   g r o u p S t a c k . p o p ( ) ; 
 	 	 	 i f   ( ! l a s t G r o u p )   { 
 	 	 	 	 t h r o w   s t r e a m . e r r o r ( ' U n e x p e c t e d   " ) "   g r o u p   e n d ' ) ; 
 	 	 	 } 
 
 	 	 	 c o n s t   n o d e   =   l a s t G r o u p [ 0 ] ; 
 	 	 	 c t x   =   l a s t G r o u p [ 1 ] ; 
 	 	 	 s t r e a m . n e x t ( ) ; 
 
 	 	 	 / /   a   g r o u p   c a n   h a v e   a   r e p e a t e r 
 	 	 	 i f   ( n o d e . r e p e a t   =   c o n s u m e R e p e a t ( s t r e a m ) )   { 
 	 	 	 	 c t x . a p p e n d C h i l d ( n o d e ) ; 
 	 	 	 }   e l s e   { 
 	 	 	 	 / /   m o v e   a l l   c h i l d r e n   o f   g r o u p   i n t o   p a r e n t   n o d e 
 	 	 	 	 w h i l e   ( n o d e . f i r s t C h i l d )   { 
 	 	 	 	 	 c t x . a p p e n d C h i l d ( n o d e . f i r s t C h i l d ) ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 	 / /   f o r   c o n v e n i e n c e ,   g r o u p s   c a n   b e   j o i n e d   w i t h   o p t i o n a l   ` + `   o p e r a t o r 
 	 	 	 s t r e a m . e a t ( O P _ S I B L I N G ) ; 
 
 	 	 	 c o n t i n u e ; 
 	 	 } 
 
 	 	 c o n s t   n o d e   =   c o n s u m e E l e m e n t ( s t r e a m ) ; 
 	 	 c t x . a p p e n d C h i l d ( n o d e ) ; 
 
 	 	 i f   ( s t r e a m . e o f ( ) )   { 
 	 	 	 b r e a k ; 
 	 	 } 
 
 	 	 s w i t c h   ( s t r e a m . p e e k ( ) )   { 
 	 	 	 c a s e   O P _ S I B L I N G : 
 	 	 	 	 s t r e a m . n e x t ( ) ; 
 	 	 	 	 c o n t i n u e ; 
 
 	 	 	 c a s e   O P _ C H I L D : 
 	 	 	 	 s t r e a m . n e x t ( ) ; 
 	 	 	 	 c t x   =   n o d e ; 
 	 	 	 	 c o n t i n u e ; 
 
 	 	 	 c a s e   O P _ C L I M B : 
 	 	 	 	 / /   i t  s   p e r f e c t l y   v a l i d   t o   h a v e   m u l t i p l e   ` ^ `   o p e r a t o r s 
 	 	 	 	 w h i l e   ( s t r e a m . e a t ( O P _ C L I M B ) )   { 
 	 	 	 	 	 c t x   =   c t x . p a r e n t   | |   c t x ; 
 	 	 	 	 } 
 	 	 	 	 c o n t i n u e ; 
 	 	 } 
 	 } 
 
 	 i f   ( g r o u p S t a c k . l e n g t h )   { 
 	 	 s t r e a m . p o s   =   g r o u p S t a c k . p o p ( ) [ 2 ] ; 
 	 	 t h r o w   s t r e a m . e r r o r ( ' E x p e c t e d   g r o u p   c l o s e ' ) ; 
 	 } 
 
 	 r e t u r n   r o o t ; 
 } 
 
 / * * 
   *   P a r s e s   g i v e n   a b b r e v i a t i o n   a n d   u n - r o l l s   i t   i n t o   a   f u l l   t r e e :   r e c u r s i v e l y 
   *   r e p l a c e s   r e p e a t e d   e l e m e n t s   w i t h   a c t u a l   n o d e s 
   *   @ p a r a m     { S t r i n g }   a b b r 
   *   @ r e t u r n   { N o d e } 
   * / 
 f u n c t i o n   i n d e x ( a b b r )   { 
 	 c o n s t   t r e e   =   p a r s e ( a b b r ) ; 
 	 t r e e . w a l k ( u n r o l l ) ; 
 	 r e t u r n   t r e e ; 
 } 
 
 f u n c t i o n   u n r o l l ( n o d e )   { 
 	 i f   ( ! n o d e . r e p e a t   | |   ! n o d e . r e p e a t . c o u n t )   { 
 	 	 r e t u r n ; 
 	 } 
 
 	 c o n s t   p a r e n t   =   n o d e . p a r e n t ; 
 	 l e t   i x   =   p a r e n t . c h i l d r e n . i n d e x O f ( n o d e ) ; 
 
 	 f o r   ( l e t   i   =   0 ;   i   <   n o d e . r e p e a t . c o u n t ;   i + + )   { 
 	 	 c o n s t   c l o n e   =   n o d e . c l o n e ( t r u e ) ; 
 	 	 c l o n e . r e p e a t . v a l u e   =   i   +   1 ; 
 	 	 c l o n e . w a l k ( u n r o l l ) ; 
 
 	 	 i f   ( c l o n e . i s G r o u p )   { 
 	 	 	 w h i l e   ( c l o n e . c h i l d r e n . l e n g t h   >   0 )   { 
 	 	 	 	 c l o n e . f i r s t C h i l d . r e p e a t   =   c l o n e . r e p e a t ; 
 	 	 	 	 p a r e n t . i n s e r t A t ( c l o n e . f i r s t C h i l d ,   i x + + ) ; 
 	 	 	 } 
 	 	 }   e l s e   { 
 	 	 	 p a r e n t . i n s e r t A t ( c l o n e ,   i x + + ) ; 
 	 	 } 
 	 } 
 
 	 n o d e . p a r e n t . r e m o v e C h i l d ( n o d e ) ; 
 } 
 
 m o d u l e . e x p o r t s   =   i n d e x ; 
 
 
 } , { " @ e m m e t i o / n o d e " : 1 3 , " @ e m m e t i o / s t r e a m - r e a d e r " : 1 9 , " @ e m m e t i o / s t r e a m - r e a d e r - u t i l s " : 1 8 } ] , 9 : [ f u n c t i o n ( r e q u i r e , m o d u l e , e x p o r t s ) { 
 ' u s e   s t r i c t ' ; 
 
 f u n c t i o n   _ i n t e r o p D e f a u l t   ( e x )   {   r e t u r n   ( e x   & &   ( t y p e o f   e x   = = =   ' o b j e c t ' )   & &   ' d e f a u l t '   i n   e x )   ?   e x [ ' d e f a u l t ' ]   :   e x ;   } 
 
 v a r   r e s o l v e I m p l i c i t T a g   =   _ i n t e r o p D e f a u l t ( r e q u i r e ( ' @ e m m e t i o / i m p l i c i t - t a g ' ) ) ; 
 
 / * * 
   *   A d d s   m i s s i n g   t a g   n a m e s   f o r   g i v e n   t r e e   d e p e n d i n g   o n   n o d e  s   p a r e n t   n a m e 
   * / 
 v a r   i m p l i c i t T a g s   =   f u n c t i o n ( t r e e )   { 
         t r e e . w a l k ( n o d e   = >   { 
                 / /   r e s o l v e   o n l y   n a m e l e s s   n o d e s   w i t h o u t   c o n t e n t 
                 i f   ( n o d e . n a m e   = =   n u l l   & &   n o d e . a t t r i b u t e s . l e n g t h )   { 
                         n o d e . n a m e   =   r e s o l v e I m p l i c i t T a g ( n o d e . p a r e n t . n a m e ) ; 
                 } 
         } ) ; 
         r e t u r n   t r e e ; 
 } ; 
 
 / * * 
   *   L o c a t e s   a l l   o c c u r a n c e s   o f   g i v e n   ` t o k e n `   w h i c h   a r e   n o t   e s c a p e d   ( e . g .   a r e   n o t 
   *   p r e c e d e d   w i t h   ` \ ` )   g i v e n   i n   ` s t r ` 
   *   @ p a r a m     { S t r i n g }   s t r 
   *   @ r e t u r n   { A r r a y }     A r r a y   o f   t o k e n   r a n g e s 
   * / 
 f u n c t i o n   f i n d U n e s c a p e d T o k e n s ( s t r ,   t o k e n )   { 
         c o n s t   r e s u l t   =   n e w   S e t ( ) ; 
         c o n s t   t l e n   =   t o k e n . l e n g t h ; 
 
         / /   1 .   F i n d   a l l   o c c u r a n c e s   o f   t o k e n s 
         l e t   p o s   =   0 ; 
         w h i l e   ( ( p o s   =   s t r . i n d e x O f ( t o k e n ,   p o s ) )   ! = =   - 1 )   { 
                 r e s u l t . a d d ( p o s ) ; 
                 p o s   + =   t l e n ; 
         } 
 
         i f   ( r e s u l t . s i z e )   { 
                 / /   2 .   R e m o v e   o n e s   t h a t   e s c a p e d 
                 l e t   p o s   =   0 ; 
                 c o n s t   l e n   =   s t r . l e n g t h ; 
 
                 w h i l e   ( p o s   <   l e n )   { 
                         i f   ( s t r [ p o s + + ]   = = =   ' \ \ ' )   { 
                                 r e s u l t . d e l e t e ( p o s + + ) ; 
                         } 
                 } 
         } 
 
         r e t u r n   A r r a y . f r o m ( r e s u l t ) . m a p ( i x   = >   r a n g e ( i x ,   t l e n ) ) ; 
 } 
 
 / * * 
   *   R e p l a c e s   ` r a n g e s ` ,   g e n e r a t e d   b y   ` r a n g e ( ) `   f u n c t i o n ,   w i t h   g i v e n   ` v a l u e `   i n   ` s t r ` 
   *   @ p a r a m     { S t r i n g }   s t r         W h e r e   t o   r e p l a c e   r a n g e s 
   *   @ p a r a m     { A r r a y }   r a n g e s   R a n e s ,   c r e a t e d   b y   ` r a n g e ( ) `   f u n c t i o n 
   *   @ p a r a m     { S t r i n g | F u n c t i o n }   v a l u e     R e p l a c e m e n t   v a l u e .   I f   i t  s   a   f u n c t i o n ,   i t 
   *   w i l l   t a k e   a   r a n g e   v a l u e   a s   a r g u m e n t   a n d   s h o u l d   r e t u r n   a   n e w   s t r i n g 
   *   @ r e t u r n   { S t r i n g } 
   * / 
 f u n c t i o n   r e p l a c e R a n g e s ( s t r ,   r a n g e s ,   v a l u e )   { 
 	 / /   s h o u l d   w a l k   f r o m   t h e   e n d   o f   a r r a y   t o   k e e p   r a n g e s   v a l i d   a f t e r   r e p l a c e m e n t 
 	 f o r   ( l e t   i   =   r a n g e s . l e n g t h   -   1 ;   i   > =   0 ;   i - - )   { 
 	 	 c o n s t   r   =   r a n g e s [ i ] ; 
 
                 l e t   o f f s e t   =   0 ; 
                 l e t   o f f s e t L e n g t h   =   0 ; 
                 l e t   d e s c e n d i n g O r d e r   =   f a l s e ; 
 
                 i f   ( s t r . s u b s t r ( r [ 0 ]   +   r [ 1 ] ,   1 )   = = =   ' @ ' ) { 
                         i f   ( s t r . s u b s t r ( r [ 0 ]   +   r [ 1 ]   +   1 ,   1 )   = = =   ' - ' )   { 
                                 d e s c e n d i n g O r d e r   =   t r u e ; 
                         }   
                         c o n s t   m a t c h e s   =   s t r . s u b s t r ( r [ 0 ]   +   r [ 1 ]   +   1   +   N u m b e r ( d e s c e n d i n g O r d e r ) ) . m a t c h ( / ^ ( \ d + ) / ) ; 
                         i f   ( m a t c h e s )   { 
                                 o f f s e t L e n g t h   =   m a t c h e s [ 1 ] . l e n g t h   +   1   +   N u m b e r ( d e s c e n d i n g O r d e r ) ; 
                                 o f f s e t   =   p a r s e I n t ( m a t c h e s [ 1 ] )   -   1 ; 
                         }   e l s e   { 
                                 o f f s e t L e n g t h   =   2 ; 
                         } 
                 } 
 
 	 	 s t r   =   s t r . s u b s t r i n g ( 0 ,   r [ 0 ] ) 
 	 	 	 +   ( t y p e o f   v a l u e   = = =   ' f u n c t i o n '   ?   v a l u e ( s t r . s u b s t r ( r [ 0 ] ,   r [ 1 ] ) ,   o f f s e t ,   d e s c e n d i n g O r d e r )   :   v a l u e ) 
 	 	 	 +   s t r . s u b s t r i n g ( r [ 0 ]   +   r [ 1 ]   +   o f f s e t L e n g t h ) ; 
 	 } 
 
 	 r e t u r n   s t r ; 
 } 
 
 f u n c t i o n   r a n g e ( s t a r t ,   l e n g t h )   { 
         r e t u r n   [ s t a r t ,   l e n g t h ] ; 
 } 
 
 c o n s t   n u m b e r i n g T o k e n   =   ' $ ' ; 
 
 / * * 
   *   N u m b e r i n g   o f   e x p a n d e d   a b b r e v i a t i o n :   f i n d s   a l l   n o d e s   w i t h   ` $ `   i n   v a l u e 
   *   o r   a t t r i b u t e s   a n d   r e p l a c e s   i t s   o c c u r a n c e s   w i t h   r e p e a t e r   v a l u e 
   * / 
 v a r   a p p l y N u m b e r i n g   =   f u n c t i o n ( t r e e )   { 
         t r e e . w a l k ( a p p l y N u m b e r i n g $ 1 ) ; 
         r e t u r n   t r e e ; 
 } ; 
 
 / * * 
   *   A p p l i e s   n u m b e r i n g   f o r   g i v e n   n o d e :   r e p l a c e s   o c c u r a n c e s   o f   n u m b e r i n g   t o k e n 
   *   i n   n o d e  s   n a m e ,   c o n t e n t   a n d   a t t r i b u t e s 
   *   @ p a r a m     { N o d e }   n o d e 
   *   @ r e t u r n   { N o d e } 
   * / 
 f u n c t i o n   a p p l y N u m b e r i n g $ 1 ( n o d e )   { 
         c o n s t   r e p e a t e r   =   f i n d R e p e a t e r ( n o d e ) ; 
 
         i f   ( r e p e a t e r   & &   r e p e a t e r . v a l u e   ! =   n u l l )   { 
                 / /   N B   r e p l a c e   n u m b e r i n g   i n   n o d e s   w i t h   e x p l i c i t   r e p e a t e r   o n l y : 
                 / /   i t   s o l v e s   i s s u e s   w i t h   a b b r e v i a t i o n s   l i k e   ` x s l : i f [ t e s t = $ f o o ] `   w h e r e 
                 / /   ` $ f o o `   i s   p r e f e r r e d   o u t p u t 
                 c o n s t   v a l u e   =   r e p e a t e r . v a l u e ; 
                 c o n s t   c o u n t   =   r e p e a t e r . c o u n t ; 
 
                 n o d e . n a m e   =   r e p l a c e N u m b e r i n g ( n o d e . n a m e ,   v a l u e ,   c o u n t ) ; 
                 n o d e . v a l u e   =   r e p l a c e N u m b e r i n g ( n o d e . v a l u e ,   v a l u e ,   c o u n t ) ; 
                 n o d e . a t t r i b u t e s . f o r E a c h ( a t t r   = >   { 
                         c o n s t   c o p y   =   n o d e . g e t A t t r i b u t e ( a t t r . n a m e ) . c l o n e ( ) ; 
                         c o p y . n a m e   =   r e p l a c e N u m b e r i n g ( a t t r . n a m e ,   v a l u e ,   c o u n t ) ; 
                         c o p y . v a l u e   =   r e p l a c e N u m b e r i n g ( a t t r . v a l u e ,   v a l u e ,   c o u n t ) ; 
                         n o d e . r e p l a c e A t t r i b u t e ( a t t r . n a m e ,   c o p y ) ; 
                 } ) ; 
         } 
 
         r e t u r n   n o d e ; 
 } 
 
 / * * 
   *   R e t u r n s   r e p e a t e r   o b j e c t   f o r   g i v e n   n o d e 
   *   @ p a r a m     { N o d e }   n o d e 
   *   @ r e t u r n   { O b j e c t } 
   * / 
 f u n c t i o n   f i n d R e p e a t e r ( n o d e )   { 
         w h i l e   ( n o d e )   { 
                 i f   ( n o d e . r e p e a t )   { 
                         r e t u r n   n o d e . r e p e a t ; 
                 } 
 
                 n o d e   =   n o d e . p a r e n t ; 
         } 
 } 
 
 / * * 
   *   R e p l a c e s   n u m b e r i n g   i n   g i v e n   s t r i n g 
   *   @ p a r a m     { S t r i n g }   s t r 
   *   @ p a r a m     { N u m b e r }   v a l u e 
   *   @ r e t u r n   { S t r i n g } 
   * / 
 f u n c t i o n   r e p l a c e N u m b e r i n g ( s t r ,   v a l u e ,   c o u n t )   { 
         / /   r e p l a c e   n u m b e r i n g   i n   s t r i n g s   o n l y :   s k i p   e x p l i c i t   w r a p p e r s   t h a t   c o u l d 
         / /   c o n t a i n   u n e s c a p e d   n u m b e r i n g   t o k e n s 
         i f   ( t y p e o f   s t r   = = =   ' s t r i n g ' )   { 
                 c o n s t   r a n g e s   =   g e t N u m b e r i n g R a n g e s ( s t r ) ; 
                 r e t u r n   r e p l a c e N u m b e r i n g R a n g e s ( s t r ,   r a n g e s ,   v a l u e ,   c o u n t ) ; 
         } 
 
         r e t u r n   s t r ; 
 } 
 
 / * * 
   *   R e t u r n s   n u m b e r i n g   r a n g e s ,   e . g .   r a n g e s   o f   ` $ `   o c c u r a n c e s ,   i n   g i v e n   s t r i n g . 
   *   M u l t i p l e   a d j a c e n t   r a n g e s   a r e   c o m b i n e d 
   *   @ p a r a m     { S t r i n g }   s t r 
   *   @ r e t u r n   { A r r a y } 
   * / 
 f u n c t i o n   g e t N u m b e r i n g R a n g e s ( s t r )   { 
         r e t u r n   f i n d U n e s c a p e d T o k e n s ( s t r   | |   ' ' ,   n u m b e r i n g T o k e n ) 
         . r e d u c e ( ( o u t ,   r a n g e $ $ 1 )   = >   { 
                 / /   s k i p   r a n g e s   t h a t   a c t u a l l y   b e l o n g s   t o   o u t p u t   p l a c e h o l d e r   o r   t a b s t o p s 
                 i f   ( ! / [ # { ] / . t e s t ( s t r [ r a n g e $ $ 1 [ 0 ]   +   1 ]   | |   ' ' ) )   { 
                         c o n s t   l a s t R a n g e   =   o u t [ o u t . l e n g t h   -   1 ] ; 
                         i f   ( l a s t R a n g e   & &   l a s t R a n g e [ 0 ]   +   l a s t R a n g e [ 1 ]   = = =   r a n g e $ $ 1 [ 0 ] )   { 
                                 l a s t R a n g e [ 1 ]   + =   r a n g e $ $ 1 [ 1 ] ; 
                         }   e l s e   { 
                                 o u t . p u s h ( r a n g e $ $ 1 ) ; 
                         } 
                 } 
 
                 r e t u r n   o u t ; 
         } ,   [ ] ) ; 
 } 
 
 / * * 
   *   @ p a r a m     { S t r i n g }   s t r 
   *   @ p a r a m     { A r r a y }   r a n g e s 
   *   @ p a r a m     { N u m b e r }   v a l u e 
   *   @ r e t u r n   { S t r i n g } 
   * / 
 f u n c t i o n   r e p l a c e N u m b e r i n g R a n g e s ( s t r ,   r a n g e s ,   v a l u e ,   c o u n t )   { 
         c o n s t   r e p l a c e d   =   r e p l a c e R a n g e s ( s t r ,   r a n g e s ,   ( t o k e n ,   o f f s e t ,   d e s c e n d i n g O r d e r )   = >   { 
         l e t   _ v a l u e   =   d e s c e n d i n g O r d e r   ?   S t r i n g ( o f f s e t   +   c o u n t   -   v a l u e   +   1 )   :   S t r i n g ( v a l u e   +   o f f s e t ) ; 
                 / /   p a d   v a l u e s   f o r   m u l t i p l e   n u m b e r i n g   t o k e n s ,   e . g .   3   f o r   $ $ $   b e c o m e s   0 0 3 
                 w h i l e   ( _ v a l u e . l e n g t h   <   t o k e n . l e n g t h )   { 
                         _ v a l u e   =   ' 0 '   +   _ v a l u e ; 
                 } 
                 r e t u r n   _ v a l u e ; 
         } ) ; 
 
         / /   u n e s c a p e   s c r e e n e d   n u m b e r i n g   t o k e n s 
         r e t u r n   u n e s c a p e S t r i n g ( r e p l a c e d ) ; 
 } 
 
 / * * 
   *   U n e s c a p e s   c h a r a c t e r s ,   s c r e e n e d   w i t h   ` \ ` ,   i n   g i v e n   s t r i n g 
   *   @ p a r a m     { S t r i n g }   s t r 
   *   @ r e t u r n   { S t r i n g } 
   * / 
 f u n c t i o n   u n e s c a p e S t r i n g ( s t r )   { 
         l e t   i   =   0 ,   r e s u l t   =   ' ' ; 
         c o n s t   l e n   =   s t r . l e n g t h ; 
 
         w h i l e   ( i   <   l e n )   { 
                 c o n s t   c h   =   s t r [ i + + ] ; 
                 r e s u l t   + =   ( c h   = = =   ' \ \ ' )   ?   ( s t r [ i + + ]   | |   ' ' )   :   c h ; 
         } 
 
         r e t u r n   r e s u l t ; 
 } 
 
 / * *   P l a c e h o l d e r   f o r   i n s e r t e d   c o n t e n t   * / 
 c o n s t   p l a c e h o l d e r   =   ' $ # ' ; 
 
 / * *   P l a c e h o l d e r   f o r   c a r e t   * / 
 c o n s t   c a r e t   =   ' | ' ; 
 
 c o n s t   r e U r l   =   / ^ ( ( ? : h t t p s ? | f t p | f i l e ) : \ / \ / ) ? ( [ \ d a - z \ . - ] + ) \ . ( [ a - z \ . ] { 2 , 6 } ) ( [ \ / \ w   \ . - ] * ) * \ / ? $ / ; 
 c o n s t   r e E m a i l   =   / ^ ( [ a - z 0 - 9 _ \ . - ] + ) @ ( [ \ d a - z \ . - ] + ) \ . ( [ a - z \ . ] { 2 , 6 } ) $ / ; 
 c o n s t   r e P r o t o   =   / ^ ( [ a - z ] + : ) ? \ / \ / / i ; 
 
 / * * 
   *   I n s e r t s   c o n t e n t   i n t o   n o d e   w i t h   i m p l i c i t   r e p e a t   c o u n t :   t h i s   n o d e   i s   t h e n 
   *   d u p l i c a t e d   f o r   e a c h   c o n t e n t   i t e m   a n d   c o n t e n t   i t s e l f   i s   i n s e r t e d   e i t h e r   i n t o 
   *   d e e p e s t   c h i l d   o r   i n s t e a d   o f   a   s p e c i a l   t o k e n . 
   * 
   *   T h i s   m e t h o d   u s e s   t w o   d i s t i n c t   s t e p s :   ` p r e p a r e ( ) `   a n d   ` i n s e r t ( ) `   s i n c e   m o s t 
   *   l i k e l y   t h e s e   s t e p s   w i l l   b e   u s e d   s e p a r a t e l y   t o   p r o p e r l y   i n s e r t   c o n t e n t 
   *   w i t h   u n e s c a p e d   ` $ `   n u m b e r i n g   m a r k e r s . 
   * 
   *   @ p a r a m   { N o d e }   t r e e   P a r s e d   a b b r e v i a t i o n 
   *   @ p a r a m   { S t r i n g [ ] }   c o n t e n t   A r r a y   o f   c o n t e n t   i t e m s   t o   i n s e r t 
   *   @ r e t u r n   { N o d e } 
   * / 
 / * * 
   *   F i n d s   n o d e s   w i t h   i m p l i c i t   r e p e a t   a n d   c r e a t e s   ` a m o u n t `   c o p i e s   o f   i t   i n   t r e e 
   *   @ p a r a m     { N o d e }   t r e e 
   *   @ p a r a m     { N u m b e r }   a m o u n t 
   *   @ r e t u r n   { N o d e } 
   * / 
 f u n c t i o n   p r e p a r e ( t r e e ,   a m o u n t )   { 
         a m o u n t   =   a m o u n t   | |   1 ; 
         t r e e . w a l k ( n o d e   = >   { 
                 i f   ( n o d e . r e p e a t   & &   n o d e . r e p e a t . c o u n t   = = =   n u l l )   { 
                         f o r   ( l e t   i   =   0 ;   i   <   a m o u n t ;   i + + )   { 
                                 c o n s t   c l o n e   =   n o d e . c l o n e ( t r u e ) ; 
                                 c l o n e . r e p e a t . i m p l i c i t   =   t r u e ; 
                                 c l o n e . r e p e a t . c o u n t   =   a m o u n t ; 
                                 c l o n e . r e p e a t . v a l u e   =   i   +   1 ; 
                                 c l o n e . r e p e a t . i n d e x   =   i ; 
                                 n o d e . p a r e n t . i n s e r t B e f o r e ( c l o n e ,   n o d e ) ; 
                         } 
 
                         n o d e . r e m o v e ( ) ; 
                 } 
         } ) ; 
 
         r e t u r n   t r e e ; 
 } 
 
 / * * 
   *   I n s e r t s   c o n t e n t   i n t o   i m p l i c i t l y   r e p e a t e d   n o d e s ,   c r e a t e d   b y   ` p r e p a r e ( ) `   m e t h o d 
   *   @ p a r a m     { N o d e }   t r e e 
   *   @ p a r a m     { S t r i n g [ ] }   c o n t e n t 
   *   @ r e t u r n   { N o d e } 
   * / 
 f u n c t i o n   i n s e r t ( t r e e ,   c o n t e n t )   { 
         i f   ( A r r a y . i s A r r a y ( c o n t e n t )   & &   c o n t e n t . l e n g t h )   { 
                 l e t   u p d a t e d   =   f a l s e ; 
                 t r e e . w a l k ( n o d e   = >   { 
                         i f   ( n o d e . r e p e a t   & &   n o d e . r e p e a t . i m p l i c i t )   { 
                                 u p d a t e d   =   t r u e ; 
                                 i n s e r t C o n t e n t ( n o d e ,   c o n t e n t [ n o d e . r e p e a t . i n d e x ] ) ; 
                         } 
                 } ) ; 
 
                 i f   ( ! u p d a t e d )   { 
                         / /   n o   n o d e   w i t h   i m p l i c i t   r e p e a t   w a s   f o u n d ,   i n s e r t   c o n t e n t   a s 
                         / /   d e e p e s t   c h i l d 
                         s e t N o d e C o n t e n t ( f i n d D e e p e s t N o d e ( t r e e ) ,   c o n t e n t . j o i n ( ' \ n ' ) ) ; 
                 } 
         } 
 
         r e t u r n   t r e e ; 
 } 
 
 / * * 
   *   I n s e r t s   ` c o n t e n t `   i n t o   g i v e n   ` n o d e ` :   e i t h e r   r e p l a c e s   o u t p u t   p l a c e h o l d e r s 
   *   o r   i n s e r t s   i t   i n t o   d e e p e s t   c h i l d   n o d e 
   *   @ p a r a m     { N o d e }   n o d e 
   *   @ p a r a m     { S t r i n g }   c o n t e n t 
   *   @ r e t u r n   { N o d e } 
   * / 
 f u n c t i o n   i n s e r t C o n t e n t ( n o d e ,   c o n t e n t )   { 
 	 l e t   i n s e r t e d   =   i n s e r t C o n t e n t I n t o P l a c e h o l d e r ( n o d e ,   c o n t e n t ) ; 
 	 n o d e . w a l k ( c h i l d   = >   i n s e r t e d   | =   i n s e r t C o n t e n t I n t o P l a c e h o l d e r ( c h i l d ,   c o n t e n t ) ) ; 
 
 	 i f   ( ! i n s e r t e d )   { 
 	 	 / /   n o   p l a c e h o l d e r s   w e r e   f o u n d   i n   n o d e ,   i n s e r t   c o n t e n t   i n t o   d e e p e s t   c h i l d 
 	 	 s e t N o d e C o n t e n t ( f i n d D e e p e s t N o d e ( n o d e ) ,   c o n t e n t ) ; 
 	 } 
 
 	 r e t u r n   n o d e ; 
 } 
 
 / * * 
   *   I n s e r t s   g i v e n   ` c o n t e n t `   i n t o   p l a c e h o l d e r s   f o r   g i v e n   ` n o d e ` .   P l a c e h o l d e r s 
   *   m i g h t   b e   a v a i l a b l e   i n   a t t r i b u t e   v a l u e s   a n d   n o d e   c o n t e n t 
   *   @ p a r a m     { N o d e }   n o d e 
   *   @ p a r a m     { S t r i n g }   c o n t e n t 
   *   @ r e t u r n   { B o o l e a n }   R e t u r n s   ` t r u e `   i f   p l a c e h o l d e r s   w e r e   f o u n d   a n d   r e p l a c e d   i n   n o d e 
   * / 
 f u n c t i o n   i n s e r t C o n t e n t I n t o P l a c e h o l d e r ( n o d e ,   c o n t e n t )   { 
 	 c o n s t   s t a t e   =   { r e p l a c e d :   f a l s e } ; 
 
 	 n o d e . v a l u e   =   r e p l a c e P l a c e h o l d e r ( n o d e . v a l u e ,   c o n t e n t ,   s t a t e ) ; 
 	 n o d e . a t t r i b u t e s . f o r E a c h ( a t t r   = >   { 
 	 	 i f   ( a t t r . v a l u e )   { 
 	 	 	 n o d e . s e t A t t r i b u t e ( a t t r . n a m e ,   r e p l a c e P l a c e h o l d e r ( a t t r . v a l u e ,   c o n t e n t ,   s t a t e ) ) ; 
 	 	 } 
 	 } ) ; 
 
 	 r e t u r n   s t a t e . r e p l a c e d ; 
 } 
 
 / * * 
   *   R e p l a c e s   a l l   p l a c e h o l d e r   o c c u r a n c e s   i n   g i v e n   ` s t r `   w i t h   ` v a l u e ` 
   *   @ p a r a m     { S t r i n g }   s t r 
   *   @ p a r a m     { S t r i n g }   v a l u e 
   *   @ p a r a m     { O b j e c t }   [ _ s t a t e ]   I f   p r o v i d e d ,   s e t   ` r e p l a c e d `   p r o p e r t y   o f   g i v e n 
   *   o b j e c t   t o   ` t r u e `   i f   p l a c e h o l d e r   w a s   f o u n d   a n d   r e p l a c e d 
   *   @ r e t u r n   { S t r i n g } 
   * / 
 f u n c t i o n   r e p l a c e P l a c e h o l d e r ( s t r ,   v a l u e ,   _ s t a t e )   { 
 	 i f   ( t y p e o f   s t r   = = =   ' s t r i n g ' )   { 
 	 	 c o n s t   r a n g e s   =   f i n d U n e s c a p e d T o k e n s ( s t r ,   p l a c e h o l d e r ) ; 
 	 	 i f   ( r a n g e s . l e n g t h )   { 
 	 	 	 i f   ( _ s t a t e )   { 
 	 	 	 	 _ s t a t e . r e p l a c e d   =   t r u e ; 
 	 	 	 } 
 
 	 	 	 s t r   =   r e p l a c e R a n g e s ( s t r ,   r a n g e s ,   v a l u e ) ; 
 	 	 } 
 	 } 
 
 	 r e t u r n   s t r ; 
 } 
 
 / * * 
   *   F i n d s   n o d e   w h i c h   i s   t h e   d e e p e s t   f o r   i n   c u r r e n t   n o d e   o r   n o d e   i t e s e l f . 
   *   @ p a r a m     { N o d e }   n o d e 
   *   @ r e t u r n   { N o d e } 
   * / 
 f u n c t i o n   f i n d D e e p e s t N o d e ( n o d e )   { 
 	 w h i l e   ( n o d e . c h i l d r e n . l e n g t h )   { 
 	 	 n o d e   =   n o d e . c h i l d r e n [ n o d e . c h i l d r e n . l e n g t h   -   1 ] ; 
 	 } 
 
 	 r e t u r n   n o d e ; 
 } 
 
 / * * 
   *   U p d a t e s   c o n t e n t   o f   g i v e n   n o d e 
   *   @ p a r a m   { N o d e }   n o d e 
   *   @ p a r a m   { S t r i n g }   c o n t e n t 
   * / 
 f u n c t i o n   s e t N o d e C o n t e n t ( n o d e ,   c o n t e n t )   { 
 	 / /   f i n d   c a r e t   p o s i t i o n   a n d   r e p l a c e   i t   w i t h   c o n t e n t ,   i f   p o s s i b l e 
 	 i f   ( n o d e . v a l u e )   { 
 	 	 c o n s t   r a n g e s   =   f i n d U n e s c a p e d T o k e n s ( n o d e . v a l u e ,   c a r e t ) ; 
 	 	 i f   ( r a n g e s . l e n g t h )   { 
 	 	 	 n o d e . v a l u e   =   r e p l a c e R a n g e s ( n o d e . v a l u e ,   r a n g e s ,   c o n t e n t ) ; 
 	 	 	 r e t u r n ; 
 	 	 } 
 	 } 
 
 	 i f   ( n o d e . n a m e . t o L o w e r C a s e ( )   = = =   ' a '   | |   n o d e . h a s A t t r i b u t e ( ' h r e f ' ) )   { 
 	 	 / /   s p e c i a l   c a s e :   i n s e r t i n g   c o n t e n t   i n t o   ` < a > `   t a g 
 	 	 i f   ( r e U r l . t e s t ( c o n t e n t ) )   { 
 	 	 	 n o d e . s e t A t t r i b u t e ( ' h r e f ' ,   ( r e P r o t o . t e s t ( c o n t e n t )   ?   ' '   :   ' h t t p : / / ' )   +   c o n t e n t ) ; 
 	 	 }   e l s e   i f   ( r e E m a i l . t e s t ( c o n t e n t ) )   { 
 	 	 	 n o d e . s e t A t t r i b u t e ( ' h r e f ' ,   ' m a i l t o : '   +   c o n t e n t ) ; 
 	 	 } 
 	 } 
 
 	 n o d e . v a l u e   =   c o n t e n t ; 
 } 
 
 c o n s t   d e f a u l t O p t i o n s   =   { 
 	 e l e m e n t :   ' _ _ ' , 
 	 m o d i f i e r :   ' _ ' 
 } ; 
 
 c o n s t   r e E l e m e n t     =   / ^ ( - + ) ( [ a - z 0 - 9 ] + [ a - z 0 - 9 - ] * ) / i ; 
 c o n s t   r e M o d i f i e r   =   / ^ ( _ + ) ( [ a - z 0 - 9 ] + [ a - z 0 - 9 - _ ] * ) / i ; 
 c o n s t   b l o c k C a n d i d a t e s 1   =   c l a s s N a m e   = >   / ^ [ a - z ] \ - / i . t e s t ( c l a s s N a m e ) ; 
 c o n s t   b l o c k C a n d i d a t e s 2   =   c l a s s N a m e   = >   / ^ [ a - z ] / i . t e s t ( c l a s s N a m e ) ; 
 
 / * * 
   *   B E M   t r a n s f o r m e r :   u p d a t e s   c l a s s   n a m e s   w r i t t e n   a s   ` - e l e m e n t `   a n d 
   *   ` _ m o d i f i e r `   i n t o   f u l l   c l a s s   n a m e s   a s   d e s c r i b e d   i n   B E M   s p e c s .   A l s o   a d d s   m i s s i n g 
   *   c l a s s   n a m e s :   f i r   e x a m p l e ,   i f   n o d e   c o n t a i n s   ` . b l o c k _ m o d i f i e r `   c l a s s ,   e n s u r e s 
   *   t h a t   e l e m e n t   c o n t a i n s   ` . b l o c k `   c l a s s   a s   w e l l 
   * / 
 v a r   b e m   =   f u n c t i o n ( t r e e ,   o p t i o n s )   { 
 	 o p t i o n s   =   O b j e c t . a s s i g n ( { } ,   d e f a u l t O p t i o n s ,   o p t i o n s ) ; 
 
 	 t r e e . w a l k ( n o d e   = >   e x p a n d C l a s s N a m e s ( n o d e ,   o p t i o n s ) ) ; 
 
 	 c o n s t   l o o k u p   =   c r e a t e B l o c k L o o k u p ( t r e e ) ; 
 	 t r e e . w a l k ( n o d e   = >   e x p a n d S h o r t N o t a t i o n ( n o d e ,   l o o k u p ,   o p t i o n s ) ) ; 
 
 	 r e t u r n   t r e e ; 
 } ; 
 
 / * * 
   *   E x p a n d s   e x i s t i n g   c l a s s   n a m e s   i n   B E M   n o t a t i o n   i n   g i v e n   ` n o d e ` . 
   *   F o r   e x a m p l e ,   i f   n o d e   c o n t a i n s   ` b _ _ e l _ m o d `   c l a s s   n a m e ,   t h i s   m e t h o d   e n s u r e s 
   *   t h a t   e l e m e n t   c o n t a i n s   ` b _ _ e l `   c l a s s   a s   w e l l 
   *   @ p a r a m     { N o d e }   n o d e 
   *   @ p a r a m     { O b j e c t }   o p t i o n s 
   *   @ r e t u r n   { S e t } 
   * / 
 f u n c t i o n   e x p a n d C l a s s N a m e s ( n o d e ,   o p t i o n s )   { 
 	 c o n s t   c l a s s N a m e s   =   n o d e . c l a s s L i s t . r e d u c e ( ( o u t ,   c l )   = >   { 
 	 	 / /   r e m o v e   a l l   m o d i f i e r s   a n d   e l e m e n t   p r e f i x e s   f r o m   c l a s s   n a m e   t o   g e t   a   b a s e   e l e m e n t   n a m e 
 	 	 c o n s t   i x   =   c l . i n d e x O f ( ' _ ' ) ; 
 	 	 i f   ( i x   >   0   & &   ! c l . s t a r t s W i t h ( ' - ' ) )   { 
 	 	 	 o u t . a d d ( c l . s l i c e ( 0 ,   i x ) ) ; 
 	 	         o u t . a d d ( c l . s l i c e ( i x ) ) ; 
 	 	 	 r e t u r n   o u t ; 
 	 	 } 
 
 	 	 r e t u r n   o u t . a d d ( c l ) ; 
 	 } ,   n e w   S e t ( ) ) ; 
 
 	 i f   ( c l a s s N a m e s . s i z e )   { 
 	 	 n o d e . s e t A t t r i b u t e ( ' c l a s s ' ,   A r r a y . f r o m ( c l a s s N a m e s ) . j o i n ( '   ' ) ) ; 
 	 } 
 } 
 
 / * * 
   *   E x p a n d s   s h o r t   B E M   n o t a t i o n ,   e . g .   ` - e l e m e n t `   a n d   ` _ m o d i f i e r ` 
   *   @ p a r a m     { N o d e }   n o d e             P a r s e d   E m m e t   a b b r e v i a t i o n   n o d e 
   *   @ p a r a m     { M a p }   l o o k u p           B E M   b l o c k   n a m e   l o o k u p 
   *   @ p a r a m     { O b j e c t }   o p t i o n s 
   * / 
 f u n c t i o n   e x p a n d S h o r t N o t a t i o n ( n o d e ,   l o o k u p ,   o p t i o n s )   { 
 	 c o n s t   c l a s s N a m e s   =   n o d e . c l a s s L i s t . r e d u c e ( ( o u t ,   c l )   = >   { 
 	 	 l e t   p r e f i x ,   m ; 
 	 	 c o n s t   o r i g i n a l C l a s s   =   c l ; 
 
 	 	 / /   p a r s e   e l e m e n t   d e f i n i t i o n   ( c o u l d   b e   o n l y   o n e ) 
 	 	 i f   ( m   =   c l . m a t c h ( r e E l e m e n t ) )   { 
 	 	 	 p r e f i x   =   g e t B l o c k N a m e ( n o d e ,   l o o k u p ,   m [ 1 ] )   +   o p t i o n s . e l e m e n t   +   m [ 2 ] ; 
 	 	 	 o u t . a d d ( p r e f i x ) ; 
 	 	 	 c l   =   c l . s l i c e ( m [ 0 ] . l e n g t h ) ; 
 	 	 } 
 
 	 	 / /   p a r s e   m o d i f i e r s   d e f i n i t i o n s   
 	 	 i f   ( m   =   c l . m a t c h ( r e M o d i f i e r ) )   { 
 	 	 	 i f   ( ! p r e f i x )   { 
 	 	 	 	 p r e f i x   =   g e t B l o c k N a m e ( n o d e ,   l o o k u p ,   m [ 1 ] ) ; 
 	 	 	 	 o u t . a d d ( p r e f i x ) ; 
 	 	 	 } 
 
 	 	 	 o u t . a d d ( ` $ { p r e f i x } $ { o p t i o n s . m o d i f i e r } $ { m [ 2 ] } ` ) ; 
 	 	 	 c l   =   c l . s l i c e ( m [ 0 ] . l e n g t h ) ; 
 	 	 } 
 
 	 	 i f   ( c l   = = =   o r i g i n a l C l a s s )   { 
 	 	 	 / /   c l a s s   n a m e   w a s n  t   m o d i f i e d :   i t  s   n o t   a   B E M - s p e c i f i c   c l a s s , 
 	 	 	 / /   a d d   i t   a s - i s   i n t o   o u t p u t 
 	 	 	 o u t . a d d ( o r i g i n a l C l a s s ) ; 
 	 	 } 
 
 	 	 r e t u r n   o u t ; 
 	 } ,   n e w   S e t ( ) ) ; 
 
 	 c o n s t   a r r C l a s s N a m e s   =   A r r a y . f r o m ( c l a s s N a m e s ) . f i l t e r ( B o o l e a n ) ; 
 	 i f   ( a r r C l a s s N a m e s . l e n g t h )   { 
 	 	 n o d e . s e t A t t r i b u t e ( ' c l a s s ' ,   a r r C l a s s N a m e s . j o i n ( '   ' ) ) ; 
 	 } 
 } 
 
 / * * 
   *   C r e a t e s   b l o c k   n a m e   l o o k u p   f o r   e a c h   n o d e   i n   g i v e n   t r e e ,   e . g .   f i n d s   b l o c k 
   *   n a m e   e x p l i c i t l y   f o r   e a c h   n o d e 
   *   @ p a r a m     { N o d e }   t r e e 
   *   @ r e t u r n   { M a p } 
   * / 
 f u n c t i o n   c r e a t e B l o c k L o o k u p ( t r e e )   { 
 	 c o n s t   l o o k u p   =   n e w   M a p ( ) ; 
 
 	 t r e e . w a l k ( n o d e   = >   { 
 	 	 c o n s t   c l a s s N a m e s   =   n o d e . c l a s s L i s t ; 
 	 	 i f   ( c l a s s N a m e s . l e n g t h )   { 
 	 	 	 / /   g u e s s   b e s t   b l o c k   n a m e   f r o m   c l a s s   o r   u s e   p a r e n t  s   b l o c k   n a m e 
 	 	 	 l o o k u p . s e t ( n o d e , 
 	 	 	 	 f i n d ( c l a s s N a m e s ,   b l o c k C a n d i d a t e s 1 ) 
 	 	 	 	 | |   f i n d ( c l a s s N a m e s ,   b l o c k C a n d i d a t e s 2 ) 
 	 	 	 	 | |   l o o k u p . g e t ( n o d e . p a r e n t ) 
 	 	 	 ) ; 
 	 	 } 
 	 } ) ; 
 
 	 r e t u r n   l o o k u p ; 
 } 
 
 / * * 
   *   R e t u r n s   b l o c k   n a m e   f o r   g i v e n   ` n o d e `   b y   ` p r e f i x ` ,   w h i c h   t e l l s   t h e   d e p t h   o f 
   *   o f   p a r e n t   n o d e   l o o k u p 
   *   @ p a r a m     { N o d e }   n o d e 
   *   @ p a r a m     { M a p }   l o o k u p 
   *   @ p a r a m     { S t r i n g }   p r e f i x 
   *   @ r e t u r n   { S t r i n g } 
   * / 
 f u n c t i o n   g e t B l o c k N a m e ( n o d e ,   l o o k u p ,   p r e f i x )   { 
 	 l e t   d e p t h   =   p r e f i x . l e n g t h   >   1   ?   p r e f i x . l e n g t h   :   0 ; 
 
 	 / /   N B   d o n  t   w a l k   u p   t o   r o o t   n o d e ,   s t a y   a t   f i r s t   r o o t   c h i l d   i n   c a s e   o f 
 	 / /   t o o   d e e p   p r e f i x 
 	 w h i l e   ( n o d e . p a r e n t   & &   n o d e . p a r e n t . p a r e n t   & &   d e p t h - - )   { 
 	 	 n o d e   =   n o d e . p a r e n t ; 
 	 } 
 
 	 r e t u r n   l o o k u p . g e t ( n o d e )   | |   ' ' ; 
 } 
 
 f u n c t i o n   f i n d ( a r r ,   f i l t e r )   { 
 	 f o r ( l e t   i   =   0 ;   i   <   a r r . l e n g t h ;   i + + ) { 
 	 	 i f   ( r e E l e m e n t . t e s t ( a r r [ i ] )   | |   r e M o d i f i e r . t e s t ( a r r [ i ] ) )   { 
 	 	 	 b r e a k ; 
 	 	 } 
 	 	 i f   ( f i l t e r ( a r r [ i ] ) )   { 
 	 	 	 r e t u r n   a r r [ i ] ; 
 	 	 } 
 	 } 
 } 
 
 / * * 
   *   J S X   t r a n s f o r m e r :   r e p l a c e s   ` c l a s s `   a n d   ` f o r `   a t t r i b u t e s   w i t h   ` c l a s s N a m e `   a n d 
   *   ` h t m l F o r `   a t t r i b u t e s   r e s p e c t i v e l y 
   * / 
 v a r   j s x   =   f u n c t i o n ( t r e e )   { 
 	 t r e e . w a l k ( n o d e   = >   { 
 	 	 r e p l a c e ( n o d e ,   ' c l a s s ' ,   ' c l a s s N a m e ' ) ; 
 	 	 r e p l a c e ( n o d e ,   ' f o r ' ,   ' h t m l F o r ' ) ; 
 	 } ) ; 
 	 r e t u r n   t r e e ; 
 } ; 
 
 f u n c t i o n   r e p l a c e ( n o d e ,   o l d N a m e ,   n e w N a m e )   { 
 	 l e t   a t t r   =   n o d e . g e t A t t r i b u t e ( o l d N a m e ) ; 
 	 i f   ( a t t r )   { 
 	 	 a t t r . n a m e   =   n e w N a m e ; 
 	 } 
 } 
 
 c o n s t   r e S u p p o r t e r N a m e s   =   / ^ x s l : ( v a r i a b l e | w i t h \ - p a r a m ) $ / i ; 
 
 / * * 
   *   X S L   t r a n s f o r m e r :   r e m o v e s   ` s e l e c t `   a t t r i b u t e s   f r o m   c e r t a i n   n o d e s   t h a t   c o n t a i n 
   *   c h i l d r e n 
   * / 
 v a r   x s l   =   f u n c t i o n ( t r e e )   { 
 	 t r e e . w a l k ( n o d e   = >   { 
 	 	 i f   ( r e S u p p o r t e r N a m e s . t e s t ( n o d e . n a m e   | |   ' ' )   & &   ( n o d e . c h i l d r e n . l e n g t h   | |   n o d e . v a l u e ) )   { 
 	 	 	 n o d e . r e m o v e A t t r i b u t e ( ' s e l e c t ' ) ; 
 	 	 } 
 	 } ) ; 
 	 r e t u r n   t r e e ; 
 } ; 
 
 c o n s t   s u p p o r t e d A d d o n s   =   {   b e m ,   j s x ,   x s l   } ; 
 
 / * * 
   *   R u n s   a d d i t i o n a l   t r a n s f o r m s   o n   g i v e n   t r e e . 
   *   T h e s e   t r a n s f o r m s   m a y   i n t r o d u c e   s i d e - e f f e c t s   a n d   u n e x p e c t e d   r e s u l t 
   *   s o   t h e y   a r e   n o t   a p p l i e d   b y   d e f a u l t ,   a u t h o r s   m u s t   s p e c i f y   w h i c h   a d d o n s 
   *   i n   ` a d d o n s `   a r g u m e n t   a s   ` { a d d o n N a m e :   a d d o n O p t i o n s } ` 
   *   @ p a r a m   { N o d e }   t r e e   P a r s e d   E m m e t   a b b r e v i a t i o n 
   *   @ p a r a m   { O b j e c t }   a d d o n s   A d d - o n s   t o   a p p l y   a n d   t h e i r   o p t i o n s 
   * / 
 v a r   a d d o n s   =   f u n c t i o n ( t r e e ,   a d d o n s )   { 
         O b j e c t . k e y s ( a d d o n s   | |   { } ) . f o r E a c h ( k e y   = >   { 
                 i f   ( k e y   i n   s u p p o r t e d A d d o n s )   { 
                         c o n s t   a d d o n O p t   =   t y p e o f   a d d o n s [ k e y ]   = = =   ' o b j e c t '   ?   a d d o n s [ k e y ]   :   n u l l ; 
                         t r e e   =   t r e e . u s e ( s u p p o r t e d A d d o n s [ k e y ] ,   a d d o n O p t ) ; 
                 } 
         } ) ; 
 
         r e t u r n   t r e e ; 
 } ; 
 
 / * * 
   *   A p p l i e s   b a s i c   H T M L - s p e c i f i c   t r a n s f o r m a t i o n s   f o r   g i v e n   p a r s e d   a b b r e v i a t i o n : 
   *      r e s o l v e   i m p l i e d   t a g   n a m e s 
   *      i n s e r t   r e p e a t e d   c o n t e n t 
   *      r e s o l v e   n o d e   n u m b e r i n g 
   * / 
 v a r   i n d e x   =   f u n c t i o n ( t r e e ,   c o n t e n t ,   a p p l i e d A d d o n s )   { 
         i f   ( t y p e o f   c o n t e n t   = = =   ' s t r i n g ' )   { 
                 c o n t e n t   =   [ c o n t e n t ] ; 
         }   e l s e   i f   ( c o n t e n t   & &   t y p e o f   c o n t e n t   = = =   ' o b j e c t '   & &   ! A r r a y . i s A r r a y ( c o n t e n t ) )   { 
                 a p p l i e d A d d o n s   =   c o n t e n t ; 
                 c o n t e n t   =   n u l l ; 
         } 
 
         r e t u r n   t r e e 
         . u s e ( i m p l i c i t T a g s ) 
         . u s e ( p r e p a r e ,   A r r a y . i s A r r a y ( c o n t e n t )   ?   c o n t e n t . l e n g t h   :   n u l l ) 
         . u s e ( a p p l y N u m b e r i n g ) 
         . u s e ( i n s e r t ,   c o n t e n t ) 
         . u s e ( a d d o n s ,   a p p l i e d A d d o n s ) ; 
 } ; 
 
 m o d u l e . e x p o r t s   =   i n d e x ; 
 
 } , { " @ e m m e t i o / i m p l i c i t - t a g " : 1 0 } ] , 1 0 : [ f u n c t i o n ( r e q u i r e , m o d u l e , e x p o r t s ) { 
 ' u s e   s t r i c t ' ; 
 
 c o n s t   i n l i n e E l e m e n t s   =   n e w   S e t ( ' a , a b b r , a c r o n y m , a p p l e t , b , b a s e f o n t , b d o , b i g , b r , b u t t o n , c i t e , c o d e , d e l , d f n , e m , f o n t , i , i f r a m e , i m g , i n p u t , i n s , k b d , l a b e l , m a p , o b j e c t , q , s , s a m p , s e l e c t , s m a l l , s p a n , s t r i k e , s t r o n g , s u b , s u p , t e x t a r e a , t t , u , v a r ' . s p l i t ( ' , ' ) ) ; 
 c o n s t   e l e m e n t M a p   =   { 
         p :   ' s p a n ' , 
         u l :   ' l i ' , 
         o l :   ' l i ' , 
         t a b l e :   ' t r ' , 
         t r :   ' t d ' , 
         t b o d y :   ' t r ' , 
         t h e a d :   ' t r ' , 
         t f o o t :   ' t r ' , 
         c o l g r o u p :   ' c o l ' , 
         s e l e c t :   ' o p t i o n ' , 
         o p t g r o u p :   ' o p t i o n ' , 
         a u d i o :   ' s o u r c e ' , 
         v i d e o :   ' s o u r c e ' , 
         o b j e c t :   ' p a r a m ' , 
         m a p :   ' a r e a ' 
 } ; 
 
 / * * 
   *   R e t u r n s   b e s t   c h i l d   n o d e   n a m e   f o r   g i v e n   p a r e n t   n o d e   n a m e 
   *   @ p a r a m     { S t r i n g }   p a r e n t N a m e   N a m e   o f   p a r e n t   n o d e 
   *   @ r e t u r n   { S t r i n g } 
   * / 
 f u n c t i o n   r e s o l v e I m p l i c i t N a m e ( p a r e n t N a m e )   { 
         p a r e n t N a m e   =   ( p a r e n t N a m e   | |   ' ' ) . t o L o w e r C a s e ( ) ; 
         r e t u r n   e l e m e n t M a p [ p a r e n t N a m e ] 
                 | |   ( i n l i n e E l e m e n t s . h a s ( p a r e n t N a m e )   ?   ' s p a n '   :   ' d i v ' ) ; 
 } 
 
 m o d u l e . e x p o r t s   =   r e s o l v e I m p l i c i t N a m e ; 
 
 } , { } ] , 1 1 : [ f u n c t i o n ( r e q u i r e , m o d u l e , e x p o r t s ) { 
 ' u s e   s t r i c t ' ; 
 
 f u n c t i o n   _ i n t e r o p D e f a u l t   ( e x )   {   r e t u r n   ( e x   & &   ( t y p e o f   e x   = = =   ' o b j e c t ' )   & &   ' d e f a u l t '   i n   e x )   ?   e x [ ' d e f a u l t ' ]   :   e x ;   } 
 
 v a r   r e s o l v e I m p l i c i t T a g   =   _ i n t e r o p D e f a u l t ( r e q u i r e ( ' @ e m m e t i o / i m p l i c i t - t a g ' ) ) ; 
 
 v a r   l a t i n   =   { 
 	 " c o m m o n " :   [ " l o r e m " ,   " i p s u m " ,   " d o l o r " ,   " s i t " ,   " a m e t " ,   " c o n s e c t e t u r " ,   " a d i p i s i c i n g " ,   " e l i t " ] , 
 	 " w o r d s " :   [ " e x e r c i t a t i o n e m " ,   " p e r f e r e n d i s " ,   " p e r s p i c i a t i s " ,   " l a b o r u m " ,   " e v e n i e t " , 
 	 	 " s u n t " ,   " i u r e " ,   " n a m " ,   " n o b i s " ,   " e u m " ,   " c u m " ,   " o f f i c i i s " ,   " e x c e p t u r i " , 
 	 	 " o d i o " ,   " c o n s e c t e t u r " ,   " q u a s i " ,   " a u t " ,   " q u i s q u a m " ,   " v e l " ,   " e l i g e n d i " , 
 	 	 " i t a q u e " ,   " n o n " ,   " o d i t " ,   " t e m p o r e " ,   " q u a e r a t " ,   " d i g n i s s i m o s " , 
 	 	 " f a c i l i s " ,   " n e q u e " ,   " n i h i l " ,   " e x p e d i t a " ,   " v i t a e " ,   " v e r o " ,   " i p s u m " , 
 	 	 " n i s i " ,   " a n i m i " ,   " c u m q u e " ,   " p a r i a t u r " ,   " v e l i t " ,   " m o d i " ,   " n a t u s " , 
 	 	 " i u s t o " ,   " e a q u e " ,   " s e q u i " ,   " i l l o " ,   " s e d " ,   " e x " ,   " e t " ,   " v o l u p t a t i b u s " , 
 	 	 " t e m p o r a " ,   " v e r i t a t i s " ,   " r a t i o n e " ,   " a s s u m e n d a " ,   " i n c i d u n t " ,   " n o s t r u m " , 
 	 	 " p l a c e a t " ,   " a l i q u i d " ,   " f u g a " ,   " p r o v i d e n t " ,   " p r a e s e n t i u m " ,   " r e m " , 
 	 	 " n e c e s s i t a t i b u s " ,   " s u s c i p i t " ,   " a d i p i s c i " ,   " q u i d e m " ,   " p o s s i m u s " , 
 	 	 " v o l u p t a s " ,   " d e b i t i s " ,   " s i n t " ,   " a c c u s a n t i u m " ,   " u n d e " ,   " s a p i e n t e " , 
 	 	 " v o l u p t a t e " ,   " q u i " ,   " a s p e r n a t u r " ,   " l a u d a n t i u m " ,   " s o l u t a " ,   " a m e t " , 
 	 	 " q u o " ,   " a l i q u a m " ,   " s a e p e " ,   " c u l p a " ,   " l i b e r o " ,   " i p s a " ,   " d i c t a " , 
 	 	 " r e i c i e n d i s " ,   " n e s c i u n t " ,   " d o l o r i b u s " ,   " a u t e m " ,   " i m p e d i t " ,   " m i n i m a " , 
 	 	 " m a i o r e s " ,   " r e p u d i a n d a e " ,   " i p s a m " ,   " o b c a e c a t i " ,   " u l l a m " ,   " e n i m " , 
 	 	 " t o t a m " ,   " d e l e c t u s " ,   " d u c i m u s " ,   " q u i s " ,   " v o l u p t a t e s " ,   " d o l o r e s " , 
 	 	 " m o l e s t i a e " ,   " h a r u m " ,   " d o l o r e m " ,   " q u i a " ,   " v o l u p t a t e m " ,   " m o l e s t i a s " , 
 	 	 " m a g n i " ,   " d i s t i n c t i o " ,   " o m n i s " ,   " i l l u m " ,   " d o l o r u m " ,   " v o l u p t a t u m " ,   " e a " , 
 	 	 " q u a s " ,   " q u a m " ,   " c o r p o r i s " ,   " q u a e " ,   " b l a n d i t i i s " ,   " a t q u e " ,   " d e s e r u n t " , 
 	 	 " l a b o r i o s a m " ,   " e a r u m " ,   " c o n s e q u u n t u r " ,   " h i c " ,   " c u p i d i t a t e " , 
 	 	 " q u i b u s d a m " ,   " a c c u s a m u s " ,   " u t " ,   " r e r u m " ,   " e r r o r " ,   " m i n u s " ,   " e i u s " , 
 	 	 " a b " ,   " a d " ,   " n e m o " ,   " f u g i t " ,   " o f f i c i a " ,   " a t " ,   " i n " ,   " i d " ,   " q u o s " , 
 	 	 " r e p r e h e n d e r i t " ,   " n u m q u a m " ,   " i s t e " ,   " f u g i a t " ,   " s i t " ,   " i n v e n t o r e " , 
 	 	 " b e a t a e " ,   " r e p e l l e n d u s " ,   " m a g n a m " ,   " r e c u s a n d a e " ,   " q u o d " ,   " e x p l i c a b o " , 
 	 	 " d o l o r e m q u e " ,   " a p e r i a m " ,   " c o n s e q u a t u r " ,   " a s p e r i o r e s " ,   " c o m m o d i " , 
 	 	 " o p t i o " ,   " d o l o r " ,   " l a b o r e " ,   " t e m p o r i b u s " ,   " r e p e l l a t " ,   " v e n i a m " , 
 	 	 " a r c h i t e c t o " ,   " e s t " ,   " e s s e " ,   " m o l l i t i a " ,   " n u l l a " ,   " a " ,   " s i m i l i q u e " , 
 	 	 " e o s " ,   " a l i a s " ,   " d o l o r e " ,   " t e n e t u r " ,   " d e l e n i t i " ,   " p o r r o " ,   " f a c e r e " , 
 	 	 " m a x i m e " ,   " c o r r u p t i " ] 
 } ; 
 
 v a r   r u   =   { 
 	 " c o m m o n " :   [ "40;5:> -40;5:> " ,   "70 " ,   "A;>25A=K<8 " ,   "3>@0<8 " ,   "2  AB@0=5 " ,   "3;0A=KE " ,   "8  A>3;0A=KE " ,   "682CB " ,   "@K1=K5 " ,   "B5:ABK " ] , 
 	 " w o r d s " :   [ "240;8 " ,   ">B  2A5E " ,   ">=8 " ,   "1C:25==KE " ,   "4><0E " ,   "=0  15@53C " ,   "A5<0=B8:0 " , 
 	 	 "1>;LH>3> " ,   "O7K:>2>3> " ,   ">:50=0 " ,   "<0;5=L:89 " ,   "@CG55: " ,   "40;L " , 
 	 	 "6C@G8B " ,   "?>  2A59 " ,   ">15A?5G8205B " ,   "55 " , "2A5<8 " ,   "=5>1E>48<K<8 " , 
 	 	 "?@028;0<8 " ,   "MB0 " ,   "?0@0483<0B8G5A:0O " ,   "AB@0=0 " ,   ":>B>@>9 " ,   "60@5==K5 " , 
 	 	 "?@54;>65=8O " ,   "70;5B0NB " ,   "?@O<> " ,   "@>B " ,   "4065 " ,   "2A5<>3CI0O " , 
 	 	 "?C=:BC0F8O " ,   "=5 " ,   "8<55B " ,   "2;0AB8 " ,   "=04 " ,   "@K1=K<8 " ,   "B5:AB0<8 " , 
 	 	 "254CI8<8 " ,   "157>@D>3@0D8G=K9 " ,   ">1@07 " ,   "687=8 " ,   ">4=064K " ,   ">4=0 " , 
 	 	 "<0;5=L:0O " ,   "AB@>G:0 " , "@K1=>3> " ,   "B5:AB0 " ,   "8<5=8 " ,   " l o r e m " ,   " i p s u m " , 
 	 	 "@5H8;0 " ,   "2K9B8 " ,   "1>;LH>9 " ,   "<8@ " ,   "3@0<<0B8:8 " ,   "25;8:89 " ,   ">:A<>:A " , 
 	 	 "?@54C?@5640; " ,   "> " ,   "7;KE " ,   "70?OBKE " ,   "48:8E " ,   "7=0:0E " ,   "2>?@>A0 " , 
 	 	 ":>20@=KE " ,   "B>G:0E " ,   "70?OB>9 " ,   "=> " ,   "B5:AB " ,   "40; " ,   "A18BL " , 
 	 	 "A51O " ,   "B>;:C " ,   ">= " ,   "A>1@0; " ,   "A5<L " ,   "A2>8E " ,   "703;02=KE " ,   "1C:2 " , 
 	 	 "?>4?>OA0; " ,   "8=8F80; " ,   "70 " ,   "?>OA " ,   "?CAB8;AO " ,   "4>@>3C " , 
 	 	 "27>1@02H8AL " ,   "?5@2CN " ,   "25@H8=C " ,   ":C@A82=KE " ,   "3>@ " ,   "1@>A8; " , 
 	 	 "?>A;54=89 " ,   "273;O4 " ,   "=0704 " ,   "A8;CMB " ,   "A2>53> " ,   "@>4=>3> " ,   "3>@>40 " , 
 	 	 "1C:2>3@04 " ,   "703>;>2>: " ,   "45@52=8 " ,   "0;D028B " ,   "?>4703>;>2>: " ,   "A2>53> " , 
 	 	 "?5@5C;:0 " ,   "3@CAB=K9 " ,   "@5B>@8G5A:89 " ,   "2>?@>A " ,   "A:0B8;AO " ,   "53> " , 
 	 	 "I5:5 " ,   "?@>4>;68; " ,   "A2>9 " ,   "?CBL " ,   "4>@>35 " ,   "2AB@5B8; " ,   "@C:>?8AL " , 
 	 	 ">=0 " ,   "?@54C?@548;0 " ,     "<>59 " ,   "2A5 " ,   "?5@5?8AK205BAO " ,   "=5A:>;L:> " , 
 	 	 "@07 " ,   "548=AB25==>5 " ,   "GB> " ,   "<5=O " ,   ">AB0;>AL " ,   "MB> " ,   "?@8AB02:0 " , 
 	 	 "2>72@0I09AO " ,   "BK " ,   ";CGH5 " ,   "A2>N " ,   "157>?0A=CN " ,   "AB@0=C " ,   "?>A;CH02H8AL " , 
 	 	 "@C:>?8A8 " ,   "=0H " ,   "?@>4>;68; " ,   "A2>9 " ,   "?CBL " ,   "2A:>@5 " ,   "5<C " , 
 	 	 "?>2AB@5G0;AO " ,   ":>20@=K9 " ,   "A>AB028B5;L " ,   "@5:;0<=KE " ,   "B5:AB>2 " , 
 	 	 "=0?>82H89 " ,   "O7K:>< " ,   "@5GLN " ,   "70<0=82H89 " ,   "A2>5 " ,   "035=BAB2> " , 
 	 	 ":>B>@>5 " ,   "8A?>;L7>20;> " ,   "A=>20 " ,   "A=>20 " ,   "A2>8E " ,   "?@>5:B0E " , 
 	 	 "5A;8 " ,   "?5@5?8A0;8 " ,   "B> " ,   "6825B " ,   "B0< " ,   "4> " ,   "A8E " ,   "?>@ " ] 
 } ; 
 
 v a r   s p   =   { 
 	 " c o m m o n " :   [ " m u j e r " ,   " u n o " ,   " d o l o r " ,   " m � s " ,   " d e " ,   " p o d e r " ,   " m i s m o " ,   " s i " ] , 
 	 " w o r d s " :   [ " e j e r c i c i o " ,   " p r e f e r e n c i a " ,   " p e r s p i c a c i a " ,   " l a b o r a l " ,   " p a � o " , 
 	 	 " s u n t u o s o " ,   " m o l d e " ,   " n a m i b i a " ,   " p l a n e a d o r " ,   " m i r a r " ,   " d e m � s " ,   " o f i c i n i s t a " ,   " e x c e p c i � n " , 
 	 	 " o d i o " ,   " c o n s e c u e n c i a " ,   " c a s i " ,   " a u t o " ,   " c h i c h a r r a " ,   " v e l o " ,   " e l i x i r " , 
 	 	 " a t a q u e " ,   " n o " ,   " o d i o " ,   " t e m p o r a l " ,   " c u � r u m " ,   " d i g n � s i m o " , 
 	 	 " f a c i l i s m o " ,   " l e t r a " ,   " n i h i l i s t a " ,   " e x p e d i c i � n " ,   " a l m a " ,   " a l v e o l a r " ,   " a p a r t e " , 
 	 	 " l e � n " ,   " a n i m a l " ,   " c o m o " ,   " p a r i a " ,   " b e l l e z a " ,   " m o d o " ,   " n a t i v i d a d " , 
 	 	 " j u s t o " ,   " a t a q u e " ,   " s � q u i t o " ,   " p i l l o " ,   " s e d " ,   " e x " ,   " y " ,   " v o l u m i n o s o " , 
 	 	 " t e m p o r a l i d a d " ,   " v e r d a d e s " ,   " r a c i o n a l " ,   " a s u n c i � n " ,   " i n c i d e n t e " ,   " m a r e j a d a " , 
 	 	 " p l a c e n t a " ,   " a m a n e c e r " ,   " f u g a " ,   " p r e v i s o r " ,   " p r e s e n t a c i � n " ,   " l e j o s " , 
 	 	 " n e c e s a r i a m e n t e " ,   " s o s p e c h o s o " ,   " a d i p o s i d a d " ,   " q u i n d � o " ,   " p � c i m a " , 
 	 	 " v o l u b l e " ,   " d � b i t o " ,   " s i n t i � " ,   " a c c e s o r i o " ,   " f a l d a " ,   " s a p i e n c i a " , 
 	 	 " v o l u t a s " ,   " q u e s o " ,   " p e r m a c u l t u r a " ,   " l a u d o " ,   " s o l u c i o n e s " ,   " e n t e r o " , 
 	 	 " p a n " ,   " l i t r o " ,   " t o n e l a d a " ,   " c u l p a " ,   " l i b e r t a r i o " ,   " m o s c a " ,   " d i c t a d o " , 
 	 	 " r e i n c i d e n t e " ,   " n a s c i m i e n t o " ,   " d o l o r " ,   " e s c o l a r " ,   " i m p e d i m e n t o " ,   " m � n i m a " , 
 	 	 " m a y o r e s " ,   " r e p u g n a n t e " ,   " d u l c e " ,   " o b c e c a d o " ,   " m o n t a � a " ,   " e n i g m a " , 
 	 	 " t o t a l " ,   " d e l e t � r e o " ,   " d � c i m a " ,   " c � b a l a " ,   " f o t o g r a f � a " ,   " d o l o r e s " , 
 	 	 " m o l e s t o " ,   " o l v i d o " ,   " p a c i e n c i a " ,   " r e s i l i e n c i a " ,   " v o l u n t a d " ,   " m o l e s t i a s " , 
 	 	 " m a g n � f i c o " ,   " d i s t i n c i � n " ,   " o v n i " ,   " m a r e j a d a " ,   " c e r r o " ,   " t o r r e " ,   " y " , 
 	 	 " a b o g a d a " ,   " m a n a n t i a l " ,   " c o r p o r a l " ,   " a g u a " ,   " c r e p � s c u l o " ,   " a t a q u e " ,   " d e s i e r t o " , 
 	 	 " l a b o r i o s a m e n t e " ,   " a n g u s t i a " ,   " a f o r t u n a d o " ,   " a l m a " ,   " e n c e f a l o g r a m a " , 
 	 	 " m a t e r i a l i d a d " ,   " c o s a s " ,   " o " ,   " r e n u n c i a " ,   " e r r o r " ,   " m e n o s " ,   " c o n e j o " , 
 	 	 " a b a d � a " ,   " a n a l f a b e t o " ,   " r e m o " ,   " f u g a c i d a d " ,   " o f i c i o " ,   " e n " ,   " a l m � c i g o " ,   " v o s " ,   " p a n " , 
 	 	 " r e p r e s i � n " ,   " n � m e r o s " ,   " t r i s t e " ,   " r e f u g i a d o " ,   " t r o t e " ,   " i n v e n t o r " , 
 	 	 " c o r c h e a " ,   " r e p e l e n t e " ,   " m a g m a " ,   " r e c u s a d o " ,   " p a t r � n " ,   " e x p l � c i t o " , 
 	 	 " p a l o m a " ,   " s � n d r o m e " ,   " i n m u n e " ,   " a u t o i n m u n e " ,   " c o m o d i d a d " , 
 	 	 " l e y " ,   " v i e t n a m i t a " ,   " d e m o n i o " ,   " t a s m a n i a " ,   " r e p e l e r " ,   " a p � n d i c e " , 
 	 	 " a r q u i t e c t o " ,   " c o l u m n a " ,   " y u g o " ,   " c o m p u t a d o r " ,   " m u l a " ,   " a " ,   " p r o p � s i t o " , 
 	 	 " f a n t a s � a " ,   " a l i a s " ,   " r a y o " ,   " t e n e d o r " ,   " d e l e z n a b l e " ,   " v e n t a n a " ,   " c a r a " , 
 	 	 " a n e m i a " ,   " c o r r u p t o " ] 
 } ; 
 
 c o n s t   l a n g s   =   {   l a t i n ,   r u ,   s p   } ; 
 
 c o n s t   d e f a u l t O p t i o n s   =   { 
 	 w o r d C o u n t :   3 0 , 
 	 s k i p C o m m o n :   f a l s e , 
 	 l a n g :   ' l a t i n ' 
 } ; 
 
 / * * 
   *   R e p l a c e s   g i v e n   p a r s e d   E m m e t   a b b r e v i a t i o n   n o d e   w i t h   n o d e s   f i l l e d   w i t h 
   *   L o r e m   I p s u m   s t u b   t e x t . 
   *   @ p a r a m   { N o d e }   n o d e 
   *   @ r e t u r n   { N o d e } 
   * / 
 v a r   i n d e x   =   f u n c t i o n ( n o d e ,   o p t i o n s )   { 
 	 o p t i o n s   =   O b j e c t . a s s i g n ( { } ,   d e f a u l t O p t i o n s ,   o p t i o n s ) ; 
 	 c o n s t   d i c t   =   l a n g s [ o p t i o n s . l a n g ]   | |   l a n g s . l a t i n ; 
         c o n s t   s t a r t W i t h C o m m o n   =   ! o p t i o n s . s k i p C o m m o n   & &   ! i s R e p e a t i n g ( n o d e ) ; 
 
 	 i f   ( ! n o d e . r e p e a t   & &   ! i s R o o t ( n o d e . p a r e n t ) )   { 
 	 	 / /   n o n - r e p e a t i n g   e l e m e n t ,   i n s e r t   t e x t   s t u b   a s   a   c o n t e n t   o f   p a r e n t   n o d e 
 	 	 / /   a n d   r e m o v e   c u r r e n t   o n e 
 	 	 n o d e . p a r e n t . v a l u e   =   p a r a g r a p h ( d i c t ,   o p t i o n s . w o r d C o u n t ,   s t a r t W i t h C o m m o n ) ; 
 	 	 n o d e . r e m o v e ( ) ; 
 	 }   e l s e   { 
 	 	 / /   R e p l a c e   n a m e d   n o d e   w i t h   g e n e r a t e d   c o n t e n t 
 	 	 n o d e . v a l u e   =   p a r a g r a p h ( d i c t ,   o p t i o n s . w o r d C o u n t ,   s t a r t W i t h C o m m o n ) ; 
 	 	 n o d e . n a m e   =   n o d e . p a r e n t . n a m e   ?   r e s o l v e I m p l i c i t T a g ( n o d e . p a r e n t . n a m e )   :   n u l l ; 
 	 } 
 
 	 r e t u r n   n o d e ; 
 } ; 
 
 f u n c t i o n   i s R o o t ( n o d e )   { 
 	 r e t u r n   ! n o d e . p a r e n t ; 
 } 
 
 / * * 
   *   R e t u r n s   r a n d o m   i n t e g e r   b e t w e e n   < c o d e > f r o m < / c o d e >   a n d   < c o d e > t o < / c o d e >   v a l u e s 
   *   @ p a r a m   { N u m b e r }   f r o m 
   *   @ p a r a m   { N u m b e r }   t o 
   *   @ r e t u r n s   { N u m b e r } 
   * / 
 f u n c t i o n   r a n d ( f r o m ,   t o )   { 
 	 r e t u r n   M a t h . f l o o r ( M a t h . r a n d o m ( )   *   ( t o   -   f r o m )   +   f r o m ) ; 
 } 
 
 / * * 
   *   @ p a r a m   { A r r a y }   a r r 
   *   @ p a r a m   { N u m b e r }   c o u n t 
   *   @ r e t u r n s   { A r r a y } 
   * / 
 f u n c t i o n   s a m p l e ( a r r ,   c o u n t )   { 
 	 c o n s t   l e n   =   a r r . l e n g t h ; 
 	 c o n s t   i t e r a t i o n s   =   M a t h . m i n ( l e n ,   c o u n t ) ; 
 	 c o n s t   r e s u l t   =   n e w   S e t ( ) ; 
 
 	 w h i l e   ( r e s u l t . s i z e   <   i t e r a t i o n s )   { 
 	 	 r e s u l t . a d d ( a r r [ r a n d ( 0 ,   l e n ) ] ) ; 
 	 } 
 
 	 r e t u r n   A r r a y . f r o m ( r e s u l t ) ; 
 } 
 
 f u n c t i o n   c h o i c e ( v a l )   { 
 	 r e t u r n   v a l [ r a n d ( 0 ,   v a l . l e n g t h   -   1 ) ] ; 
 } 
 
 f u n c t i o n   s e n t e n c e ( w o r d s ,   e n d )   { 
 	 i f   ( w o r d s . l e n g t h )   { 
 	 	 w o r d s   =   [ c a p i t a l i z e ( w o r d s [ 0 ] ) ] . c o n c a t ( w o r d s . s l i c e ( 1 ) ) ; 
 	 } 
 
 	 r e t u r n   w o r d s . j o i n ( '   ' )   +   ( e n d   | |   c h o i c e ( ' ? ! . . . ' ) ) ;   / /   m o r e   d o t s   t h a n   q u e s t i o n   m a r k s 
 } 
 
 f u n c t i o n   c a p i t a l i z e ( w o r d )   { 
 	 r e t u r n   w o r d [ 0 ] . t o U p p e r C a s e ( )   +   w o r d . s l i c e ( 1 ) ; 
 } 
 
 / * * 
   *   I n s e r t   c o m m a s   a t   r a n d o m l y   s e l e c t e d   w o r d s .   T h i s   f u n c t i o n   m o d i f i e s   v a l u e s 
   *   i n s i d e   < c o d e > w o r d s < / c o d e >   a r r a y 
   *   @ p a r a m   { A r r a y }   w o r d s 
   * / 
 f u n c t i o n   i n s e r t C o m m a s ( w o r d s )   { 
 	 i f   ( w o r d s . l e n g t h   <   2 )   { 
 	 	 r e t u r n   w o r d s ; 
 	 } 
 
 	 w o r d s   =   w o r d s . s l i c e ( ) ; 
 	 c o n s t   l e n   =   w o r d s . l e n g t h ; 
 	 c o n s t   h a s C o m m a   =   / , $ / ; 
 	 l e t   t o t a l C o m m a s   =   0 ; 
 
 	 i f   ( l e n   >   3   & &   l e n   < =   6 )   { 
 	 	 t o t a l C o m m a s   =   r a n d ( 0 ,   1 ) ; 
 	 }   e l s e   i f   ( l e n   >   6   & &   l e n   < =   1 2 )   { 
 	 	 t o t a l C o m m a s   =   r a n d ( 0 ,   2 ) ; 
 	 }   e l s e   { 
 	 	 t o t a l C o m m a s   =   r a n d ( 1 ,   4 ) ; 
 	 } 
 
 	 f o r   ( l e t   i   =   0 ,   p o s ,   w o r d ;   i   <   t o t a l C o m m a s ;   i + + )   { 
 	 	 p o s   =   r a n d ( 0 ,   l e n   -   2 ) ; 
 	 	 i f   ( ! h a s C o m m a . t e s t ( w o r d s [ p o s ] ) )   { 
 	 	 	 w o r d s [ p o s ]   + =   ' , ' ; 
 	 	 } 
 	 } 
 
 	 r e t u r n   w o r d s ; 
 } 
 
 / * * 
   *   G e n e r a t e   a   p a r a g r a p h   o f   " L o r e m   i p s u m "   t e x t 
   *   @ p a r a m   { O b j e c t }   d i c t   W o r d s   d i c t i o n a r y   ( s e e   ` l a n g / * . j s o n ` ) 
   *   @ p a r a m   { N u m b e r }   w o r d C o u n t   W o r d s   c o u n t   i n   p a r a g r a p h 
   *   @ p a r a m   { B o o l e a n }   s t a r t W i t h C o m m o n   S h o u l d   p a r a g r a p h   s t a r t   w i t h   c o m m o n 
   *   " l o r e m   i p s u m "   s e n t e n c e . 
   *   @ r e t u r n s   { S t r i n g } 
   * / 
 f u n c t i o n   p a r a g r a p h ( d i c t ,   w o r d C o u n t ,   s t a r t W i t h C o m m o n )   { 
 	 c o n s t   r e s u l t   =   [ ] ; 
 	 l e t   t o t a l W o r d s   =   0 ; 
 	 l e t   w o r d s ; 
 
 	 i f   ( s t a r t W i t h C o m m o n   & &   d i c t . c o m m o n )   { 
 	 	 w o r d s   =   d i c t . c o m m o n . s l i c e ( 0 ,   w o r d C o u n t ) ; 
 	 	 t o t a l W o r d s   + =   w o r d s . l e n g t h ; 
 	 	 r e s u l t . p u s h ( s e n t e n c e ( i n s e r t C o m m a s ( w o r d s ) ,   ' . ' ) ) ; 
 	 } 
 
 	 w h i l e   ( t o t a l W o r d s   <   w o r d C o u n t )   { 
 	 	 w o r d s   =   s a m p l e ( d i c t . w o r d s ,   M a t h . m i n ( r a n d ( 2 ,   3 0 ) ,   w o r d C o u n t   -   t o t a l W o r d s ) ) ; 
 	 	 t o t a l W o r d s   + =   w o r d s . l e n g t h ; 
 	 	 r e s u l t . p u s h ( s e n t e n c e ( i n s e r t C o m m a s ( w o r d s ) ) ) ; 
 	 } 
 
 	 r e t u r n   r e s u l t . j o i n ( '   ' ) ; 
 } 
 
 / * * 
   *   C h e c k   i f   g i v e n   n o d e   i s   i n   r e p e a t i n g   c o n t e x t ,   e . g .   n o d e   i t s e l f   o r   o n e   o f   i t s 
   *   p a r e n t   i s   r e p e a t e d 
   *   @ p a r a m     { N o d e }     n o d e 
   *   @ r e t u r n   { B o o l e a n } 
   * / 
 f u n c t i o n   i s R e p e a t i n g ( n o d e )   { 
         w h i l e   ( n o d e . p a r e n t )   { 
                 i f   ( n o d e . r e p e a t   & &   n o d e . r e p e a t . v a l u e   & &   n o d e . r e p e a t . v a l u e   >   1 )   { 
                         r e t u r n   t r u e ; 
                 } 
 
                 n o d e   =   n o d e . p a r e n t ; 
         } 
 
         r e t u r n   f a l s e ; 
 } 
 
 m o d u l e . e x p o r t s   =   i n d e x ; 
 
 } , { " @ e m m e t i o / i m p l i c i t - t a g " : 1 0 } ] , 1 2 : [ f u n c t i o n ( r e q u i r e , m o d u l e , e x p o r t s ) { 
 ' u s e   s t r i c t ' ; 
 
 O b j e c t . d e f i n e P r o p e r t y ( e x p o r t s ,   ' _ _ e s M o d u l e ' ,   {   v a l u e :   t r u e   } ) ; 
 
 f u n c t i o n   _ i n t e r o p D e f a u l t   ( e x )   {   r e t u r n   ( e x   & &   ( t y p e o f   e x   = = =   ' o b j e c t ' )   & &   ' d e f a u l t '   i n   e x )   ?   e x [ ' d e f a u l t ' ]   :   e x ;   } 
 
 v a r   p a r s e F i e l d s   =   _ i n t e r o p D e f a u l t ( r e q u i r e ( ' @ e m m e t i o / f i e l d - p a r s e r ' ) ) ; 
 v a r   r e n d e r   =   _ i n t e r o p D e f a u l t ( r e q u i r e ( ' @ e m m e t i o / o u t p u t - r e n d e r e r ' ) ) ; 
 
 c o n s t   T O K E N               =   / ^ ( . * ? ) ( [ A - Z _ ] + ) ( . * ? ) $ / ; 
 c o n s t   T O K E N _ O P E N     =   9 1 ;   / /   [ 
 c o n s t   T O K E N _ C L O S E   =   9 3 ;   / /   ] 
 
 / * * 
   *   A   b a s i c   t e m p l a t i n g   e n g i n e . 
   *   T a k e s   e v e r y   ` [ T O K E N ] `   f r o m   g i v e n   s t r i n g   a n d   r e p l a c e s   i t   w i t h 
   *   ` T O K E N `   v a l u e   f r o m   g i v e n   ` d a t a `   a t t r i b u t e .   T h e   t o k e n   i t s e l f   m a y   c o n t a i n 
   *   v a r i o u s   c h a r a c t e r s   b e t w e e n   ` [ ` ,   t o k e n   n a m e   a n d   ` ] ` .   C o n t e n t s   o f   ` [ . . . ] `   w i l l 
   *   b e   o u t p u t t e d   o n l y   i f   ` T O K E N `   v a l u e   i s   n o t   e m p t y .   A l s o ,   o n l y   ` T O K E N `   n a m e   w i l l 
   *   b e   r e p l a c e d   w i t h   a c t u a l   v a l u e ,   a l l   o t h e r   c h a r a c t e r s   w i l l   r e m a i n   a s   i s . 
   * 
   *   E x a m p l e : 
   *   ` ` ` 
   *   t e m p l a t e ( ' [ < N A M E > ] ' ,   { N A M E :   ' f o o ' } )   - >   " < f o o > " 
   *   t e m p l a t e ( ' [ < N A M E > ] ' ,   { } )   - >   " " 
   *   ` ` ` 
   * / 
 f u n c t i o n   t e m p l a t e ( s t r ,   d a t a )   { 
 	 i f   ( s t r   = =   n u l l )   { 
 	 	 r e t u r n   s t r ; 
 	 } 
 
 	 / /   N B   s i n c e   t o k e n   m a y   c o n t a i n   i n n e r   ` [ `   a n d   ` ] ` ,   w e   c a n  t   j u s t   u s e   r e g e x p 
 	 / /   f o r   r e p l a c e m e n t ,   s h o u l d   m a n u a l l y   p a r s e   s t r i n g   i n s t e a d 
 	 c o n s t   s t a c k   =   [ ] ; 
 	 c o n s t   r e p l a c e r   =   ( s t r ,   l e f t ,   t o k e n ,   r i g h t )   = > 
 	 	 d a t a [ t o k e n ]   ! =   n u l l   ?   l e f t   +   d a t a [ t o k e n ]   +   r i g h t   :   ' ' ; 
 
 	 l e t   o u t p u t   =   ' ' ; 
 	 l e t   o f f s e t   =   0 ,   i   =   0 ; 
 	 l e t   c o d e ,   l a s t P o s ; 
 
 	 w h i l e   ( i   <   s t r . l e n g t h )   { 
 	 	 c o d e   =   s t r . c h a r C o d e A t ( i ) ; 
 	 	 i f   ( c o d e   = = =   T O K E N _ O P E N )   { 
 	 	 	 s t a c k . p u s h ( i ) ; 
 	 	 }   e l s e   i f   ( c o d e   = = =   T O K E N _ C L O S E )   { 
 	 	 	 l a s t P o s   =   s t a c k . p o p ( ) ; 
 	 	 	 i f   ( ! s t a c k . l e n g t h )   { 
 	 	 	 	 o u t p u t   + =   s t r . s l i c e ( o f f s e t ,   l a s t P o s )   + 
 	 	 	 	 	 s t r . s l i c e ( l a s t P o s   +   1 ,   i ) . r e p l a c e ( T O K E N ,   r e p l a c e r ) ; 
 	 	 	 	 o f f s e t   =   i   +   1 ; 
 	 	 	 } 
 	 	 } 
 
 	 	 i + + ; 
 	 } 
 
 	 r e t u r n   o u t p u t   +   s t r . s l i c e ( o f f s e t ) ; 
 } 
 
 / * * 
   *   V a r i o u s   u t i l i t y   m e t h o d s   u s e d   b y   f o r m a t t e r s 
   * / 
 
 / * * 
   *   S p l i t s   g i v e n   t e x t   b y   l i n e s 
   *   @ p a r a m     { S t r i n g }   t e x t 
   *   @ r e t u r n   { S t r i n g [ ] } 
   * / 
 f u n c t i o n   s p l i t B y L i n e s ( t e x t )   { 
 	 r e t u r n   ( t e x t   | |   ' ' ) . s p l i t ( / \ r \ n | \ r | \ n / g ) ; 
 } 
 
 / * * 
   *   C h e c k   i f   g i v e n   n o d e   i s   a   f i r s t   c h i l d   i n   i t s   p a r e n t 
   *   @ p a r a m     { N o d e }     n o d e 
   *   @ r e t u r n   { B o o l e a n } 
   * / 
 f u n c t i o n   i s F i r s t C h i l d ( n o d e )   { 
 	 r e t u r n   n o d e . p a r e n t . f i r s t C h i l d   = = =   n o d e ; 
 } 
 
 / * * 
   *   C h e c k   i f   g i v e n   n o d e   i s   a   r o o t   n o d e 
   *   @ p a r a m     { N o d e }     n o d e 
   *   @ r e t u r n   { B o o l e a n } 
   * / 
 f u n c t i o n   i s R o o t ( n o d e )   { 
 	 r e t u r n   n o d e   & &   ! n o d e . p a r e n t ; 
 } 
 
 / * * 
   *   C h e c k   i f   g i v e n   n o d e   i s   a   p s e u d o - s n i p p e t :   a   t e x t - o n l y   n o d e   w i t h   e x p l i c i t l y 
   *   d e f i n e d   c h i l d r e n 
   *   @ p a r a m     { N o d e }     n o d e 
   *   @ r e t u r n   { B o o l e a n } 
   * / 
 f u n c t i o n   i s P s e u d o S n i p p e t ( n o d e )   { 
 	 r e t u r n   n o d e . i s T e x t O n l y   & &   ! ! n o d e . c h i l d r e n . l e n g t h ; 
 } 
 
 / * * 
   *   H a n d l e s   p s e u d o - s n i p p e t   n o d e . 
   *   A   p s e u d o - s n i p p e t   i s   a   t e x t - o n l y   n o d e   w i t h   e x p l i c i t l y   d e f i n e d   c h i l d r e n . 
   *   F o r   s u c h   c a s e ,   w e   h a v e   t o   f i g u r e   o u t   i f   p s e u d o - s n i p p e t   c o n t a i n s   f i e l d s 
   *   ( t a b - s t o p s )   i n   n o d e   v a l u e   a n d    s p l i t    i t :   m a k e   c o n t e n t s   b e f o r e   f i e l d   w i t h 
   *   l o w e s t   i n d e x   n o d e  s    o p e n    p a r t   a n d   c o n t e n t s   a f t e r   l o w e s t   i n d e x       c l o s e  
   *   p a r t .   W i t h   t h i s   t r i c k   a   f i n a l   o u t p u t   w i l l   l o o k   l i k e   n o d e  s   c h i l d r e n 
   *   a r e   n e s t e d   i n s i d e   n o d e   v a l u e 
   *   @ p a r a m     { O u t p u t N o d e }   o u t N o d e 
   *   @ r e t u r n   { B o o l e a n }   R e t u r n s    t r u e    i f   g i v e n   n o d e   i s   a   p s e u d o - s n i p p e t s , 
   *   ` f a l s e `   o t h e r w i s e 
   * / 
 f u n c t i o n   h a n d l e P s e u d o S n i p p e t ( o u t N o d e )   { 
 	 c o n s t   n o d e   =   o u t N o d e . n o d e ;   / /   o r i g i n a l   a b b r e v i a i t o n   n o d e 
 
 	 i f   ( i s P s e u d o S n i p p e t ( n o d e ) )   { 
 	 	 c o n s t   f i e l d s M o d e l   =   p a r s e F i e l d s ( n o d e . v a l u e ) ; 
 	 	 c o n s t   f i e l d   =   f i n d L o w e s t I n d e x F i e l d ( f i e l d s M o d e l ) ; 
 	 	 i f   ( f i e l d )   { 
 	 	 	 c o n s t   p a r t s   =   s p l i t F i e l d s M o d e l ( f i e l d s M o d e l ,   f i e l d ) ; 
 	 	 	 o u t N o d e . o p e n   =   o u t N o d e . r e n d e r F i e l d s ( p a r t s [ 0 ] ) ; 
 	 	 	 o u t N o d e . c l o s e   =   o u t N o d e . r e n d e r F i e l d s ( p a r t s [ 1 ] ) ; 
 	 	 }   e l s e   { 
 	 	 	 o u t N o d e . t e x t   =   o u t N o d e . r e n d e r F i e l d s ( f i e l d s M o d e l ) ; 
 	 	 } 
 
 	 	 r e t u r n   t r u e ; 
 	 } 
 
 	 r e t u r n   f a l s e ; 
 } 
 
 / * * 
   *   F i n d s   f i e l d   w i t h   l o w e s t   i n d e x   i n   g i v e n   t e x t 
   *   @ p a r a m     { O b j e c t }   m o d e l 
   *   @ r e t u r n   { O b j e c t } 
   * / 
 f u n c t i o n   f i n d L o w e s t I n d e x F i e l d ( m o d e l )   { 
 	 r e t u r n   m o d e l . f i e l d s . r e d u c e ( ( r e s u l t ,   f i e l d )   = > 
 	 	 ! r e s u l t   | |   f i e l d . i n d e x   <   r e s u l t . i n d e x   ?   f i e l d   :   r e s u l t 
 	 	 ,   n u l l ) ; 
 } 
 
 / * * 
   *   S p l i t s   g i v e n   f i e l d s   m o d e l   i n   t w o   p a r t s   b y   g i v e n   f i e l d 
   *   @ p a r a m     { O b j e c t }   m o d e l 
   *   @ p a r a m     { O b j e c t }   f i e l d 
   *   @ r e t u r n   { A r r a y }   T w o - i t e m s   a r r a y 
   * / 
 f u n c t i o n   s p l i t F i e l d s M o d e l ( m o d e l ,   f i e l d )   { 
 	 c o n s t   i x   =   m o d e l . f i e l d s . i n d e x O f ( f i e l d ) ; 
 
 	 c o n s t   l e f t   =   n e w   m o d e l . c o n s t r u c t o r ( 
 	 	 m o d e l . s t r i n g . s l i c e ( 0 ,   f i e l d . l o c a t i o n ) , 
 	 	 m o d e l . f i e l d s . s l i c e ( 0 ,   i x ) 
 	 ) ; 
 
 	 c o n s t   r i g h t   =   n e w   m o d e l . c o n s t r u c t o r ( 
 	 	 m o d e l . s t r i n g . s l i c e ( f i e l d . l o c a t i o n   +   f i e l d . l e n g t h ) , 
 	 	 m o d e l . f i e l d s . s l i c e ( i x   +   1 ) 
 	 ) ; 
 
 	 r e t u r n   [ l e f t ,   r i g h t ] ; 
 } 
 
 c o n s t   c o m m e n t O p t i o n s   =   { 
 	 / /   e n a b l e   n o d e   c o m m e n t i n g 
 	 e n a b l e d :   f a l s e , 
 
 	 / /   a t t r i b u t e s   t h a t   s h o u l d   t r i g g e r   n o d e   c o m m e n t i n g   o n   s p e c i f i c   n o d e , 
 	 / /   i f   c o m m e n t i n g   i s   e n a b l e d 
 	 t r i g g e r :   [ ' i d ' ,   ' c l a s s ' ] , 
 
 	 / /   c o m m e n t   b e f o r e   o p e n i n g   t a g 
 	 b e f o r e :   ' ' , 
 
 	 / /   c o m m e n t   a f t e r   c l o s i n g   t a g 
 	 a f t e r :   ' \ n < ! - -   / [ # I D ] [ . C L A S S ]   - - > ' 
 } ; 
 
 / * * 
   *   R e n d e r s   g i v e n   p a r s e d   E m m e t   a b b r e v i a t i o n   a s   H T M L ,   f o r m a t t e d   a c c o r d i n g   t o 
   *   ` p r o f i l e `   o p t i o n s 
   *   @ p a r a m     { N o d e }           t r e e         P a r s e d   E m m e t   a b b r e v i a t i o n 
   *   @ p a r a m     { P r o f i l e }     p r o f i l e   O u t p u t   p r o f i l e 
   *   @ p a r a m     { O b j e c t }     [ o p t i o n s ]   A d d i t i o n a l   f o r m a t t e r   o p t i o n s 
   *   @ r e t u r n   { S t r i n g } 
   * / 
 f u n c t i o n   h t m l ( t r e e ,   p r o f i l e ,   o p t i o n s )   { 
 	 o p t i o n s   =   O b j e c t . a s s i g n ( { } ,   o p t i o n s ) ; 
 	 c o n s t   f o r m a t   =   g e t F o r m a t O p t i o n s ( o p t i o n s ) ; 
 
 	 r e t u r n   r e n d e r ( t r e e ,   o p t i o n s . f i e l d ,   o u t N o d e   = >   { 
 	 	 o u t N o d e   =   s e t F o r m a t t i n g ( o u t N o d e ,   p r o f i l e ) ; 
 
 	 	 i f   ( ! h a n d l e P s e u d o S n i p p e t ( o u t N o d e ) )   { 
 	 	 	 c o n s t   n o d e   =   o u t N o d e . n o d e ; 
 
 	 	 	 i f   ( n o d e . n a m e )   { 
 	 	 	 	 c o n s t   n a m e   =   p r o f i l e . n a m e ( n o d e . n a m e ) ; 
 	 	 	 	 c o n s t   a t t r s   =   f o r m a t A t t r i b u t e s ( o u t N o d e ,   p r o f i l e ) ; 
 
 	 	 	 	 o u t N o d e . o p e n   =   ` < $ { n a m e } $ { a t t r s } $ { n o d e . s e l f C l o s i n g   ?   p r o f i l e . s e l f C l o s e ( )   :   ' ' } > ` ; 
 	 	 	 	 i f   ( ! n o d e . s e l f C l o s i n g )   { 
 	 	 	 	 	 o u t N o d e . c l o s e   =   ` < / $ { n a m e } > ` ; 
 	 	 	 	 } 
 
 	 	 	 	 c o m m e n t N o d e ( o u t N o d e ,   f o r m a t . c o m m e n t ) ; 
 	 	 	 } 
 
 	 	 	 / /   D o   n o t   g e n e r a t e   f i e l d s   f o r   n o d e s   w i t h   e m p t y   v a l u e   a n d   c h i l d r e n 
 	 	 	 / /   o r   i f   n o d e   i s   s e l f - c l o s e d 
 	 	 	 i f   ( n o d e . v a l u e   | |   ( ! n o d e . c h i l d r e n . l e n g t h   & &   ! n o d e . s e l f C l o s i n g )   )   { 
 	 	 	 	 o u t N o d e . t e x t   =   o u t N o d e . r e n d e r F i e l d s ( n o d e . v a l u e ) ; 
 	 	 	 } 
 	 	 } 
 
 	 	 r e t u r n   o u t N o d e ; 
 	 } ) ; 
 } 
 
 / * * 
   *   U p d a t e s   f o r m a t t i n g   p r o p e r t i e s   f o r   g i v e n   o u t p u t   n o d e 
   *   @ p a r a m     { O u t p u t N o d e }   o u t N o d e   O u t p u t   w r a p p e r   o f   f a r s e d   a b b r e v i a t i o n   n o d e 
   *   @ p a r a m     { P r o f i l e }         p r o f i l e   O u t p u t   p r o f i l e 
   *   @ r e t u r n   { O u t p u t N o d e } 
   * / 
 f u n c t i o n   s e t F o r m a t t i n g ( o u t N o d e ,   p r o f i l e )   { 
 	 c o n s t   n o d e   =   o u t N o d e . n o d e ; 
 
 	 i f   ( s h o u l d F o r m a t N o d e ( n o d e ,   p r o f i l e ) )   { 
 	 	 o u t N o d e . i n d e n t   =   p r o f i l e . i n d e n t ( g e t I n d e n t L e v e l ( n o d e ,   p r o f i l e ) ) ; 
 	 	 o u t N o d e . n e w l i n e   =   ' \ n ' ; 
 	 	 c o n s t   p r e f i x   =   o u t N o d e . n e w l i n e   +   o u t N o d e . i n d e n t ; 
 
 	 	 / /   d o   n o t   f o r m a t   t h e   v e r y   f i r s t   n o d e   i n   o u t p u t 
 	 	 i f   ( ! i s R o o t ( n o d e . p a r e n t )   | |   ! i s F i r s t C h i l d ( n o d e ) )   { 
 	 	 	 o u t N o d e . b e f o r e O p e n   =   p r e f i x ; 
 	 	 	 i f   ( n o d e . i s T e x t O n l y )   { 
 	 	 	 	 o u t N o d e . b e f o r e T e x t   =   p r e f i x ; 
 	 	 	 } 
 	 	 } 
 
 	 	 i f   ( h a s I n n e r F o r m a t t i n g ( n o d e ,   p r o f i l e ) )   { 
 	 	 	 i f   ( ! n o d e . i s T e x t O n l y )   { 
 	 	 	 	 o u t N o d e . b e f o r e T e x t   =   p r e f i x   +   p r o f i l e . i n d e n t ( 1 ) ; 
 	 	 	 } 
 	 	 	 o u t N o d e . b e f o r e C l o s e   =   p r e f i x ; 
 	 	 } 
 	 } 
 
 	 r e t u r n   o u t N o d e ; 
 } 
 
 / * * 
   *   C h e c k   i f   g i v e n   n o d e   s h o u l d   b e   f o r m a t t e d 
   *   @ p a r a m     { N o d e }   n o d e 
   *   @ p a r a m     { P r o f i l e }   p r o f i l e 
   *   @ r e t u r n   { B o o l e a n } 
   * / 
 f u n c t i o n   s h o u l d F o r m a t N o d e ( n o d e ,   p r o f i l e )   { 
 	 i f   ( ! p r o f i l e . g e t ( ' f o r m a t ' ) )   { 
 	 	 r e t u r n   f a l s e ; 
 	 } 
 
 	 i f   ( n o d e . p a r e n t . i s T e x t O n l y 
 	 	 & &   n o d e . p a r e n t . c h i l d r e n . l e n g t h   = = =   1 
 	 	 & &   p a r s e F i e l d s ( n o d e . p a r e n t . v a l u e ) . f i e l d s . l e n g t h )   { 
 	 	 / /   E d g e   c a s e :   d o   n o t   f o r m a t   t h e   o n l y   c h i l d   o f   t e x t - o n l y   n o d e , 
 	 	 / /   b u t   o n l y   i f   p a r e n t   c o n t a i n s   f i e l d s 
 	 	 r e t u r n   f a l s e ; 
 	 } 
 
 	 r e t u r n   i s I n l i n e ( n o d e ,   p r o f i l e )   ?   s h o u l d F o r m a t I n l i n e ( n o d e ,   p r o f i l e )   :   t r u e ; 
 } 
 
 / * * 
   *   C h e c k   i f   g i v e n   i n l i n e   n o d e   s h o u l d   b e   f o r m a t t e d   a s   w e l l ,   e . g .   i t   c o n t a i n s 
   *   e n o u g h   a d j a c e n t   s i b l i n g s   t h a t   s h o u l d   f o r c e   f o r m a t t i n g 
   *   @ p a r a m     { N o d e }   n o d e 
   *   @ p a r a m     { P r o f i l e }   p r o f i l e 
   *   @ r e t u r n   { B o o l e a n } 
   * / 
 f u n c t i o n   s h o u l d F o r m a t I n l i n e ( n o d e ,   p r o f i l e )   { 
 	 i f   ( ! i s I n l i n e ( n o d e ,   p r o f i l e ) )   { 
 	 	 r e t u r n   f a l s e ; 
 	 } 
 
 	 i f   ( i s P s e u d o S n i p p e t ( n o d e ) )   { 
 	 	 r e t u r n   t r u e ; 
 	 } 
 
 	 / /   c h e c k   i f   i n l i n e   n o d e   i s   t h e   n e x t   s i b l i n g   o f   b l o c k - l e v e l   n o d e 
 	 i f   ( n o d e . c h i l d I n d e x   = = =   0 )   { 
 	 	 / /   f i r s t   n o d e   i n   p a r e n t :   f o r m a t   i f   i t  s   f o l l o w e d   b y   a   b l o c k - l e v e l   e l e m e n t 
 	 	 l e t   n e x t   =   n o d e ; 
 	 	 w h i l e   ( n e x t   =   n e x t . n e x t S i b l i n g )   { 
 	 	 	 i f   ( ! i s I n l i n e ( n e x t ,   p r o f i l e ) )   { 
 	 	 	 	 r e t u r n   t r u e ; 
 	 	 	 } 
 	 	 } 
 	 }   e l s e   i f   ( ! i s I n l i n e ( n o d e . p r e v i o u s S i b l i n g ,   p r o f i l e ) )   { 
 	 	 / /   n o d e   i s   r i g h t   a f t e r   b l o c k - l e v e l   e l e m e n t 
 	 	 r e t u r n   t r u e ; 
 	 } 
 
 	 i f   ( p r o f i l e . g e t ( ' i n l i n e B r e a k ' ) )   { 
 	 	 / /   c h e c k   f o r   a d j a c e n t   i n l i n e   e l e m e n t s   b e f o r e   a n d   a f t e r   c u r r e n t   e l e m e n t 
 	 	 l e t   a d j a c e n t I n l i n e   =   1 ; 
 	 	 l e t   b e f o r e   =   n o d e ,   a f t e r   =   n o d e ; 
 
 	 	 w h i l e   ( i s I n l i n e E l e m e n t ( ( b e f o r e   =   b e f o r e . p r e v i o u s S i b l i n g ) ,   p r o f i l e ) )   { 
 	 	 	 a d j a c e n t I n l i n e + + ; 
 	 	 } 
 
 	 	 w h i l e   ( i s I n l i n e E l e m e n t ( ( a f t e r   =   a f t e r . n e x t S i b l i n g ) ,   p r o f i l e ) )   { 
 	 	 	 a d j a c e n t I n l i n e + + ; 
 	 	 } 
 
 	 	 i f   ( a d j a c e n t I n l i n e   > =   p r o f i l e . g e t ( ' i n l i n e B r e a k ' ) )   { 
 	 	 	 r e t u r n   t r u e ; 
 	 	 } 
 	 } 
 
 	 / /   A n o t h e r   e d g e   c a s e :   i n l i n e   n o d e   c o n t a i n s   n o d e   t h a t   s h o u l d   r e c e i v e   f o r a m t t i n g 
 	 f o r   ( l e t   i   =   0 ,   i l   =   n o d e . c h i l d r e n . l e n g t h ;   i   <   i l ;   i + + )   { 
 	 	 i f   ( s h o u l d F o r m a t N o d e ( n o d e . c h i l d r e n [ i ] ,   p r o f i l e ) )   { 
 	 	 	 r e t u r n   t r u e ; 
 	 	 } 
 	 } 
 
 	 r e t u r n   f a l s e ; 
 } 
 
 / * * 
   *   C h e c k   i f   g i v e n   n o d e   c o n t a i n s   i n n e r   f o r m a t t i n g ,   e . g .   a n y   o f   i t s   c h i l d r e n   s h o u l d 
   *   b e   f o r m a t t e d 
   *   @ p a r a m     { N o d e }   n o d e 
   *   @ p a r a m     { P r o f i l e }   p r o f i l e 
   *   @ r e t u r n   { B o o l e a n } 
   * / 
 f u n c t i o n   h a s I n n e r F o r m a t t i n g ( n o d e ,   p r o f i l e )   { 
 	 / /   c h e c k   i f   n o d e   i f   f o r c e d   f o r   i n n e r   f o r m a t t i n g 
 	 c o n s t   n o d e N a m e   =   ( n o d e . n a m e   | |   ' ' ) . t o L o w e r C a s e ( ) ; 
 	 i f   ( p r o f i l e . g e t ( ' f o r m a t F o r c e ' ) . i n d e x O f ( n o d e N a m e )   ! = =   - 1 )   { 
 	 	 r e t u r n   t r u e ; 
 	 } 
 
 	 / /   c h e c k   i f   a n y   o f   c h i l d r e n   s h o u l d   r e c e i v e   f o r m a t t i n g 
 	 / /   N B   d o n  t   u s e   ` c h i l d r e n t . s o m e ( ) `   t o   r e d u c e   m e m o r y   a l l o c a t i o n s 
 	 f o r   ( l e t   i   =   0 ;   i   <   n o d e . c h i l d r e n . l e n g t h ;   i + + )   { 
 	 	 i f   ( s h o u l d F o r m a t N o d e ( n o d e . c h i l d r e n [ i ] ,   p r o f i l e ) )   { 
 	 	 	 r e t u r n   t r u e ; 
 	 	 } 
 	 } 
 
 	 r e t u r n   f a l s e ; 
 } 
 
 / * * 
   *   O u t p u t s   a t t r i b u t e s   o f   g i v e n   a b b r e v i a t i o n   n o d e   a s   H T M L   a t t r i b u t e s 
   *   @ p a r a m     { O u t p u t N o d e }   o u t N o d e 
   *   @ p a r a m     { P r o f i l e }         p r o f i l e 
   *   @ r e t u r n   { S t r i n g } 
   * / 
 f u n c t i o n   f o r m a t A t t r i b u t e s ( o u t N o d e ,   p r o f i l e )   { 
 	 c o n s t   n o d e   =   o u t N o d e . n o d e ; 
 
 	 r e t u r n   n o d e . a t t r i b u t e s . m a p ( a t t r   = >   { 
 	 	 i f   ( a t t r . o p t i o n s . i m p l i e d   & &   a t t r . v a l u e   = =   n u l l )   { 
 	 	 	 r e t u r n   n u l l ; 
 	 	 } 
 
 	 	 c o n s t   a t t r N a m e   =   p r o f i l e . a t t r i b u t e ( a t t r . n a m e ) ; 
 	 	 l e t   a t t r V a l u e   =   n u l l ; 
 
 	 	 / /   h a n d l e   b o o l e a n   a t t r i b u t e s 
 	 	 i f   ( a t t r . o p t i o n s . b o o l e a n   | |   p r o f i l e . g e t ( ' b o o l e a n A t t r i b u t e s ' ) . i n d e x O f ( a t t r N a m e . t o L o w e r C a s e ( ) )   ! = =   - 1 )   { 
 	 	 	 i f   ( p r o f i l e . g e t ( ' c o m p a c t B o o l e a n A t t r i b u t e s ' )   & &   a t t r . v a l u e   = =   n u l l )   { 
 	 	 	 	 r e t u r n   `   $ { a t t r N a m e } ` ; 
 	 	 	 }   e l s e   i f   ( a t t r . v a l u e   = =   n u l l )   { 
 	 	 	 	 a t t r V a l u e   =   a t t r N a m e ; 
 	 	 	 } 
 	 	 } 
 
 	 	 i f   ( a t t r V a l u e   = =   n u l l )   { 
 	 	 	 a t t r V a l u e   =   o u t N o d e . r e n d e r F i e l d s ( a t t r . v a l u e ) ; 
 	 	 } 
 
 	 	 r e t u r n   a t t r . o p t i o n s . b e f o r e   & &   a t t r . o p t i o n s . a f t e r 
 	 	 	 ?   `   $ { a t t r N a m e } = $ { a t t r . o p t i o n s . b e f o r e + a t t r V a l u e + a t t r . o p t i o n s . a f t e r } ` 
 	 	 	 :   `   $ { a t t r N a m e } = $ { p r o f i l e . q u o t e ( a t t r V a l u e ) } ` ; 
 	 } ) . j o i n ( ' ' ) ; 
 } 
 
 / * * 
   *   C h e c k   i f   g i v e n   n o d e   i s   i n l i n e - l e v e l 
   *   @ p a r a m     { N o d e }     n o d e 
   *   @ p a r a m     { P r o f i l e }     p r o f i l e 
   *   @ r e t u r n   { B o o l e a n } 
   * / 
 f u n c t i o n   i s I n l i n e ( n o d e ,   p r o f i l e )   { 
 	 r e t u r n   ( n o d e   & &   n o d e . i s T e x t O n l y )   | |   i s I n l i n e E l e m e n t ( n o d e ,   p r o f i l e ) ; 
 } 
 
 / * * 
   *   C h e c k   i f   g i v e n   n o d e   i s   i n l i n e - l e v e l   e l e m e n t ,   e . g .   e l e m e n t   w i t h   e x p l i c i t l y 
   *   d e f i n e d   n o d e   n a m e 
   *   @ p a r a m     { N o d e }     n o d e 
   *   @ p a r a m     { P r o f i l e }     p r o f i l e 
   *   @ r e t u r n   { B o o l e a n } 
   * / 
 f u n c t i o n   i s I n l i n e E l e m e n t ( n o d e ,   p r o f i l e )   { 
 	 r e t u r n   n o d e   & &   p r o f i l e . i s I n l i n e ( n o d e ) ; 
 } 
 
 / * * 
   *   C o m p u t e s   i n d e n t   l e v e l   f o r   g i v e n   n o d e 
   *   @ p a r a m     { N o d e }   n o d e 
   *   @ p a r a m     { P r o f i l e }   p r o f i l e 
   *   @ p a r a m     { N u m b e r }   l e v e l 
   *   @ r e t u r n   { N u m b e r } 
   * / 
 f u n c t i o n   g e t I n d e n t L e v e l ( n o d e ,   p r o f i l e )   { 
 	 / /   I n c r e a s e   i n d e n t   l e v e l   I F   N O T : 
 	 / /   *   p a r e n t   i s   t e x t - o n l y   n o d e 
 	 / /   *   t h e r e  s   a   p a r e n t   n o d e   w i t h   a   n a m e   t h a t   i s   e x p l i c i t l y   s e t   t o   d e c r e a s e   l e v e l 
 	 c o n s t   s k i p   =   p r o f i l e . g e t ( ' f o r m a t S k i p ' )   | |   [ ] ; 
 	 l e t   l e v e l   =   n o d e . p a r e n t . i s T e x t O n l y   ?   - 2   :   - 1 ; 
 	 l e t   c t x   =   n o d e ; 
 	 w h i l e   ( c t x   =   c t x . p a r e n t )   { 
 	 	 i f   ( s k i p . i n d e x O f (   ( c t x . n a m e   | |   ' ' ) . t o L o w e r C a s e ( )   )   = = =   - 1 )   { 
 	 	 	 l e v e l + + ; 
 	 	 } 
 	 } 
 
 	 r e t u r n   l e v e l   <   0   ?   0   :   l e v e l ; 
 } 
 
 / * * 
   *   C o m m e n t s   g i v e n   o u t p u t   n o d e ,   i f   r e q u i r e d 
   *   @ p a r a m     { O u t p u t N o d e }   o u t N o d e 
   *   @ p a r a m     { O b j e c t }   o p t i o n s 
   * / 
 f u n c t i o n   c o m m e n t N o d e ( o u t N o d e ,   o p t i o n s )   { 
 	 c o n s t   n o d e   =   o u t N o d e . n o d e ; 
 
 	 i f   ( ! o p t i o n s . e n a b l e d   | |   ! o p t i o n s . t r i g g e r   | |   ! n o d e . n a m e )   { 
 	 	 r e t u r n ; 
 	 } 
 
 	 c o n s t   a t t r s   =   o u t N o d e . n o d e . a t t r i b u t e s . r e d u c e ( ( o u t ,   a t t r )   = >   { 
 	 	 i f   ( a t t r . n a m e   & &   a t t r . v a l u e   ! =   n u l l )   { 
 	 	 	 o u t [ a t t r . n a m e . t o U p p e r C a s e ( ) . r e p l a c e ( / - / g ,   ' _ ' ) ]   =   a t t r . v a l u e ; 
 	 	 } 
 
 	 	 r e t u r n   o u t ; 
 	 } ,   { } ) ; 
 
 	 / /   a d d   c o m m e n t   o n l y   i f   a t t r i b u t e   t r i g g e r   i s   p r e s e n t 
 	 f o r   ( l e t   i   =   0 ,   i l   =   o p t i o n s . t r i g g e r . l e n g t h ;   i   <   i l ;   i + + )   { 
 	 	 i f   ( o p t i o n s . t r i g g e r [ i ] . t o U p p e r C a s e ( )   i n   a t t r s )   { 
 	 	 	 o u t N o d e . o p e n   =   t e m p l a t e ( o p t i o n s . b e f o r e ,   a t t r s )   +   o u t N o d e . o p e n ; 
 	 	 	 i f   ( o u t N o d e . c l o s e )   { 
 	 	 	 	 o u t N o d e . c l o s e   + =   t e m p l a t e ( o p t i o n s . a f t e r ,   a t t r s ) ; 
 	 	 	 } 
 	 	 	 b r e a k ; 
 	 	 } 
 	 } 
 } 
 
 f u n c t i o n   g e t F o r m a t O p t i o n s ( o p t i o n s )   { 
 	 c o n s t   f o r m a t   =   O b j e c t . a s s i g n ( { } ,   o p t i o n s   & &   o p t i o n s . f o r m a t ) ; 
 	 f o r m a t . c o m m e n t   =   O b j e c t . a s s i g n ( { } ,   c o m m e n t O p t i o n s ,   f o r m a t . c o m m e n t ) ; 
 	 r e t u r n   f o r m a t ; 
 } 
 
 c o n s t   r e I d   =   / ^ i d $ / i ; 
 c o n s t   r e C l a s s   =   / ^ c l a s s $ / i ; 
 c o n s t   d e f a u l t A t t r O p t i o n s   =   { 
 	 p r i m a r y :   a t t r s   = >   a t t r s . j o i n ( ' ' ) , 
 	 s e c o n d a r y :   a t t r s   = >   a t t r s . m a p ( a t t r   = >   a t t r . i s B o o l e a n   ?   a t t r . n a m e   :   ` $ { a t t r . n a m e } = $ { a t t r . v a l u e } ` ) . j o i n ( ' ,   ' ) 
 } ; 
 
 c o n s t   d e f a u l t N o d e O p t i o n s   =   { 
 	 o p e n :   n u l l , 
 	 c l o s e :   n u l l , 
 	 o m i t N a m e :   / ^ d i v $ / i , 
 	 a t t r i b u t e s :   d e f a u l t A t t r O p t i o n s 
 } ; 
 
 f u n c t i o n   i n d e n t F o r m a t ( o u t N o d e ,   p r o f i l e ,   o p t i o n s )   { 
 	 o p t i o n s   =   O b j e c t . a s s i g n ( { } ,   d e f a u l t N o d e O p t i o n s ,   o p t i o n s ) ; 
 	 c o n s t   n o d e   =   o u t N o d e . n o d e ; 
 
 	 o u t N o d e . i n d e n t   =   p r o f i l e . i n d e n t ( g e t I n d e n t L e v e l $ 1 ( n o d e ,   p r o f i l e ) ) ; 
 	 o u t N o d e . n e w l i n e   =   ' \ n ' ; 
 
 	 / /   D o   n o t   f o r m a t   t h e   v e r y   f i r s t   n o d e   i n   o u t p u t 
 	 i f   ( ! i s R o o t ( n o d e . p a r e n t )   | |   ! i s F i r s t C h i l d ( n o d e ) )   { 
 	 	 o u t N o d e . b e f o r e O p e n   =   o u t N o d e . n e w l i n e   +   o u t N o d e . i n d e n t ; 
 	 } 
 
 	 i f   ( n o d e . n a m e )   { 
 	 	 c o n s t   d a t a   =   O b j e c t . a s s i g n ( { 
 	 	 	 N A M E :   p r o f i l e . n a m e ( n o d e . n a m e ) , 
 	 	 	 S E L F _ C L O S E :   n o d e . s e l f C l o s i n g   ?   o p t i o n s . s e l f C l o s e   :   n u l l 
 	 	 } ,   g e t A t t r i b u t e s ( o u t N o d e ,   p r o f i l e ,   o p t i o n s . a t t r i b u t e s ) ) ; 
 
 	 	 / /   o m i t   t a g   n a m e   i f   n o d e   h a s   p r i m a r y   a t t r i b u t e s 
 	 	 i f   ( o p t i o n s . o m i t N a m e   & &   o p t i o n s . o m i t N a m e . t e s t ( d a t a . N A M E )   & &   d a t a . P R I M A R Y _ A T T R S )   { 
 	 	 	 d a t a . N A M E   =   n u l l ; 
 	 	 } 
 
 	 	 i f   ( o p t i o n s . o p e n   ! =   n u l l )   { 
 	 	 	 o u t N o d e . o p e n   =   t e m p l a t e ( o p t i o n s . o p e n ,   d a t a ) ; 
 	 	 } 
 
 	 	 i f   ( o p t i o n s . c l o s e   ! =   n u l l )   { 
 	 	 	 o u t N o d e . c l o s e   =   t e m p l a t e ( o p t i o n s . c l o s e ,   d a t a ) ; 
 	 	 } 
 	 } 
 
 	 r e t u r n   o u t N o d e ; 
 } 
 
 / * * 
   *   F o r m a t s   a t t r i b u t e s   o f   g i v e n   n o d e   i n t o   a   s t r i n g . 
   *   @ p a r a m     { O u t p u t N o d e }   n o d e                     O u t p u t   n o d e   w r a p p e r 
   *   @ p a r a m     { P r o f i l e }         p r o f i l e               O u t p u t   p r o f i l e 
   *   @ p a r a m     { O b j e c t }           o p t i o n s               A d d i t i o n a l   f o r m a t t i n g   o p t i o n s 
   *   @ r e t u r n   { S t r i n g } 
   * / 
 f u n c t i o n   g e t A t t r i b u t e s ( o u t N o d e ,   p r o f i l e ,   o p t i o n s )   { 
 	 o p t i o n s   =   O b j e c t . a s s i g n ( { } ,   d e f a u l t A t t r O p t i o n s ,   o p t i o n s ) ; 
 	 c o n s t   p r i m a r y   =   [ ] ,   s e c o n d a r y   =   [ ] ; 
 	 c o n s t   n o d e   =   o u t N o d e . n o d e ; 
 
 	 n o d e . a t t r i b u t e s . f o r E a c h ( a t t r   = >   { 
 	 	 i f   ( a t t r . o p t i o n s . i m p l i e d   & &   a t t r . v a l u e   = =   n u l l )   { 
 	 	 	 r e t u r n   n u l l ; 
 	 	 } 
 
 	 	 c o n s t   n a m e   =   p r o f i l e . a t t r i b u t e ( a t t r . n a m e ) ; 
 	 	 c o n s t   v a l u e   =   o u t N o d e . r e n d e r F i e l d s ( a t t r . v a l u e ) ; 
 
 	 	 i f   ( r e I d . t e s t ( n a m e ) )   { 
 	 	 	 v a l u e   & &   p r i m a r y . p u s h ( ` # $ { v a l u e } ` ) ; 
 	 	 }   e l s e   i f   ( r e C l a s s . t e s t ( n a m e ) )   { 
 	 	 	 v a l u e   & &   p r i m a r y . p u s h ( ` . $ { v a l u e . r e p l a c e ( / \ s + / g ,   ' . ' ) } ` ) ; 
 	 	 }   e l s e   { 
 	 	 	 c o n s t   i s B o o l e a n   =   a t t r . v a l u e   = =   n u l l 
 	 	 	 	 & &   ( a t t r . o p t i o n s . b o o l e a n   | |   p r o f i l e . g e t ( ' b o o l e a n A t t r i b u t e s ' ) . i n d e x O f ( n a m e . t o L o w e r C a s e ( ) )   ! = =   - 1 ) ; 
 
 	 	 	 s e c o n d a r y . p u s h ( {   n a m e ,   v a l u e ,   i s B o o l e a n   } ) ; 
 	 	 } 
 	 } ) ; 
 
 	 r e t u r n   { 
 	 	 P R I M A R Y _ A T T R S :   o p t i o n s . p r i m a r y ( p r i m a r y )   | |   n u l l , 
 	 	 S E C O N D A R Y _ A T T R S :   o p t i o n s . s e c o n d a r y ( s e c o n d a r y )   | |   n u l l 
 	 } ; 
 } 
 
 / * * 
   *   C o m p u t e s   i n d e n t   l e v e l   f o r   g i v e n   n o d e 
   *   @ p a r a m     { N o d e }   n o d e 
   *   @ r e t u r n   { N u m b e r } 
   * / 
 f u n c t i o n   g e t I n d e n t L e v e l $ 1 ( n o d e )   { 
 	 l e t   l e v e l   =   n o d e . p a r e n t . i s T e x t O n l y   ?   - 2   :   - 1 ; 
 	 l e t   c t x   =   n o d e ; 
 	 w h i l e   ( c t x   =   c t x . p a r e n t )   { 
 	 	 l e v e l + + ; 
 	 } 
 
 	 r e t u r n   l e v e l   <   0   ?   0   :   l e v e l ; 
 } 
 
 c o n s t   r e N l   =   / \ n | \ r / ; 
 
 / * * 
   *   R e n d e r s   g i v e n   p a r s e d   E m m e t   a b b r e v i a t i o n   a s   H A M L ,   f o r m a t t e d   a c c o r d i n g   t o 
   *   ` p r o f i l e `   o p t i o n s 
   *   @ p a r a m     { N o d e }         t r e e             P a r s e d   E m m e t   a b b r e v i a t i o n 
   *   @ p a r a m     { P r o f i l e }   p r o f i l e       O u t p u t   p r o f i l e 
   *   @ p a r a m     { O b j e c t }     [ o p t i o n s ]   A d d i t i o n a l   f o r m a t t e r   o p t i o n s 
   *   @ r e t u r n   { S t r i n g } 
   * / 
 f u n c t i o n   h a m l ( t r e e ,   p r o f i l e ,   o p t i o n s )   { 
 	 o p t i o n s   =   o p t i o n s   | |   { } ; 
 	 c o n s t   n o d e O p t i o n s   =   { 
 	 	 o p e n :   ' [ % N A M E ] [ P R I M A R Y _ A T T R S ] [ ( S E C O N D A R Y _ A T T R S ) ] [ S E L F _ C L O S E ] ' , 
 	 	 s e l f C l o s e :   ' / ' , 
 	 	 a t t r i b u t e s :   { 
 	 	 	 s e c o n d a r y ( a t t r s )   { 
 	 	 	 	 r e t u r n   a t t r s . m a p ( a t t r   = >   a t t r . i s B o o l e a n 
 	 	 	 	 	 ?   ` $ { a t t r . n a m e } $ { p r o f i l e . g e t ( ' c o m p a c t B o o l e a n A t t r i b u t e s ' )   ?   ' '   :   ' = t r u e ' } ` 
 	 	 	 	 	 :   ` $ { a t t r . n a m e } = $ { p r o f i l e . q u o t e ( a t t r . v a l u e ) } ` 
 	 	 	 	 ) . j o i n ( '   ' ) ; 
 	 	 	 } 
 	 	 } 
 	 } ; 
 
 	 r e t u r n   r e n d e r ( t r e e ,   o p t i o n s . f i e l d ,   o u t N o d e   = >   { 
 	 	 o u t N o d e   =   i n d e n t F o r m a t ( o u t N o d e ,   p r o f i l e ,   n o d e O p t i o n s ) ; 
 	 	 o u t N o d e   =   u p d a t e F o r m a t t i n g ( o u t N o d e ,   p r o f i l e ) ; 
 
 	 	 i f   ( ! h a n d l e P s e u d o S n i p p e t ( o u t N o d e ) )   { 
 	 	 	 c o n s t   n o d e   =   o u t N o d e . n o d e ; 
 
 	 	 	 / /   D o   n o t   g e n e r a t e   f i e l d s   f o r   n o d e s   w i t h   e m p t y   v a l u e   a n d   c h i l d r e n 
 	 	 	 / /   o r   i f   n o d e   i s   s e l f - c l o s e d 
 	 	 	 i f   ( n o d e . v a l u e   | |   ( ! n o d e . c h i l d r e n . l e n g t h   & &   ! n o d e . s e l f C l o s i n g )   )   { 
 	 	 	 	 o u t N o d e . t e x t   =   o u t N o d e . r e n d e r F i e l d s ( f o r m a t N o d e V a l u e ( n o d e ,   p r o f i l e ) ) ; 
 	 	 	 } 
 	 	 } 
 
 	 	 r e t u r n   o u t N o d e ; 
 	 } ) ; 
 } 
 
 / * * 
   *   U p d a t e s   f o r m a t t i n g   p r o p e r t i e s   f o r   g i v e n   o u t p u t   n o d e 
   *   N B   U n l i k e   H T M L ,   H A M L   i s   i n d e n t - b a s e d   f o r m a t   s o   s o m e   f o r m a t t i n g   o p t i o n s   f r o m 
   *   ` p r o f i l e `   w i l l   n o t   t a k e   e f f e c t ,   o t h e r w i s e   o u t p u t   w i l l   b e   b r o k e n 
   *   @ p a r a m     { O u t p u t N o d e }   o u t N o d e   O u t p u t   w r a p p e r   o f   p a r s e d   a b b r e v i a t i o n   n o d e 
   *   @ p a r a m     { P r o f i l e }         p r o f i l e   O u t p u t   p r o f i l e 
   *   @ r e t u r n   { O u t p u t N o d e } 
   * / 
 f u n c t i o n   u p d a t e F o r m a t t i n g ( o u t N o d e ,   p r o f i l e )   { 
 	 c o n s t   n o d e   =   o u t N o d e . n o d e ; 
 
 	 i f   ( ! n o d e . i s T e x t O n l y   & &   n o d e . v a l u e )   { 
 	 	 / /   n o d e   w i t h   t e x t :   p u t   a   s p a c e   b e f o r e   s i n g l e - l i n e   t e x t 
 	 	 o u t N o d e . b e f o r e T e x t   =   r e N l . t e s t ( n o d e . v a l u e ) 
 	 	 	 ?   o u t N o d e . n e w l i n e   +   o u t N o d e . i n d e n t   +   p r o f i l e . i n d e n t ( 1 ) 
 	 	 	 :   '   ' ; 
 	 } 
 
 	 r e t u r n   o u t N o d e ; 
 } 
 / * * 
   *   F o r m a t s   v a l u e   o f   g i v e n   n o d e :   f o r   m u l t i l i n e   t e x t   w e   s h o u l d   a d d   a   `   | `   s u f f i x 
   *   a t   t h e   e n d   o f   e a c h   l i n e .   A l s o   e n s u r e   t h a t   t e x t   i s   p e r f e c t l y   a l i g n e d . 
   *   @ p a r a m     { N o d e }         n o d e 
   *   @ p a r a m     { P r o f i l e }   p r o f i l e 
   *   @ r e t u r n   { S t r i n g | n u l l } 
   * / 
 f u n c t i o n   f o r m a t N o d e V a l u e ( n o d e ,   p r o f i l e )   { 
 	 i f   ( n o d e . v a l u e   ! =   n u l l   & &   r e N l . t e s t ( n o d e . v a l u e ) )   { 
 	 	 c o n s t   l i n e s   =   s p l i t B y L i n e s ( n o d e . v a l u e ) ; 
 	 	 c o n s t   i n d e n t   =   p r o f i l e . i n d e n t ( 1 ) ; 
 	 	 c o n s t   m a x L e n g t h   =   l i n e s . r e d u c e ( ( p r e v ,   l i n e )   = >   M a t h . m a x ( p r e v ,   l i n e . l e n g t h ) ,   0 ) ; 
 
 	 	 r e t u r n   l i n e s . m a p ( ( l i n e ,   i )   = >   ` $ { i   ?   i n d e n t   :   ' ' } $ { p a d ( l i n e ,   m a x L e n g t h ) }   | ` ) . j o i n ( ' \ n ' ) ; 
 	 } 
 
 	 r e t u r n   n o d e . v a l u e ; 
 } 
 
 f u n c t i o n   p a d ( t e x t ,   l e n )   { 
 	 w h i l e   ( t e x t . l e n g t h   <   l e n )   { 
 	 	 t e x t   + =   '   ' ; 
 	 } 
 
 	 r e t u r n   t e x t ; 
 } 
 
 c o n s t   r e N l $ 1   =   / \ n | \ r / ; 
 c o n s t   s e c o n d a r y A t t r s   =   { 
 	 n o n e :       ' [   S E C O N D A R Y _ A T T R S ] ' , 
 	 r o u n d :     ' [ ( S E C O N D A R Y _ A T T R S ) ] ' , 
 	 c u r l y :     ' [ { S E C O N D A R Y _ A T T R S } ] ' , 
 	 s q u a r e :   ' [ [ S E C O N D A R Y _ A T T R S ] ' 
 } ; 
 
 / * * 
   *   R e n d e r s   g i v e n   p a r s e d   E m m e t   a b b r e v i a t i o n   a s   S l i m ,   f o r m a t t e d   a c c o r d i n g   t o 
   *   ` p r o f i l e `   o p t i o n s 
   *   @ p a r a m     { N o d e }         t r e e             P a r s e d   E m m e t   a b b r e v i a t i o n 
   *   @ p a r a m     { P r o f i l e }   p r o f i l e       O u t p u t   p r o f i l e 
   *   @ p a r a m     { O b j e c t }     [ o p t i o n s ]   A d d i t i o n a l   f o r m a t t e r   o p t i o n s 
   *   @ r e t u r n   { S t r i n g } 
   * / 
 f u n c t i o n   s l i m ( t r e e ,   p r o f i l e ,   o p t i o n s )   { 
 	 o p t i o n s   =   o p t i o n s   | |   { } ; 
 	 c o n s t   S E C O N D A R Y _ A T T R S   =   o p t i o n s . a t t r i b u t e W r a p 
 	 	 & &   s e c o n d a r y A t t r s [ o p t i o n s . a t t r i b u t e W r a p ] 
 	 	 | |   s e c o n d a r y A t t r s . n o n e ; 
 
 	 c o n s t   b o o l e a n A t t r   =   S E C O N D A R Y _ A T T R S   = = =   s e c o n d a r y A t t r s . n o n e 
 	 	 ?   a t t r   = >   ` $ { a t t r . n a m e } = t r u e ` 
 	 	 :   a t t r   = >   a t t r . n a m e ; 
 
 	 c o n s t   n o d e O p t i o n s   =   { 
 	 	 o p e n :   ` [ N A M E ] [ P R I M A R Y _ A T T R S ] $ { S E C O N D A R Y _ A T T R S } [ S E L F _ C L O S E ] ` , 
 	 	 s e l f C l o s e :   ' / ' , 
 	 	 a t t r i b u t e s :   { 
 	 	 	 s e c o n d a r y ( a t t r s )   { 
 	 	 	 	 r e t u r n   a t t r s . m a p ( a t t r   = >   a t t r . i s B o o l e a n 
 	 	 	 	 	 ?   b o o l e a n A t t r ( a t t r ) 
 	 	 	 	 	 :   ` $ { a t t r . n a m e } = $ { p r o f i l e . q u o t e ( a t t r . v a l u e ) } ` 
 	 	 	 	 ) . j o i n ( '   ' ) ; 
 	 	 	 } 
 	 	 } 
 	 } ; 
 
 	 r e t u r n   r e n d e r ( t r e e ,   o p t i o n s . f i e l d ,   o u t N o d e   = >   { 
 	 	 o u t N o d e   =   i n d e n t F o r m a t ( o u t N o d e ,   p r o f i l e ,   n o d e O p t i o n s ) ; 
 	 	 o u t N o d e   =   u p d a t e F o r m a t t i n g $ 1 ( o u t N o d e ,   p r o f i l e ) ; 
 
 	 	 i f   ( ! h a n d l e P s e u d o S n i p p e t ( o u t N o d e ) )   { 
 	 	 	 c o n s t   n o d e   =   o u t N o d e . n o d e ; 
 
 	 	 	 / /   D o   n o t   g e n e r a t e   f i e l d s   f o r   n o d e s   w i t h   e m p t y   v a l u e   a n d   c h i l d r e n 
 	 	 	 / /   o r   i f   n o d e   i s   s e l f - c l o s e d 
 	 	 	 i f   ( n o d e . v a l u e   | |   ( ! n o d e . c h i l d r e n . l e n g t h   & &   ! n o d e . s e l f C l o s i n g )   )   { 
 	 	 	 	 o u t N o d e . t e x t   =   o u t N o d e . r e n d e r F i e l d s ( f o r m a t N o d e V a l u e $ 1 ( n o d e ,   p r o f i l e ) ) ; 
 	 	 	 } 
 	 	 } 
 
 	 	 r e t u r n   o u t N o d e ; 
 	 } ) ; 
 } 
 
 / * * 
   *   U p d a t e s   f o r m a t t i n g   p r o p e r t i e s   f o r   g i v e n   o u t p u t   n o d e 
   *   N B   U n l i k e   H T M L ,   S l i m   i s   i n d e n t - b a s e d   f o r m a t   s o   s o m e   f o r m a t t i n g   o p t i o n s   f r o m 
   *   ` p r o f i l e `   w i l l   n o t   t a k e   e f f e c t ,   o t h e r w i s e   o u t p u t   w i l l   b e   b r o k e n 
   *   @ p a r a m     { O u t p u t N o d e }   o u t N o d e   O u t p u t   w r a p p e r   o f   f a r s e d   a b b r e v i a t i o n   n o d e 
   *   @ p a r a m     { P r o f i l e }         p r o f i l e   O u t p u t   p r o f i l e 
   *   @ r e t u r n   { O u t p u t N o d e } 
   * / 
 f u n c t i o n   u p d a t e F o r m a t t i n g $ 1 ( o u t N o d e ,   p r o f i l e )   { 
 	 c o n s t   n o d e   =   o u t N o d e . n o d e ; 
 	 c o n s t   p a r e n t   =   n o d e . p a r e n t ; 
 
 	 / /   E d g e   c a s e :   a   s i n g l e   i n l i n e - l e v e l   c h i l d   i n s i d e   n o d e   w i t h o u t   t e x t : 
 	 / /   a l l o w   i t   t o   b e   i n l i n e d 
 	 i f   ( p r o f i l e . g e t ( ' i n l i n e B r e a k ' )   = = =   0   & &   i s I n l i n e $ 1 ( n o d e ,   p r o f i l e ) 
 	 	 & &   ! i s R o o t ( p a r e n t )   & &   p a r e n t . v a l u e   = =   n u l l   & &   p a r e n t . c h i l d r e n . l e n g t h   = = =   1 )   { 
 	 	 o u t N o d e . b e f o r e O p e n   =   ' :   ' ; 
 	 } 
 
 	 i f   ( ! n o d e . i s T e x t O n l y   & &   n o d e . v a l u e )   { 
 	 	 / /   n o d e   w i t h   t e x t :   p u t   a   s p a c e   b e f o r e   s i n g l e - l i n e   t e x t 
 	 	 o u t N o d e . b e f o r e T e x t   =   r e N l $ 1 . t e s t ( n o d e . v a l u e ) 
 	 	 	 ?   o u t N o d e . n e w l i n e   +   o u t N o d e . i n d e n t   +   p r o f i l e . i n d e n t ( 1 ) 
 	 	 	 :   '   ' ; 
 	 } 
 
 	 r e t u r n   o u t N o d e ; 
 } 
 
 / * * 
   *   F o r m a t s   v a l u e   o f   g i v e n   n o d e :   f o r   m u l t i l i n e   t e x t   w e   s h o u l d   p r e c e d e   e a c h 
   *   l i n e   w i t h   ` |   `   w i t h   o n e - l e v e l   d e e p   i n d e n t 
   *   @ p a r a m     { N o d e }   n o d e 
   *   @ p a r a m     { P r o f i l e }   p r o f i l e 
   *   @ r e t u r n   { S t r i n g | n u l l } 
   * / 
 f u n c t i o n   f o r m a t N o d e V a l u e $ 1 ( n o d e ,   p r o f i l e )   { 
 	 i f   ( n o d e . v a l u e   ! =   n u l l   & &   r e N l $ 1 . t e s t ( n o d e . v a l u e ) )   { 
 	 	 c o n s t   i n d e n t   =   p r o f i l e . i n d e n t ( 1 ) ; 
 	 	 r e t u r n   s p l i t B y L i n e s ( n o d e . v a l u e ) . m a p ( ( l i n e ,   i )   = >   ` $ { i n d e n t } $ { i   ?   '   '   :   ' | ' }   $ { l i n e } ` ) . j o i n ( ' \ n ' ) ; 
 	 } 
 
 	 r e t u r n   n o d e . v a l u e ; 
 } 
 
 / * * 
   *   C h e c k   i f   g i v e n   n o d e   i s   i n l i n e - l e v e l 
   *   @ p a r a m     { N o d e }     n o d e 
   *   @ p a r a m     { P r o f i l e }     p r o f i l e 
   *   @ r e t u r n   { B o o l e a n } 
   * / 
 f u n c t i o n   i s I n l i n e $ 1 ( n o d e ,   p r o f i l e )   { 
 	 r e t u r n   n o d e   & &   ( n o d e . i s T e x t O n l y   | |   p r o f i l e . i s I n l i n e ( n o d e ) ) ; 
 } 
 
 c o n s t   r e N l $ 2   =   / \ n | \ r / ; 
 
 / * * 
   *   R e n d e r s   g i v e n   p a r s e d   E m m e t   a b b r e v i a t i o n   a s   P u g ,   f o r m a t t e d   a c c o r d i n g   t o 
   *   ` p r o f i l e `   o p t i o n s 
   *   @ p a r a m     { N o d e }         t r e e             P a r s e d   E m m e t   a b b r e v i a t i o n 
   *   @ p a r a m     { P r o f i l e }   p r o f i l e       O u t p u t   p r o f i l e 
   *   @ p a r a m     { O b j e c t }     [ o p t i o n s ]   A d d i t i o n a l   f o r m a t t e r   o p t i o n s 
   *   @ r e t u r n   { S t r i n g } 
   * / 
 f u n c t i o n   p u g ( t r e e ,   p r o f i l e ,   o p t i o n s )   { 
 	 o p t i o n s   =   o p t i o n s   | |   { } ; 
 	 c o n s t   n o d e O p t i o n s   =   { 
 	 	 o p e n :   ' [ N A M E ] [ P R I M A R Y _ A T T R S ] [ ( S E C O N D A R Y _ A T T R S ) ] ' , 
 	 	 a t t r i b u t e s :   { 
 	 	 	 s e c o n d a r y ( a t t r s )   { 
 	 	 	 	 r e t u r n   a t t r s . m a p ( a t t r   = >   a t t r . i s B o o l e a n   ?   a t t r . n a m e   :   ` $ { a t t r . n a m e } = $ { p r o f i l e . q u o t e ( a t t r . v a l u e ) } ` ) . j o i n ( ' ,   ' ) ; 
 	 	 	 } 
 	 	 } 
 	 } ; 
 
 	 r e t u r n   r e n d e r ( t r e e ,   o p t i o n s . f i e l d ,   o u t N o d e   = >   { 
 	 	 o u t N o d e   =   i n d e n t F o r m a t ( o u t N o d e ,   p r o f i l e ,   n o d e O p t i o n s ) ; 
 	 	 o u t N o d e   =   u p d a t e F o r m a t t i n g $ 2 ( o u t N o d e ,   p r o f i l e ) ; 
 
 	 	 i f   ( ! h a n d l e P s e u d o S n i p p e t ( o u t N o d e ) )   { 
 	 	 	 c o n s t   n o d e   =   o u t N o d e . n o d e ; 
 	 	 	 / /   D o   n o t   g e n e r a t e   f i e l d s   f o r   n o d e s   w i t h   e m p t y   v a l u e   a n d   c h i l d r e n 
 	 	 	 / /   o r   i f   n o d e   i s   s e l f - c l o s e d 
 	 	 	 i f   ( n o d e . v a l u e   | |   ( ! n o d e . c h i l d r e n . l e n g t h   & &   ! n o d e . s e l f C l o s i n g )   )   { 
 	 	 	 	 o u t N o d e . t e x t   =   o u t N o d e . r e n d e r F i e l d s ( f o r m a t N o d e V a l u e $ 2 ( n o d e ,   p r o f i l e ) ) ; 
 	 	 	 } 
 	 	 } 
 
 	 	 r e t u r n   o u t N o d e ; 
 	 } ) ; 
 } 
 
 / * * 
   *   U p d a t e s   f o r m a t t i n g   p r o p e r t i e s   f o r   g i v e n   o u t p u t   n o d e 
   *   N B   U n l i k e   H T M L ,   P u g   i s   i n d e n t - b a s e d   f o r m a t   s o   s o m e   f o r m a t t i n g   o p t i o n s   f r o m 
   *   ` p r o f i l e `   w i l l   n o t   t a k e   e f f e c t ,   o t h e r w i s e   o u t p u t   w i l l   b e   b r o k e n 
   *   @ p a r a m     { O u t p u t N o d e }   o u t N o d e   O u t p u t   w r a p p e r   o f   p a r s e d   a b b r e v i a t i o n   n o d e 
   *   @ p a r a m     { P r o f i l e }         p r o f i l e   O u t p u t   p r o f i l e 
   *   @ r e t u r n   { O u t p u t N o d e } 
   * / 
 f u n c t i o n   u p d a t e F o r m a t t i n g $ 2 ( o u t N o d e ,   p r o f i l e )   { 
 	 c o n s t   n o d e   =   o u t N o d e . n o d e ; 
 
 	 i f   ( ! n o d e . i s T e x t O n l y   & &   n o d e . v a l u e )   { 
 	 	 / /   n o d e   w i t h   t e x t :   p u t   a   s p a c e   b e f o r e   s i n g l e - l i n e   t e x t 
 	 	 o u t N o d e . b e f o r e T e x t   =   r e N l $ 2 . t e s t ( n o d e . v a l u e ) 
 	 	 	 ?   o u t N o d e . n e w l i n e   +   o u t N o d e . i n d e n t   +   p r o f i l e . i n d e n t ( 1 ) 
 	 	 	 :   '   ' ; 
 	 } 
 
 	 r e t u r n   o u t N o d e ; 
 } 
 
 / * * 
   *   F o r m a t s   v a l u e   o f   g i v e n   n o d e :   f o r   m u l t i l i n e   t e x t   w e   s h o u l d   p r e c e d e   e a c h 
   *   l i n e   w i t h   ` |   `   w i t h   o n e - l e v e l   d e e p   i n d e n t 
   *   @ p a r a m     { N o d e }   n o d e 
   *   @ p a r a m     { P r o f i l e }   p r o f i l e 
   *   @ r e t u r n   { S t r i n g | n u l l } 
   * / 
 f u n c t i o n   f o r m a t N o d e V a l u e $ 2 ( n o d e ,   p r o f i l e )   { 
 	 i f   ( n o d e . v a l u e   ! =   n u l l   & &   r e N l $ 2 . t e s t ( n o d e . v a l u e ) )   { 
 	 	 c o n s t   i n d e n t   =   p r o f i l e . i n d e n t ( 1 ) ; 
 	 	 r e t u r n   s p l i t B y L i n e s ( n o d e . v a l u e ) . m a p ( l i n e   = >   ` $ { i n d e n t } |   $ { l i n e } ` ) . j o i n ( ' \ n ' ) ; 
 	 } 
 
 	 r e t u r n   n o d e . v a l u e ; 
 } 
 
 c o n s t   s u p p o r t e d S y n t a x e s   =   {   h t m l ,   h a m l ,   s l i m ,   p u g   } ; 
 
 / * * 
   *   O u t p u t s   g i v e n   p a r s e d   a b b r e v i a t i o n   i n   s p e c i f i e d   s y n t a x 
   *   @ p a r a m   { N o d e }           t r e e           P a r s e d   a b b r e v i a t i o n   t r e e 
   *   @ p a r a m   { P r o f i l e }     p r o f i l e     O u t p u t   p r o f i l e 
   *   @ p a r a m   { S t r i n g }       [ s y n t a x ]   O u t p u t   s y n t a x .   I f   n o t   g i v e n ,   ` h t m l `   s y n t a x   i s   u s e d 
   *   @ p a r a m   { F u n c t i o n }   o p t i o n s . f i e l d   A   f u n c t i o n   t o   o u t p u t   f i e l d / t a b s t o p   f o r 
   *   h o s t   e d i t o r .   T h i s   f u n c t i o n   t a k e s   t w o   a r g u m e n t s :   ` i n d e x `   a n d   ` p l a c e h o l d e r `   a n d 
   *   s h o u l d   r e t u r n   a   s t r i n g   t h a t   r e p r e s e n t s   t a b s t o p   i n   h o s t   e d i t o r .   B y   d e f a u l t 
   *   o n l y   a   p l a c e h o l d e r   i s   r e t u r n e d 
   *   @ e x a m p l e 
   *   { 
   *   	 f i e l d ( i n d e x ,   p l a c e h o l d e r )   { 
   *   	 	 / /   r e t u r n   f i e l d   i n   T e x t M a t e - s t y l e ,   e . g .   $ { 1 }   o r   $ { 2 : f o o } 
   *   	 	 r e t u r n   ` \ $ { $ { i n d e x } $ { p l a c e h o l d e r   ?   ' : '   +   p l a c e h o l d e r   :   ' ' } } ` ; 
   *     } 
   *   } 
   *   @ r e t u r n   { S t r i n g } 
   * / 
 f u n c t i o n   i n d e x ( t r e e ,   p r o f i l e ,   s y n t a x ,   o p t i o n s )   { 
 	 i f   ( t y p e o f   s y n t a x   = = =   ' o b j e c t ' )   { 
 	 	 o p t i o n s   =   s y n t a x ; 
 	 	 s y n t a x   =   n u l l ; 
 	 } 
 
 	 i f   ( ! s u p p o r t s ( s y n t a x ) )   { 
 	 	 / /   f a l l b a c k   t o   H T M L   i f   g i v e n   s y n t a x   i s   n o t   s u p p o r t e d 
 	 	 s y n t a x   =   ' h t m l ' ; 
 	 } 
 
 	 r e t u r n   s u p p o r t e d S y n t a x e s [ s y n t a x ] ( t r e e ,   p r o f i l e ,   o p t i o n s ) ; 
 } 
 
 / * * 
   *   C h e c k   i f   g i v e n   s y n t a x   i s   s u p p o r t e d 
   *   @ p a r a m   { S t r i n g }   s y n t a x 
   *   @ r e t u r n   { B o o l e a n } 
   * / 
 f u n c t i o n   s u p p o r t s ( s y n t a x )   { 
 	 r e t u r n   ! ! s y n t a x   & &   s y n t a x   i n   s u p p o r t e d S y n t a x e s ; 
 } 
 
 e x p o r t s . d e f a u l t   =   i n d e x ; 
 e x p o r t s . s u p p o r t s   =   s u p p o r t s ; 
 e x p o r t s . t e m p l a t e   =   t e m p l a t e ; 
 
 
 } , { " @ e m m e t i o / f i e l d - p a r s e r " : 6 , " @ e m m e t i o / o u t p u t - r e n d e r e r " : 1 5 } ] , 1 3 : [ f u n c t i o n ( r e q u i r e , m o d u l e , e x p o r t s ) { 
 ' u s e   s t r i c t ' ; 
 
 / * * 
   *   A t t r i b u t e   d e s c r i p t o r   o f   p a r s e d   a b b r e v i a t i o n   n o d e 
   *   @ p a r a m   { S t r i n g }   n a m e   A t t r i b u t e   n a m e 
   *   @ p a r a m   { S t r i n g }   v a l u e   A t t r i b u t e   v a l u e 
   *   @ p a r a m   { O b j e c t }   o p t i o n s   A d d i t i o n a l   c u s t o m   a t t r i b u t e   o p t i o n s 
   *   @ p a r a m   { B o o l e a n }   o p t i o n s . b o o l e a n   A t t r i b u t e   i s   b o o l e a n   ( e . g .   n a m e   e q u a l s   v a l u e ) 
   *   @ p a r a m   { B o o l e a n }   o p t i o n s . i m p l i e d   A t t r i b u t e   i s   i m p l i e d   ( e . g .   m u s t   b e   o u t p u t t e d 
   *   o n l y   i f   c o n t a i n s   n o n - n u l l   v a l u e ) 
   * / 
 c l a s s   A t t r i b u t e   { 
 	 c o n s t r u c t o r ( n a m e ,   v a l u e ,   o p t i o n s )   { 
 	 	 t h i s . n a m e   =   n a m e ; 
 	 	 t h i s . v a l u e   =   v a l u e   ! =   n u l l   ?   v a l u e   :   n u l l ; 
 	 	 t h i s . o p t i o n s   =   o p t i o n s   | |   { } ; 
 	 } 
 
 	 / * * 
 	   *   C r e a t e   a   c o p y   o f   c u r r e n t   a t t r i b u t e 
 	   *   @ r e t u r n   { A t t r i b u t e } 
 	   * / 
 	 c l o n e ( )   { 
 	 	 r e t u r n   n e w   A t t r i b u t e ( t h i s . n a m e ,   t h i s . v a l u e ,   O b j e c t . a s s i g n ( { } ,   t h i s . o p t i o n s ) ) ; 
 	 } 
 
 	 / * * 
 	   *   A   s t r i n g   r e p r e s e n t a t i o n   o f   c u r r e n t   n o d e 
 	   * / 
 	 v a l u e O f ( )   { 
 	 	 r e t u r n   ` $ { t h i s . n a m e } = " $ { t h i s . v a l u e } " ` ; 
 	 } 
 } 
 
 / * * 
   *   A   p a r s e d   a b b r e v i a t i o n   A S T   n o d e .   N o d e s   b u i l d   u p   a n   a b b r e v i a t i o n   A S T   t r e e 
   * / 
 c l a s s   N o d e   { 
 	 / * * 
 	   *   C r e a t e s   a   n e w   n o d e 
 	   *   @ p a r a m   { S t r i n g }   [ n a m e ]   N o d e   n a m e 
 	   *   @ p a r a m   { A r r a y }   [ a t t r i b u t e s ]   A r r a y   o f   a t t r i b u t e s   t o   a d d 
 	   * / 
 	 c o n s t r u c t o r ( n a m e ,   a t t r i b u t e s )   { 
 	 	 / /   o w n   p r o p e r t i e s 
 	 	 t h i s . n a m e   =   n a m e   | |   n u l l ; 
 	 	 t h i s . v a l u e   =   n u l l ; 
 	 	 t h i s . r e p e a t   =   n u l l ; 
 	 	 t h i s . s e l f C l o s i n g   =   f a l s e ; 
 
 	 	 t h i s . c h i l d r e n   =   [ ] ; 
 
 	 	 / * *   @ t y p e   { N o d e }   P o i n t e r   t o   p a r e n t   n o d e   * / 
 	 	 t h i s . p a r e n t   =   n u l l ; 
 
 	 	 / * *   @ t y p e   { N o d e }   P o i n t e r   t o   n e x t   s i b l i n g   * / 
 	 	 t h i s . n e x t   =   n u l l ; 
 
 	 	 / * *   @ t y p e   { N o d e }   P o i n t e r   t o   p r e v i o u s   s i b l i n g   * / 
 	 	 t h i s . p r e v i o u s   =   n u l l ; 
 
 	 	 t h i s . _ a t t r i b u t e s   =   [ ] ; 
 
 	 	 i f   ( A r r a y . i s A r r a y ( a t t r i b u t e s ) )   { 
 	 	 	 a t t r i b u t e s . f o r E a c h ( a t t r   = >   t h i s . s e t A t t r i b u t e ( a t t r ) ) ; 
 	 	 } 
 	 } 
 
 	 / * * 
 	   *   A r r a y   o f   c u r r e n t   n o d e   a t t r i b u t e s 
 	   *   @ r e t u r n   { A t t r i b u t e [ ] }   A r r a y   o f   a t t r i b u t e s 
 	   * / 
 	 g e t   a t t r i b u t e s ( )   { 
 	 	 r e t u r n   t h i s . _ a t t r i b u t e s ; 
 	 } 
 
 	 / * * 
 	   *   A   s h o r t h a n d   t o   r e t r e i v e   n o d e   a t t r i b u t e s   a s   m a p 
 	   *   @ r e t u r n   { O b j e c t } 
 	   * / 
 	 g e t   a t t r i b u t e s M a p ( )   { 
 	 	 r e t u r n   t h i s . a t t r i b u t e s . r e d u c e ( ( o u t ,   a t t r )   = >   { 
 	 	 	 o u t [ a t t r . n a m e ]   =   a t t r . o p t i o n s . b o o l e a n   ?   a t t r . n a m e   :   a t t r . v a l u e ; 
 	 	 	 r e t u r n   o u t ; 
 	 	 } ,   { } ) ; 
 	 } 
 
 	 / * * 
 	   *   C h e c k   i f   c u r r e n t   n o d e   i s   a   g r o u p i n g   o n e ,   e . g .   h a s   n o   a c t u a l   r e p r e s e n t a t i o n 
 	   *   a n d   i s   u s e d   f o r   g r o u p i n g   s u b s e q u e n t   n o d e s   o n l y 
 	   *   @ r e t u r n   { B o o l e a n } 
 	   * / 
 	 g e t   i s G r o u p ( )   { 
 	 	 r e t u r n   ! t h i s . n a m e   & &   ! t h i s . v a l u e   & &   ! t h i s . _ a t t r i b u t e s . l e n g t h ; 
 	 } 
 
 	 / * * 
 	   *   C h e c k   i f   g i v e n   n o d e   i s   a   t e x t - o n l y   n o d e ,   e . g .   c o n t a i n s   o n l y   v a l u e 
 	   *   @ r e t u r n   { B o o l e a n } 
 	   * / 
 	 g e t   i s T e x t O n l y ( )   { 
 	 	 r e t u r n   ! t h i s . n a m e   & &   ! ! t h i s . v a l u e   & &   ! t h i s . _ a t t r i b u t e s . l e n g t h ; 
 	 } 
 
 	 / * * 
 	   *   R e t u r n s   f i r s t   c h i l d   n o d e 
 	   *   @ r e t u r n   { N o d e } 
 	   * / 
 	 g e t   f i r s t C h i l d ( )   { 
 	 	 r e t u r n   t h i s . c h i l d r e n [ 0 ] ; 
 	 } 
 
 	 / * * 
 	   *   R e t u r n s   l a s t   c h i l d   o f   c u r r e n t   n o d e 
 	   *   @ r e t u r n   { N o d e } 
 	   * / 
 	 g e t   l a s t C h i l d ( )   { 
 	 	 r e t u r n   t h i s . c h i l d r e n [ t h i s . c h i l d r e n . l e n g t h   -   1 ] ; 
 	 } 
 
 	 / * * 
 	   *   R e t u r n   i n d e x   o f   c u r r e n t   n o d e   i n   i t s   p a r e n t   c h i l d   l i s t 
 	   *   @ r e t u r n   { N u m b e r }   R e t u r n s   - 1   i f   c u r r e n t   n o d e   i s   a   r o o t   o n e 
 	   * / 
 	 g e t   c h i l d I n d e x ( )   { 
 	 	 r e t u r n   t h i s . p a r e n t   ?   t h i s . p a r e n t . c h i l d r e n . i n d e x O f ( t h i s )   :   - 1 ; 
 	 } 
 
 	 / * * 
 	   *   R e t u r n s   n e x t   s i b l i n g   o f   c u r r e n t   n o d e 
 	   *   @ r e t u r n   { N o d e } 
 	   * / 
 	 g e t   n e x t S i b l i n g ( )   { 
 	 	 r e t u r n   t h i s . n e x t ; 
 	 } 
 
 	 / * * 
 	   *   R e t u r n s   p r e v i o u s   s i b l i n g   o f   c u r r e n t   n o d e 
 	   *   @ r e t u r n   { N o d e } 
 	   * / 
 	 g e t   p r e v i o u s S i b l i n g ( )   { 
 	 	 r e t u r n   t h i s . p r e v i o u s ; 
 	 } 
 
 	 / * * 
 	   *   R e t u r n s   a r r a y   o f   u n i q u e   c l a s s   n a m e s   i n   c u r r e n t   n o d e 
 	   *   @ r e t u r n   { S t r i n g [ ] } 
 	   * / 
 	 g e t   c l a s s L i s t ( )   { 
 	 	 c o n s t   a t t r   =   t h i s . g e t A t t r i b u t e ( ' c l a s s ' ) ; 
 	 	 r e t u r n   a t t r   & &   a t t r . v a l u e 
 	 	 	 ?   a t t r . v a l u e . s p l i t ( / \ s + / g ) . f i l t e r ( u n i q u e C l a s s ) 
 	 	 	 :   [ ] ; 
 	 } 
 
 	 / * * 
 	   *   C o n v e n i e n t   a l i a s   t o   c r e a t e   a   n e w   n o d e   i n s t a n c e 
 	   *   @ p a r a m   { S t r i n g }   [ n a m e ]   N o d e   n a m e 
 	   *   @ p a r a m   { O b j e c t }   [ a t t r i b u t e s ]   A t t r i b u t e s   h a s h 
 	   *   @ r e t u r n   { N o d e } 
 	   * / 
 	 c r e a t e ( n a m e ,   a t t r i b u t e s )   { 
 	 	 r e t u r n   n e w   N o d e ( n a m e ,   a t t r i b u t e s ) ; 
 	 } 
 
 	 / * * 
 	   *   S e t s   g i v e n   a t t r i b u t e   f o r   c u r r e n t   n o d e 
 	   *   @ p a r a m   { S t r i n g | O b j e c t | A t t r i b u t e }   n a m e   A t t r i b u t e   n a m e   o r   a t t r i b u t e   o b j e c t 
 	   *   @ p a r a m   { S t r i n g }   [ v a l u e ]   A t t r i b u t e   v a l u e 
 	   * / 
 	 s e t A t t r i b u t e ( n a m e ,   v a l u e )   { 
 	 	 c o n s t   a t t r   =   c r e a t e A t t r i b u t e ( n a m e ,   v a l u e ) ; 
 	 	 c o n s t   c u r A t t r   =   t h i s . g e t A t t r i b u t e ( n a m e ) ; 
 	 	 i f   ( c u r A t t r )   { 
 	 	 	 t h i s . r e p l a c e A t t r i b u t e ( c u r A t t r ,   a t t r ) ; 
 	 	 }   e l s e   { 
 	 	 	 t h i s . _ a t t r i b u t e s . p u s h ( a t t r ) ; 
 	 	 } 
 	 } 
 
 	 / * * 
 	   *   C h e c k   i f   a t t r i b u t e   w i t h   g i v e n   n a m e   e x i s t s   i n   n o d e 
 	   *   @ p a r a m     { S t r i n g }   n a m e 
 	   *   @ r e t u r n   { B o o l e a n } 
 	   * / 
 	 h a s A t t r i b u t e ( n a m e )   { 
 	 	 r e t u r n   ! ! t h i s . g e t A t t r i b u t e ( n a m e ) ; 
 	 } 
 
 	 / * * 
 	   *   R e t u r n s   a t t r i b u t e   o b j e c t   b y   g i v e n   n a m e 
 	   *   @ p a r a m     { S t r i n g }   n a m e 
 	   *   @ r e t u r n   { A t t r i b u t e } 
 	   * / 
 	 g e t A t t r i b u t e ( n a m e )   { 
 	 	 i f   ( t y p e o f   n a m e   = = =   ' o b j e c t ' )   { 
 	 	 	 n a m e   =   n a m e . n a m e ; 
 	 	 } 
 
 	 	 f o r   ( v a r   i   =   0 ;   i   <   t h i s . _ a t t r i b u t e s . l e n g t h ;   i + + )   { 
 	 	 	 c o n s t   a t t r   =   t h i s . _ a t t r i b u t e s [ i ] ; 
 	 	 	 i f   ( a t t r . n a m e   = = =   n a m e )   { 
 	 	 	 	 r e t u r n   a t t r ; 
 	 	 	 } 
 	 	 } 
 	 } 
 
 	 / * * 
 	   *   R e p l a c e s   a t t r i b u t e   w i t h   n e w   i n s t a n c e 
 	   *   @ p a r a m   { S t r i n g | A t t r i b u t e }   c u r A t t r i b u t e   C u r r e n t   a t t r i b u t e   n a m e   o r   i n s t a n c e 
 	   *   t o   r e p l a c e 
 	   *   @ p a r a m   { S t r i n g | O b j e c t | A t t r i b u t e }   n e w N a m e   N e w   a t t r i b u t e   n a m e   o r   a t t r i b u t e   o b j e c t 
 	   *   @ p a r a m   { S t r i n g }   [ n e w V a l u e ]   N e w   a t t r i b u t e   v a l u e 
 	   * / 
 	 r e p l a c e A t t r i b u t e ( c u r A t t r i b u t e ,   n e w N a m e ,   n e w V a l u e )   { 
 	 	 i f   ( t y p e o f   c u r A t t r i b u t e   = = =   ' s t r i n g ' )   { 
 	 	 	 c u r A t t r i b u t e   =   t h i s . g e t A t t r i b u t e ( c u r A t t r i b u t e ) ; 
 	 	 } 
 
 	 	 c o n s t   i x   =   t h i s . _ a t t r i b u t e s . i n d e x O f ( c u r A t t r i b u t e ) ; 
 	 	 i f   ( i x   ! = =   - 1 )   { 
 	 	 	 t h i s . _ a t t r i b u t e s . s p l i c e ( i x ,   1 ,   c r e a t e A t t r i b u t e ( n e w N a m e ,   n e w V a l u e ) ) ; 
 	 	 } 
 	 } 
 
 	 / * * 
 	   *   R e m o v e s   a t t r i b u t e   w i t h   g i v e n   n a m e 
 	   *   @ p a r a m     { S t r i n g | A t t r i b u t e }   a t t r   A t r t i b u t e   n a m e   o r   i n s t a n c e 
 	   * / 
 	 r e m o v e A t t r i b u t e ( a t t r )   { 
 	 	 i f   ( t y p e o f   a t t r   = = =   ' s t r i n g ' )   { 
 	 	 	 a t t r   =   t h i s . g e t A t t r i b u t e ( a t t r ) ; 
 	 	 } 
 
 	 	 c o n s t   i x   =   t h i s . _ a t t r i b u t e s . i n d e x O f ( a t t r ) ; 
 	 	 i f   ( i x   ! = =   - 1 )   { 
 	 	 	 t h i s . _ a t t r i b u t e s . s p l i c e ( i x ,   1 ) ; 
 	 	 } 
 	 } 
 
 	 / * * 
 	   *   R e m o v e s   a l l   a t t r i b u t e s   f r o m   c u r r e n t   n o d e 
 	   * / 
 	 c l e a r A t t r i b u t e s ( )   { 
 	 	 t h i s . _ a t t r i b u t e s . l e n g t h   =   0 ; 
 	 } 
 
 	 / * * 
 	   *   A d d s   g i v e n   c l a s s   n a m e   t o   c l a s s   a t t r i b u t e 
 	   *   @ p a r a m   { S t r i n g }   t o k e n   C l a s s   n a m e   t o k e n 
 	   * / 
 	 a d d C l a s s ( t o k e n )   { 
 	 	 t o k e n   =   n o r m a l i z e ( t o k e n ) ; 
 
 	 	 i f   ( ! t h i s . h a s A t t r i b u t e ( ' c l a s s ' ) )   { 
 	 	 	 t h i s . s e t A t t r i b u t e ( ' c l a s s ' ,   t o k e n ) ; 
 	 	 }   e l s e   i f   ( t o k e n   & &   ! t h i s . h a s C l a s s ( t o k e n ) )   { 
 	 	 	 t h i s . s e t A t t r i b u t e ( ' c l a s s ' ,   t h i s . c l a s s L i s t . c o n c a t ( t o k e n ) . j o i n ( '   ' ) ) ; 
 	 	 } 
 	 } 
 
 	 / * * 
 	   *   C h e c k   i f   c u r r e n t   n o d e   c o n t a i n s   g i v e n   c l a s s   n a m e 
 	   *   @ p a r a m   { S t r i n g }   t o k e n   C l a s s   n a m e   t o k e n 
 	   *   @ r e t u r n   { B o o l e a n } 
 	   * / 
 	 h a s C l a s s ( t o k e n )   { 
 	 	 r e t u r n   t h i s . c l a s s L i s t . i n d e x O f ( n o r m a l i z e ( t o k e n ) )   ! = =   - 1 ; 
 	 } 
 
 	 / * * 
 	   *   R e m o v e s   g i v e n   c l a s s   n a m e   f r o m   c l a s s   a t t r i b u t e 
 	   *   @ p a r a m   { S t r i n g }   t o k e n   C l a s s   n a m e   t o k e n 
 	   * / 
 	 r e m o v e C l a s s ( t o k e n )   { 
 	 	 t o k e n   =   n o r m a l i z e ( t o k e n ) ; 
 	 	 i f   ( t h i s . h a s C l a s s ( t o k e n ) )   { 
 	 	 	 t h i s . s e t A t t r i b u t e ( ' c l a s s ' ,   t h i s . c l a s s L i s t . f i l t e r ( n a m e   = >   n a m e   ! = =   t o k e n ) . j o i n ( '   ' ) ) ; 
 	 	 } 
 	 } 
 
 	 / * * 
 	   *   A p p e n d s   c h i l d   t o   c u r r e n t   n o d e 
 	   *   @ p a r a m   { N o d e }   n o d e 
 	   * / 
 	 a p p e n d C h i l d ( n o d e )   { 
 	 	 t h i s . i n s e r t A t ( n o d e ,   t h i s . c h i l d r e n . l e n g t h ) ; 
 	 } 
 
 	 / * * 
 	   *   I n s e r t s   g i v e n   ` n e w N o d e `   b e f o r e   ` r e f N o d e `   c h i l d   n o d e 
 	   *   @ p a r a m   { N o d e }   n e w N o d e 
 	   *   @ p a r a m   { N o d e }   r e f N o d e 
 	   * / 
 	 i n s e r t B e f o r e ( n e w N o d e ,   r e f N o d e )   { 
 	 	 t h i s . i n s e r t A t ( n e w N o d e ,   t h i s . c h i l d r e n . i n d e x O f ( r e f N o d e ) ) ; 
 	 } 
 
 	 / * * 
 	   *   I n s e r t   g i v e n   ` n o d e `   a t   ` p o s `   p o s i t i o n   o f   c h i l d   l i s t 
 	   *   @ p a r a m   { N o d e }   n o d e 
 	   *   @ p a r a m   { N u m b e r }   p o s 
 	   * / 
 	 i n s e r t A t ( n o d e ,   p o s )   { 
 	 	 i f   ( p o s   <   0   | |   p o s   >   t h i s . c h i l d r e n . l e n g t h )   { 
 	 	 	 t h r o w   n e w   E r r o r ( ' U n a b l e   t o   i n s e r t   n o d e :   p o s i t i o n   i s   o u t   o f   c h i l d   l i s t   r a n g e ' ) ; 
 	 	 } 
 
 	 	 c o n s t   p r e v   =   t h i s . c h i l d r e n [ p o s   -   1 ] ; 
 	 	 c o n s t   n e x t   =   t h i s . c h i l d r e n [ p o s ] ; 
 
 	 	 n o d e . r e m o v e ( ) ; 
 	 	 n o d e . p a r e n t   =   t h i s ; 
 	 	 t h i s . c h i l d r e n . s p l i c e ( p o s ,   0 ,   n o d e ) ; 
 
 	 	 i f   ( p r e v )   { 
 	 	 	 n o d e . p r e v i o u s   =   p r e v ; 
 	 	 	 p r e v . n e x t   =   n o d e ; 
 	 	 } 
 
 	 	 i f   ( n e x t )   { 
 	 	 	 n o d e . n e x t   =   n e x t ; 
 	 	 	 n e x t . p r e v i o u s   =   n o d e ; 
 	 	 } 
 	 } 
 
 	 / * * 
 	   *   R e m o v e s   g i v e n   c h i l d   f r o m   c u r r e n t   n o d e 
 	   *   @ p a r a m   { N o d e }   n o d e 
 	   * / 
 	 r e m o v e C h i l d ( n o d e )   { 
 	 	 c o n s t   i x   =   t h i s . c h i l d r e n . i n d e x O f ( n o d e ) ; 
 	 	 i f   ( i x   ! = =   - 1 )   { 
 	 	 	 t h i s . c h i l d r e n . s p l i c e ( i x ,   1 ) ; 
 	 	 	 i f   ( n o d e . p r e v i o u s )   { 
 	 	 	 	 n o d e . p r e v i o u s . n e x t   =   n o d e . n e x t ; 
 	 	 	 } 
 
 	 	 	 i f   ( n o d e . n e x t )   { 
 	 	 	 	 n o d e . n e x t . p r e v i o u s   =   n o d e . p r e v i o u s ; 
 	 	 	 } 
 
 	 	 	 n o d e . p a r e n t   =   n o d e . n e x t   =   n o d e . p r e v i o u s   =   n u l l ; 
 	 	 } 
 	 } 
 
 	 / * * 
 	   *   R e m o v e s   c u r r e n t   n o d e   f r o m   i t s   p a r e n t 
 	   * / 
 	 r e m o v e ( )   { 
 	 	 i f   ( t h i s . p a r e n t )   { 
 	 	 	 t h i s . p a r e n t . r e m o v e C h i l d ( t h i s ) ; 
 	 	 } 
 	 } 
 
 	 / * * 
 	   *   C r e a t e s   a   d e t a c h e d   c o p y   o f   c u r r e n t   n o d e 
 	   *   @ p a r a m   { B o o l e a n }   d e e p   C l o n e   n o d e   c o n t e n t s   a s   w e l l 
 	   *   @ r e t u r n   { N o d e } 
 	   * / 
 	 c l o n e ( d e e p )   { 
 	 	 c o n s t   c l o n e   =   n e w   N o d e ( t h i s . n a m e ) ; 
 	 	 c l o n e . v a l u e   =   t h i s . v a l u e ; 
 	 	 c l o n e . s e l f C l o s i n g   =   t h i s . s e l f C l o s i n g ; 
 	 	 i f   ( t h i s . r e p e a t )   { 
 	 	 	 c l o n e . r e p e a t   =   O b j e c t . a s s i g n ( { } ,   t h i s . r e p e a t ) ; 
 	 	 } 
 
 	 	 t h i s . _ a t t r i b u t e s . f o r E a c h ( a t t r   = >   c l o n e . s e t A t t r i b u t e ( a t t r . c l o n e ( ) ) ) ; 
 
 	 	 i f   ( d e e p )   { 
 	 	 	 t h i s . c h i l d r e n . f o r E a c h ( c h i l d   = >   c l o n e . a p p e n d C h i l d ( c h i l d . c l o n e ( t r u e ) ) ) ; 
 	 	 } 
 
 	 	 r e t u r n   c l o n e ; 
 	 } 
 
 	 / * * 
 	   *   W a l k s   o n   e a c h   d e s c e n d a n t   n o d e   a n d   i n v o k e s   g i v e n   ` f n `   f u n c t i o n   o n   i t . 
 	   *   T h e   f u n c t i o n   r e c e i v e s   t w o   a r g u m e n t s :   t h e   n o d e   i t s e l f   a n d   i t s   d e p t h   l e v e l 
 	   *   f r o m   c u r r e n t   n o d e .   I f   f u n c t i o n   r e t u r n s   ` f a l s e ` ,   i t   s t o p s   w a l k i n g 
 	   *   @ p a r a m   { F u n c t i o n }   f n 
 	   * / 
 	 w a l k ( f n ,   _ l e v e l )   { 
 	 	 _ l e v e l   =   _ l e v e l   | |   0 ; 
 	 	 l e t   c t x   =   t h i s . f i r s t C h i l d ; 
 
 	 	 w h i l e   ( c t x )   { 
 	 	 	 / /   i n   c a s e   i f   c o n t e x t   n o d e   w i l l   b e   d e t a c h e d   d u r i n g   ` f n `   c a l l 
 	 	 	 c o n s t   n e x t   =   c t x . n e x t ; 
 
 	 	 	 i f   ( f n ( c t x ,   _ l e v e l )   = = =   f a l s e   | |   c t x . w a l k ( f n ,   _ l e v e l   +   1 )   = = =   f a l s e )   { 
 	 	 	 	 r e t u r n   f a l s e ; 
 	 	 	 } 
 
 	 	 	 c t x   =   n e x t ; 
 	 	 } 
 	 } 
 
 	 / * * 
 	   *   A   h e l p e r   m e t h o d   f o r   t r a n s f o r m a t i o n   c h a i n i n g :   r u n s   g i v e n   ` f n `   f u n c t i o n   o n 
 	   *   c u r r e n t   n o d e   a n d   r e t u r n s   t h e   s a m e   n o d e 
 	   * / 
 	 u s e ( f n )   { 
 	 	 c o n s t   a r g s   =   [ t h i s ] ; 
 	 	 f o r   ( v a r   i   =   1 ;   i   <   a r g u m e n t s . l e n g t h ;   i + + )   { 
 	 	 	 a r g s . p u s h ( a r g u m e n t s [ i ] ) ; 
 	 	 } 
 
 	 	 f n . a p p l y ( n u l l ,   a r g s ) ; 
 	 	 r e t u r n   t h i s ; 
 	 } 
 
 	 t o S t r i n g ( )   { 
 	 	 c o n s t   a t t r s   =   t h i s . a t t r i b u t e s . m a p ( a t t r   = >   { 
 	 	 	 a t t r   =   t h i s . g e t A t t r i b u t e ( a t t r . n a m e ) ; 
 	 	 	 c o n s t   o p t   =   a t t r . o p t i o n s ; 
 	 	 	 l e t   o u t   =   ` $ { o p t   & &   o p t . i m p l i e d   ?   ' ! '   :   ' ' } $ { a t t r . n a m e   | |   ' ' } ` ; 
 	 	 	 i f   ( o p t   & &   o p t . b o o l e a n )   { 
 	 	 	 	 o u t   + =   ' . ' ; 
 	 	 	 }   e l s e   i f   ( a t t r . v a l u e   ! =   n u l l )   { 
 	 	 	 	 o u t   + =   ` = " $ { a t t r . v a l u e } " ` ; 
 	 	 	 } 
 	 	 	 r e t u r n   o u t ; 
 	 	 } ) ; 
 
 	 	 l e t   o u t   =   ` $ { t h i s . n a m e   | |   ' ' } ` ; 
 	 	 i f   ( a t t r s . l e n g t h )   { 
 	 	 	 o u t   + =   ` [ $ { a t t r s . j o i n ( '   ' ) } ] ` ; 
 	 	 } 
 
 	 	 i f   ( t h i s . v a l u e   ! =   n u l l )   { 
 	 	 	 o u t   + =   ` { $ { t h i s . v a l u e } } ` ; 
 	 	 } 
 
 	 	 i f   ( t h i s . s e l f C l o s i n g )   { 
 	 	 	 o u t   + =   ' / ' ; 
 	 	 } 
 
 	 	 i f   ( t h i s . r e p e a t )   { 
 	 	 	 o u t   + =   ` * $ { t h i s . r e p e a t . c o u n t   ?   t h i s . r e p e a t . c o u n t   :   ' ' } ` ; 
 	 	 	 i f   ( t h i s . r e p e a t . v a l u e   ! =   n u l l )   { 
 	 	 	 	 o u t   + =   ` @ $ { t h i s . r e p e a t . v a l u e } ` ; 
 	 	 	 } 
 	 	 } 
 
 	 	 r e t u r n   o u t ; 
 	 } 
 } 
 
 / * * 
   *   A t t r i b u t e   f a c t o r y 
   *   @ p a r a m     { S t r i n g | A t t r i b u t e | O b j e c t }   n a m e     A t t r i b u t e   n a m e   o r   a t t r i b u t e   d e s c r i p t o r 
   *   @ p a r a m     { * }   v a l u e   A t t r i b u t e   v a l u e 
   *   @ r e t u r n   { A t t r i b u t e } 
   * / 
 f u n c t i o n   c r e a t e A t t r i b u t e ( n a m e ,   v a l u e )   { 
 	 i f   ( n a m e   i n s t a n c e o f   A t t r i b u t e )   { 
 	 	 r e t u r n   n a m e ; 
 	 } 
 
 	 i f   ( t y p e o f   n a m e   = = =   ' s t r i n g ' )   { 
 	 	 r e t u r n   n e w   A t t r i b u t e ( n a m e ,   v a l u e ) ; 
 	 } 
 
 	 i f   ( n a m e   & &   t y p e o f   n a m e   = = =   ' o b j e c t ' )   { 
 	 	 r e t u r n   n e w   A t t r i b u t e ( n a m e . n a m e ,   n a m e . v a l u e ,   n a m e . o p t i o n s ) ; 
 	 } 
 } 
 
 / * * 
   *   @ p a r a m     { S t r i n g }   s t r 
   *   @ r e t u r n   { S t r i n g } 
   * / 
 f u n c t i o n   n o r m a l i z e ( s t r )   { 
 	 r e t u r n   S t r i n g ( s t r ) . t r i m ( ) ; 
 } 
 
 f u n c t i o n   u n i q u e C l a s s ( i t e m ,   i ,   a r r )   { 
 	 r e t u r n   i t e m   & &   a r r . i n d e x O f ( i t e m )   = = =   i ; 
 } 
 
 m o d u l e . e x p o r t s   =   N o d e ; 
 
 } , { } ] , 1 4 : [ f u n c t i o n ( r e q u i r e , m o d u l e , e x p o r t s ) { 
 ' u s e   s t r i c t ' ; 
 
 / * * 
   *   @ t y p e   { E m m e t O u t p u t P r o f i l e } 
   * / 
 v a r   d e f a u l t O p t i o n s   =   { 
 	 i n d e n t :   ' \ t ' , 
 	 t a g C a s e :   ' ' , 
 	 a t t r i b u t e C a s e :   ' ' , 
 	 a t t r i b u t e Q u o t e s :   ' d o u b l e ' , 
 	 f o r m a t :   t r u e , 
 	 f o r m a t S k i p :   [ ' h t m l ' ] , 
 	 f o r m a t F o r c e :   [ ' b o d y ' ] , 
 	 i n l i n e B r e a k :   3 , 
 	 c o m p a c t B o o l e a n A t t r i b u t e s :   f a l s e , 
 	 b o o l e a n A t t r i b u t e s :   [ ' c o n t e n t e d i t a b l e ' ,   ' s e a m l e s s ' ,   ' a s y n c ' ,   ' a u t o f o c u s ' , 
 	 	 ' a u t o p l a y ' ,   ' c h e c k e d ' ,   ' c o n t r o l s ' ,   ' d e f e r ' ,   ' d i s a b l e d ' ,   ' f o r m n o v a l i d a t e ' , 
 	 	 ' h i d d e n ' ,   ' i s m a p ' ,   ' l o o p ' ,   ' m u l t i p l e ' ,   ' m u t e d ' ,   ' n o v a l i d a t e ' ,   ' r e a d o n l y ' , 
 	 	 ' r e q u i r e d ' ,   ' r e v e r s e d ' ,   ' s e l e c t e d ' ,   ' t y p e m u s t m a t c h ' ] , 
 	 s e l f C l o s i n g S t y l e :   ' h t m l ' , 
 	 i n l i n e E l e m e n t s :   [ ' a ' ,   ' a b b r ' ,   ' a c r o n y m ' ,   ' a p p l e t ' ,   ' b ' ,   ' b a s e f o n t ' ,   ' b d o ' , 
 	 	 ' b i g ' ,   ' b r ' ,   ' b u t t o n ' ,   ' c i t e ' ,   ' c o d e ' ,   ' d e l ' ,   ' d f n ' ,   ' e m ' ,   ' f o n t ' ,   ' i ' , 
 	 	 ' i f r a m e ' ,   ' i m g ' ,   ' i n p u t ' ,   ' i n s ' ,   ' k b d ' ,   ' l a b e l ' ,   ' m a p ' ,   ' o b j e c t ' ,   ' q ' , 
 	 	 ' s ' ,   ' s a m p ' ,   ' s e l e c t ' ,   ' s m a l l ' ,   ' s p a n ' ,   ' s t r i k e ' ,   ' s t r o n g ' ,   ' s u b ' ,   ' s u p ' , 
 	 	 ' t e x t a r e a ' ,   ' t t ' ,   ' u ' ,   ' v a r ' ] 
 } ; 
 
 / * * 
   *   C r e a t e s   o u t p u t   p r o f i l e   f o r   g i v e n   o p t i o n s 
   * / 
 c l a s s   P r o f i l e   { 
 	 / * * 
 	   *   @ p a r a m   { E m m e t O u t p u t P r o f i l e }   o p t i o n s   
 	   * / 
         c o n s t r u c t o r ( o p t i o n s )   { 
 	 	 / * *   @ t y p e   { E m m e t O u t p u t P r o f i l e }   * / 
 	 	 t h i s . o p t i o n s   =   O b j e c t . a s s i g n ( { } ,   d e f a u l t O p t i o n s ,   o p t i o n s ) ; 
 	 	 t h i s . q u o t e C h a r   =   t h i s . o p t i o n s . a t t r i b u t e Q u o t e s   = = =   ' s i n g l e '   ?   ' \ ' '   :   ' " ' ; 
         } 
 
 	 / * * 
 	   *   R e t u r n s   v a l u e   o f   g i v e n   o p t i o n   n a m e 
 	   *   @ p a r a m   { S t r i n g }   n a m e 
 	   *   @ r e t u r n   { * } 
 	   * / 
 	 g e t ( n a m e )   { 
 	 	 r e t u r n   t h i s . o p t i o n s [ n a m e ] ; 
 	 } 
 
         / * * 
           *   Q u o t e   g i v e n   s t r i n g   a c c o r d i n g   t o   p r o f i l e 
           *   @ p a r a m   { S t r i n g }   s t r   S t r i n g   t o   q u o t e 
           *   @ r e t u r n   { S t r i n g } 
           * / 
         q u o t e ( s t r )   { 
                 r e t u r n   ` $ { t h i s . q u o t e C h a r } $ { s t r   ! =   n u l l   ?   s t r   :   ' ' } $ { t h i s . q u o t e C h a r } ` ; 
         } 
 
         / * * 
           *   O u t p u t   g i v e n   t a g   n a m e   a c c o r d i n g   t o   o p t i o n s 
           *   @ p a r a m   { S t r i n g }   n a m e 
           *   @ r e t u r n   { S t r i n g } 
           * / 
         n a m e ( n a m e )   { 
                 r e t u r n   s t r c a s e ( n a m e ,   t h i s . o p t i o n s . t a g C a s e ) ; 
         } 
 
 	 / * * 
 	   *   O u t p u t s   a t t r i b u t e   n a m e   a c c o r d i n g   t o   c u r r e n t   s e t t i n g s 
 	   *   @ p a r a m   { S t r i n g }   a t t r   A t t r i b u t e   n a m e 
 	   *   @ r e t u r n   { S t r i n g } 
 	   * / 
         a t t r i b u t e ( a t t r )   { 
                 r e t u r n   s t r c a s e ( a t t r ,   t h i s . o p t i o n s . a t t r i b u t e C a s e ) ; 
         } 
 
         / * * 
           *   C h e c k   i f   g i v e n   a t t r i b u t e   i s   b o o l e a n 
           *   @ p a r a m   { O b j e c t }   a t t r 
           *   @ r e t u r n   { B o o l e a n } 
           * / 
         i s B o o l e a n A t t r i b u t e ( a t t r )   { 
                 r e t u r n   a t t r . o p t i o n s . b o o l e a n 
 	 	 	 | |   t h i s . g e t ( ' b o o l e a n A t t r i b u t e s ' ) . i n d e x O f ( ( a t t r . n a m e   | |   ' ' ) . t o L o w e r C a s e ( ) )   ! = =   - 1 ; 
         } 
 
 	 / * * 
 	   *   R e t u r n s   a   t o k e n   f o r   s e l f - c l o s i n g   t a g ,   d e p e n d i n g   o n   c u r r e n t   o p t i o n s 
 	   *   @ r e t u r n   { S t r i n g } 
 	   * / 
 	 s e l f C l o s e ( )   { 
 	 	 s w i t c h   ( t h i s . o p t i o n s . s e l f C l o s i n g S t y l e )   { 
 	 	 	 c a s e   ' x h t m l ' :   r e t u r n   '   / ' ; 
 	 	 	 c a s e   ' x m l ' :       r e t u r n   ' / ' ; 
 	 	 	 d e f a u l t :             r e t u r n   ' ' ; 
 	 	 } 
 	 } 
 
 	 / * * 
 	   *   R e t u r n s   i n d e n t   f o r   g i v e n   l e v e l 
 	   *   @ p a r a m   { N u m b e r }   l e v e l   I n d e n t a t i o n   l e v e l 
 	   *   @ r e t u r n   { S t r i n g } 
 	   * / 
 	 i n d e n t ( l e v e l )   { 
 	 	 l e v e l   =   l e v e l   | |   0 ; 
 	 	 l e t   o u t p u t   =   ' ' ; 
 	 	 w h i l e   ( l e v e l - - )   { 
 	 	 	 o u t p u t   + =   t h i s . o p t i o n s . i n d e n t ; 
 	 	 } 
 
 	 	 r e t u r n   o u t p u t ; 
 	 } 
 
 	 / * * 
 	   *   C h e c k   i f   g i v e n   t a g   n a m e   b e l o n g s   t o   i n l i n e - l e v e l   e l e m e n t 
 	   *   @ p a r a m   { O b j e c t | S t r i n g }   n o d e   P a r s e d   n o d e   o r   t a g   n a m e 
 	   *   @ r e t u r n   { B o o l e a n } 
 	   * / 
 	 i s I n l i n e ( n o d e )   { 
                 i f   ( t y p e o f   n o d e   = = =   ' s t r i n g ' )   { 
                         r e t u r n   t h i s . g e t ( ' i n l i n e E l e m e n t s ' ) . i n d e x O f ( n o d e . t o L o w e r C a s e ( ) )   ! = =   - 1 ; 
                 } 
 
                 / /   i n l i n e   n o d e   i s   a   n o d e   e i t h e r   w i t h   i n l i n e - l e v e l   n a m e   o r   t e x t - o n l y   n o d e 
                 r e t u r n   n o d e . n a m e   ! =   n u l l   ?   t h i s . i s I n l i n e ( n o d e . n a m e )   :   n o d e . i s T e x t O n l y ; 
 	 } 
 
 	 / * * 
 	   *   O u t p u t s   f o r m a t t e d   f i e l d   f o r   g i v e n   p a r a m s 
 	   *   @ p a r a m   { N u m b e r }   i n d e x   F i e l d   i n d e x 
 	   *   @ p a r a m   { S t r i n g }   [ p l a c e h o l d e r ]   F i e l d   p l a c e h o l d e r ,   c a n   b e   e m p t y 
 	   *   @ r e t u r n   { S t r i n g } 
 	   * / 
 	 f i e l d ( i n d e x ,   p l a c e h o l d e r )   { 
 	 	 r e t u r n   t h i s . o p t i o n s . f i e l d ( i n d e x ,   p l a c e h o l d e r ) ; 
 	 } 
 } 
 f u n c t i o n   s t r c a s e ( s t r i n g ,   t y p e )   { 
         i f   ( t y p e )   { 
                 r e t u r n   t y p e   = = =   ' u p p e r '   ?   s t r i n g . t o U p p e r C a s e ( )   :   s t r i n g . t o L o w e r C a s e ( ) ; 
 	 } 
 	 
         r e t u r n   s t r i n g ; 
 } 
 
 m o d u l e . e x p o r t s   =   P r o f i l e ; 
 
 } , { } ] , 1 5 : [ f u n c t i o n ( r e q u i r e , m o d u l e , e x p o r t s ) { 
 ' u s e   s t r i c t ' ; 
 
 f u n c t i o n   _ i n t e r o p D e f a u l t   ( e x )   {   r e t u r n   ( e x   & &   ( t y p e o f   e x   = = =   ' o b j e c t ' )   & &   ' d e f a u l t '   i n   e x )   ?   e x [ ' d e f a u l t ' ]   :   e x ;   } 
 
 v a r   p a r s e F i e l d s   =   _ i n t e r o p D e f a u l t ( r e q u i r e ( ' @ e m m e t i o / f i e l d - p a r s e r ' ) ) ; 
 
 c o n s t   d e f a u l t F i e l d s R e n d e r e r   =   t e x t   = >   t e x t ; 
 
 / * * 
   *   O u t p u t   n o d e   i s   a n   o b j e c t   c o n t a i n i n g   g e n e r a t e d   o u t p u t   f o r   g i v e n   E m m e t 
   *   a b b r e v i a t i o n   n o d e .   O u t p u t   n o d e   c a n   b e   p a s s e d   t o   v a r i o u s   p r o c e s s o r s   t h a t 
   *   m a y   s h a p e - u p   f i n a l   n o d e   o u t p u t .   T h e   f i n a l   o u t p u t   i s   s i m p l y   a   c o n c a t e n a t i o n 
   *   o f   ` . o p e n ` ,   ` . t e x t `   a n d   ` . c l o s e `   p r o p e r t i e s   a n d   i t s   ` . b e f o r e * `   a n d   ` . a f t e r * ` 
   *   s a t e l l i t e s 
   *   @ p a r a m   { N o d e }           n o d e                       P a r s e d   E m m e t   a b b r e v i a t i o n   n o d e 
   *   @ p a r a m   { F u n c t i o n }   f i e l d s R e n d e r e r   A   f u n c t i o n   f o r   r e n d e r i n g   f i e l d e d   t e x t   ( t e x t   w i t h 
   *   t a b s t o p s )   f o r   c u r r e n t   n o d e .   @ s e e   . / r e n d e r . j s   f o r   d e t a i l s 
   * / 
 c l a s s   O u t p u t N o d e   { 
 	 c o n s t r u c t o r ( n o d e ,   f i e l d s R e n d e r e r ,   o p t i o n s )   { 
 	 	 i f   ( t y p e o f   f i e l d s R e n d e r e r   = = =   ' o b j e c t ' )   { 
 	 	 	 o p t i o n s   =   f i e l d s R e n d e r e r ; 
 	 	 	 f i e l d s R e n d e r e r   =   n u l l ; 
 	 	 } 
 
 	 	 t h i s . n o d e   =   n o d e ; 
 	 	 t h i s . _ f i e l d s R e n d e r e r   =   f i e l d s R e n d e r e r   | |   d e f a u l t F i e l d s R e n d e r e r ; 
 
 	 	 t h i s . o p e n   =   n u l l ; 
 	 	 t h i s . b e f o r e O p e n   =   ' ' ; 
 	 	 t h i s . a f t e r O p e n   =   ' ' ; 
 
 	 	 t h i s . c l o s e   =   n u l l ; 
 	 	 t h i s . b e f o r e C l o s e   =   ' ' ; 
 	 	 t h i s . a f t e r C l o s e   =   ' ' ; 
 
 	 	 t h i s . t e x t   =   n u l l ; 
 	 	 t h i s . b e f o r e T e x t   =   ' ' ; 
 	 	 t h i s . a f t e r T e x t   =   ' ' ; 
 
 	 	 t h i s . i n d e n t   =   ' ' ; 
 	 	 t h i s . n e w l i n e   =   ' ' ; 
 
 	 	 i f   ( o p t i o n s )   { 
                         O b j e c t . a s s i g n ( t h i s ,   o p t i o n s ) ; 
                 } 
 	 } 
 
 	 c l o n e ( )   { 
 	 	 r e t u r n   n e w   t h i s . c o n s t r u c t o r ( t h i s . n o d e ,   t h i s ) ; 
 	 } 
 
 	 / * * 
 	   *   P r o p e r l y   i n d e n t s   g i v e n   m u l t i l i n e   t e x t 
 	   *   @ p a r a m   { S t r i n g }   t e x t 
 	   * / 
 	 i n d e n t T e x t ( t e x t )   { 
 	 	 c o n s t   l i n e s   =   s p l i t B y L i n e s ( t e x t ) ; 
                 i f   ( l i n e s . l e n g t h   = = =   1 )   { 
                         / /   n o   n e w l i n e s ,   n o t h i n g   t o   i n d e n t 
                         r e t u r n   t e x t ; 
                 } 
 
                 / /   N o   n e w l i n e   a n d   n o   i n d e n t   m e a n s   n o   f o r m a t t i n g   a t   a l l : 
                 / /   i n   t h i s   c a s e   w e   s h o u l d   r e p l a c e   n e w l i n e s   w i t h   s p a c e s 
                 c o n s t   n l   =   ( ! t h i s . n e w l i n e   & &   ! t h i s . i n d e n t )   ?   '   '   :   t h i s . n e w l i n e ; 
                 r e t u r n   l i n e s . m a p ( ( l i n e ,   i )   = >   i   ?   t h i s . i n d e n t   +   l i n e   :   l i n e ) . j o i n ( n l ) ; 
 	 } 
 
 	 / * * 
 	   *   R e n d e r s   g i v e n   t e x t   w i t h   f i e l d s 
 	   *   @ p a r a m   { S t r i n g }   t e x t 
 	   *   @ r e t u r n   { S t r i n g } 
 	   * / 
 	 r e n d e r F i e l d s ( t e x t )   { 
 	 	 r e t u r n   t h i s . _ f i e l d s R e n d e r e r ( t e x t ) ; 
 	 } 
 
 	 t o S t r i n g ( c h i l d r e n )   { 
 	 	 c o n s t   o p e n   =   t h i s . _ w r a p ( t h i s . o p e n ,   t h i s . b e f o r e O p e n ,   t h i s . a f t e r O p e n ) ; 
 	 	 c o n s t   c l o s e   =   t h i s . _ w r a p ( t h i s . c l o s e ,   t h i s . b e f o r e C l o s e ,   t h i s . a f t e r C l o s e ) ; 
 	 	 c o n s t   t e x t   =   t h i s . _ w r a p ( t h i s . t e x t ,   t h i s . b e f o r e T e x t ,   t h i s . a f t e r T e x t ) ; 
 
 	 	 r e t u r n   o p e n   +   t e x t   +   ( c h i l d r e n   ! =   n u l l   ?   c h i l d r e n   :   ' ' )   +   c l o s e ; 
 	 } 
 
 	 _ w r a p ( s t r ,   b e f o r e ,   a f t e r )   { 
 	 	 b e f o r e   =   b e f o r e   ! =   n u l l   ?   b e f o r e   :   ' ' ; 
 	 	 a f t e r   =   a f t e r   ! =   n u l l   ?   a f t e r   :   ' ' ; 
 
                 / /   a u t o m a t i c a l l y   t r i m   w h i t e s p a c e   f o r   n o n - e m p t y   w r a p s 
                 i f   ( s t r   ! =   n u l l )   { 
                         s t r   =   b e f o r e   ?   s t r . r e p l a c e ( / ^ \ s + / ,   ' ' )   :   s t r ; 
                         s t r   =   a f t e r   ?   s t r . r e p l a c e ( / \ s + $ / ,   ' ' )   :   s t r ; 
                         r e t u r n   b e f o r e   +   t h i s . i n d e n t T e x t ( s t r )   +   a f t e r ; 
                 } 
 
                 r e t u r n   ' ' ; 
 	 } 
 } 
 
 / * * 
   *   S p l i t s   g i v e n   t e x t   b y   l i n e s 
   *   @ p a r a m     { S t r i n g }   t e x t 
   *   @ r e t u r n   { S t r i n g [ ] } 
   * / 
 f u n c t i o n   s p l i t B y L i n e s ( t e x t )   { 
 	 r e t u r n   ( t e x t   | |   ' ' ) . s p l i t ( / \ r \ n | \ r | \ n / g ) ; 
 } 
 
 / * * 
   *   D e f a u l t   o u t p u t   o f   f i e l d   ( t a b s t o p ) 
   *   @ p a r a m     { N u m b e r }   i n d e x               F i e l d   i n d e x 
   *   @ p a r a m     { S t r i n g }   p l a c e h o l d e r   F i e l d   p l a c e h o l d e r ,   c a n   b e   n u l l 
   *   @ r e t u r n   { S t r i n g } 
   * / 
 c o n s t   d e f a u l t F i e l d   =   ( i n d e x ,   p l a c e h o l d e r )   = >   ( p l a c e h o l d e r   | |   ' ' ) ; 
 
 / * * 
   *   R e n d e r s   g i v e n   p a r s e d   a b b r e v i a t i o n   ` t r e e `   v i a   ` f o r m a t t e r `   f u n c t i o n . 
 
   *   @ p a r a m   { N o d e }           t r e e             P a r s e d   E m m e t   a b b r e v i a t i o n 
   *   @ p a r a m   { F u n c t i o n }   [ f i e l d ]       O p t i o n a l   f u n c t i o n   t o   f o r m a t   f i e l d / t a b s t o p   ( @ s e e   ` d e f a u l t F i e l d ` ) 
   *   @ p a r a m   { F u n c t i o n }   f o r m a t t e r   O u t p u t   f o r m a t t e r   f u n c t i o n .   I t   t a k e s   a n   o u t p u t   n o d e  
   *   a   s p e c i a l   w r a p p e r   f o r   p a r s e d   n o d e   t h a t   h o l d s   f o r m a t t i n g   a n d   o u t p u t   p r o p e r t i e s  
   *   a n d   u p d a t e s   i t s   o u t p u t   p r o p e r t i e s   t o   s h a p e - u p   n o d e  s   o u t p u t . 
   *   F u n c t i o n   a r g u m e n t s : 
   *   	    ` o u t N o d e ` :   O u t p u t N o d e 
   *   	    ` r e n d e r F i e l d s ` :   a   h e l p e r   f u n c t i o n   t h a t   p a r s e s   f i e l d s / t a b s t o p s   f r o m   g i v e n 
   *   	       t e x t   a n d   r e p l a c e s   t h e m   w i t h   ` f i e l d `   f u n c t i o n   o u t p u t . 
   *   	       I t   a l s o   t a k e s   c a r e   a b o u t   f i e l d   i n d i c i e s   a n d   e n s u r e s   t h a t   t h e   s a m e   i n d i c i e s 
   *   	       f r o m   d i f f e r e n t   n o d e s   w o n  t   c o l l i d e 
   * / 
 f u n c t i o n   r e n d e r ( t r e e ,   f i e l d ,   f o r m a t t e r )   { 
         i f   ( t y p e o f   f o r m a t t e r   = = =   ' u n d e f i n e d ' )   { 
                 f o r m a t t e r   =   f i e l d ; 
                 f i e l d   =   n u l l ; 
         } 
 
         f i e l d   =   f i e l d   | |   d e f a u l t F i e l d ; 
 
         / /   E a c h   n o d e   m a y   c o n t a i n   f i e l d s   l i k e   ` $ { 1 : p l a c e h o l d e r } ` . 
 	 / /   S i n c e   m o s t   m o d e r n   e d i t o r s   w i l l   l i n k   a l l   f i e l d s   w i t h   t h e   s a m e 
 	 / /   i n d e x ,   w e   h a v e   t o   e n s u r e   t h a t   d i f f e r e n t   n o d e s   h a s   t h e i r   o w n   i n d i c i e s . 
 	 / /   W e  l l   u s e   t h i s   ` f i e l d S t a t e `   o b j e c t   t o   g l o b a l l y   i n c r e m e n t   f i e l d   i n d i c e s 
 	 / /   d u r i n g   o u t p u t 
 	 c o n s t   f i e l d S t a t e   =   {   i n d e x :   1   } ; 
 
         c o n s t   f i e l d s R e n d e r e r   =   t e x t   = >   t e x t   = =   n u l l 
                 ?   f i e l d ( f i e l d S t a t e . i n d e x + + ) 
                 :   g e t F i e l d s M o d e l ( t e x t ,   f i e l d S t a t e ) . m a r k ( f i e l d ) ; 
 
 	 r e t u r n   r u n ( t r e e . c h i l d r e n ,   f o r m a t t e r ,   f i e l d s R e n d e r e r ) ; 
 } 
 
 f u n c t i o n   r u n ( n o d e s ,   f o r m a t t e r ,   f i e l d s R e n d e r e r )   { 
 	 r e t u r n   n o d e s . m a p ( n o d e   = >   { 
 	 	 c o n s t   o u t N o d e   =   f o r m a t t e r ( n e w   O u t p u t N o d e ( n o d e ,   f i e l d s R e n d e r e r ) ) ; 
 	 	 r e t u r n   o u t N o d e   ?   o u t N o d e . t o S t r i n g ( r u n ( n o d e . c h i l d r e n ,   f o r m a t t e r ,   f i e l d s R e n d e r e r ) )   :   ' ' ; 
 	 } ) . j o i n ( ' ' ) ; 
 } 
 
 / * * 
   *   R e t u r n s   f i e l d s   ( t a b - s t o p s )   m o d e l   w i t h   p r o p e r l y   u p d a t e d   i n d i c e s   t h a t   w o n  t 
   *   c o l l i d e   w i t h   f i e l d s   i n   o t h e r   n o d e s   o f   f o p r m a t t e d   t r e e 
   *   @ p a r a m     { S t r i n g | O b j e c t }   t e x t   T e x t   t o   g e t   f i e l d s   m o d e l   f r o m   o r   m o d e l   i t s e l f 
   *   @ p a r a m     { O b j e c t }   f i e l d S t a t e   A b b r e v i a t i o n   t r e e - w i d e   f i e l d   s t a t e   r e f e r e n c e 
   *   @ r e t u r n   { O b j e c t }   F i e l d   m o d e l 
   * / 
 f u n c t i o n   g e t F i e l d s M o d e l ( t e x t ,   f i e l d S t a t e )   { 
 	 c o n s t   m o d e l   =   t y p e o f   t e x t   = = =   ' o b j e c t '   ?   t e x t   :   p a r s e F i e l d s ( t e x t ) ; 
         l e t   l a r g e s t I n d e x   =   - 1 ; 
 
         m o d e l . f i e l d s . f o r E a c h ( f i e l d   = >   { 
 	 	 f i e l d . i n d e x   + =   f i e l d S t a t e . i n d e x ; 
 	 	 i f   ( f i e l d . i n d e x   >   l a r g e s t I n d e x )   { 
 	 	 	 l a r g e s t I n d e x   =   f i e l d . i n d e x ; 
 	 	 } 
 	 } ) ; 
 
 	 i f   ( l a r g e s t I n d e x   ! = =   - 1 )   { 
 	 	 f i e l d S t a t e . i n d e x   =   l a r g e s t I n d e x   +   1 ; 
 	 } 
 
         r e t u r n   m o d e l ; 
 } 
 
 m o d u l e . e x p o r t s   =   r e n d e r ; 
 
 } , { " @ e m m e t i o / f i e l d - p a r s e r " : 6 } ] , 1 6 : [ f u n c t i o n ( r e q u i r e , m o d u l e , e x p o r t s ) { 
 ' u s e   s t r i c t ' ; 
 
 c l a s s   S n i p p e t   { 
         c o n s t r u c t o r ( k e y ,   v a l u e )   { 
                 t h i s . k e y   =   k e y ; 
                 t h i s . v a l u e   =   v a l u e ; 
         } 
 } 
 
 c l a s s   S n i p p e t s S t o r a g e   { 
         c o n s t r u c t o r ( d a t a )   { 
                 t h i s . _ s t r i n g   =   n e w   M a p ( ) ; 
                 t h i s . _ r e g e x p   =   n e w   M a p ( ) ; 
                 t h i s . _ d i s a b l e d   =   f a l s e ; 
 
                 t h i s . l o a d ( d a t a ) ; 
         } 
 
         g e t   d i s a b l e d ( )   { 
                 r e t u r n   t h i s . _ d i s a b l e d ; 
         } 
 
         / * * 
           *   D i s a b l e s   c u r r e n t   s t o r e .   A   d i s a b l e d   s t o r e   a l w a y s   r e t u r n s   ` u n d e f i n e d ` 
           *   o n   ` g e t ( ) `   m e t h o d 
           * / 
         d i s a b l e ( )   { 
                 t h i s . _ d i s a b l e d   =   t r u e ; 
         } 
 
         / * * 
           *   E n a b l e s   c u r r e n t   s t o r e . 
           * / 
         e n a b l e ( )   { 
                 t h i s . _ d i s a b l e d   =   f a l s e ; 
         } 
 
         / * * 
           *   R e g i s t e r s   a   n e w   s n i p p e t   i t e m 
           *   @ p a r a m   { S t r i n g | R e g e x p }   k e y 
           *   @ p a r a m   { S t r i n g | F u n c t i o n }   v a l u e 
           * / 
         s e t ( k e y ,   v a l u e )   { 
                 i f   ( t y p e o f   k e y   = = =   ' s t r i n g ' )   { 
                         k e y . s p l i t ( ' | ' ) . f o r E a c h ( k   = >   t h i s . _ s t r i n g . s e t ( k ,   n e w   S n i p p e t ( k ,   v a l u e ) ) ) ; 
                 }   e l s e   i f   ( k e y   i n s t a n c e o f   R e g E x p )   { 
                         t h i s . _ r e g e x p . s e t ( k e y ,   n e w   S n i p p e t ( k e y ,   v a l u e ) ) ; 
                 }   e l s e   { 
                         t h r o w   n e w   E r r o r ( ' U n k n o w   s n i p p e t   k e y :   '   +   k e y ) ; 
                 } 
 
                 r e t u r n   t h i s ; 
         } 
 
         / * * 
           *   R e t u r n s   a   s n i p p e t   m a t c h i n g   g i v e n   k e y .   I t   f i r s t   t r i e s   t o   f i n d   s n i p p e t 
           *   e x a c t   m a t c h   i n   a   s t r i n g   k e y   m a p ,   t h e n   t r i e s   t o   m a t c h   o n e   w i t h   r e g e x p   k e y 
           *   @ p a r a m   { S t r i n g }   k e y 
           *   @ r e t u r n   { S n i p p e t } 
           * / 
         g e t ( k e y )   { 
                 i f   ( t h i s . d i s a b l e d )   { 
                         r e t u r n   u n d e f i n e d ; 
                 } 
 
                 i f   ( t h i s . _ s t r i n g . h a s ( k e y ) )   { 
                         r e t u r n   t h i s . _ s t r i n g . g e t ( k e y ) ; 
                 } 
 
                 c o n s t   k e y s   =   A r r a y . f r o m ( t h i s . _ r e g e x p . k e y s ( ) ) ; 
                 f o r   ( l e t   i   =   0 ,   i l   =   k e y s . l e n g t h ;   i   <   i l ;   i + + )   { 
                         i f   ( k e y s [ i ] . t e s t ( k e y ) )   { 
                                 r e t u r n   t h i s . _ r e g e x p . g e t ( k e y s [ i ] ) ; 
                         } 
                 } 
         } 
 
         / * * 
           *   B a t c h   l o a d   o f   s n i p p e t s   d a t a 
           *   @ p a r a m   { O b j e c t | M a p }   d a t a 
           * / 
         l o a d ( d a t a )   { 
                 t h i s . r e s e t ( ) ; 
                 i f   ( d a t a   i n s t a n c e o f   M a p )   { 
                         d a t a . f o r E a c h ( ( v a l u e ,   k e y )   = >   t h i s . s e t ( k e y ,   v a l u e ) ) ; 
                 }   e l s e   i f   ( d a t a   & &   t y p e o f   d a t a   = = =   ' o b j e c t ' )   { 
                         O b j e c t . k e y s ( d a t a ) . f o r E a c h ( k e y   = >   t h i s . s e t ( k e y ,   d a t a [ k e y ] ) ) ; 
                 } 
         } 
 
         / * * 
           *   C l e a r s   a l l   s t o r e d   s n i p p e t s 
           * / 
         r e s e t ( )   { 
                 t h i s . _ s t r i n g . c l e a r ( ) ; 
                 t h i s . _ r e g e x p . c l e a r ( ) ; 
         } 
 
         / * * 
           *   R e t u r n s   a l l   a v a i l a b l e   s n i p p e t s   f r o m   g i v e n   s t o r e 
           * / 
         v a l u e s ( )   { 
                 i f   ( t h i s . d i s a b l e d )   { 
                         r e t u r n   [ ] ; 
                 } 
                 
                 c o n s t   s t r i n g   =   A r r a y . f r o m ( t h i s . _ s t r i n g . v a l u e s ( ) ) ; 
                 c o n s t   r e g e x p   =   A r r a y . f r o m ( t h i s . _ r e g e x p . v a l u e s ( ) ) ; 
                 r e t u r n   s t r i n g . c o n c a t ( r e g e x p ) ; 
         } 
 } 
 
 / * * 
   *   A   s n i p p e t s   r e g i s t r y .   C o n t a i n s   s n i p p e t s ,   s e p a r a t e d   b y   s t o r e   a n d   s o r t e d   b y 
   *   p r i o r i t y :   a   s t o r e   w i t h   h i g h e r   p r i o r i t y   t a k e s   p r e c e d e n c e   w h e n   r e s o l v i n g   s n i p p e t 
   *   f o r   g i v e n   k e y 
   * / 
 c l a s s   S n i p p e t s R e g i s t r y   { 
         / * * 
           *   C r e a t e s   s n i p p e t s   r e g i s t r y ,   f i l l e d   w i t h   g i v e n   ` d a t a ` 
           *   @ p a r a m   { O b j e c t | A r r a y }   d a t a   R e g i s t r y   s n i p p e t s .   I f   a r r a y   i s   g i v e n ,   a d d s   i t e m s 
           *   f r o m   a r r a y   i n   o r d e r   o f   p r e c e d e n c e ,   r e g i s t e r s   g l o b a l   s n i p p e t s   o t h e r w i s e 
           * / 
         c o n s t r u c t o r ( d a t a )   { 
                 t h i s . _ r e g i s t r y   =   [ ] ; 
 
                 i f   ( A r r a y . i s A r r a y ( d a t a ) )   { 
                         d a t a . f o r E a c h ( ( s n i p p e t s ,   l e v e l )   = >   t h i s . a d d ( l e v e l ,   s n i p p e t s ) ) ; 
                 }   e l s e   i f   ( t y p e o f   d a t a   = = =   ' o b j e c t ' )   { 
                         t h i s . a d d ( d a t a ) ; 
                 } 
         } 
 
         / * * 
           *   R e t u r n   s t o r e   f o r   g i v e n   l e v e l 
           *   @ p a r a m   { N u m b e r }   l e v e l 
           *   @ r e t u r n   { S n i p p e t s S t o r a g e } 
           * / 
         g e t ( l e v e l )   { 
                 f o r   ( l e t   i   =   0 ;   i   <   t h i s . _ r e g i s t r y . l e n g t h ;   i + + )   { 
                         c o n s t   i t e m   =   t h i s . _ r e g i s t r y [ i ] ; 
                         i f   ( i t e m . l e v e l   = = =   l e v e l )   { 
                                 r e t u r n   i t e m . s t o r e ; 
                         } 
                 } 
         } 
 
         / * * 
           *   A d d s   n e w   s t o r e   f o r   g i v e n   l e v e l 
           *   @ p a r a m   { N u m b e r }   [ l e v e l ]   S t o r e   l e v e l   ( p r i o r i t y ) .   S t o r e   w i t h   h i g h e r   l e v e l 
           *   t a k e s   p r e c e d e n c e   w h e n   r e s o l v i n g   s n i p p e t s 
           *   @ p a r a m   { O b j e c t }   [ s n i p p e t s ]   A   s n i p p e t s   d a t a   f o r   n e w   s t o r e 
           *   @ r e t u r n   { S n i p e t s S t o r a g e } 
           * / 
         a d d ( l e v e l ,   s n i p p e t s )   { 
                 i f   ( l e v e l   ! =   n u l l   & &   t y p e o f   l e v e l   = = =   ' o b j e c t ' )   { 
                         s n i p p e t s   =   l e v e l ; 
                         l e v e l   =   0 ; 
                 } 
 
                 c o n s t   s t o r e   =   n e w   S n i p p e t s S t o r a g e ( s n i p p e t s ) ; 
 
                 / /   r e m o v e   p r e v i o u s   s t o r e   f r o m   s a m e   l e v e l 
                 t h i s . r e m o v e ( l e v e l ) ; 
 
                 t h i s . _ r e g i s t r y . p u s h ( { l e v e l ,   s t o r e } ) ; 
                 t h i s . _ r e g i s t r y . s o r t ( ( a ,   b )   = >   b . l e v e l   -   a . l e v e l ) ; 
 
                 r e t u r n   s t o r e ; 
         } 
 
         / * * 
           *   R e m o v e   r e g i s t r y   w i t h   g i v e n   l e v e l   o r   s t o r e 
           *   @ p a r a m   { N u m b e r | S n i p p e t s S t o r a g e }   d a t a   E i t h e r   l e v e l   o r   s n i p p e t s   s t o r e 
           * / 
         r e m o v e ( d a t a )   { 
                 t h i s . _ r e g i s t r y   =   t h i s . _ r e g i s t r y 
                 . f i l t e r ( i t e m   = >   i t e m . l e v e l   ! = =   d a t a   & &   i t e m . s t o r e   ! = =   d a t a ) ; 
         } 
 
         / * * 
           *   R e t u r n s   s n i p p e t   f r o m   r e g i s t r y   t h a t   m a t c h e s   g i v e n   n a m e 
           *   @ p a r a m   { S t r i n g }   n a m e 
           *   @ r e t u r n   { S n i p p e t } 
           * / 
         r e s o l v e ( n a m e )   { 
                 f o r   ( l e t   i   =   0 ;   i   <   t h i s . _ r e g i s t r y . l e n g t h ;   i + + )   { 
                         c o n s t   s n i p p e t   =   t h i s . _ r e g i s t r y [ i ] . s t o r e . g e t ( n a m e ) ; 
                         i f   ( s n i p p e t )   { 
                                 r e t u r n   s n i p p e t ; 
                         } 
                 } 
         } 
 
         / * * 
           *   R e t u r n s   a l l   a v a i l a b l e   s n i p p e t s   f r o m   c u r r e n t   r e g i s t r y .   S n i p p e t s   w i t h   t h e 
           *   s a m e   k e y   a r e   r e s o l v e d   b y   t h e i r   s t o r a g e   p r i o r i t y . 
           *   @ p a r a m   { O b j e c t }   o p t i o n s 
           *   @ p a r a m   { O b j e c t }   o p t i o n s . t y p e   R e t u r n   s n i p p e t s   o n l y   o f   g i v e n   t y p e :   ' s t r i n g ' 
           *   o r   ' r e g e x p ' .   R e t u r n s   a l l   s n i p p e t s   i f   n o t   d e f i n e d 
           *   @ r e t u r n   { A r r a y } 
           * / 
         a l l ( o p t i o n s )   { 
                 o p t i o n s   =   o p t i o n s   | |   { } ; 
                 c o n s t   r e s u l t   =   n e w   M a p ( ) ; 
 
                 c o n s t   f i l l R e s u l t   =   s n i p p e t   = >   { 
                         c o n s t   t y p e   =   s n i p p e t . k e y   i n s t a n c e o f   R e g E x p   ?   ' r e g e x p '   :   ' s t r i n g ' ; 
                         i f   ( ( ! o p t i o n s . t y p e   | |   o p t i o n s . t y p e   = = =   t y p e )   & &   ! r e s u l t . h a s ( s n i p p e t . k e y ) )   { 
                                 r e s u l t . s e t ( s n i p p e t . k e y ,   s n i p p e t ) ; 
                         } 
                 } ; 
 
                 t h i s . _ r e g i s t r y . f o r E a c h ( i t e m   = >   { 
                         i t e m . s t o r e . v a l u e s ( ) . f o r E a c h ( f i l l R e s u l t ) ; 
                 } ) ; 
 
                 r e t u r n   A r r a y . f r o m ( r e s u l t . v a l u e s ( ) ) ; 
         } 
 
         / * * 
           *   R e m o v e s   a l l   s t o r e s   f r o m   r e g i s t r y 
           * / 
         c l e a r ( )   { 
                 t h i s . _ r e g i s t r y . l e n g t h   =   0 ; 
         } 
 } 
 
 m o d u l e . e x p o r t s   =   S n i p p e t s R e g i s t r y ; 
 
 } , { } ] , 1 7 : [ f u n c t i o n ( r e q u i r e , m o d u l e , e x p o r t s ) { 
 ' u s e   s t r i c t ' ; 
 
 v a r   h t m l   =   { 
 	 " a " :   " a [ h r e f ] " , 
 	 " a : b l a n k " :   " a [ h r e f = ' h t t p : / / $ { 0 } '   t a r g e t = ' _ b l a n k '   r e l = ' n o o p e n e r   n o r e f e r r e r ' ] " , 
 	 " a : l i n k " :   " a [ h r e f = ' h t t p : / / $ { 0 } ' ] " , 
 	 " a : m a i l " :   " a [ h r e f = ' m a i l t o : $ { 0 } ' ] " , 
 	 " a : t e l " :   " a [ h r e f = ' t e l : + $ { 0 } ' ] " , 
 	 " a b b r " :   " a b b r [ t i t l e ] " , 
 	 " a c r | a c r o n y m " :   " a c r o n y m [ t i t l e ] " , 
 	 " b a s e " :   " b a s e [ h r e f ] / " , 
 	 " b a s e f o n t " :   " b a s e f o n t / " , 
 	 " b r " :   " b r / " , 
 	 " f r a m e " :   " f r a m e / " , 
 	 " h r " :   " h r / " , 
 	 " b d o " :   " b d o [ d i r ] " , 
 	 " b d o : r " :   " b d o [ d i r = r t l ] " , 
 	 " b d o : l " :   " b d o [ d i r = l t r ] " , 
 	 " c o l " :   " c o l / " , 
 	 " l i n k " :   " l i n k [ r e l = s t y l e s h e e t   h r e f ] / " , 
 	 " l i n k : c s s " :   " l i n k [ h r e f = ' $ { 1 : s t y l e } . c s s ' ] " , 
 	 " l i n k : p r i n t " :   " l i n k [ h r e f = ' $ { 1 : p r i n t } . c s s '   m e d i a = p r i n t ] " , 
 	 " l i n k : f a v i c o n " :   " l i n k [ r e l = ' s h o r t c u t   i c o n '   t y p e = i m a g e / x - i c o n   h r e f = ' $ { 1 : f a v i c o n . i c o } ' ] " , 
 	 " l i n k : m f | l i n k : m a n i f e s t " :   " l i n k [ r e l = ' m a n i f e s t '   h r e f = ' $ { 1 : m a n i f e s t . j s o n } ' ] " , 
 	 " l i n k : t o u c h " :   " l i n k [ r e l = a p p l e - t o u c h - i c o n   h r e f = ' $ { 1 : f a v i c o n . p n g } ' ] " , 
 	 " l i n k : r s s " :   " l i n k [ r e l = a l t e r n a t e   t y p e = a p p l i c a t i o n / r s s + x m l   t i t l e = R S S   h r e f = ' $ { 1 : r s s . x m l } ' ] " , 
 	 " l i n k : a t o m " :   " l i n k [ r e l = a l t e r n a t e   t y p e = a p p l i c a t i o n / a t o m + x m l   t i t l e = A t o m   h r e f = ' $ { 1 : a t o m . x m l } ' ] " , 
 	 " l i n k : i m | l i n k : i m p o r t " :   " l i n k [ r e l = i m p o r t   h r e f = ' $ { 1 : c o m p o n e n t } . h t m l ' ] " , 
 	 " m e t a " :   " m e t a / " , 
 	 " m e t a : u t f " :   " m e t a [ h t t p - e q u i v = C o n t e n t - T y p e   c o n t e n t = ' t e x t / h t m l ; c h a r s e t = U T F - 8 ' ] " , 
 	 " m e t a : v p " :   " m e t a [ n a m e = v i e w p o r t   c o n t e n t = ' w i d t h = $ { 1 : d e v i c e - w i d t h } ,   i n i t i a l - s c a l e = $ { 2 : 1 . 0 } ' ] " , 
 	 " m e t a : c o m p a t " :   " m e t a [ h t t p - e q u i v = X - U A - C o m p a t i b l e   c o n t e n t = ' $ { 1 : I E = 7 } ' ] " , 
 	 " m e t a : e d g e " :   " m e t a : c o m p a t [ c o n t e n t = ' $ { 1 : i e = e d g e } ' ] " , 
 	 " m e t a : r e d i r e c t " :   " m e t a [ h t t p - e q u i v = r e f r e s h   c o n t e n t = ' 0 ;   u r l = $ { 1 : h t t p : / / e x a m p l e . c o m } ' ] " , 
 	 " s t y l e " :   " s t y l e " , 
 	 " s c r i p t " :   " s c r i p t [ ! s r c ] " , 
 	 " s c r i p t : s r c " :   " s c r i p t [ s r c ] " , 
 	 " i m g " :   " i m g [ s r c   a l t ] / " , 
 	 " i m g : s | i m g : s r c s e t " :   " i m g [ s r c s e t   s r c   a l t ] " , 
 	 " i m g : z | i m g : s i z e s " :   " i m g [ s i z e s   s r c s e t   s r c   a l t ] " , 
 	 " p i c t u r e " :   " p i c t u r e " , 
 	 " s r c | s o u r c e " :   " s o u r c e / " , 
 	 " s r c : s c | s o u r c e : s r c " :   " s o u r c e [ s r c   t y p e ] " , 
 	 " s r c : s | s o u r c e : s r c s e t " :   " s o u r c e [ s r c s e t ] " , 
 	 " s r c : t | s o u r c e : t y p e " :   " s o u r c e [ s r c s e t   t y p e = ' $ { 1 : i m a g e / } ' ] " , 
 	 " s r c : z | s o u r c e : s i z e s " :   " s o u r c e [ s i z e s   s r c s e t ] " , 
 	 " s r c : m | s o u r c e : m e d i a " :   " s o u r c e [ m e d i a = ' ( $ { 1 : m i n - w i d t h :   } ) '   s r c s e t ] " , 
 	 " s r c : m t | s o u r c e : m e d i a : t y p e " :   " s o u r c e : m e d i a [ t y p e = ' $ { 2 : i m a g e / } ' ] " , 
 	 " s r c : m z | s o u r c e : m e d i a : s i z e s " :   " s o u r c e : m e d i a [ s i z e s   s r c s e t ] " , 
 	 " s r c : z t | s o u r c e : s i z e s : t y p e " :   " s o u r c e [ s i z e s   s r c s e t   t y p e = ' $ { 1 : i m a g e / } ' ] " , 
 	 " i f r a m e " :   " i f r a m e [ s r c   f r a m e b o r d e r = 0 ] " , 
 	 " e m b e d " :   " e m b e d [ s r c   t y p e ] / " , 
 	 " o b j e c t " :   " o b j e c t [ d a t a   t y p e ] " , 
 	 " p a r a m " :   " p a r a m [ n a m e   v a l u e ] / " , 
 	 " m a p " :   " m a p [ n a m e ] " , 
 	 " a r e a " :   " a r e a [ s h a p e   c o o r d s   h r e f   a l t ] / " , 
 	 " a r e a : d " :   " a r e a [ s h a p e = d e f a u l t ] " , 
 	 " a r e a : c " :   " a r e a [ s h a p e = c i r c l e ] " , 
 	 " a r e a : r " :   " a r e a [ s h a p e = r e c t ] " , 
 	 " a r e a : p " :   " a r e a [ s h a p e = p o l y ] " , 
 	 " f o r m " :   " f o r m [ a c t i o n ] " , 
 	 " f o r m : g e t " :   " f o r m [ m e t h o d = g e t ] " , 
 	 " f o r m : p o s t " :   " f o r m [ m e t h o d = p o s t ] " , 
 	 " l a b e l " :   " l a b e l [ f o r ] " , 
 	 " i n p u t " :   " i n p u t [ t y p e = $ { 1 : t e x t } ] / " , 
 	 " i n p " :   " i n p u t [ n a m e = $ { 1 }   i d = $ { 1 } ] " , 
 	 " i n p u t : h | i n p u t : h i d d e n " :   " i n p u t [ t y p e = h i d d e n   n a m e ] " , 
 	 " i n p u t : t | i n p u t : t e x t " :   " i n p [ t y p e = t e x t ] " , 
 	 " i n p u t : s e a r c h " :   " i n p [ t y p e = s e a r c h ] " , 
 	 " i n p u t : e m a i l " :   " i n p [ t y p e = e m a i l ] " , 
 	 " i n p u t : u r l " :   " i n p [ t y p e = u r l ] " , 
 	 " i n p u t : p | i n p u t : p a s s w o r d " :   " i n p [ t y p e = p a s s w o r d ] " , 
 	 " i n p u t : d a t e t i m e " :   " i n p [ t y p e = d a t e t i m e ] " , 
 	 " i n p u t : d a t e " :   " i n p [ t y p e = d a t e ] " , 
 	 " i n p u t : d a t e t i m e - l o c a l " :   " i n p [ t y p e = d a t e t i m e - l o c a l ] " , 
 	 " i n p u t : m o n t h " :   " i n p [ t y p e = m o n t h ] " , 
 	 " i n p u t : w e e k " :   " i n p [ t y p e = w e e k ] " , 
 	 " i n p u t : t i m e " :   " i n p [ t y p e = t i m e ] " , 
 	 " i n p u t : t e l " :   " i n p [ t y p e = t e l ] " , 
 	 " i n p u t : n u m b e r " :   " i n p [ t y p e = n u m b e r ] " , 
 	 " i n p u t : c o l o r " :   " i n p [ t y p e = c o l o r ] " , 
 	 " i n p u t : c | i n p u t : c h e c k b o x " :   " i n p [ t y p e = c h e c k b o x ] " , 
 	 " i n p u t : r | i n p u t : r a d i o " :   " i n p [ t y p e = r a d i o ] " , 
 	 " i n p u t : r a n g e " :   " i n p [ t y p e = r a n g e ] " , 
 	 " i n p u t : f | i n p u t : f i l e " :   " i n p [ t y p e = f i l e ] " , 
 	 " i n p u t : s | i n p u t : s u b m i t " :   " i n p u t [ t y p e = s u b m i t   v a l u e ] " , 
 	 " i n p u t : i | i n p u t : i m a g e " :   " i n p u t [ t y p e = i m a g e   s r c   a l t ] " , 
 	 " i n p u t : b | i n p u t : b u t t o n " :   " i n p u t [ t y p e = b u t t o n   v a l u e ] " , 
         " i n p u t : r e s e t " :   " i n p u t : b u t t o n [ t y p e = r e s e t ] " , 
 	 " i s i n d e x " :   " i s i n d e x / " , 
 	 " s e l e c t " :   " s e l e c t [ n a m e = $ { 1 }   i d = $ { 1 } ] " , 
 	 " s e l e c t : d | s e l e c t : d i s a b l e d " :   " s e l e c t [ d i s a b l e d . ] " , 
 	 " o p t | o p t i o n " :   " o p t i o n [ v a l u e ] " , 
 	 " t e x t a r e a " :   " t e x t a r e a [ n a m e = $ { 1 }   i d = $ { 1 }   c o l s = $ { 2 : 3 0 }   r o w s = $ { 3 : 1 0 } ] " , 
 	 " m a r q u e e " :   " m a r q u e e [ b e h a v i o r   d i r e c t i o n ] " , 
 	 " m e n u : c | m e n u : c o n t e x t " :   " m e n u [ t y p e = c o n t e x t ] " , 
 	 " m e n u : t | m e n u : t o o l b a r " :   " m e n u [ t y p e = t o o l b a r ] " , 
 	 " v i d e o " :   " v i d e o [ s r c ] " , 
 	 " a u d i o " :   " a u d i o [ s r c ] " , 
 	 " h t m l : x m l " :   " h t m l [ x m l n s = h t t p : / / w w w . w 3 . o r g / 1 9 9 9 / x h t m l ] " , 
 	 " k e y g e n " :   " k e y g e n / " , 
 	 " c o m m a n d " :   " c o m m a n d / " , 
 	 " b t n : s | b u t t o n : s | b u t t o n : s u b m i t "   :   " b u t t o n [ t y p e = s u b m i t ] " , 
 	 " b t n : r | b u t t o n : r | b u t t o n : r e s e t "   :   " b u t t o n [ t y p e = r e s e t ] " , 
 	 " b t n : d | b u t t o n : d | b u t t o n : d i s a b l e d "   :   " b u t t o n [ d i s a b l e d . ] " , 
 	 " f s t : d | f s e t : d | f i e l d s e t : d | f i e l d s e t : d i s a b l e d "   :   " f i e l d s e t [ d i s a b l e d . ] " , 
 
 	 " b q " :   " b l o c k q u o t e " , 
 	 " f i g " :   " f i g u r e " , 
 	 " f i g c " :   " f i g c a p t i o n " , 
 	 " p i c " :   " p i c t u r e " , 
 	 " i f r " :   " i f r a m e " , 
 	 " e m b " :   " e m b e d " , 
 	 " o b j " :   " o b j e c t " , 
 	 " c a p " :   " c a p t i o n " , 
 	 " c o l g " :   " c o l g r o u p " , 
 	 " f s t " :   " f i e l d s e t " , 
 	 " b t n " :   " b u t t o n " , 
 	 " o p t g " :   " o p t g r o u p " , 
 	 " t a r e a " :   " t e x t a r e a " , 
 	 " l e g " :   " l e g e n d " , 
 	 " s e c t " :   " s e c t i o n " , 
 	 " a r t " :   " a r t i c l e " , 
 	 " h d r " :   " h e a d e r " , 
 	 " f t r " :   " f o o t e r " , 
 	 " a d r " :   " a d d r e s s " , 
 	 " d l g " :   " d i a l o g " , 
 	 " s t r " :   " s t r o n g " , 
 	 " p r o g " :   " p r o g r e s s " , 
 	 " m n " :   " m a i n " , 
 	 " t e m " :   " t e m p l a t e " , 
 	 " f s e t " :   " f i e l d s e t " , 
 	 " d a t a g " :   " d a t a g r i d " , 
 	 " d a t a l " :   " d a t a l i s t " , 
 	 " k g " :   " k e y g e n " , 
 	 " o u t " :   " o u t p u t " , 
 	 " d e t " :   " d e t a i l s " , 
 	 " c m d " :   " c o m m a n d " , 
 
 	 " r i : d | r i : d p r " :   " i m g : s " , 
 	 " r i : v | r i : v i e w p o r t " :   " i m g : z " , 
 	 " r i : a | r i : a r t " :   " p i c > s r c : m + i m g " , 
 	 " r i : t | r i : t y p e " :   " p i c > s r c : t + i m g " , 
 
 	 " ! ! ! " :   " { < ! D O C T Y P E   h t m l > } " , 
 	 " d o c " :   " h t m l [ l a n g = $ { l a n g } ] > ( h e a d > m e t a [ c h a r s e t = $ { c h a r s e t } ] + m e t a : v p + t i t l e { $ { 1 : D o c u m e n t } } ) + b o d y " , 
 	 " ! | h t m l : 5 " :   " ! ! ! + d o c " , 
 
 	 " c " :   " { < ! - -   $ { 0 }   - - > } " , 
 	 " c c : i e " :   " { < ! - - [ i f   I E ] > $ { 0 } < ! [ e n d i f ] - - > } " , 
 	 " c c : n o i e " :   " { < ! - - [ i f   ! I E ] > < ! - - > $ { 0 } < ! - - < ! [ e n d i f ] - - > } " 
 } ; 
 
 v a r   c s s   =   { 
 	 " @ f " :   " @ f o n t - f a c e   { \ n \ t f o n t - f a m i l y :   $ { 1 } ; \ n \ t s r c :   u r l ( $ { 1 } ) ; \ n } " , 
 	 " @ f f " :   " @ f o n t - f a c e   { \ n \ t f o n t - f a m i l y :   ' $ { 1 : F o n t N a m e } ' ; \ n \ t s r c :   u r l ( ' $ { 2 : F i l e N a m e } . e o t ' ) ; \ n \ t s r c :   u r l ( ' $ { 2 : F i l e N a m e } . e o t ? # i e f i x ' )   f o r m a t ( ' e m b e d d e d - o p e n t y p e ' ) , \ n \ t \ t   u r l ( ' $ { 2 : F i l e N a m e } . w o f f ' )   f o r m a t ( ' w o f f ' ) , \ n \ t \ t   u r l ( ' $ { 2 : F i l e N a m e } . t t f ' )   f o r m a t ( ' t r u e t y p e ' ) , \ n \ t \ t   u r l ( ' $ { 2 : F i l e N a m e } . s v g # $ { 1 : F o n t N a m e } ' )   f o r m a t ( ' s v g ' ) ; \ n \ t f o n t - s t y l e :   $ { 3 : n o r m a l } ; \ n \ t f o n t - w e i g h t :   $ { 4 : n o r m a l } ; \ n } " , 
 	 " @ i | @ i m p o r t " :   " @ i m p o r t   u r l ( $ { 0 } ) ; " , 
 	 " @ k f " :   " @ k e y f r a m e s   $ { 1 : i d e n t i f i e r }   { \ n \ t $ { 2 } \ n } " , 
 	 " @ m | @ m e d i a " :   " @ m e d i a   $ { 1 : s c r e e n }   { \ n \ t $ { 0 } \ n } " , 
 	 " a c " :   " a l i g n - c o n t e n t : s t a r t | e n d | f l e x - s t a r t | f l e x - e n d | c e n t e r | s p a c e - b e t w e e n | s p a c e - a r o u n d | s t r e t c h | s p a c e - e v e n l y " , 
 	 " a i " :   " a l i g n - i t e m s : s t a r t | e n d | f l e x - s t a r t | f l e x - e n d | c e n t e r | b a s e l i n e | s t r e t c h " , 
 	 " a n i m " :   " a n i m a t i o n : $ { 1 : n a m e }   $ { 2 : d u r a t i o n }   $ { 3 : t i m i n g - f u n c t i o n }   $ { 4 : d e l a y }   $ { 5 : i t e r a t i o n - c o u n t }   $ { 6 : d i r e c t i o n }   $ { 7 : f i l l - m o d e } " , 
 	 " a n i m d e l " :   " a n i m a t i o n - d e l a y : $ { 1 : t i m e } " , 
 	 " a n i m d i r " :   " a n i m a t i o n - d i r e c t i o n : n o r m a l | r e v e r s e | a l t e r n a t e | a l t e r n a t e - r e v e r s e " , 
 	 " a n i m d u r " :   " a n i m a t i o n - d u r a t i o n : $ { 1 : 0 } s " , 
 	 " a n i m f m " :   " a n i m a t i o n - f i l l - m o d e : b o t h | f o r w a r d s | b a c k w a r d s " , 
 	 " a n i m i c " :   " a n i m a t i o n - i t e r a t i o n - c o u n t : 1 | i n f i n i t e " , 
 	 " a n i m n " :   " a n i m a t i o n - n a m e " , 
 	 " a n i m p s " :   " a n i m a t i o n - p l a y - s t a t e : r u n n i n g | p a u s e d " , 
 	 " a n i m t f " :   " a n i m a t i o n - t i m i n g - f u n c t i o n : l i n e a r | e a s e | e a s e - i n | e a s e - o u t | e a s e - i n - o u t | c u b i c - b e z i e r ( $ { 1 : 0 . 1 } ,   $ { 2 : 0 . 7 } ,   $ { 3 : 1 . 0 } ,   $ { 3 : 0 . 1 } ) " , 
 	 " a p " :   " a p p e a r a n c e : n o n e " , 
 	 " a s " :   " a l i g n - s e l f : s t a r t | e n d | a u t o | f l e x - s t a r t | f l e x - e n d | c e n t e r | b a s e l i n e | s t r e t c h " , 
 	 " b " :   " b o t t o m " , 
 	 " b d " :   " b o r d e r : $ { 1 : 1 p x }   $ { 2 : s o l i d }   $ { 3 : # 0 0 0 } " , 
 	 " b d b " :   " b o r d e r - b o t t o m : $ { 1 : 1 p x }   $ { 2 : s o l i d }   $ { 3 : # 0 0 0 } " , 
 	 " b d b c " :   " b o r d e r - b o t t o m - c o l o r : $ { 1 : # 0 0 0 } " , 
 	 " b d b i " :   " b o r d e r - b o t t o m - i m a g e : u r l ( $ { 0 } ) " , 
 	 " b d b k " :   " b o r d e r - b r e a k : c l o s e " , 
 	 " b d b l i " :   " b o r d e r - b o t t o m - l e f t - i m a g e : u r l ( $ { 0 } ) | c o n t i n u e " , 
 	 " b d b l r s " :   " b o r d e r - b o t t o m - l e f t - r a d i u s " , 
 	 " b d b r i " :   " b o r d e r - b o t t o m - r i g h t - i m a g e : u r l ( $ { 0 } ) | c o n t i n u e " , 
 	 " b d b r r s " :   " b o r d e r - b o t t o m - r i g h t - r a d i u s " , 
 	 " b d b s " :   " b o r d e r - b o t t o m - s t y l e " , 
 	 " b d b w " :   " b o r d e r - b o t t o m - w i d t h " , 
 	 " b d c " :   " b o r d e r - c o l o r : $ { 1 : # 0 0 0 } " , 
 	 " b d c i " :   " b o r d e r - c o r n e r - i m a g e : u r l ( $ { 0 } ) | c o n t i n u e " , 
 	 " b d c l " :   " b o r d e r - c o l l a p s e : c o l l a p s e | s e p a r a t e " , 
 	 " b d f " :   " b o r d e r - f i t : r e p e a t | c l i p | s c a l e | s t r e t c h | o v e r w r i t e | o v e r f l o w | s p a c e " , 
 	 " b d i " :   " b o r d e r - i m a g e : u r l ( $ { 0 } ) " , 
 	 " b d l " :   " b o r d e r - l e f t : $ { 1 : 1 p x }   $ { 2 : s o l i d }   $ { 3 : # 0 0 0 } " , 
 	 " b d l c " :   " b o r d e r - l e f t - c o l o r : $ { 1 : # 0 0 0 } " , 
 	 " b d l e n " :   " b o r d e r - l e n g t h " , 
 	 " b d l i " :   " b o r d e r - l e f t - i m a g e : u r l ( $ { 0 } ) " , 
 	 " b d l s " :   " b o r d e r - l e f t - s t y l e " , 
 	 " b d l w " :   " b o r d e r - l e f t - w i d t h " , 
 	 " b d r " :   " b o r d e r - r i g h t : $ { 1 : 1 p x }   $ { 2 : s o l i d }   $ { 3 : # 0 0 0 } " , 
 	 " b d r c " :   " b o r d e r - r i g h t - c o l o r : $ { 1 : # 0 0 0 } " , 
 	 " b d r i " :   " b o r d e r - r i g h t - i m a g e : u r l ( $ { 0 } ) " , 
 	 " b d r s " :   " b o r d e r - r a d i u s " , 
 	 " b d r s t " :   " b o r d e r - r i g h t - s t y l e " , 
 	 " b d r w " :   " b o r d e r - r i g h t - w i d t h " , 
 	 " b d s " :   " b o r d e r - s t y l e : n o n e | h i d d e n | d o t t e d | d a s h e d | s o l i d | d o u b l e | d o t - d a s h | d o t - d o t - d a s h | w a v e | g r o o v e | r i d g e | i n s e t | o u t s e t " , 
 	 " b d s p " :   " b o r d e r - s p a c i n g " , 
 	 " b d t " :   " b o r d e r - t o p : $ { 1 : 1 p x }   $ { 2 : s o l i d }   $ { 3 : # 0 0 0 } " , 
 	 " b d t c " :   " b o r d e r - t o p - c o l o r : $ { 1 : # 0 0 0 } " , 
 	 " b d t i " :   " b o r d e r - t o p - i m a g e : u r l ( $ { 0 } ) " , 
 	 " b d t l i " :   " b o r d e r - t o p - l e f t - i m a g e : u r l ( $ { 0 } ) | c o n t i n u e " , 
 	 " b d t l r s " :   " b o r d e r - t o p - l e f t - r a d i u s " , 
 	 " b d t r i " :   " b o r d e r - t o p - r i g h t - i m a g e : u r l ( $ { 0 } ) | c o n t i n u e " , 
 	 " b d t r r s " :   " b o r d e r - t o p - r i g h t - r a d i u s " , 
 	 " b d t s " :   " b o r d e r - t o p - s t y l e " , 
 	 " b d t w " :   " b o r d e r - t o p - w i d t h " , 
 	 " b d w " :   " b o r d e r - w i d t h " , 
 	 " b f v " :   " b a c k f a c e - v i s i b i l i t y : h i d d e n | v i s i b l e " , 
 	 " b g " :   " b a c k g r o u n d : $ { 1 : # 0 0 0 } " , 
 	 " b g a " :   " b a c k g r o u n d - a t t a c h m e n t : f i x e d | s c r o l l " , 
 	 " b g b k " :   " b a c k g r o u n d - b r e a k : b o u n d i n g - b o x | e a c h - b o x | c o n t i n u o u s " , 
 	 " b g c " :   " b a c k g r o u n d - c o l o r : # $ { 1 : f f f } " , 
 	 " b g c p " :   " b a c k g r o u n d - c l i p : p a d d i n g - b o x | b o r d e r - b o x | c o n t e n t - b o x | n o - c l i p " , 
 	 " b g i " :   " b a c k g r o u n d - i m a g e : u r l ( $ { 0 } ) " , 
 	 " b g o " :   " b a c k g r o u n d - o r i g i n : p a d d i n g - b o x | b o r d e r - b o x | c o n t e n t - b o x " , 
 	 " b g p " :   " b a c k g r o u n d - p o s i t i o n : $ { 1 : 0 }   $ { 2 : 0 } " , 
 	 " b g p x " :   " b a c k g r o u n d - p o s i t i o n - x " , 
 	 " b g p y " :   " b a c k g r o u n d - p o s i t i o n - y " , 
 	 " b g r " :   " b a c k g r o u n d - r e p e a t : n o - r e p e a t | r e p e a t - x | r e p e a t - y | s p a c e | r o u n d " , 
 	 " b g s z " :   " b a c k g r o u n d - s i z e : c o n t a i n | c o v e r " , 
 	 " b x s h " :   " b o x - s h a d o w : $ { 1 : i n s e t   } $ { 2 : h o f f }   $ { 3 : v o f f }   $ { 4 : b l u r }   $ { 5 : # 0 0 0 } | n o n e " , 
 	 " b x s z " :   " b o x - s i z i n g : b o r d e r - b o x | c o n t e n t - b o x | b o r d e r - b o x " , 
 	 " c " :   " c o l o r : $ { 1 : # 0 0 0 } " , 
 	 " c l " :   " c l e a r : b o t h | l e f t | r i g h t | n o n e " , 
 	 " c m " :   " / *   $ { 0 }   * / " , 
 	 " c n t " :   " c o n t e n t : ' $ { 0 } ' | n o r m a l | o p e n - q u o t e | n o - o p e n - q u o t e | c l o s e - q u o t e | n o - c l o s e - q u o t e | a t t r ( $ { 0 } ) | c o u n t e r ( $ { 0 } ) | c o u n t e r s ( { $ 0 } ) " , 
 	 " c o i " :   " c o u n t e r - i n c r e m e n t " , 
 	 " c o l m " :   " c o l u m n s " , 
 	 " c o l m c " :   " c o l u m n - c o u n t " , 
 	 " c o l m f " :   " c o l u m n - f i l l " , 
 	 " c o l m g " :   " c o l u m n - g a p " , 
 	 " c o l m r " :   " c o l u m n - r u l e " , 
 	 " c o l m r c " :   " c o l u m n - r u l e - c o l o r " , 
 	 " c o l m r s " :   " c o l u m n - r u l e - s t y l e " , 
 	 " c o l m r w " :   " c o l u m n - r u l e - w i d t h " , 
 	 " c o l m s " :   " c o l u m n - s p a n " , 
 	 " c o l m w " :   " c o l u m n - w i d t h " , 
 	 " c o r " :   " c o u n t e r - r e s e t " , 
 	 " c p " :   " c l i p : a u t o | r e c t ( $ { 1 : t o p }   $ { 2 : r i g h t }   $ { 3 : b o t t o m }   $ { 4 : l e f t } ) " , 
 	 " c p s " :   " c a p t i o n - s i d e : t o p | b o t t o m " , 
 	 " c u r " :   " c u r s o r : p o i n t e r | a u t o | d e f a u l t | c r o s s h a i r | h a n d | h e l p | m o v e | p o i n t e r | t e x t " , 
 	 " d " :   " d i s p l a y : g r i d | i n l i n e - g r i d | s u b g r i d | b l o c k | n o n e | f l e x | i n l i n e - f l e x | i n l i n e | i n l i n e - b l o c k | l i s t - i t e m | r u n - i n | c o m p a c t | t a b l e | i n l i n e - t a b l e | t a b l e - c a p t i o n | t a b l e - c o l u m n | t a b l e - c o l u m n - g r o u p | t a b l e - h e a d e r - g r o u p | t a b l e - f o o t e r - g r o u p | t a b l e - r o w | t a b l e - r o w - g r o u p | t a b l e - c e l l | r u b y | r u b y - b a s e | r u b y - b a s e - g r o u p | r u b y - t e x t | r u b y - t e x t - g r o u p " , 
 	 " e c " :   " e m p t y - c e l l s : s h o w | h i d e " , 
 	 " f " :   " f o n t : $ { 1 : 1 e m }   $ { 2 : s a n s - s e r i f } " , 
 	 " f d " :   " f o n t - d i s p l a y : a u t o | b l o c k | s w a p | f a l l b a c k | o p t i o n a l " , 
 	 " f e f " :   " f o n t - e f f e c t : n o n e | e n g r a v e | e m b o s s | o u t l i n e " , 
 	 " f e m " :   " f o n t - e m p h a s i z e " , 
 	 " f e m p " :   " f o n t - e m p h a s i z e - p o s i t i o n : b e f o r e | a f t e r " , 
 	 " f e m s " :   " f o n t - e m p h a s i z e - s t y l e : n o n e | a c c e n t | d o t | c i r c l e | d i s c " , 
 	 " f f " :   " f o n t - f a m i l y : s e r i f | s a n s - s e r i f | c u r s i v e | f a n t a s y | m o n o s p a c e " , 
 	 " f f t " :   " f o n t - f a m i l y : \ " T i m e s   N e w   R o m a n \ " ,   T i m e s ,   B a s k e r v i l l e ,   G e o r g i a ,   s e r i f " , 
 	 " f f a " :   " f o n t - f a m i l y : A r i a l ,   \ " H e l v e t i c a   N e u e \ " ,   H e l v e t i c a ,   s a n s - s e r i f " , 
 	 " f f v " :   " f o n t - f a m i l y : V e r d a n a ,   G e n e v a ,   s a n s - s e r i f " , 
 	 " f l " :   " f l o a t : l e f t | r i g h t | n o n e " , 
 	 " f s " :   " f o n t - s t y l e : i t a l i c | n o r m a l | o b l i q u e " , 
 	 " f s m " :   " f o n t - s m o o t h i n g : a n t i a l i a s e d | s u b p i x e l - a n t i a l i a s e d | n o n e " , 
 	 " f s t " :   " f o n t - s t r e t c h : n o r m a l | u l t r a - c o n d e n s e d | e x t r a - c o n d e n s e d | c o n d e n s e d | s e m i - c o n d e n s e d | s e m i - e x p a n d e d | e x p a n d e d | e x t r a - e x p a n d e d | u l t r a - e x p a n d e d " , 
 	 " f v " :   " f o n t - v a r i a n t : n o r m a l | s m a l l - c a p s " , 
 	 " f v s " :   " f o n t - v a r i a t i o n - s e t t i n g s : n o r m a l | i n h e r i t | i n i t i a l | u n s e t " , 
 	 " f w " :   " f o n t - w e i g h t : n o r m a l | b o l d | b o l d e r | l i g h t e r " , 
 	 " f x " :   " f l e x " , 
 	 " f x b " :   " f l e x - b a s i s : f i l l | m a x - c o n t e n t | m i n - c o n t e n t | f i t - c o n t e n t | c o n t e n t " , 
 	 " f x d " :   " f l e x - d i r e c t i o n : r o w | r o w - r e v e r s e | c o l u m n | c o l u m n - r e v e r s e " , 
 	 " f x f " :   " f l e x - f l o w " , 
 	 " f x g " :   " f l e x - g r o w " , 
 	 " f x s h " :   " f l e x - s h r i n k " , 
 	 " f x w " :   " f l e x - w r a p : n o w r a p | w r a p | w r a p - r e v e r s e " , 
 	 " f z " :   " f o n t - s i z e " , 
 	 " f z a " :   " f o n t - s i z e - a d j u s t " , 
 	 " g t c " :   " g r i d - t e m p l a t e - c o l u m n s : r e p e a t ( ) | m i n m a x ( ) " , 
 	 " g t r " :   " g r i d - t e m p l a t e - r o w s : r e p e a t ( ) | m i n m a x ( ) " , 
 	 " g t a " :   " g r i d - t e m p l a t e - a r e a s " , 
 	 " g t " :   " g r i d - t e m p l a t e " , 
 	 " g g " :   " g r i d - g a p " , 
 	 " g c g " :   " g r i d - c o l u m n - g a p " , 
 	 " g r g " :   " g r i d - r o w - g a p " , 
 	 " g a c " :   " g r i d - a u t o - c o l u m n s : a u t o | m i n m a x ( ) " , 
 	 " g a r " :   " g r i d - a u t o - r o w s : a u t o | m i n m a x ( ) " , 
 	 " g a f " :   " g r i d - a u t o - f l o w : r o w | c o l u m n | d e n s e | i n h e r i t | i n i t i a l | u n s e t " , 
 	 " g d " :   " g r i d " , 
 	 " g c " :   " g r i d - c o l u m n " , 
 	 " g c s " :   " g r i d - c o l u m n - s t a r t " , 
 	 " g c e " :   " g r i d - c o l u m n - e n d " , 
 	 " g r " :   " g r i d - r o w " , 
 	 " g r s " :   " g r i d - r o w - s t a r t " , 
 	 " g r e " :   " g r i d - r o w - e n d " , 
 	 " g a " :   " g r i d - a r e a " , 
 	 " h " :   " h e i g h t " , 
 	 " j c " :   " j u s t i f y - c o n t e n t : s t a r t | e n d | s t r e t c h | f l e x - s t a r t | f l e x - e n d | c e n t e r | s p a c e - b e t w e e n | s p a c e - a r o u n d | s p a c e - e v e n l y " , 
 	 " j i " :   " j u s t i f y - i t e m s : s t a r t | e n d | c e n t e r | s t r e t c h " , 
 	 " j s " :   " j u s t i f y - s e l f : s t a r t | e n d | c e n t e r | s t r e t c h " , 
 	 " l " :   " l e f t " , 
 	 " l g " :   " b a c k g r o u n d - i m a g e : l i n e a r - g r a d i e n t ( $ { 1 } ) " , 
 	 " l h " :   " l i n e - h e i g h t " , 
 	 " l i s " :   " l i s t - s t y l e " , 
 	 " l i s i " :   " l i s t - s t y l e - i m a g e " , 
 	 " l i s p " :   " l i s t - s t y l e - p o s i t i o n : i n s i d e | o u t s i d e " , 
 	 " l i s t " :   " l i s t - s t y l e - t y p e : d i s c | c i r c l e | s q u a r e | d e c i m a l | d e c i m a l - l e a d i n g - z e r o | l o w e r - r o m a n | u p p e r - r o m a n " , 
 	 " l t s " :   " l e t t e r - s p a c i n g : n o r m a l " , 
 	 " m " :   " m a r g i n " , 
 	 " m a h " :   " m a x - h e i g h t " , 
 	 " m a r " :   " m a x - r e s o l u t i o n " , 
 	 " m a w " :   " m a x - w i d t h " , 
 	 " m b " :   " m a r g i n - b o t t o m " , 
 	 " m i h " :   " m i n - h e i g h t " , 
 	 " m i r " :   " m i n - r e s o l u t i o n " , 
 	 " m i w " :   " m i n - w i d t h " , 
 	 " m l " :   " m a r g i n - l e f t " , 
 	 " m r " :   " m a r g i n - r i g h t " , 
 	 " m t " :   " m a r g i n - t o p " , 
 	 " o l " :   " o u t l i n e " , 
 	 " o l c " :   " o u t l i n e - c o l o r : $ { 1 : # 0 0 0 } | i n v e r t " , 
 	 " o l o " :   " o u t l i n e - o f f s e t " , 
 	 " o l s " :   " o u t l i n e - s t y l e : n o n e | d o t t e d | d a s h e d | s o l i d | d o u b l e | g r o o v e | r i d g e | i n s e t | o u t s e t " , 
 	 " o l w " :   " o u t l i n e - w i d t h | t h i n | m e d i u m | t h i c k " , 
 	 " o p " :   " o p a c i t y " , 
 	 " o r d " :   " o r d e r " , 
 	 " o r i " :   " o r i e n t a t i o n : l a n d s c a p e | p o r t r a i t " , 
 	 " o r p " :   " o r p h a n s " , 
 	 " o v " :   " o v e r f l o w : h i d d e n | v i s i b l e | h i d d e n | s c r o l l | a u t o " , 
 	 " o v s " :   " o v e r f l o w - s t y l e : s c r o l l b a r | a u t o | s c r o l l b a r | p a n n e r | m o v e | m a r q u e e " , 
 	 " o v x " :   " o v e r f l o w - x : h i d d e n | v i s i b l e | h i d d e n | s c r o l l | a u t o " , 
 	 " o v y " :   " o v e r f l o w - y : h i d d e n | v i s i b l e | h i d d e n | s c r o l l | a u t o " , 
 	 " p " :   " p a d d i n g " , 
 	 " p b " :   " p a d d i n g - b o t t o m " , 
 	 " p g b a " :   " p a g e - b r e a k - a f t e r : a u t o | a l w a y s | l e f t | r i g h t " , 
 	 " p g b b " :   " p a g e - b r e a k - b e f o r e : a u t o | a l w a y s | l e f t | r i g h t " , 
 	 " p g b i " :   " p a g e - b r e a k - i n s i d e : a u t o | a v o i d " , 
 	 " p l " :   " p a d d i n g - l e f t " , 
 	 " p o s " :   " p o s i t i o n : r e l a t i v e | a b s o l u t e | r e l a t i v e | f i x e d | s t a t i c " , 
 	 " p r " :   " p a d d i n g - r i g h t " , 
 	 " p t " :   " p a d d i n g - t o p " , 
 	 " q " :   " q u o t e s " , 
 	 " q e n " :   " q u o t e s : ' \ \ 2 0 1 C '   ' \ \ 2 0 1 D '   ' \ \ 2 0 1 8 '   ' \ \ 2 0 1 9 ' " , 
 	 " q r u " :   " q u o t e s : ' \ \ 0 0 A B '   ' \ \ 0 0 B B '   ' \ \ 2 0 1 E '   ' \ \ 2 0 1 C ' " , 
 	 " r " :   " r i g h t " , 
 	 " r s z " :   " r e s i z e : n o n e | b o t h | h o r i z o n t a l | v e r t i c a l " , 
 	 " t " :   " t o p " , 
 	 " t a " :   " t e x t - a l i g n : l e f t | c e n t e r | r i g h t | j u s t i f y " , 
 	 " t a l " :   " t e x t - a l i g n - l a s t : l e f t | c e n t e r | r i g h t " , 
 	 " t b l " :   " t a b l e - l a y o u t : f i x e d " , 
 	 " t d " :   " t e x t - d e c o r a t i o n : n o n e | u n d e r l i n e | o v e r l i n e | l i n e - t h r o u g h " , 
 	 " t e " :   " t e x t - e m p h a s i s : n o n e | a c c e n t | d o t | c i r c l e | d i s c | b e f o r e | a f t e r " , 
 	 " t h " :   " t e x t - h e i g h t : a u t o | f o n t - s i z e | t e x t - s i z e | m a x - s i z e " , 
 	 " t i " :   " t e x t - i n d e n t " , 
 	 " t j " :   " t e x t - j u s t i f y : a u t o | i n t e r - w o r d | i n t e r - i d e o g r a p h | i n t e r - c l u s t e r | d i s t r i b u t e | k a s h i d a | t i b e t a n " , 
 	 " t o " :   " t e x t - o u t l i n e : $ { 1 : 0 }   $ { 2 : 0 }   $ { 3 : # 0 0 0 } " , 
 	 " t o v " :   " t e x t - o v e r f l o w : e l l i p s i s | c l i p " , 
 	 " t r " :   " t e x t - r e p l a c e " , 
 	 " t r f " :   " t r a n s f o r m : $ { 1 } | s k e w X ( $ { 1 : a n g l e } ) | s k e w Y ( $ { 1 : a n g l e } ) | s c a l e ( $ { 1 : x } ,   $ { 2 : y } ) | s c a l e X ( $ { 1 : x } ) | s c a l e Y ( $ { 1 : y } ) | s c a l e Z ( $ { 1 : z } ) | s c a l e 3 d ( $ { 1 : x } ,   $ { 2 : y } ,   $ { 3 : z } ) | r o t a t e ( $ { 1 : a n g l e } ) | r o t a t e X ( $ { 1 : a n g l e } ) | r o t a t e Y ( $ { 1 : a n g l e } ) | r o t a t e Z ( $ { 1 : a n g l e } ) | t r a n s l a t e ( $ { 1 : x } ,   $ { 2 : y } ) | t r a n s l a t e X ( $ { 1 : x } ) | t r a n s l a t e Y ( $ { 1 : y } ) | t r a n s l a t e Z ( $ { 1 : z } ) | t r a n s l a t e 3 d ( $ { 1 : t x } ,   $ { 2 : t y } ,   $ { 3 : t z } ) " , 
 	 " t r f o " :   " t r a n s f o r m - o r i g i n " , 
 	 " t r f s " :   " t r a n s f o r m - s t y l e : p r e s e r v e - 3 d " , 
 	 " t r s " :   " t r a n s i t i o n : $ { 1 : p r o p }   $ { 2 : t i m e } " , 
 	 " t r s d e " :   " t r a n s i t i o n - d e l a y : $ { 1 : t i m e } " , 
 	 " t r s d u " :   " t r a n s i t i o n - d u r a t i o n : $ { 1 : t i m e } " , 
 	 " t r s p " :   " t r a n s i t i o n - p r o p e r t y : $ { 1 : p r o p } " , 
 	 " t r s t f " :   " t r a n s i t i o n - t i m i n g - f u n c t i o n : $ { 1 : f n } " , 
 	 " t s h " :   " t e x t - s h a d o w : $ { 1 : h o f f }   $ { 2 : v o f f }   $ { 3 : b l u r }   $ { 4 : # 0 0 0 } " , 
 	 " t t " :   " t e x t - t r a n s f o r m : u p p e r c a s e | l o w e r c a s e | c a p i t a l i z e | n o n e " , 
 	 " t w " :   " t e x t - w r a p : n o n e | n o r m a l | u n r e s t r i c t e d | s u p p r e s s " , 
 	 " u s " :   " u s e r - s e l e c t : n o n e " , 
 	 " v " :   " v i s i b i l i t y : h i d d e n | v i s i b l e | c o l l a p s e " , 
 	 " v a " :   " v e r t i c a l - a l i g n : t o p | s u p e r | t e x t - t o p | m i d d l e | b a s e l i n e | b o t t o m | t e x t - b o t t o m | s u b " , 
 	 " w " :   " w i d t h " , 
 	 " w h s " :   " w h i t e - s p a c e : n o w r a p | p r e | p r e - w r a p | p r e - l i n e | n o r m a l " , 
 	 " w h s c " :   " w h i t e - s p a c e - c o l l a p s e : n o r m a l | k e e p - a l l | l o o s e | b r e a k - s t r i c t | b r e a k - a l l " , 
 	 " w i d " :   " w i d o w s " , 
 	 " w m " :   " w r i t i n g - m o d e : l r - t b | l r - t b | l r - b t | r l - t b | r l - b t | t b - r l | t b - l r | b t - l r | b t - r l " , 
 	 " w o b " :   " w o r d - b r e a k : n o r m a l | k e e p - a l l | b r e a k - a l l " , 
 	 " w o s " :   " w o r d - s p a c i n g " , 
 	 " w o w " :   " w o r d - w r a p : n o n e | u n r e s t r i c t e d | s u p p r e s s | b r e a k - w o r d | n o r m a l " , 
 	 " z " :   " z - i n d e x " , 
 	 " z o m " :   " z o o m : 1 " 
 } ; 
 
 v a r   x s l   =   { 
         " t m | t m a t c h " :   " x s l : t e m p l a t e [ m a t c h   m o d e ] " , 
         " t n | t n a m e " :   " x s l : t e m p l a t e [ n a m e ] " , 
         " c a l l " :   " x s l : c a l l - t e m p l a t e [ n a m e ] " , 
         " a p " :   " x s l : a p p l y - t e m p l a t e s [ s e l e c t   m o d e ] " , 
         " a p i " :   " x s l : a p p l y - i m p o r t s " , 
         " i m p " :   " x s l : i m p o r t [ h r e f ] " , 
         " i n c " :   " x s l : i n c l u d e [ h r e f ] " , 
         " c h " :   " x s l : c h o o s e " , 
         " w h | x s l : w h e n " :   " x s l : w h e n [ t e s t ] " , 
         " o t " :   " x s l : o t h e r w i s e " , 
         " i f " :   " x s l : i f [ t e s t ] " , 
         " p a r " :   " x s l : p a r a m [ n a m e ] " , 
         " p a r e " :   " x s l : p a r a m [ n a m e   s e l e c t ] " , 
         " v a r " :   " x s l : v a r i a b l e [ n a m e ] " , 
         " v a r e " :   " x s l : v a r i a b l e [ n a m e   s e l e c t ] " , 
         " w p " :   " x s l : w i t h - p a r a m [ n a m e   s e l e c t ] " , 
         " k e y " :   " x s l : k e y [ n a m e   m a t c h   u s e ] " , 
         " e l e m " :   " x s l : e l e m e n t [ n a m e ] " , 
         " a t t r " :   " x s l : a t t r i b u t e [ n a m e ] " , 
         " a t t r s " :   " x s l : a t t r i b u t e - s e t [ n a m e ] " , 
         " c p " :   " x s l : c o p y [ s e l e c t ] " , 
         " c o " :   " x s l : c o p y - o f [ s e l e c t ] " , 
         " v a l " :   " x s l : v a l u e - o f [ s e l e c t ] " , 
         " f o r | e a c h " :   " x s l : f o r - e a c h [ s e l e c t ] " , 
         " t e x " :   " x s l : t e x t " , 
         " c o m " :   " x s l : c o m m e n t " , 
         " m s g " :   " x s l : m e s s a g e [ t e r m i n a t e = n o ] " , 
         " f a l l " :   " x s l : f a l l b a c k " , 
         " n u m " :   " x s l : n u m b e r [ v a l u e ] " , 
         " n a m " :   " n a m e s p a c e - a l i a s [ s t y l e s h e e t - p r e f i x   r e s u l t - p r e f i x ] " , 
         " p r e s " :   " x s l : p r e s e r v e - s p a c e [ e l e m e n t s ] " , 
         " s t r i p " :   " x s l : s t r i p - s p a c e [ e l e m e n t s ] " , 
         " p r o c " :   " x s l : p r o c e s s i n g - i n s t r u c t i o n [ n a m e ] " , 
         " s o r t " :   " x s l : s o r t [ s e l e c t   o r d e r ] " , 
         " c h o o s e " :   " x s l : c h o o s e > x s l : w h e n + x s l : o t h e r w i s e " , 
         " x s l " :   " ! ! ! + x s l : s t y l e s h e e t [ v e r s i o n = 1 . 0   x m l n s : x s l = h t t p : / / w w w . w 3 . o r g / 1 9 9 9 / X S L / T r a n s f o r m ] > { \ n | } " , 
         " ! ! ! " :   " { < ? x m l   v e r s i o n = \ " 1 . 0 \ "   e n c o d i n g = \ " U T F - 8 \ " ? > } " 
 } ; 
 
 v a r   i n d e x   =   {   h t m l ,   c s s ,   x s l   } ; 
 
 m o d u l e . e x p o r t s   =   i n d e x ; 
 
 } , { } ] , 1 8 : [ f u n c t i o n ( r e q u i r e , m o d u l e , e x p o r t s ) { 
 ' u s e   s t r i c t ' ; 
 
 O b j e c t . d e f i n e P r o p e r t y ( e x p o r t s ,   ' _ _ e s M o d u l e ' ,   {   v a l u e :   t r u e   } ) ; 
 
 / * * 
   *   M e t h o d s   f o r   c o n s u m i n g   q u o t e d   v a l u e s 
   * / 
 
 c o n s t   S I N G L E _ Q U O T E   =   3 9 ;   / /   ' 
 c o n s t   D O U B L E _ Q U O T E   =   3 4 ;   / /   " 
 
 c o n s t   d e f a u l t O p t i o n s   =   { 
 	 e s c a p e :   9 2 ,       / /   \   c h a r a c t e r 
 	 t h r o w s :   f a l s e 
 } ; 
 
 / * * 
   *   C o n s u m e s   ' s i n g l e '   o r   " d o u b l e " - q u o t e d   s t r i n g   f r o m   g i v e n   s t r i n g ,   i f   p o s s i b l e 
   *   @ p a r a m     { S t r e a m R e a d e r }   s t r e a m 
   *   @ p a r a m     { N u m b e r }     o p t i o n s . e s c a p e   A   c h a r a c t e r   c o d e   o f   q u o t e - e s c a p e   s y m b o l 
   *   @ p a r a m     { B o o l e a n }   o p t i o n s . t h r o w s   T h r o w   e r r o r   i f   q u o t e s   s t r i n g   c a n  t   b e   p r o p e r l y   c o n s u m e d 
   *   @ r e t u r n   { B o o l e a n }   ` t r u e `   i f   q u o t e d   s t r i n g   w a s   c o n s u m e d .   T h e   c o n t e n t s 
   *                                       o f   q u o t e d   s t r i n g   w i l l   b e   a v a i l a b e   a s   ` s t r e a m . c u r r e n t ( ) ` 
   * / 
 v a r   e a t Q u o t e d   =   f u n c t i o n ( s t r e a m ,   o p t i o n s )   { 
 	 o p t i o n s   =   o p t i o n s   ?   O b j e c t . a s s i g n ( { } ,   d e f a u l t O p t i o n s ,   o p t i o n s )   :   d e f a u l t O p t i o n s ; 
 	 c o n s t   s t a r t   =   s t r e a m . p o s ; 
 	 c o n s t   q u o t e   =   s t r e a m . p e e k ( ) ; 
 
 	 i f   ( s t r e a m . e a t ( i s Q u o t e ) )   { 
 	 	 w h i l e   ( ! s t r e a m . e o f ( ) )   { 
 	 	 	 s w i t c h   ( s t r e a m . n e x t ( ) )   { 
 	 	 	 	 c a s e   q u o t e : 
 	 	 	 	 	 s t r e a m . s t a r t   =   s t a r t ; 
 	 	 	 	 	 r e t u r n   t r u e ; 
 
 	 	 	 	 c a s e   o p t i o n s . e s c a p e : 
 	 	 	 	 	 s t r e a m . n e x t ( ) ; 
 	 	 	 	 	 b r e a k ; 
 	 	 	 } 
 	 	 } 
 
 	 	 / /   I f   w e  r e   h e r e   t h e n   s t r e a m   w a s n  t   p r o p e r l y   c o n s u m e d . 
 	 	 / /   R e v e r t   s t r e a m   a n d   d e c i d e   w h a t   t o   d o 
 	 	 s t r e a m . p o s   =   s t a r t ; 
 
 	 	 i f   ( o p t i o n s . t h r o w s )   { 
 	 	 	 t h r o w   s t r e a m . e r r o r ( ' U n a b l e   t o   c o n s u m e   q u o t e d   s t r i n g ' ) ; 
 	 	 } 
 	 } 
 
 	 r e t u r n   f a l s e ; 
 } ; 
 
 f u n c t i o n   i s Q u o t e ( c o d e )   { 
 	 r e t u r n   c o d e   = = =   S I N G L E _ Q U O T E   | |   c o d e   = = =   D O U B L E _ Q U O T E ; 
 } 
 
 / * * 
   *   C h e c k   i f   g i v e n   c o d e   i s   a   n u m b e r 
   *   @ p a r a m     { N u m b e r }     c o d e 
   *   @ r e t u r n   { B o o l e a n } 
   * / 
 f u n c t i o n   i s N u m b e r ( c o d e )   { 
 	 r e t u r n   c o d e   >   4 7   & &   c o d e   <   5 8 ; 
 } 
 
 / * * 
   *   C h e c k   i f   g i v e n   c h a r a c t e r   c o d e   i s   a l p h a   c o d e   ( l e t t e r   t h r o u g h   A   t o   Z ) 
   *   @ p a r a m     { N u m b e r }     c o d e 
   *   @ p a r a m     { N u m b e r }     [ f r o m ] 
   *   @ p a r a m     { N u m b e r }     [ t o ] 
   *   @ r e t u r n   { B o o l e a n } 
   * / 
 f u n c t i o n   i s A l p h a ( c o d e ,   f r o m ,   t o )   { 
 	 f r o m   =   f r o m   | |   6 5 ;   / /   A 
 	 t o       =   t o       | |   9 0 ;   / /   Z 
 	 c o d e   & =   ~ 3 2 ;   / /   q u i c k   h a c k   t o   c o n v e r t   a n y   c h a r   c o d e   t o   u p p e r c a s e   c h a r   c o d e 
 
 	 r e t u r n   c o d e   > =   f r o m   & &   c o d e   < =   t o ; 
 } 
 
 / * * 
   *   C h e c k   i f   g i v e n   c h a r a c t e r   c o d e   i s   a l p h a - n u m e r i c   ( l e t t e r   t h r o u g h   A   t o   Z   o r   n u m b e r ) 
   *   @ p a r a m     { N u m b e r }     c o d e 
   *   @ r e t u r n   { B o o l e a n } 
   * / 
 f u n c t i o n   i s A l p h a N u m e r i c ( c o d e )   { 
 	 r e t u r n   i s N u m b e r ( c o d e )   | |   i s A l p h a ( c o d e ) ; 
 } 
 
 f u n c t i o n   i s W h i t e S p a c e ( c o d e )   { 
 	 r e t u r n   c o d e   = = =   3 2       / *   s p a c e   * / 
 	 	 | |   c o d e   = = =   9         / *   t a b   * / 
 	 	 | |   c o d e   = = =   1 6 0 ;   / *   n o n - b r e a k i n g   s p a c e   * / 
 } 
 
 / * * 
   *   C h e c k   i f   g i v e n   c h a r a c t e r   c o d e   i s   a   s p a c e 
   *   @ p a r a m     { N u m b e r }     c o d e 
   *   @ r e t u r n   { B o o l e a n } 
   * / 
 f u n c t i o n   i s S p a c e ( c o d e )   { 
 	 r e t u r n   i s W h i t e S p a c e ( c o d e ) 
 	 	 | |   c o d e   = = =   1 0     / *   L F   * / 
 	 	 | |   c o d e   = = =   1 3 ;   / *   C R   * / 
 } 
 
 c o n s t   d e f a u l t O p t i o n s $ 1   =   { 
 	 e s c a p e :   9 2 ,       / /   \   c h a r a c t e r 
 	 t h r o w s :   f a l s e 
 } ; 
 
 / * * 
   *   E a t s   p a i r e d   c h a r a c t e r s   s u b s t r i n g ,   f o r   e x a m p l e   ` ( f o o ) `   o r   ` [ b a r ] ` 
   *   @ p a r a m     { S t r e a m R e a d e r }   s t r e a m 
   *   @ p a r a m     { N u m b e r }   o p e n             C h a r a c t e r   c o d e   o f   p a i r   o p e n i n i g 
   *   @ p a r a m     { N u m b e r }   c l o s e           C h a r a c t e r   c o d e   o f   p a i r   c l o s i n g 
   *   @ p a r a m     { O b j e c t }   [ o p t i o n s ] 
   *   @ r e t u r n   { B o o l e a n }               R e t u r n s   ` t r u e `   i f   c h a c a r t e r   p a i r   w a s   s u c c e s s f u l l y 
   *                                                   c o n s u m e d ,   i t  s   c o n t e n t   w i l l   b e   a v a i l a b l e   a s   ` s t r e a m . c u r r e n t ( ) ` 
   * / 
 f u n c t i o n   e a t P a i r ( s t r e a m ,   o p e n ,   c l o s e ,   o p t i o n s )   { 
 	 o p t i o n s   =   o p t i o n s   ?   O b j e c t . a s s i g n ( { } ,   d e f a u l t O p t i o n s $ 1 ,   o p t i o n s )   :   d e f a u l t O p t i o n s $ 1 ; 
 	 c o n s t   s t a r t   =   s t r e a m . p o s ; 
 
 	 i f   ( s t r e a m . e a t ( o p e n ) )   { 
 	 	 l e t   s t a c k   =   1 ,   c h ; 
 
 	 	 w h i l e   ( ! s t r e a m . e o f ( ) )   { 
 	 	 	 i f   ( e a t Q u o t e d ( s t r e a m ,   o p t i o n s ) )   { 
 	 	 	 	 c o n t i n u e ; 
 	 	 	 } 
 
 	 	 	 c h   =   s t r e a m . n e x t ( ) ; 
 	 	 	 i f   ( c h   = = =   o p e n )   { 
 	 	 	 	 s t a c k + + ; 
 	 	 	 }   e l s e   i f   ( c h   = = =   c l o s e )   { 
 	 	 	 	 s t a c k - - ; 
 	 	 	 	 i f   ( ! s t a c k )   { 
 	 	 	 	 	 s t r e a m . s t a r t   =   s t a r t ; 
 	 	 	 	 	 r e t u r n   t r u e ; 
 	 	 	 	 } 
 	 	 	 }   e l s e   i f   ( c h   = = =   o p t i o n s . e s c a p e )   { 
 	 	 	 	 s t r e a m . n e x t ( ) ; 
 	 	 	 } 
 	 	 } 
 
 	 	 / /   I f   w e  r e   h e r e   t h e n   p a i r e d   c h a r a c t e r   c a n  t   b e   c o n s u m e d 
 	 	 s t r e a m . p o s   =   s t a r t ; 
 
 	 	 i f   ( o p t i o n s . t h r o w s )   { 
 	 	 	 t h r o w   s t r e a m . e r r o r ( ` U n a b l e   t o   f i n d   m a t c h i n g   p a i r   f o r   $ { S t r i n g . f r o m C h a r C o d e ( o p e n ) } ` ) ; 
 	 	 } 
 	 } 
 
 	 r e t u r n   f a l s e ; 
 } 
 
 e x p o r t s . e a t Q u o t e d   =   e a t Q u o t e d ; 
 e x p o r t s . i s Q u o t e   =   i s Q u o t e ; 
 e x p o r t s . i s A l p h a   =   i s A l p h a ; 
 e x p o r t s . i s N u m b e r   =   i s N u m b e r ; 
 e x p o r t s . i s A l p h a N u m e r i c   =   i s A l p h a N u m e r i c ; 
 e x p o r t s . i s S p a c e   =   i s S p a c e ; 
 e x p o r t s . i s W h i t e S p a c e   =   i s W h i t e S p a c e ; 
 e x p o r t s . e a t P a i r   =   e a t P a i r ; 
 
 } , { } ] , 1 9 : [ f u n c t i o n ( r e q u i r e , m o d u l e , e x p o r t s ) { 
 ' u s e   s t r i c t ' ; 
 
 / * * 
   *   A   s t r e a m i n g ,   c h a r a c t e r   c o d e - b a s e d   s t r i n g   r e a d e r 
   * / 
 c l a s s   S t r e a m R e a d e r   { 
 	 c o n s t r u c t o r ( s t r i n g ,   s t a r t ,   e n d )   { 
 	 	 i f   ( e n d   = =   n u l l   & &   t y p e o f   s t r i n g   = = =   ' s t r i n g ' )   { 
 	 	 	 e n d   =   s t r i n g . l e n g t h ; 
 	 	 } 
 
 	 	 t h i s . s t r i n g   =   s t r i n g ; 
 	 	 t h i s . p o s   =   t h i s . s t a r t   =   s t a r t   | |   0 ; 
 	 	 t h i s . e n d   =   e n d ; 
 	 } 
 
 	 / * * 
 	   *   R e t u r n s   t r u e   o n l y   i f   t h e   s t r e a m   i s   a t   t h e   e n d   o f   t h e   f i l e . 
 	   *   @ r e t u r n s   { B o o l e a n } 
 	   * / 
 	 e o f ( )   { 
 	 	 r e t u r n   t h i s . p o s   > =   t h i s . e n d ; 
 	 } 
 
 	 / * * 
 	   *   C r e a t e s   a   n e w   s t r e a m   i n s t a n c e   w h i c h   i s   l i m i t e d   t o   g i v e n   ` s t a r t `   a n d   ` e n d ` 
 	   *   r a n g e .   E . g .   i t s   ` e o f ( ) `   m e t h o d   w i l l   l o o k   a t   ` e n d `   p r o p e r t y ,   n o t   a c t u a l 
 	   *   s t r e a m   e n d 
 	   *   @ p a r a m     { P o i n t }   s t a r t 
 	   *   @ p a r a m     { P o i n t }   e n d 
 	   *   @ r e t u r n   { S t r e a m R e a d e r } 
 	   * / 
 	 l i m i t ( s t a r t ,   e n d )   { 
 	 	 r e t u r n   n e w   t h i s . c o n s t r u c t o r ( t h i s . s t r i n g ,   s t a r t ,   e n d ) ; 
 	 } 
 
 	 / * * 
 	   *   R e t u r n s   t h e   n e x t   c h a r a c t e r   c o d e   i n   t h e   s t r e a m   w i t h o u t   a d v a n c i n g   i t . 
 	   *   W i l l   r e t u r n   N a N   a t   t h e   e n d   o f   t h e   f i l e . 
 	   *   @ r e t u r n s   { N u m b e r } 
 	   * / 
 	 p e e k ( )   { 
 	 	 r e t u r n   t h i s . s t r i n g . c h a r C o d e A t ( t h i s . p o s ) ; 
 	 } 
 
 	 / * * 
 	   *   R e t u r n s   t h e   n e x t   c h a r a c t e r   i n   t h e   s t r e a m   a n d   a d v a n c e s   i t . 
 	   *   A l s o   r e t u r n s   < c o d e > u n d e f i n e d < / c o d e >   w h e n   n o   m o r e   c h a r a c t e r s   a r e   a v a i l a b l e . 
 	   *   @ r e t u r n s   { N u m b e r } 
 	   * / 
 	 n e x t ( )   { 
 	 	 i f   ( t h i s . p o s   <   t h i s . s t r i n g . l e n g t h )   { 
 	 	 	 r e t u r n   t h i s . s t r i n g . c h a r C o d e A t ( t h i s . p o s + + ) ; 
 	 	 } 
 	 } 
 
 	 / * * 
 	   *   ` m a t c h `   c a n   b e   a   c h a r a c t e r   c o d e   o r   a   f u n c t i o n   t h a t   t a k e s   a   c h a r a c t e r   c o d e 
 	   *   a n d   r e t u r n s   a   b o o l e a n .   I f   t h e   n e x t   c h a r a c t e r   i n   t h e   s t r e a m   ' m a t c h e s ' 
 	   *   t h e   g i v e n   a r g u m e n t ,   i t   i s   c o n s u m e d   a n d   r e t u r n e d . 
 	   *   O t h e r w i s e ,   ` f a l s e `   i s   r e t u r n e d . 
 	   *   @ p a r a m   { N u m b e r | F u n c t i o n }   m a t c h 
 	   *   @ r e t u r n s   { B o o l e a n } 
 	   * / 
 	 e a t ( m a t c h )   { 
 	 	 c o n s t   c h   =   t h i s . p e e k ( ) ; 
 	 	 c o n s t   o k   =   t y p e o f   m a t c h   = = =   ' f u n c t i o n '   ?   m a t c h ( c h )   :   c h   = = =   m a t c h ; 
 
 	 	 i f   ( o k )   { 
 	 	 	 t h i s . n e x t ( ) ; 
 	 	 } 
 
 	 	 r e t u r n   o k ; 
 	 } 
 
 	 / * * 
 	   *   R e p e a t e d l y   c a l l s   < c o d e > e a t < / c o d e >   w i t h   t h e   g i v e n   a r g u m e n t ,   u n t i l   i t 
 	   *   f a i l s .   R e t u r n s   < c o d e > t r u e < / c o d e >   i f   a n y   c h a r a c t e r s   w e r e   e a t e n . 
 	   *   @ p a r a m   { O b j e c t }   m a t c h 
 	   *   @ r e t u r n s   { B o o l e a n } 
 	   * / 
 	 e a t W h i l e ( m a t c h )   { 
 	 	 c o n s t   s t a r t   =   t h i s . p o s ; 
 	 	 w h i l e   ( ! t h i s . e o f ( )   & &   t h i s . e a t ( m a t c h ) )   { } 
 	 	 r e t u r n   t h i s . p o s   ! = =   s t a r t ; 
 	 } 
 
 	 / * * 
 	   *   B a c k s   u p   t h e   s t r e a m   n   c h a r a c t e r s .   B a c k i n g   i t   u p   f u r t h e r   t h a n   t h e 
 	   *   s t a r t   o f   t h e   c u r r e n t   t o k e n   w i l l   c a u s e   t h i n g s   t o   b r e a k ,   s o   b e   c a r e f u l . 
 	   *   @ p a r a m   { N u m b e r }   n 
 	   * / 
 	 b a c k U p ( n )   { 
 	 	 t h i s . p o s   - =   ( n   | |   1 ) ; 
 	 } 
 
 	 / * * 
 	   *   G e t   t h e   s t r i n g   b e t w e e n   t h e   s t a r t   o f   t h e   c u r r e n t   t o k e n   a n d   t h e 
 	   *   c u r r e n t   s t r e a m   p o s i t i o n . 
 	   *   @ r e t u r n s   { S t r i n g } 
 	   * / 
 	 c u r r e n t ( )   { 
 	 	 r e t u r n   t h i s . s u b s t r i n g ( t h i s . s t a r t ,   t h i s . p o s ) ; 
 	 } 
 
 	 / * * 
 	   *   R e t u r n s   s u b s t r i n g   f o r   g i v e n   r a n g e 
 	   *   @ p a r a m     { N u m b e r }   s t a r t 
 	   *   @ p a r a m     { N u m b e r }   [ e n d ] 
 	   *   @ r e t u r n   { S t r i n g } 
 	   * / 
 	 s u b s t r i n g ( s t a r t ,   e n d )   { 
 	 	 r e t u r n   t h i s . s t r i n g . s l i c e ( s t a r t ,   e n d ) ; 
 	 } 
 
 	 / * * 
 	   *   C r e a t e s   e r r o r   o b j e c t   w i t h   c u r r e n t   s t r e a m   s t a t e 
 	   *   @ p a r a m   { S t r i n g }   m e s s a g e 
 	   *   @ r e t u r n   { E r r o r } 
 	   * / 
 	 e r r o r ( m e s s a g e )   { 
 	 	 c o n s t   e r r   =   n e w   E r r o r ( ` $ { m e s s a g e }   a t   c h a r   $ { t h i s . p o s   +   1 } ` ) ; 
 	 	 e r r . o r i g i n a l M e s s a g e   =   m e s s a g e ; 
 	 	 e r r . p o s   =   t h i s . p o s ; 
 	 	 e r r . s t r i n g   =   t h i s . s t r i n g ; 
 	 	 r e t u r n   e r r ; 
 	 } 
 } 
 
 m o d u l e . e x p o r t s   =   S t r e a m R e a d e r ; 
 
 } , { } ] , 2 0 : [ f u n c t i o n ( r e q u i r e , m o d u l e , e x p o r t s ) { 
 ' u s e   s t r i c t ' ; 
 
 O b j e c t . d e f i n e P r o p e r t y ( e x p o r t s ,   ' _ _ e s M o d u l e ' ,   {   v a l u e :   t r u e   } ) ; 
 
 f u n c t i o n   _ i n t e r o p D e f a u l t   ( e x )   {   r e t u r n   ( e x   & &   ( t y p e o f   e x   = = =   ' o b j e c t ' )   & &   ' d e f a u l t '   i n   e x )   ?   e x [ ' d e f a u l t ' ]   :   e x ;   } 
 
 v a r   r e n d e r   =   _ i n t e r o p D e f a u l t ( r e q u i r e ( ' @ e m m e t i o / o u t p u t - r e n d e r e r ' ) ) ; 
 v a r   p a r s e F i e l d s   =   _ i n t e r o p D e f a u l t ( r e q u i r e ( ' @ e m m e t i o / f i e l d - p a r s e r ' ) ) ; 
 
 c o n s t   d e f a u l t F o r m a t O p t i o n s   =   { 
 	 s h o r t H e x :   t r u e , 
 	 b e t w e e n :   ' :   ' , 
 	 a f t e r :   ' ; ' 
 } ; 
 
 / * * 
   *   R e n d e r s   g i v e n   p a r s e d   E m m e t   C S S   a b b r e v i a t i o n   a s   C S S - l i k e 
   *   s t y l e s h e e t ,   f o r m a t t e d   a c c o r d i n g   t o   ` p r o f i l e `   o p t i o n s 
   *   @ p a r a m     { N o d e }           t r e e         P a r s e d   E m m e t   a b b r e v i a t i o n 
   *   @ p a r a m     { P r o f i l e }     p r o f i l e   O u t p u t   p r o f i l e 
   *   @ p a r a m     { O b j e c t }     [ o p t i o n s ]   A d d i t i o n a l   f o r m a t t e r   o p t i o n s 
   *   @ r e t u r n   { S t r i n g } 
   * / 
 f u n c t i o n   c s s ( t r e e ,   p r o f i l e ,   o p t i o n s )   { 
 	 o p t i o n s   =   o p t i o n s   | |   { } ; 
 	 c o n s t   f o r m a t O p t   =   O b j e c t . a s s i g n ( { } ,   d e f a u l t F o r m a t O p t i o n s ,   o p t i o n s   & &   o p t i o n s . f o r m a t ) ; 
 
 	 r e t u r n   r e n d e r ( t r e e ,   o p t i o n s . f i e l d ,   o u t N o d e   = >   { 
 	 	 c o n s t   n o d e   =   o u t N o d e . n o d e ; 
 	 	 l e t   v a l u e   =   s t r i n g i f y V a l u e ( n o d e ,   f o r m a t O p t ) ; 
 
 	 	 i f   ( n o d e . a t t r i b u t e s . l e n g t h )   { 
 	 	 	 c o n s t   f i e l d V a l u e s   =   n o d e . a t t r i b u t e s . m a p ( a t t r   = >   s t r i n g i f y V a l u e ( a t t r ,   f o r m a t O p t ) ) ; 
 	 	 	 v a l u e   =   i n j e c t F i e l d s ( v a l u e ,   f i e l d V a l u e s ) ; 
 	 	 } 
 
 	 	 o u t N o d e . o p e n   =   n o d e . n a m e   & &   p r o f i l e . n a m e ( n o d e . n a m e ) ; 
 	 	 o u t N o d e . a f t e r O p e n   =   f o r m a t O p t . b e t w e e n ; 
 	 	 o u t N o d e . t e x t   =   o u t N o d e . r e n d e r F i e l d s ( v a l u e   | |   n u l l ) ; 
 
 	 	 i f   ( o u t N o d e . o p e n   & &   ( ! o u t N o d e . t e x t   | |   ! o u t N o d e . t e x t . e n d s W i t h ( ' ; ' ) ) )   { 
 	 	 	 o u t N o d e . a f t e r T e x t   =   f o r m a t O p t . a f t e r ; 
 	 	 } 
 
 	 	 i f   ( p r o f i l e . g e t ( ' f o r m a t ' ) )   { 
 	 	 	 o u t N o d e . n e w l i n e   =   ' \ n ' ; 
 	 	 	 i f   ( t r e e . l a s t C h i l d   ! = =   n o d e )   { 
 	 	 	 	 o u t N o d e . a f t e r T e x t   + =   o u t N o d e . n e w l i n e ; 
 	 	 	 } 
 	 	 } 
 
 	 	 r e t u r n   o u t N o d e ; 
 	 } ) ; 
 } 
 
 / * * 
   *   I n j e c t s   g i v e n   f i e l d   v a l u e s   a t   e a c h   f i e l d   o f   g i v e n   s t r i n g 
   *   @ p a r a m     { S t r i n g }       s t r i n g 
   *   @ p a r a m     { S t r i n g [ ] }   a t t r i b u t e s 
   *   @ r e t u r n   { F i e l d S t r i n g } 
   * / 
 f u n c t i o n   i n j e c t F i e l d s ( s t r i n g ,   v a l u e s )   { 
 	 c o n s t   f i e l d s M o d e l   =   p a r s e F i e l d s ( s t r i n g ) ; 
 	 c o n s t   f i e l d s A m o u n t   =   f i e l d s M o d e l . f i e l d s . l e n g t h ; 
 
 	 i f   ( f i e l d s A m o u n t )   { 
 	 	 v a l u e s   =   v a l u e s . s l i c e ( ) ; 
 	 	 i f   ( v a l u e s . l e n g t h   >   f i e l d s A m o u n t )   { 
 	 	 	 / /   M o r e   v a l u e s   t h a t   o u t p u t   f i e l d s :   c o l l a p s e   r e s t   v a l u e s   i n t o 
 	 	 	 / /   a   s i n g l e   t o k e n 
 	 	 	 v a l u e s   =   v a l u e s . s l i c e ( 0 ,   f i e l d s A m o u n t   -   1 ) 
 	 	 	 	 . c o n c a t ( v a l u e s . s l i c e ( f i e l d s A m o u n t   -   1 ) . j o i n ( ' ,   ' ) ) ; 
 	 	 } 
 
 	 	 w h i l e   ( v a l u e s . l e n g t h )   { 
 	 	 	 c o n s t   v a l u e   =   v a l u e s . s h i f t ( ) ; 
 	 	 	 c o n s t   f i e l d   =   f i e l d s M o d e l . f i e l d s . s h i f t ( ) ; 
 	 	 	 c o n s t   d e l t a   =   v a l u e . l e n g t h   -   f i e l d . l e n g t h ; 
 
 	 	 	 f i e l d s M o d e l . s t r i n g   =   f i e l d s M o d e l . s t r i n g . s l i c e ( 0 ,   f i e l d . l o c a t i o n ) 
 	 	 	 	 +   v a l u e 
 	 	 	 	 +   f i e l d s M o d e l . s t r i n g . s l i c e ( f i e l d . l o c a t i o n   +   f i e l d . l e n g t h ) ; 
 
 	 	 	 / /   U p d a t e   l o c a t i o n   o f   t h e   r e s t   f i e l d s   i n   s t r i n g 
 	 	 	 f o r   ( l e t   i   =   0 ,   i l   =   f i e l d s M o d e l . f i e l d s . l e n g t h ;   i   <   i l ;   i + + )   { 
 	 	 	 	 f i e l d s M o d e l . f i e l d s [ i ] . l o c a t i o n   + =   d e l t a ; 
 	 	 	 } 
 	 	 } 
 	 } 
 
 	 r e t u r n   f i e l d s M o d e l ; 
 } 
 
 f u n c t i o n   s t r i n g i f y V a l u e ( n o d e ,   o p t i o n s )   { 
 	 i f   ( n o d e . v a l u e   & &   t y p e o f   n o d e . v a l u e   = = =   ' o b j e c t '   & &   n o d e . v a l u e . t y p e   = = =   ' c s s - v a l u e ' )   { 
 	 	 r e t u r n   n o d e . v a l u e . v a l u e 
 	 	 . m a p ( t o k e n   = >   { 
 	 	 	 i f   ( t o k e n   & &   t y p e o f   t o k e n   = = =   ' o b j e c t ' )   { 
 	 	 	 	 r e t u r n   t o k e n . t y p e   = = =   ' c o l o r ' 
 	 	 	 	 	 ?   t o k e n . t o S t r i n g ( o p t i o n s . s h o r t H e x ) 
 	 	 	 	 	 :   t o k e n . t o S t r i n g ( ) ; 
 	 	 	 } 
 
 	 	 	 r e t u r n   S t r i n g ( t o k e n ) ; 
 	 	 } ) 
 	 	 . j o i n ( '   ' ) ; 
 	 } 
 
 	 r e t u r n   n o d e . v a l u e   ! =   n u l l   ?   S t r i n g ( n o d e . v a l u e )   :   ' ' ; 
 } 
 
 c o n s t   s y n t a x F o r m a t   =   { 
 	 c s s :   { 
 	 	 b e t w e e n :   ' :   ' , 
 	 	 a f t e r :   ' ; ' 
 	 } , 
 	 s c s s :   ' c s s ' , 
 	 l e s s :   ' c s s ' , 
 	 s a s s :   { 
 	 	 b e t w e e n :   ' :   ' , 
 	 	 a f t e r :   ' ' 
 	 } , 
 	 s t y l u s :   { 
 	 	 b e t w e e n :   '   ' , 
 	 	 a f t e r :   ' ' 
 	 } 
 } ; 
 
 / * * 
   *   O u t p u t s   g i v e n   p a r s e d   a b b r e v i a t i o n   i n   s p e c i f i e d   s t y l e s h e e t   s y n t a x 
   *   @ p a r a m   { N o d e }           t r e e           P a r s e d   a b b r e v i a t i o n   t r e e 
   *   @ p a r a m   { P r o f i l e }     p r o f i l e     O u t p u t   p r o f i l e 
   *   @ p a r a m   { S t r i n g }       [ s y n t a x ]   O u t p u t   s y n t a x .   I f   n o t   g i v e n ,   ` c s s `   s y n t a x   i s   u s e d 
   *   @ p a r a m   { F u n c t i o n }   o p t i o n s . f i e l d   A   f u n c t i o n   t o   o u t p u t   f i e l d / t a b s t o p   f o r 
   *   h o s t   e d i t o r .   T h i s   f u n c t i o n   t a k e s   t w o   a r g u m e n t s :   ` i n d e x `   a n d   ` p l a c e h o l d e r `   a n d 
   *   s h o u l d   r e t u r n   a   s t r i n g   t h a t   r e p r e s e n t s   t a b s t o p   i n   h o s t   e d i t o r .   B y   d e f a u l t 
   *   o n l y   a   p l a c e h o l d e r   i s   r e t u r n e d 
   *   @ e x a m p l e 
   *   { 
   *   	 f i e l d ( i n d e x ,   p l a c e h o l d e r )   { 
   *   	 	 / /   r e t u r n   f i e l d   i n   T e x t M a t e - s t y l e ,   e . g .   $ { 1 }   o r   $ { 2 : f o o } 
   *   	 	 r e t u r n   ` \ $ { $ { i n d e x } $ { p l a c e h o l d e r   ?   ' : '   +   p l a c e h o l d e r   :   ' ' } } ` ; 
   *     } 
   *   } 
   *   @ r e t u r n   { S t r i n g } 
   * / 
 f u n c t i o n   i n d e x ( t r e e ,   p r o f i l e ,   s y n t a x ,   o p t i o n s )   { 
 	 i f   ( t y p e o f   s y n t a x   = = =   ' o b j e c t ' )   { 
 	 	 o p t i o n s   =   s y n t a x ; 
 	 	 s y n t a x   =   n u l l ; 
 	 } 
 
 	 i f   ( ! s u p p o r t s ( s y n t a x ) )   { 
 	 	 / /   f a l l b a c k   t o   C S S   i f   g i v e n   s y n t a x   i s   n o t   s u p p o r t e d 
 	 	 s y n t a x   =   ' c s s ' ; 
 	 } 
 
 	 o p t i o n s   =   O b j e c t . a s s i g n ( { } ,   o p t i o n s ,   { 
 	 	 f o r m a t :   g e t F o r m a t ( s y n t a x ,   o p t i o n s ) 
 	 } ) ; 
 
 	 / /   C S S   a b b r e v i a t i o n s   d o e s n  t   s u p p o r t   n e s t i n g   s o   s i m p l y 
 	 / /   o u t p u t   r o o t   n o d e   c h i l d r e n 
 	 r e t u r n   c s s ( t r e e ,   p r o f i l e ,   o p t i o n s ) ; 
 } 
 
 / * * 
   *   C h e c k   i f   g i v e n   s y n t a x   i s   s u p p o r t e d 
   *   @ p a r a m   { S t r i n g }   s y n t a x 
   *   @ r e t u r n   { B o o l e a n } 
   * / 
 f u n c t i o n   s u p p o r t s ( s y n t a x )   { 
 	 r e t u r n   ! ! s y n t a x   & &   s y n t a x   i n   s y n t a x F o r m a t ; 
 } 
 
 / * * 
   *   R e t u r n s   f o r m a t t e r   o b j e c t   f o r   g i v e n   s y n t a x 
   *   @ p a r a m     { S t r i n g }   s y n t a x 
   *   @ p a r a m     { O b j e c t }   [ o p t i o n s ] 
   *   @ r e t u r n   { O b j e c t }   F o r m a t t e r   o b j e c t   a s   d e f i n e d   i n   ` s y n t a x F o r m a t ` 
   * / 
 f u n c t i o n   g e t F o r m a t ( s y n t a x ,   o p t i o n s )   { 
 	 l e t   f o r m a t   =   s y n t a x F o r m a t [ s y n t a x ] ; 
 	 i f   ( t y p e o f   f o r m a t   = = =   ' s t r i n g ' )   { 
 	 	 f o r m a t   =   s y n t a x F o r m a t [ f o r m a t ] ; 
 	 } 
 
 	 r e t u r n   O b j e c t . a s s i g n ( { } ,   f o r m a t ,   o p t i o n s   & &   o p t i o n s . f o r m a t ) ; 
 } 
 
 e x p o r t s . d e f a u l t   =   i n d e x ; 
 e x p o r t s . s u p p o r t s   =   s u p p o r t s ; 
 
 
 } , { " @ e m m e t i o / f i e l d - p a r s e r " : 6 , " @ e m m e t i o / o u t p u t - r e n d e r e r " : 1 5 } ] , 2 1 : [ f u n c t i o n ( r e q u i r e , m o d u l e , e x p o r t s ) { 
 ' u s e   s t r i c t ' ; 
 
 / * * 
   *   R e p l a c e s   a l l   u n e s c a p e d   $ { v a r i a b l e }   o c c u r a n c e s   i n   g i v e n   p a r s e d   a b b r e v i a t i o n 
   *   ` t r e e `   w i t h   v a l u e s   p r o v i d e d   i n   ` v a r i a b l e s `   h a s h .   P r e c e d e   ` $ `   w i t h   ` \ `   t o 
   *   e s c a p e   i t   a n d   s k i p   r e p l a c e m e n t 
   *   @ p a r a m   { N o d e }   t r e e   P a r s e d   a b b r e v i a t i o n   t r e e 
   *   @ p a r a m   { O b j e c t }   v a r i a b l e s   V a r i a b l e s   v a l u e s 
   *   @ r e t u r n   { N o d e } 
   * / 
 f u n c t i o n   r e p l a c e V a r i a b l e s ( t r e e ,   v a r i a b l e s )   { 
 	 v a r i a b l e s   =   v a r i a b l e s   | |   { } ; 
         t r e e . w a l k ( n o d e   = >   r e p l a c e I n N o d e ( n o d e ,   v a r i a b l e s ) ) ; 
         r e t u r n   t r e e ; 
 } 
 
 f u n c t i o n   r e p l a c e I n N o d e ( n o d e ,   v a r i a b l e s )   { 
         / /   R e p l a c e   v a r i a b l e s   i n   a t t r i b u t e s . 
         c o n s t   a t t r s   =   n o d e . a t t r i b u t e s ; 
 
         f o r   ( l e t   i   =   0 ,   i l   =   a t t r s . l e n g t h ;   i   <   i l ;   i + + )   { 
                 c o n s t   a t t r   =   a t t r s [ i ] ; 
                 i f   ( t y p e o f   a t t r . v a l u e   = = =   ' s t r i n g ' )   { 
                         n o d e . s e t A t t r i b u t e ( a t t r . n a m e ,   r e p l a c e I n S t r i n g ( a t t r . v a l u e ,   v a r i a b l e s ) ) ; 
                 } 
         } 
 
         i f   ( n o d e . v a l u e   ! =   n u l l )   { 
                 n o d e . v a l u e   =   r e p l a c e I n S t r i n g ( n o d e . v a l u e ,   v a r i a b l e s ) ; 
         } 
 
         r e t u r n   n o d e ; 
 } 
 
 / * * 
   *   R e p l a c e s   a l l   u n e s c a p e d   ` $ { v a r i a b l e } `   o c c u r a n c e s   i n   g i v e n   s t r i n g   w i t h   v a l u e s 
   *   f r o m   ` v a r i a b l e s `   o b j e c t 
   *   @ p a r a m     { S t r i n g }   s t r i n g 
   *   @ p a r a m     { O b j e c t }   v a r i a b l e s 
   *   @ r e t u r n   { S t r i n g } 
   * / 
 f u n c t i o n   r e p l a c e I n S t r i n g ( s t r i n g ,   v a r i a b l e s )   { 
         c o n s t   m o d e l   =   c r e a t e M o d e l ( s t r i n g ) ; 
         l e t   o f f s e t   =   0 ; 
         l e t   o u t p u t   =   ' ' ; 
 
         f o r   ( l e t   i   =   0 ,   i l   =   m o d e l . v a r i a b l e s . l e n g t h ;   i   <   i l ;   i + + )   { 
                 c o n s t   v   =   m o d e l . v a r i a b l e s [ i ] ; 
                 l e t   v a l u e   =   v . n a m e   i n   v a r i a b l e s   ?   v a r i a b l e s [ v . n a m e ]   :   v . n a m e ; 
                 i f   ( t y p e o f   v a l u e   = = =   ' f u n c t i o n ' )   { 
                         v a l u e   =   v a l u e ( m o d e l . s t r i n g ,   v ,   o f f s e t   +   v . l o c a t i o n ) ; 
                 } 
 
                 o u t p u t   + =   m o d e l . s t r i n g . s l i c e ( o f f s e t ,   v . l o c a t i o n )   +   v a l u e ; 
                 o f f s e t   =   v . l o c a t i o n   +   v . l e n g t h ; 
         } 
 
         r e t u r n   o u t p u t   +   m o d e l . s t r i n g . s l i c e ( o f f s e t ) ; 
 } 
 
 / * * 
   *   C r e a t e s   v a r i a b l e   m o d e l   f r o m   g i v e n   s t r i n g .   T h e   m o d e l   c o n t a i n s   a   ` s t r i n g `   w i t h 
   *   a l l   e s c a p e d   v a r i a b l e   t o k e n s   w r i t t e n   w i t h o u t   e s c a p e   s y m b o l   a n d   ` v a r i a b l e s ` 
   *   p r o p e r t y   w i t h   a l l   u n e s c a p e d   v a r i a b l e s   a n d   t h e i r   r a n g e s 
   *   @ p a r a m     { S t r i n g }   s t r i n g 
   *   @ r e t u r n   { O b j e c t } 
   * / 
 f u n c t i o n   c r e a t e M o d e l ( s t r i n g )   { 
         c o n s t   r e V a r i a b l e   =   / \ $ \ { ( [ a - z ] [ \ w \ - ] * ) \ } / i g ; 
         c o n s t   e s c a p e C h a r C o d e   =   9 2 ;   / /   ` \ `   s y m b o l 
         c o n s t   v a r i a b l e s   =   [ ] ; 
 
         / /   W e   h a v e   t o   r e p l a c e   u n e s c a p e d   ( e . g .   n o t   p r e c e d e d   w i t h   ` \ ` )   t o k e n s . 
         / /   I n s t e a d   o f   w r i t i n g   a   s t r e a m   p a r s e r ,   w e  l l   c u t   s o m e   e d g e s   h e r e : 
         / /   1 .   F i n d   a l l   t o k e n s 
         / /   2 .   W a l k   s t r i n g   c h a r - b y - c h a r   a n d   r e s o l v e   o n l y   t o k e n s   t h a t   a r e   n o t   e s c a p e d 
         c o n s t   t o k e n s   =   n e w   M a p ( ) ; 
         l e t   m ; 
         w h i l e   ( m   =   r e V a r i a b l e . e x e c ( s t r i n g ) )   { 
                 t o k e n s . s e t ( m . i n d e x ,   m ) ; 
         } 
 
         i f   ( t o k e n s . s i z e )   { 
                 l e t   s t a r t   =   0 ,   p o s   =   0 ,   l e n   =   s t r i n g . l e n g t h ; 
                 l e t   o u t p u t   =   ' ' ; 
                 w h i l e   ( p o s   <   l e n )   { 
                         i f   ( s t r i n g . c h a r C o d e A t ( p o s )   = = =   e s c a p e C h a r C o d e   & &   t o k e n s . h a s ( p o s   +   1 ) )   { 
                                 / /   F o u n d   e s c a p e   s y m b o l   t h a t   e s c a p e s   v a r i a b l e :   w e   s h o u l d 
                                 / /   o m i t   t h i s   s y m b o l   i n   o u t p u t   s t r i n g   a n d   s k i p   v a r i a b l e 
                                 c o n s t   t o k e n   =   t o k e n s . g e t ( p o s   +   1 ) ; 
                                 o u t p u t   + =   s t r i n g . s l i c e ( s t a r t ,   p o s )   +   t o k e n [ 0 ] ; 
                                 s t a r t   =   p o s   =   t o k e n . i n d e x   +   t o k e n [ 0 ] . l e n g t h ; 
                                 t o k e n s . d e l e t e ( p o s   +   1 ) ; 
                                 c o n t i n u e ; 
                         } 
 
                         p o s + + ; 
                 } 
 
                 s t r i n g   =   o u t p u t   +   s t r i n g . s l i c e ( s t a r t ) ; 
 
                 / /   N o t   u s i n g   ` . m a p ( ) `   h e r e   t o   r e d u c e   m e m o r y   a l l o c a t i o n s 
                 c o n s t   v a l i d M a t c h e s   =   A r r a y . f r o m ( t o k e n s . v a l u e s ( ) ) ; 
                 f o r   ( l e t   i   =   0 ,   i l   =   v a l i d M a t c h e s . l e n g t h ;   i   <   i l ;   i + + )   { 
                         c o n s t   t o k e n   =   v a l i d M a t c h e s [ i ] ; 
                         v a r i a b l e s . p u s h ( { 
                                 n a m e :   t o k e n [ 1 ] , 
                                 l o c a t i o n :   t o k e n . i n d e x , 
                                 l e n g t h :   t o k e n [ 0 ] . l e n g t h 
                         } ) ; 
                 } 
         } 
 
         r e t u r n   { s t r i n g ,   v a r i a b l e s } ; 
 } 
 
 m o d u l e . e x p o r t s   =   r e p l a c e V a r i a b l e s ; 
 
 } , { } ] } , { } , [ 1 ] ) ; 
 ; O b j C . i m p o r t ( " s t d l i b " ) ; 
 
 
 v a r   a r g s   =   $ . N S P r o c e s s I n f o . p r o c e s s I n f o . a r g u m e n t s 
 / /   B u i l d   t h e   n o r m a l   a r g v / a r g c 
 v a r   a r g v   =   [ ] 
 v a r   a r g c   =   a r g s . c o u n t   / /   - [ N S A r r a y   c o u n t ] 
 
 f o r   ( v a r   i   =   0 ;   i   <   a r g c ;   i + + )   { 
         a r g v . p u s h (   O b j C . u n w r a p (   a r g s . o b j e c t A t I n d e x ( i )   )   )   / /   - [ N S A r r a y   o b j e c t A t I n d e x : ] 
 } 
 d e l e t e   a r g s 
 v a r   [ ,   ,   s n i p ,   s y n t a x ]   =   a r g v 
 a p p . r u n ( s n i p ,   s y n t a x ) 
 
                                   v�jscr  ��ޭ