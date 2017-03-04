Ÿ
sC:\Users\valen\OneDrive\Documents Polytech\Cours\DII5\OutilsFormels\OutilsFormels\OutilsFormels\AddCardView.xaml.cs
	namespace 	
OutilsFormels
 
{ 
public 

partial 
class 
AddCardView $
:% &
Window' -
{ 
public 
int 
type 
{ 
get 
; 
set "
;" #
}$ %
=& '
$num( )
;) *
public 
int 
month 
{ 
get 
; 
set  #
;# $
}% &
=' (
$num) *
;* +
public 
User 
user 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
number 
{ 
get "
;" #
set$ '
;' (
}) *
public 
AddCardView 
( 
User 
_user  %
)% &
{ 	
InitializeComponent 
(  
)  !
;! "
user 
= 
_user 
; 
} 	
private!! 
void!! #
cbType_SelectionChanged!! ,
(!!, -
object!!- 3
sender!!4 :
,!!: ;%
SelectionChangedEventArgs!!< U
e!!V W
)!!W X
{"" 	
type## 
=## 
cbType## 
.## 
SelectedIndex## '
;##' (
}$$ 	
private&& 
void&& 
bValidate_Click&& $
(&&$ %
object&&% +
sender&&, 2
,&&2 3
RoutedEventArgs&&4 C
e&&D E
)&&E F
{'' 	
DateTime(( 

expiration(( 
=((  !
new((" %
DateTime((& .
(((. /
Int32((/ 4
.((4 5
Parse((5 :
(((: ;
tbYear((; A
.((A B
Text((B F
)((F G
,((G H
month((I N
,((N O
$num((P Q
)((Q R
;((R S
number)) 
=)) 
StringCipher)) !
.))! "
Encrypt))" )
())) *
tbNumber))* 2
.))2 3
Text))3 7
,))7 8
user))9 =
.))= >
login))> C
)))C D
;))D E
Card** 
card** 
=** 
new** 
Card**  
(**  !
$num**! "
,**" #
number**$ *
,*** +

expiration**, 6
,**6 7
type**8 <
,**< =
user**> B
.**B C
userID**C I
)**I J
;**J K
addCard++ 
(++ 
ref++ 
card++ 
)++ 
;++ 
DialogResult-- 
=-- 
true-- 
;--  
this.. 
... 
Close.. 
(.. 
).. 
;.. 
}// 	
private11 
void11 $
cbMonth_SelectionChanged11 -
(11- .
object11. 4
sender115 ;
,11; <%
SelectionChangedEventArgs11= V
e11W X
)11X Y
{22 	
month33 
=33 
cbMonth33 
.33 
SelectedIndex33 )
+33* +
$num33, -
;33- .
}44 	
private66 
void66 
addCard66 
(66 
ref66  
Card66! %
card66& *
)66* +
{77 	
BDD88 
mybdd88 
=88 
new88 
BDD88 
(88  
)88  !
;88! "
mybdd99 
.99 
addCard99 
(99 
card99 
)99 
;99  
}:: 	
};; 
}<< „
gC:\Users\valen\OneDrive\Documents Polytech\Cours\DII5\OutilsFormels\OutilsFormels\OutilsFormels\Card.cs
	namespace 	
OutilsFormels
 
{ 
public		 

class		 
Card		 
{

 
public 
int 
cardID 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
number 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 

expiration "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
int 
type 
{ 
get 
; 
set "
;" #
}$ %
public 
int 
	fk_userID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
Card 
( 
int 
cardID 
, 
string  &
number' -
,- .
DateTime/ 7

expiration8 B
,B C
intD G
typeH L
,L M
intN Q
	fk_userIDR [
)[ \
{ 	
this 
. 
cardID 
= 
cardID  
;  !
this 
. 
number 
= 
number  
;  !
this 
. 

expiration 
= 

expiration (
;( )
this 
. 
type 
= 
type 
; 
this 
. 
	fk_userID 
= 
	fk_userID &
;& '
} 	
public 
override 
string 
ToString '
(' (
)( )
{ 	
return 
this 
. 
number 
; 
} 	
} 
} Ä$
qC:\Users\valen\OneDrive\Documents Polytech\Cours\DII5\OutilsFormels\OutilsFormels\OutilsFormels\LoginPage.xaml.cs
	namespace 	
OutilsFormels
 
{ 
public 

partial 
class 
	LoginPage "
:# $
Window% +
{ 
public 
	LoginPage 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
public 
bool 
ValiderFunction #
(# $
ref$ '
User( ,
user- 1
)2 3
{   	
try!! 
{"" 
if## 
(## 
user## 
.## 
login## 
==## !
$str##" $
||##% '
user##( ,
.##, -
password##- 5
==##6 8
$str##9 ;
)##; <
{$$ 
throw%% 
new%% 
	Exception%% '
(%%' (
$str%%( D
)%%D E
;%%E F
}&& 
BDD(( 
mybdd(( 
=(( 
new(( 
BDD((  #
(((# $
)(($ %
;((% &
User)) 
userTest)) 
=)) 
new))  #
User))$ (
())( )
)))) *
;))* +
if** 
(** 
mybdd** 
.** 
getUser** !
(**! "
user**" &
.**& '
login**' ,
,**, -
ref**. 1
userTest**2 :
)**: ;
!=**< >
$num**? @
)**@ A
{++ 
throw,, 
new,, 
	Exception,, '
(,,' (
$str,,( M
),,M N
;,,N O
}-- 
string.. 
hashedPassword.. %
=..& '
user..( ,
..., -
password..- 5
;..5 6
user// 
=// 
userTest// 
;//  
return00 
BCrypt00 
.00 
Net00 !
.00! "
BCrypt00" (
.00( )
Verify00) /
(00/ 0
hashedPassword001 ?
,00? @
user00A E
.00E F
password00F N
)00N O
;00O P
}22 
catch33 
{44 
return55 
false55 
;55 
}66 
}88 	
private:: 
void:: 
btSignIn_Click:: #
(::# $
object::$ *
sender::+ 1
,::1 2
RoutedEventArgs::3 B
e::C D
)::D E
{;; 	
RegisterPage<< 
Rpage<< 
=<<  
new<<! $
RegisterPage<<% 1
(<<1 2
)<<2 3
;<<3 4
Rpage== 
.== 

ShowDialog== 
(== 
)== 
;== 
}>> 	
private@@ 
void@@ 
btValider_Click@@ $
(@@$ %
object@@% +
sender@@, 2
,@@2 3
RoutedEventArgs@@4 C
e@@D E
)@@E F
{AA 	
tryBB 
{CC 
UserDD 
userDD 
=DD 
newDD 
UserDD #
(DD# $
$numDD$ %
,DD% &
$strDD' )
,DD) *
$strDD+ -
,DD- .
$strDD/ 1
,DD1 2
passwordBoxDD3 >
.DD> ?
PasswordDD? G
,DDG H
txtLoginDDI Q
.DDQ R
TextDDR V
)DDV W
;DDW X
boolEE 
IsValidEE 
=EE 
ValiderFunctionEE -
(EE- .
refEE. 1
userEE2 6
)EE6 7
;EE7 8
ifFF 
(FF 
IsValidFF 
)FF 
{GG 
ViewPageHH 
viewPageHH %
=HH& '
newHH( +
ViewPageHH, 4
(HH4 5
userHH5 9
)HH9 :
;HH: ;
viewPageII 
.II 
ShowII !
(II! "
)II" #
;II# $
thisJJ 
.JJ 
CloseJJ 
(JJ 
)JJ  
;JJ  !
}KK 
elseLL 
{MM 
throwNN 
newNN 
	ExceptionNN '
(NN' (
$strNN( E
)NNE F
;NNF G
}OO 
}PP 
catchQQ 
(QQ 
	ExceptionQQ 
exQQ 
)QQ  
{RR 
lblErrorMsgSS 
.SS 
ContentSS #
=SS$ %
exSS& (
.SS( )
MessageSS) 0
;SS0 1
}TT 
}UU 	
}VV 
}WW Å=
tC:\Users\valen\OneDrive\Documents Polytech\Cours\DII5\OutilsFormels\OutilsFormels\OutilsFormels\RegisterPage.xaml.cs
	namespace 	
OutilsFormels
 
{ 
public 

partial 
class 
RegisterPage %
:& '
Window( .
{ 
public 
RegisterPage 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
btRegister_Click %
(% &
object& ,
sender- 3
,3 4
RoutedEventArgs5 D
eE F
)F G
{ 	
try 
{   
if!! 
(!! 
!!! 
isValidstring!! "
(!!" #
tbLogin!!# *
.!!* +
Text!!+ /
,!!/ 0
$num!!1 2
,!!2 3
$num!!4 6
)!!6 7
)!!7 8
{!!9 :
throw!!; @
new!!A D
	Exception!!E N
(!!N O
$str!!O ^
)!!^ _
;!!_ `
}!!a b
if"" 
("" 
!"" 
isValidPassword"" $
(""$ %
passwordBox1""% 1
.""1 2
Password""2 :
)"": ;
&&""< >
passwordBox1""? K
.""K L
Password""L T
==""T V
passwordBox2""W c
.""c d
Password""d l
)""l m
{""n o
throw""p u
new""v y
	Exception	""z É
(
""É Ñ
$str
""Ñ ñ
)
""ñ ó
;
""ó ò
}
""ô ö
if## 
(## 
!## 
isValidstring## "
(##" #
tbFirstName### .
.##. /
Text##/ 3
,##3 4
$num##5 6
,##6 7
$num##8 :
)##: ;
)##; <
{##= >
throw##? D
new##E H
	Exception##I R
(##R S
$str##S f
)##f g
;##g h
}##i j
if$$ 
($$ 
!$$ 
isValidstring$$ "
($$" #

tbLastName$$# -
.$$- .
Text$$. 2
,$$2 3
$num$$4 5
,$$5 6
$num$$7 9
)$$9 :
)$$: ;
{$$< =
throw$$> C
new$$D G
	Exception$$H Q
($$Q R
$str$$R d
)$$d e
;$$e f
}$$g h
if%% 
(%% 
!%% 
isValidEmail%% !
(%%! "
tbEmail%%" )
.%%) *
Text%%* .
)%%. /
)%%/ 0
{%%1 2
throw%%3 8
new%%9 <
	Exception%%= F
(%%F G
$str%%G V
)%%V W
;%%W X
}%%Y Z
BDD'' 
mybdd'' 
='' 
new'' 
BDD''  #
(''# $
)''$ %
;''% &
User(( 
user(( 
=(( 
new(( 
User((  $
((($ %
)((% &
;((& '
if)) 
()) 
mybdd)) 
.)) 
getUser)) !
())! "
tbLogin))" )
.))) *
Text))* .
,)). /
ref))0 3
user))4 8
)))8 9
==)): <
$num))= >
)))> ?
{** 
throw++ 
new++ 
	Exception++ '
(++' (
$str++( M
)++M N
;++N O
},, 
string-- 
hashedPassword-- %
=--& '
BCrypt--( .
.--. /
Net--/ 2
.--2 3
BCrypt--3 9
.--9 :
HashPassword--: F
(--F G
passwordBox1--G S
.--S T
Password--T \
)--\ ]
;--] ^
user.. 
=.. 
new.. 
User.. 
(..  
$num..  !
,..! "
tbFirstName..# .
.... /
Text../ 3
,..3 4

tbLastName..5 ?
...? @
Text..@ D
,..D E
tbEmail..F M
...M N
Text..N R
,..R S
hashedPassword..T b
,..b c
tbLogin..d k
...k l
Text..l p
)..p q
;..q r
mybdd// 
.// 
addUser// 
(// 
user// "
)//" #
;//# $
this00 
.00 
Close00 
(00 
)00 
;00 
}11 
catch22 
(22 
	Exception22 
ex22 
)22 
{33 
lblErrorMsg44 
.44 
Content44 #
=44$ %
ex44& (
.44( )
Message44) 0
;440 1
}55 
}66 	
public99 
bool99 
isValidstring99 "
(99" #
string99# )
str99* -
,99- .
int99. 1
sizeMin992 9
,999 :
int99: =
sizeMax99> E
)99E F
{:: 	
Regex;; 
rg;; 
=;; 
new;; 
Regex;;  
(;;  !
$str;;! 5
);;5 6
;;;6 7
if<< 
(<< 
str<< 
.<< 
Length<< 
<<< 
sizeMin<< "
||<<# %
str<<& )
.<<) *
Length<<* 0
><<1 2
sizeMax<<3 :
)<<: ;
{<<< =
return<<> D
false<<E J
;<<J K
}<<L M
return== 
rg== 
.== 
IsMatch== 
(== 
str== !
)==! "
;==" #
}>> 	
public@@ 
bool@@ 
isValidEmail@@  
(@@  !
string@@! '

inputEmail@@( 2
)@@2 3
{AA 	
stringBB 
strRegexBB 
=BB 
$strBB D
+BBE F
$strCC B
+CCC D
$strDD :
;DD: ;
RegexEE 
reEE 
=EE 
newEE 
RegexEE  
(EE  !
strRegexEE! )
)EE) *
;EE* +
ifFF 
(FF 
reFF 
.FF 
IsMatchFF 
(FF 

inputEmailFF %
)FF% &
)FF& '
returnGG 
(GG 
trueGG 
)GG 
;GG 
elseHH 
returnII 
(II 
falseII 
)II 
;II 
}JJ 	
publicLL 
boolLL 
isValidPasswordLL #
(LL# $
stringLL$ *
inputPasswordLL+ 8
)LL8 9
{MM 	
varNN 
	hasNumberNN 
=NN 
newNN 
RegexNN  %
(NN% &
$strNN& /
)NN/ 0
;NN0 1
varOO 
hasUpperCharOO 
=OO 
newOO "
RegexOO# (
(OO( )
$strOO) 2
)OO2 3
;OO3 4
varPP 
hasMinimum8CharsPP  
=PP! "
newPP# &
RegexPP' ,
(PP, -
$strPP- 5
)PP5 6
;PP6 7
varQQ "
hasNoCharacterSpeacialQQ &
=QQ' (
newQQ) ,
RegexQQ- 2
(QQ2 3
$strQQ3 @
)QQ@ A
;QQA B
returnRR "
hasNoCharacterSpeacialRR )
.RR) *
IsMatchRR* 1
(RR1 2
inputPasswordRR2 ?
)RR? @
&&RRA C
	hasNumberRRD M
.RRM N
IsMatchRRN U
(RRU V
inputPasswordRRV c
)RRc d
&&RRe g
hasUpperCharRRh t
.RRt u
IsMatchRRu |
(RR| }
inputPassword	RR} ä
)
RRä ã
&&
RRå é
hasMinimum8Chars
RRè ü
.
RRü †
IsMatch
RR† ß
(
RRß ®
inputPassword
RR® µ
)
RRµ ∂
;
RR∂ ∑
}SS 	
}UU 
}VV ùQ
oC:\Users\valen\OneDrive\Documents Polytech\Cours\DII5\OutilsFormels\OutilsFormels\OutilsFormels\StringCypher.cs
	namespace 	
OutilsFormels
 
{ 
public		 

static		 
class		 
StringCipher		 $
{

 
private 
const 
int 
Keysize !
=" #
$num$ '
;' (
private 
const 
int  
DerivationIterations .
=/ 0
$num1 5
;5 6
public 
static 
string 
Encrypt $
($ %
string% +
	plainText, 5
,5 6
string7 =

passPhrase> H
)H I
{ 	
var 
saltStringBytes 
=  !*
Generate256BitsOfRandomEntropy" @
(@ A
)A B
;B C
var 
ivStringBytes 
= *
Generate256BitsOfRandomEntropy  >
(> ?
)? @
;@ A
var 
plainTextBytes 
=  
Encoding! )
.) *
UTF8* .
.. /
GetBytes/ 7
(7 8
	plainText8 A
)A B
;B C
using 
( 
var 
password 
=  !
new" %
Rfc2898DeriveBytes& 8
(8 9

passPhrase9 C
,C D
saltStringBytesE T
,T U 
DerivationIterationsV j
)j k
)k l
{ 
var 
keyBytes 
= 
password '
.' (
GetBytes( 0
(0 1
Keysize1 8
/9 :
$num; <
)< =
;= >
using 
( 
var 
symmetricKey '
=( )
new* -
RijndaelManaged. =
(= >
)> ?
)? @
{ 
symmetricKey  
.  !
	BlockSize! *
=+ ,
$num- 0
;0 1
symmetricKey  
.  !
Mode! %
=& '

CipherMode( 2
.2 3
CBC3 6
;6 7
symmetricKey    
.    !
Padding  ! (
=  ) *
PaddingMode  + 6
.  6 7
PKCS7  7 <
;  < =
using!! 
(!! 
var!! 
	encryptor!! (
=!!) *
symmetricKey!!+ 7
.!!7 8
CreateEncryptor!!8 G
(!!G H
keyBytes!!H P
,!!P Q
ivStringBytes!!R _
)!!_ `
)!!` a
{"" 
using## 
(## 
var## "
memoryStream### /
=##0 1
new##2 5
MemoryStream##6 B
(##B C
)##C D
)##D E
{$$ 
using%% !
(%%" #
var%%# &
cryptoStream%%' 3
=%%4 5
new%%6 9
CryptoStream%%: F
(%%F G
memoryStream%%G S
,%%S T
	encryptor%%U ^
,%%^ _
CryptoStreamMode%%` p
.%%p q
Write%%q v
)%%v w
)%%w x
{&& 
cryptoStream''  ,
.'', -
Write''- 2
(''2 3
plainTextBytes''3 A
,''A B
$num''C D
,''D E
plainTextBytes''F T
.''T U
Length''U [
)''[ \
;''\ ]
cryptoStream((  ,
.((, -
FlushFinalBlock((- <
(((< =
)((= >
;((> ?
var**  #
cipherTextBytes**$ 3
=**4 5
saltStringBytes**6 E
;**E F
cipherTextBytes++  /
=++0 1
cipherTextBytes++2 A
.++A B
Concat++B H
(++H I
ivStringBytes++I V
)++V W
.++W X
ToArray++X _
(++_ `
)++` a
;++a b
cipherTextBytes,,  /
=,,0 1
cipherTextBytes,,2 A
.,,A B
Concat,,B H
(,,H I
memoryStream,,I U
.,,U V
ToArray,,V ]
(,,] ^
),,^ _
),,_ `
.,,` a
ToArray,,a h
(,,h i
),,i j
;,,j k
memoryStream--  ,
.--, -
Close--- 2
(--2 3
)--3 4
;--4 5
cryptoStream..  ,
..., -
Close..- 2
(..2 3
)..3 4
;..4 5
return//  &
Convert//' .
.//. /
ToBase64String/// =
(//= >
cipherTextBytes//> M
)//M N
;//N O
}00 
}11 
}22 
}33 
}44 
}55 	
public77 
static77 
string77 
Decrypt77 $
(77$ %
string77% +

cipherText77, 6
,776 7
string778 >

passPhrase77? I
)77I J
{88 	
var;; (
cipherTextBytesWithSaltAndIv;; ,
=;;- .
Convert;;/ 6
.;;6 7
FromBase64String;;7 G
(;;G H

cipherText;;H R
);;R S
;;;S T
var== 
saltStringBytes== 
===  !(
cipherTextBytesWithSaltAndIv==" >
.==> ?
Take==? C
(==C D
Keysize==D K
/==L M
$num==N O
)==O P
.==P Q
ToArray==Q X
(==X Y
)==Y Z
;==Z [
var?? 
ivStringBytes?? 
=?? (
cipherTextBytesWithSaltAndIv??  <
.??< =
Skip??= A
(??A B
Keysize??B I
/??J K
$num??L M
)??M N
.??N O
Take??O S
(??S T
Keysize??T [
/??\ ]
$num??^ _
)??_ `
.??` a
ToArray??a h
(??h i
)??i j
;??j k
varAA 
cipherTextBytesAA 
=AA  !(
cipherTextBytesWithSaltAndIvAA" >
.AA> ?
SkipAA? C
(AAC D
(AAD E
KeysizeAAE L
/AAM N
$numAAO P
)AAP Q
*AAR S
$numAAT U
)AAU V
.AAV W
TakeAAW [
(AA[ \(
cipherTextBytesWithSaltAndIvAA\ x
.AAx y
LengthAAy 
-
AAÄ Å
(
AAÇ É
(
AAÉ Ñ
Keysize
AAÑ ã
/
AAå ç
$num
AAé è
)
AAè ê
*
AAë í
$num
AAì î
)
AAî ï
)
AAï ñ
.
AAñ ó
ToArray
AAó û
(
AAû ü
)
AAü †
;
AA† °
usingCC 
(CC 
varCC 
passwordCC 
=CC  !
newCC" %
Rfc2898DeriveBytesCC& 8
(CC8 9

passPhraseCC9 C
,CCC D
saltStringBytesCCE T
,CCT U 
DerivationIterationsCCV j
)CCj k
)CCk l
{DD 
varEE 
keyBytesEE 
=EE 
passwordEE '
.EE' (
GetBytesEE( 0
(EE0 1
KeysizeEE1 8
/EE9 :
$numEE; <
)EE< =
;EE= >
usingFF 
(FF 
varFF 
symmetricKeyFF '
=FF( )
newFF* -
RijndaelManagedFF. =
(FF= >
)FF> ?
)FF? @
{GG 
symmetricKeyHH  
.HH  !
	BlockSizeHH! *
=HH+ ,
$numHH- 0
;HH0 1
symmetricKeyII  
.II  !
ModeII! %
=II& '

CipherModeII( 2
.II2 3
CBCII3 6
;II6 7
symmetricKeyJJ  
.JJ  !
PaddingJJ! (
=JJ) *
PaddingModeJJ+ 6
.JJ6 7
PKCS7JJ7 <
;JJ< =
usingKK 
(KK 
varKK 
	decryptorKK (
=KK) *
symmetricKeyKK+ 7
.KK7 8
CreateDecryptorKK8 G
(KKG H
keyBytesKKH P
,KKP Q
ivStringBytesKKR _
)KK_ `
)KK` a
{LL 
usingMM 
(MM 
varMM "
memoryStreamMM# /
=MM0 1
newMM2 5
MemoryStreamMM6 B
(MMB C
cipherTextBytesMMC R
)MMR S
)MMS T
{NN 
usingOO !
(OO" #
varOO# &
cryptoStreamOO' 3
=OO4 5
newOO6 9
CryptoStreamOO: F
(OOF G
memoryStreamOOG S
,OOS T
	decryptorOOU ^
,OO^ _
CryptoStreamModeOO` p
.OOp q
ReadOOq u
)OOu v
)OOv w
{PP 
varQQ  #
plainTextBytesQQ$ 2
=QQ3 4
newQQ5 8
byteQQ9 =
[QQ= >
cipherTextBytesQQ> M
.QQM N
LengthQQN T
]QQT U
;QQU V
varRR  #
decryptedByteCountRR$ 6
=RR7 8
cryptoStreamRR9 E
.RRE F
ReadRRF J
(RRJ K
plainTextBytesRRK Y
,RRY Z
$numRR[ \
,RR\ ]
plainTextBytesRR^ l
.RRl m
LengthRRm s
)RRs t
;RRt u
memoryStreamSS  ,
.SS, -
CloseSS- 2
(SS2 3
)SS3 4
;SS4 5
cryptoStreamTT  ,
.TT, -
CloseTT- 2
(TT2 3
)TT3 4
;TT4 5
returnUU  &
EncodingUU' /
.UU/ 0
UTF8UU0 4
.UU4 5
	GetStringUU5 >
(UU> ?
plainTextBytesUU? M
,UUM N
$numUUO P
,UUP Q
decryptedByteCountUUR d
)UUd e
;UUe f
}VV 
}WW 
}XX 
}YY 
}ZZ 
}[[ 	
private]] 
static]] 
byte]] 
[]] 
]]] *
Generate256BitsOfRandomEntropy]] <
(]]< =
)]]= >
{^^ 	
var__ 
randomBytes__ 
=__ 
new__ !
byte__" &
[__& '
$num__' )
]__) *
;__* +
using`` 
(`` 
var`` 
rngCsp`` 
=`` 
new``  #$
RNGCryptoServiceProvider``$ <
(``< =
)``= >
)``> ?
{aa 
rngCspcc 
.cc 
GetBytescc 
(cc  
randomBytescc  +
)cc+ ,
;cc, -
}dd 
returnee 
randomBytesee 
;ee 
}ff 	
}gg 
}hh ù
gC:\Users\valen\OneDrive\Documents Polytech\Cours\DII5\OutilsFormels\OutilsFormels\OutilsFormels\User.cs
	namespace 	
OutilsFormels
 
{ 
public		 

class		 
User		 
{

 
public 
int 
userID 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
	firstName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
lastName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
login 
{ 
get !
;! "
set# &
;& '
}( )
public 
User 
( 
) 
{ 
} 
public 
User 
( 
int 
userID 
, 
string %
	firstName& /
,/ 0
string0 6
lastName7 ?
,? @
string@ F
emailG L
,L M
stringM S
passwordT \
,\ ]
string^ d
logine j
)j k
{ 	
this 
. 
userID 
= 
userID  
;  !
this 
. 
	firstName 
= 
	firstName &
;& '
this 
. 
lastName 
= 
lastName $
;$ %
this 
. 
email 
= 
email 
; 
this 
. 
password 
= 
password $
;$ %
this 
. 
login 
= 
login 
; 
} 	
} 
} ’6
pC:\Users\valen\OneDrive\Documents Polytech\Cours\DII5\OutilsFormels\OutilsFormels\OutilsFormels\ViewPage.xaml.cs
	namespace 	
OutilsFormels
 
{ 
public 

partial 
class 
ViewPage !
:" #
Window$ *
{ 
public 
User 
user 
; 
public 
Card 
selectedCard  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
ViewPage 
( 
User 
_user "
)" #
{ 	
user 
= 
_user 
; 
InitializeComponent 
(  
)  !
;! "
showUserCards 
( 
) 
; 
} 	
private!! 
void!! 
btAddCard_Click!! $
(!!$ %
object!!% +
sender!!, 2
,!!2 3
RoutedEventArgs!!4 C
e!!D E
)!!E F
{"" 	
AddCardView## 
addCardView## #
=##$ %
new##& )
AddCardView##* 5
(##5 6
user##6 :
)##: ;
;##; <
addCardView$$ 
.$$ 

ShowDialog$$ "
($$" #
)$$# $
;$$$ %
if&& 
(&& 
addCardView&& 
.&& 
DialogResult&& (
.&&( )
HasValue&&) 1
&&&&2 4
addCardView&&5 @
.&&@ A
DialogResult&&A M
.&&M N
Value&&N S
)&&S T
{'' 
showUserCards(( 
((( 
)(( 
;((  

MessageBox)) 
.)) 
Show)) 
())  
$str))  H
)))H I
;))I J
}** 
}++ 	
private-- 
void-- 
showUserCards-- "
(--" #
)--# $
{.. 	
List// 
<// 
Card// 
>// 
	listCards//  
=//! "
new//# &
List//' +
<//+ ,
Card//, 0
>//0 1
(//1 2
)//2 3
;//3 4
getUserCards00 
(00 
ref00 
	listCards00 &
)00& '
;00' (
formatCardNumber11 
(11 
ref11  
	listCards11! *
)11* +
;11+ ,
lvCards33 
.33 
ItemsSource33 
=33  !
	listCards33" +
;33+ ,
}44 	
private66 
void66 
getUserCards66 !
(66! "
ref66" %
List66& *
<66* +
Card66+ /
>66/ 0
	listCards661 :
)66: ;
{77 	
BDD88 
mybdd88 
=88 
new88 
BDD88 
(88  
)88  !
;88! "
mybdd99 
.99 
getAllCards99 
(99 
ref99 !
user99" &
,99& '
ref99( +
	listCards99, 5
)995 6
;996 7
}:: 	
private<< 
void<< 

removeCard<< 
(<<  
int<<  #
cardID<<$ *
)<<* +
{== 	
BDD>> 
mybdd>> 
=>> 
new>> 
BDD>> 
(>>  
)>>  !
;>>! "
mybdd?? 
.?? 

deleteCard?? 
(?? 
cardID?? #
)??# $
;??$ %
}@@ 	
privateBB 
voidBB 
formatCardNumberBB %
(BB% &
refBB& )
ListBB* .
<BB. /
CardBB/ 3
>BB3 4
	listCardsBB5 >
)BB> ?
{CC 	
foreachDD 
(DD 
CardDD 
cardDD 
inDD !
	listCardsDD" +
)DD+ ,
{EE 
cardFF 
.FF 
numberFF 
=FF 
StringCipherFF *
.FF* +
DecryptFF+ 2
(FF2 3
cardFF3 7
.FF7 8
numberFF8 >
,FF> ?
userFF@ D
.FFD E
loginFFE J
)FFJ K
;FFK L
cardGG 
.GG 
numberGG 
=GG 
$strGG ,
+GG- .
cardGG/ 3
.GG3 4
numberGG4 :
.GG: ;
	SubstringGG; D
(GGD E
(GGE F
cardGGF J
.GGJ K
numberGGK Q
.GGQ R
LengthGGR X
-GGY Z
$numGG[ \
)GG\ ]
,GG] ^
$numGG_ `
)GG` a
;GGa b
}HH 
}II 	
privateKK 
voidKK 
btRemoveCard_ClickKK '
(KK' (
objectKK( .
senderKK/ 5
,KK5 6
RoutedEventArgsKK7 F
eKKG H
)KKH I
{LL 	
ifNN 
(NN 
selectedCardNN 
!=NN 
nullNN #
)NN# $
{OO 
MessageBoxResultPP  
messageBoxResultPP! 1
=PP2 3
SystemPP4 :
.PP: ;
WindowsPP; B
.PPB C

MessageBoxPPC M
.PPM N
ShowPPN R
(PPR S
$strPPS b
,PPb c
$strPPd ~
,PP~ 
System
PPÄ Ü
.
PPÜ á
Windows
PPá é
.
PPé è
MessageBoxButton
PPè ü
.
PPü †
YesNo
PP† •
)
PP• ¶
;
PP¶ ß
ifQQ 
(QQ 
messageBoxResultQQ $
==QQ% '
MessageBoxResultQQ( 8
.QQ8 9
YesQQ9 <
)QQ< =
{RR 

removeCardSS 
(SS 
selectedCardSS +
.SS+ ,
cardIDSS, 2
)SS2 3
;SS3 4
btRemoveCardTT  
.TT  !
	IsEnabledTT! *
=TT+ ,
falseTT- 2
;TT2 3
selectedCardUU  
=UU! "
defaultUU# *
(UU* +
CardUU+ /
)UU/ 0
;UU0 1
showUserCardsVV !
(VV! "
)VV" #
;VV# $
}WW 
}XX 
}YY 	
private[[ 
void[[ 3
'ListViewItem_PreviewMouseLeftButtonDown[[ <
([[< =
object[[= C
sender[[D J
,[[J K 
MouseButtonEventArgs[[L `
e[[a b
)[[b c
{\\ 	
var]] 
item]] 
=]] 
sender]] 
as]]  
ListViewItem]]! -
;]]- .
if^^ 
(^^ 
item^^ 
!=^^ 
null^^ 
&&^^ 
item^^  $
.^^$ %

IsSelected^^% /
)^^/ 0
{__ 
selectedCard`` 
=`` 
(``  
Card``  $
)``$ %
item``% )
.``) *
Content``* 1
;``1 2
btRemoveCardaa 
.aa 
	IsEnabledaa &
=aa' (
trueaa) -
;aa- .
}bb 
}cc 	
}dd 
}ee  
kC:\Users\valen\OneDrive\Documents Polytech\Cours\DII5\OutilsFormels\OutilsFormels\OutilsFormels\App.xaml.cs
	namespace		 	
OutilsFormels		
 
{

 
public 

partial 
class 
App 
: 
Application *
{ 
} 
} Êu
fC:\Users\valen\OneDrive\Documents Polytech\Cours\DII5\OutilsFormels\OutilsFormels\OutilsFormels\BDD.cs
	namespace

 	
OutilsFormels


 
{ 
public 

class 
BDD 
{ 
private 
string 
connectionString '
=( )
$str* j
;j k
private 
MySqlConnection 

connection  *
;* +
public 
BDD 
( 
) 
{ 	
initConnection 
( 
) 
; 
} 	
private 
void 
initConnection #
(# $
)$ %
{ 	

connection 
= 
new 
MySqlConnection ,
(, -
connectionString- =
)= >
;> ?
} 	
public&& 
int&& 
addUser&& 
(&& 
User&& 
user&&  $
)&&$ %
{'' 	
try(( 
{)) 
this++ 
.++ 

connection++ 
.++  
Open++  $
(++$ %
)++% &
;++& '
MySqlCommand.. 
cmd..  
=..! "
this..# '
...' (

connection..( 2
...2 3
CreateCommand..3 @
(..@ A
)..A B
;..B C
cmd11 
.11 
CommandText11 
=11  !
$str	11" û
;
11û ü
cmd44 
.44 

Parameters44 
.44 
AddWithValue44 +
(44+ ,
$str44, 8
,448 9
user44: >
.44> ?
	firstName44? H
)44H I
;44I J
cmd55 
.55 

Parameters55 
.55 
AddWithValue55 +
(55+ ,
$str55, 7
,557 8
user559 =
.55= >
lastName55> F
)55F G
;55G H
cmd66 
.66 

Parameters66 
.66 
AddWithValue66 +
(66+ ,
$str66, 4
,664 5
user666 :
.66: ;
email66; @
)66@ A
;66A B
cmd77 
.77 

Parameters77 
.77 
AddWithValue77 +
(77+ ,
$str77, 7
,777 8
user779 =
.77= >
password77> F
)77F G
;77G H
cmd88 
.88 

Parameters88 
.88 
AddWithValue88 +
(88+ ,
$str88, 4
,884 5
user886 :
.88: ;
login88; @
)88@ A
;88A B
cmd;; 
.;; 
ExecuteNonQuery;; #
(;;# $
);;$ %
;;;% &
this>> 
.>> 

connection>> 
.>>  
Close>>  %
(>>% &
)>>& '
;>>' (
return?? 
$num?? 
;?? 
}@@ 
catchAA 
(AA 
	ExceptionAA 
eAA 
)AA 
{BB 
stringCC 
msgCC 
=CC 
eCC 
.CC 
MessageCC &
;CC& '
thisDD 
.DD 

connectionDD 
.DD  
CloseDD  %
(DD% &
)DD& '
;DD' (
returnEE 
-EE 
$numEE 
;EE 
}FF 
}GG 	
publicJJ 
intJJ 
getUserJJ 
(JJ 
stringJJ !
	loginUserJJ" +
,JJ+ ,
refJJ- 0
UserJJ1 5
userJJ6 :
)JJ: ;
{KK 	
tryLL 
{MM 
thisOO 
.OO 

connectionOO 
.OO  
OpenOO  $
(OO$ %
)OO% &
;OO& '
MySqlCommandRR 
cmdRR  
=RR! "
thisRR# '
.RR' (

connectionRR( 2
.RR2 3
CreateCommandRR3 @
(RR@ A
)RRA B
;RRB C
cmdUU 
.UU 
CommandTextUU 
=UU  !
$strUU" E
+UUF G
(UUH I
charUUI M
)UUM N
$numUUN P
+UUQ R
	loginUserUUS \
+UU] ^
(UU_ `
charUU` d
)UUd e
$numUUe g
;UUg h
usingXX 
(XX 
MySqlDataReaderXX &
readerXX' -
=XX. /
cmdXX0 3
.XX3 4
ExecuteReaderXX4 A
(XXA B
)XXB C
)XXC D
{YY 
ifZZ 
(ZZ 
readerZZ 
.ZZ 
HasRowsZZ &
)ZZ& '
{[[ 
reader\\ 
.\\ 
Read\\ #
(\\# $
)\\$ %
;\\% &
user]] 
=]] 
new]] "
User]]# '
(]]' (
reader]]( .
.]]. /
GetInt32]]/ 7
(]]7 8
$num]]8 9
)]]9 :
,]]: ;
reader]]< B
.]]B C
	GetString]]C L
(]]L M
$num]]M N
)]]N O
,]]O P
reader]]Q W
.]]W X
	GetString]]X a
(]]a b
$num]]b c
)]]c d
,]]d e
reader]]f l
.]]l m
	GetString]]m v
(]]v w
$num]]w x
)]]x y
,]]y z
reader	]]{ Å
.
]]Å Ç
	GetString
]]Ç ã
(
]]ã å
$num
]]å ç
)
]]ç é
,
]]é è
reader
]]ê ñ
.
]]ñ ó
	GetString
]]ó †
(
]]† °
$num
]]° ¢
)
]]¢ £
)
]]£ §
;
]]§ •
}^^ 
else__ 
{`` 
throwaa 
newaa !
	Exceptionaa" +
(aa+ ,
$straa, P
)aaP Q
;aaQ R
}bb 
}dd 
thisgg 
.gg 

connectiongg 
.gg  
Closegg  %
(gg% &
)gg& '
;gg' (
returnhh 
$numhh 
;hh 
}ii 
catchjj 
(jj 
	Exceptionjj 
ejj 
)jj 
{kk 
stringll 
msgll 
=ll 
ell 
.ll 
Messagell &
;ll& '
thismm 
.mm 

connectionmm 
.mm  
Closemm  %
(mm% &
)mm& '
;mm' (
returnnn 
-nn 
$numnn 
;nn 
}oo 
}pp 	
publicww 
intww 

deleteUserww 
(ww 
stringww $
	loginUserww% .
)ww. /
{xx 	
tryyy 
{zz 
this|| 
.|| 

connection|| 
.||  
Open||  $
(||$ %
)||% &
;||& '
MySqlCommand 
cmd  
=! "
this# '
.' (

connection( 2
.2 3
CreateCommand3 @
(@ A
)A B
;B C
cmd
ÇÇ 
.
ÇÇ 
CommandText
ÇÇ 
=
ÇÇ  !
$str
ÇÇ" C
+
ÇÇD E
(
ÇÇF G
char
ÇÇG K
)
ÇÇK L
$num
ÇÇL N
+
ÇÇO P
	loginUser
ÇÇQ Z
+
ÇÇ[ \
(
ÇÇ] ^
char
ÇÇ^ b
)
ÇÇb c
$num
ÇÇc e
;
ÇÇe f
cmd
ÑÑ 
.
ÑÑ 
ExecuteNonQuery
ÑÑ #
(
ÑÑ# $
)
ÑÑ$ %
;
ÑÑ% &
this
áá 
.
áá 

connection
áá 
.
áá  
Close
áá  %
(
áá% &
)
áá& '
;
áá' (
return
àà 
$num
àà 
;
àà 
}
ââ 
catch
ää 
(
ää 
	Exception
ää 
e
ää 
)
ää 
{
ãã 
string
åå 
msg
åå 
=
åå 
e
åå 
.
åå 
Message
åå &
;
åå& '
this
çç 
.
çç 

connection
çç 
.
çç  
Close
çç  %
(
çç% &
)
çç& '
;
çç' (
return
éé 
-
éé 
$num
éé 
;
éé 
}
èè 
}
êê 	
public
òò 
int
òò 
addCard
òò 
(
òò 
Card
òò 
card
òò  $
)
òò$ %
{
ôô 	
try
öö 
{
õõ 
this
ùù 
.
ùù 

connection
ùù 
.
ùù  
Open
ùù  $
(
ùù$ %
)
ùù% &
;
ùù& '
MySqlCommand
†† 
cmd
††  
=
††! "
this
††# '
.
††' (

connection
††( 2
.
††2 3
CreateCommand
††3 @
(
††@ A
)
††A B
;
††B C
cmd
££ 
.
££ 
CommandText
££ 
=
££  !
$str££" ç
;££ç é
cmd
¶¶ 
.
¶¶ 

Parameters
¶¶ 
.
¶¶ 
AddWithValue
¶¶ +
(
¶¶+ ,
$str
¶¶, 5
,
¶¶5 6
card
¶¶7 ;
.
¶¶; <
number
¶¶< B
)
¶¶B C
;
¶¶C D
cmd
ßß 
.
ßß 

Parameters
ßß 
.
ßß 
AddWithValue
ßß +
(
ßß+ ,
$str
ßß, 9
,
ßß9 :
card
ßß; ?
.
ßß? @

expiration
ßß@ J
)
ßßJ K
;
ßßK L
cmd
®® 
.
®® 

Parameters
®® 
.
®® 
AddWithValue
®® +
(
®®+ ,
$str
®®, 3
,
®®3 4
card
®®5 9
.
®®9 :
type
®®: >
)
®®> ?
;
®®? @
cmd
©© 
.
©© 

Parameters
©© 
.
©© 
AddWithValue
©© +
(
©©+ ,
$str
©©, 8
,
©©8 9
card
©©: >
.
©©> ?
	fk_userID
©©? H
)
©©H I
;
©©I J
cmd
¨¨ 
.
¨¨ 
ExecuteNonQuery
¨¨ #
(
¨¨# $
)
¨¨$ %
;
¨¨% &
this
ØØ 
.
ØØ 

connection
ØØ 
.
ØØ  
Close
ØØ  %
(
ØØ% &
)
ØØ& '
;
ØØ' (
return
∞∞ 
$num
∞∞ 
;
∞∞ 
}
±± 
catch
≤≤ 
(
≤≤ 
	Exception
≤≤ 
e
≤≤ 
)
≤≤ 
{
≥≥ 
string
¥¥ 
msg
¥¥ 
=
¥¥ 
e
¥¥ 
.
¥¥ 
Message
¥¥ &
;
¥¥& '
return
µµ 
-
µµ 
$num
µµ 
;
µµ 
}
∂∂ 
}
∑∑ 	
public
ææ 
int
ææ 

deleteCard
ææ 
(
ææ 
int
ææ !
cardID
ææ" (
)
ææ( )
{
øø 	
try
¿¿ 
{
¡¡ 
this
√√ 
.
√√ 

connection
√√ 
.
√√  
Open
√√  $
(
√√$ %
)
√√% &
;
√√& '
MySqlCommand
∆∆ 
cmd
∆∆  
=
∆∆! "
this
∆∆# '
.
∆∆' (

connection
∆∆( 2
.
∆∆2 3
CreateCommand
∆∆3 @
(
∆∆@ A
)
∆∆A B
;
∆∆B C
cmd
…… 
.
…… 
CommandText
…… 
=
……  !
$str
……" I
+
……J K
cardID
……L R
;
……R S
cmd
ÀÀ 
.
ÀÀ 
ExecuteNonQuery
ÀÀ #
(
ÀÀ# $
)
ÀÀ$ %
;
ÀÀ% &
this
ŒŒ 
.
ŒŒ 

connection
ŒŒ 
.
ŒŒ  
Close
ŒŒ  %
(
ŒŒ% &
)
ŒŒ& '
;
ŒŒ' (
return
œœ 
$num
œœ 
;
œœ 
}
–– 
catch
—— 
(
—— 
	Exception
—— 
e
—— 
)
—— 
{
““ 
string
”” 
msg
”” 
=
”” 
e
”” 
.
”” 
Message
”” &
;
””& '
return
‘‘ 
-
‘‘ 
$num
‘‘ 
;
‘‘ 
}
’’ 
}
÷÷ 	
public
ÿÿ 
int
ÿÿ 
getAllCards
ÿÿ 
(
ÿÿ 
ref
ÿÿ "
User
ÿÿ# '
user
ÿÿ( ,
,
ÿÿ, -
ref
ÿÿ. 1
List
ÿÿ2 6
<
ÿÿ6 7
Card
ÿÿ7 ;
>
ÿÿ; <
list
ÿÿ= A
)
ÿÿA B
{
ŸŸ 	
try
⁄⁄ 
{
€€ 
this
›› 
.
›› 

connection
›› 
.
››  
Open
››  $
(
››$ %
)
››% &
;
››& '
MySqlCommand
‡‡ 
cmd
‡‡  
=
‡‡! "
this
‡‡# '
.
‡‡' (

connection
‡‡( 2
.
‡‡2 3
CreateCommand
‡‡3 @
(
‡‡@ A
)
‡‡A B
;
‡‡B C
cmd
„„ 
.
„„ 
CommandText
„„ 
=
„„  !
$str
„„" I
+
„„J K
user
„„L P
.
„„P Q
userID
„„Q W
;
„„W X
using
ÊÊ 
(
ÊÊ 
MySqlDataReader
ÊÊ &
reader
ÊÊ' -
=
ÊÊ. /
cmd
ÊÊ0 3
.
ÊÊ3 4
ExecuteReader
ÊÊ4 A
(
ÊÊA B
)
ÊÊB C
)
ÊÊC D
{
ÁÁ 
if
ËË 
(
ËË 
reader
ËË 
.
ËË 
HasRows
ËË &
)
ËË& '
{
ÈÈ 
while
ÍÍ 
(
ÍÍ 
reader
ÍÍ $
.
ÍÍ$ %
Read
ÍÍ% )
(
ÍÍ) *
)
ÍÍ* +
)
ÍÍ+ ,
{
ÎÎ 
Card
ÏÏ  
card
ÏÏ! %
=
ÏÏ& '
new
ÏÏ( +
Card
ÏÏ, 0
(
ÏÏ0 1
reader
ÏÏ1 7
.
ÏÏ7 8
GetInt32
ÏÏ8 @
(
ÏÏ@ A
$num
ÏÏA B
)
ÏÏB C
,
ÏÏC D
reader
ÏÏE K
.
ÏÏK L
	GetString
ÏÏL U
(
ÏÏU V
$num
ÏÏV W
)
ÏÏW X
,
ÏÏX Y
reader
ÏÏZ `
.
ÏÏ` a
GetDateTime
ÏÏa l
(
ÏÏl m
$num
ÏÏm n
)
ÏÏn o
,
ÏÏo p
reader
ÏÏq w
.
ÏÏw x
GetInt32ÏÏx Ä
(ÏÏÄ Å
$numÏÏÅ Ç
)ÏÏÇ É
,ÏÏÉ Ñ
readerÏÏÖ ã
.ÏÏã å
GetInt32ÏÏå î
(ÏÏî ï
$numÏÏï ñ
)ÏÏñ ó
)ÏÏó ò
;ÏÏò ô
list
ÌÌ  
.
ÌÌ  !
Add
ÌÌ! $
(
ÌÌ$ %
card
ÌÌ% )
)
ÌÌ) *
;
ÌÌ* +
}
ÓÓ 
}
ÔÔ 
}
ÒÒ 
this
ÙÙ 
.
ÙÙ 

connection
ÙÙ 
.
ÙÙ  
Close
ÙÙ  %
(
ÙÙ% &
)
ÙÙ& '
;
ÙÙ' (
return
ıı 
$num
ıı 
;
ıı 
}
ˆˆ 
catch
˜˜ 
(
˜˜ 
	Exception
˜˜ 
e
˜˜ 
)
˜˜ 
{
¯¯ 
string
˘˘ 
msg
˘˘ 
=
˘˘ 
e
˘˘ 
.
˘˘ 
Message
˘˘ &
;
˘˘& '
return
˚˚ 
-
˚˚ 
$num
˚˚ 
;
˚˚ 
}
¸¸ 
}
˝˝ 	
}
ÄÄ 
}ÅÅ ∞
rC:\Users\valen\OneDrive\Documents Polytech\Cours\DII5\OutilsFormels\OutilsFormels\OutilsFormels\MainWindow.xaml.cs
	namespace 	
OutilsFormels
 
{ 
public 

partial 
class 

MainWindow #
:$ %
Window& ,
{ 
User 
user 
; 
public 

MainWindow 
( 
User 
user #
)# $
{ 	
this 
. 
user 
= 
user 
; 
BDD 
mybdd 
= 
new 
BDD 
(  
)  !
;! "
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
test 
( 
object  
sender! '
,' (
RoutedEventArgs) 8
e9 :
): ;
{   	
BDD!! 
mybdd!! 
=!! 
new!! 
BDD!! 
(!!  
)!!  !
;!!! "
User"" 
user"" 
="" 
new"" 
User""  
(""  !
)""! "
;""" #
mybdd## 
.## 
getUser## 
(## 
$str## "
,##" #
ref##$ '
user##( ,
)##, -
;##- .
Console%% 
.%% 
	WriteLine%% 
(%% 
$str%% -
,%%- .
user%%/ 3
.%%3 4
userID%%4 :
,%%: ;
user%%< @
.%%@ A
	firstName%%A J
,%%J K
user%%L P
.%%P Q
lastName%%Q Y
)%%Y Z
;%%Z [
List'' 
<'' 
Card'' 
>'' 
	listCards''  
=''! "
new''# &
List''' +
<''+ ,
Card'', 0
>''0 1
(''1 2
)''2 3
;''3 4
mybdd(( 
.(( 
getAllCards(( 
((( 
ref(( !
user((" &
,((& '
ref((( +
	listCards((, 5
)((5 6
;((6 7
foreach** 
(** 
Card** 
card** 
in**  
	listCards**! *
)*** +
{++ 
Console,, 
.,, 
	WriteLine,, !
(,,! "
$str,," 6
,,,6 7
card,,8 <
.,,< =
cardID,,= C
,,,C D
card,,E I
.,,I J
number,,J P
,,,P Q
card,,R V
.,,V W

expiration,,W a
.,,a b
Month,,b g
,,,g h
card,,i m
.,,m n

expiration,,n x
.,,x y
Year,,y }
),,} ~
;,,~ 
}-- 
}.. 	
}// 
}00 ¡
zC:\Users\valen\OneDrive\Documents Polytech\Cours\DII5\OutilsFormels\OutilsFormels\OutilsFormels\Properties\AssemblyInfo.cs
[

 
assembly

 	
:

	 

AssemblyTitle

 
(

 
$str

 (
)

( )
]

) *
[ 
assembly 	
:	 

AssemblyDescription 
( 
$str !
)! "
]" #
[ 
assembly 	
:	 
!
AssemblyConfiguration  
(  !
$str! #
)# $
]$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str *
)* +
]+ ,
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
["" 
assembly"" 	
:""	 

	ThemeInfo"" 
("" &
ResourceDictionaryLocation## 
.## 
None## #
,### $&
ResourceDictionaryLocation&& 
.&& 
SourceAssembly&& -
))) 
])) 
[66 
assembly66 	
:66	 

AssemblyVersion66 
(66 
$str66 $
)66$ %
]66% &
[77 
assembly77 	
:77	 

AssemblyFileVersion77 
(77 
$str77 (
)77( )
]77) *