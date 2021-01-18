è
CD:\Git\CycleGANInterface\MockFotohokje\Model\CycleGANBatchResult.cs
	namespace 	
MockFotohokje
 
. 
Model 
{ 
public 

class 
CycleGANBatchResult $
:% &
ICycleGANresult' 6
{ 
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
Uri 

FolderPath 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
DateTime		 
Created		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
}

 
} Ô

?D:\Git\CycleGANInterface\MockFotohokje\Model\CycleGANProcess.cs
	namespace 	
MockFotohokje
 
. 
Model 
{ 
public 

enum 
ProcessType 
{ 
Single $
,$ %
Batch& +
}, -
public 

class 
CycleGANProcess  
{ 
public		 
Process		 
Process		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
Uri

 
OutputFolder

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
ProcessType 
CycleGANType '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
CycleGANProcess 
(  
Process  '
process( /
,/ 0
Uri1 4
outputFolder5 A
,A B
ProcessTypeC N
typeO S
)S T
{ 	
Process 
= 
process 
; 
OutputFolder 
= 
outputFolder '
;' (
CycleGANType 
= 
type 
;  
} 	
} 
} ê
DD:\Git\CycleGANInterface\MockFotohokje\Model\CycleGANSingleResult.cs
	namespace 	
MockFotohokje
 
. 
Model 
{ 
public 

class  
CycleGANSingleResult %
:& '
ICycleGANresult( 7
{ 
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
Uri 
	ImagePath 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
DateTime		 
Created		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
}

 
} ƒ
?D:\Git\CycleGANInterface\MockFotohokje\Model\ICycleGANResult.cs
	namespace 	
MockFotohokje
 
. 
Model 
{ 
public 

	interface 
ICycleGANresult $
{ 
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
DateTime 
Created 
{  !
get" %
;% &
set' *
;* +
}, -
}		 
}

 ﬁ

<D:\Git\CycleGANInterface\MockFotohokje\Pages\Error.cshtml.cs
	namespace 	
MockFotohokje
 
. 
Pages 
{ 
[ 
ResponseCache 
( 
Duration 
= 
$num 
,  
Location! )
=* +!
ResponseCacheLocation, A
.A B
NoneB F
,F G
NoStoreH O
=P Q
trueR V
)V W
]W X
public 

class 

ErrorModel 
: 
	PageModel '
{		 
public

 
string

 
	RequestId

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
public 
void 
OnGet 
( 
) 
{ 	
	RequestId 
= 
Activity  
.  !
Current! (
?( )
.) *
Id* ,
??- /
HttpContext0 ;
.; <
TraceIdentifier< K
;K L
} 	
} 
} ≠
<D:\Git\CycleGANInterface\MockFotohokje\Pages\Index.cshtml.cs
	namespace 	
MockFotohokje
 
. 
Pages 
{ 
public 

class 

IndexModel 
: 
	PageModel '
{ 
} 
} ±
>D:\Git\CycleGANInterface\MockFotohokje\Pages\Privacy.cshtml.cs
	namespace 	
MockFotohokje
 
. 
Pages 
{ 
public 

class 
PrivacyModel 
: 
	PageModel  )
{ 
} 
} ˆ#
FD:\Git\CycleGANInterface\MockFotohokje\Pages\Results\Details.cshtml.cs
	namespace

 	
MockFotohokje


 
.

 
Pages

 
.

 
Results

 %
{ 
public 

class 
DetailsModel 
: 
	PageModel  )
{ 
private 
readonly %
CycleGANResultsController 2
results3 :
;: ;
public 
ICycleGANresult 
Result %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
List 
< 
string 
> 
Pictures $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
DetailsModel 
( %
CycleGANResultsController 6
results7 >
)> ?
{ 	
this 
. 
results 
= 
results "
;" #
} 	
public 
IActionResult 
OnGet "
(" #
Guid# '
id( *
)* +
{ 	
Result 
= 
results 
. 
Results $
.$ %
FirstOrDefault% 3
(3 4
r4 5
=>6 8
r9 :
.: ;
Id; =
==> @
idA C
)C D
;D E
if 
( 
Result 
== 
null 
) 
return 
RedirectToPage %
(% &
$str& 6
)6 7
;7 8
Pictures 
= 
new 
List 
<  
string  &
>& '
(' (
)( )
;) *
List 
< 
string 
> 
files 
=  
new! $
List% )
<) *
string* 0
>0 1
(1 2
)2 3
;3 4
if 
( 
Result 
is  
CycleGANSingleResult -
)- .
{    
CycleGANSingleResult"" $
single""% +
="", -
Result"". 4
as""5 7 
CycleGANSingleResult""8 L
;""L M
string## 
[## 
]## 
found## 
=##  
	Directory##! *
.##* +
GetFiles##+ 3
(##3 4
Uri##4 7
.##7 8
UnescapeDataString##8 J
(##J K
single##K Q
.##Q R
	ImagePath##R [
.##[ \
AbsolutePath##\ h
)##h i
)##i j
;##j k
if$$ 
($$ 
found$$ 
.$$ 
Length$$  
==$$! #
$num$$$ %
)$$% &
return%% 
Page%% 
(%%  
)%%  !
;%%! "
files&& 
.&& 
Add&& 
(&& 
found&& 
[&&  
$num&&  !
]&&! "
)&&" #
;&&# $
}'' 
else'' 
{(( 
CycleGANBatchResult)) #
batch))$ )
=))* +
Result)), 2
as))3 5
CycleGANBatchResult))6 I
;))I J
string** 
[** 
]** 
found** 
=**  
	Directory**! *
.*** +
GetFiles**+ 3
(**3 4
Uri**4 7
.**7 8
UnescapeDataString**8 J
(**J K
batch**K P
.**P Q

FolderPath**Q [
.**[ \
AbsolutePath**\ h
)**h i
)**i j
;**j k
if++ 
(++ 
found++ 
.++ 
Length++  
==++! #
$num++$ %
)++% &
return,, 
Page,, 
(,,  
),,  !
;,,! "
files-- 
.-- 
AddRange-- 
(-- 
found-- $
)--$ %
;--% &
}.. 
foreach00 
(00 
string00 
file00 
in00  "
files00# (
)00( )
Pictures11 
.11 
Add11 
(11 
file11 !
.11! "
Split11" '
(11' (
$str11( 1
)111 2
[112 3
$num113 4
]114 5
)115 6
;116 7
return33 
Page33 
(33 
)33 
;33 
}44 	
}55 
}66 –
DD:\Git\CycleGANInterface\MockFotohokje\Pages\Results\Index.cshtml.cs
	namespace 	
MockFotohokje
 
. 
Pages 
. 
Results %
{ 
public 

class 

IndexModel 
: 
	PageModel '
{ 
private 
readonly %
CycleGANResultsController 2
results3 :
;: ;
public 

IndexModel 
( %
CycleGANResultsController 4
results5 <
)< =
{ 	
this 
. 
results 
= 
results "
;" #
} 	
public 
IActionResult 
OnGetLoadResults -
(. /
)/ 0
{ 	
List 
< "
CycleGANResultListItem '
>' (
	listItems) 2
=3 4
new5 8
List9 =
<= >"
CycleGANResultListItem> T
>T U
(U V
)V W
;W X
foreach 
( 
ICycleGANresult $
result% +
in, .
results/ 6
.6 7
Results7 >
)> ?
	listItems 
. 
Add 
( 
new !"
CycleGANResultListItem" 8
{9 :
Id; =
=> ?
result@ F
.F G
IdG I
,I J
CreatedK R
=S T
resultU [
.[ \
Created\ c
}d e
)e f
;f g
return 
new 

JsonResult !
(! "
new" %
{& '
data( ,
=- .
	listItems/ 8
}9 :
): ;
;; <
} 	
[ 	
BindProperty	 
] 
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
public!! 
void!! 
OnPost!! 
(!! 
)!! 
{"" 	
if## 
(## 
Id## 
==## 
Guid## 
.## 
Empty##  
)##  !
return$$ 
;$$ 
ICycleGANresult%% 
found%% !
=%%" #
results%%$ +
.%%+ ,
Results%%, 3
.%%3 4
FirstOrDefault%%4 B
(%%B C
r%%C D
=>%%E G
r%%H I
.%%I J
Id%%J L
==%%M O
Id%%P R
)%%R S
;%%S T
if&& 
(&& 
found&& 
==&& 
null&& 
)&& 
return'' 
;'' 
results(( 
.(( 
Results(( 
.(( 
Remove(( "
(((" #
found((# (
)((( )
;(() *
if)) 
()) 
found)) 
is))  
CycleGANSingleResult)) ,
))), -
	Directory** 
.** 
Delete**  
(**  !
Uri**! $
.**$ %
UnescapeDataString**% 7
(**7 8
(**8 9
found**9 >
as**? A 
CycleGANSingleResult**B V
)**V W
.**W X
	ImagePath**X a
.**a b
AbsolutePath**b n
)**n o
,**o p
true**q u
)**u v
;**v w
else++ 
if++ 
(++ 
found++ 
is++ 
CycleGANBatchResult++ 1
)++1 2
	Directory,, 
.,, 
Delete,,  
(,,  !
Uri,,! $
.,,$ %
UnescapeDataString,,% 7
(,,7 8
(,,8 9
found,,9 >
as,,? A
CycleGANBatchResult,,B U
),,U V
.,,V W

FolderPath,,W a
.,,a b
AbsolutePath,,b n
),,n o
,,,o p
true,,q u
),,u v
;,,v w
}-- 	
}.. 
}// ñ
CD:\Git\CycleGANInterface\MockFotohokje\Pages\Upload\Batch.cshtml.cs
	namespace		 	
MockFotohokje		
 
.		 
Pages		 
.		 
Upload		 $
{

 
public 

class 

BatchModel 
: 
	PageModel '
{ 
private 
readonly '
CycleGANInterfaceController 4
cycleGAN5 =
;= >
public 

BatchModel 
( '
CycleGANInterfaceController 5
cgic6 :
): ;
{ 	
cycleGAN 
= 
cgic 
; 
} 	
public 
string 
PostingError "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
BindProperty	 
] 
public 
	IFormFile 
[ 
] 
Images !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
async 
Task 
< 
IActionResult '
>' (
OnPost) /
(/ 0
)0 1
{ 	
if 
( 
Images 
== 
null 
|| !
Images" (
.( )
Length) /
==0 2
$num3 4
)4 5
{ 
PostingError 
= 
$str 1
;1 2
return 
Page 
( 
) 
; 
} 
string"" 
["" 
]"" 
uploads"" 
="" 
	Directory"" (
.""( )
GetFiles"") 1
(""1 2
$str""2 B
)""B C
;""C D
foreach## 
(## 
string## 
upload## "
in### %
uploads##& -
)##- .
System$$ 
.$$ 
IO$$ 
.$$ 
File$$ 
.$$ 
Delete$$ %
($$% &
upload$$& ,
)$$, -
;$$- .
foreach'' 
('' 
	IFormFile'' 
image'' $
in''% '
Images''( .
)''. /
{(( 
Uri)) 
path)) 
=)) 
new)) 
Uri)) "
())" #
Path))# '
.))' (
GetFullPath))( 3
())3 4
$str))4 D
)))D E
+))F G
image))H M
.))M N
FileName))N V
)))V W
;))W X
using** 

FileStream**  
	imgStream**! *
=**+ ,
new**- 0

FileStream**1 ;
(**; <
Uri**< ?
.**? @
UnescapeDataString**@ R
(**R S
path**S W
.**W X
AbsolutePath**X d
)**d e
,**e f
FileMode**g o
.**o p
Create**p v
)**v w
;**w x
await++ 
image++ 
.++ 
CopyToAsync++ '
(++' (
	imgStream++( 1
)++1 2
;++2 3
},, 
cycleGAN// 
.// 
StartInterfaceBatch// (
(//( )
new//) ,
Uri//- 0
(//0 1
Path//1 5
.//5 6
GetFullPath//6 A
(//A B
$str//B R
)//R S
)//S T
)//T U
;//U V
return11 
RedirectToPage11 !
(11! "
$str11" *
)11* +
;11+ ,
}22 	
}33 
}44 ⁄
DD:\Git\CycleGANInterface\MockFotohokje\Pages\Upload\Single.cshtml.cs
	namespace		 	
MockFotohokje		
 
.		 
Pages		 
.		 
Upload		 $
{

 
public 

class 
SingleModel 
: 
	PageModel (
{ 
private 
readonly '
CycleGANInterfaceController 4
cycleGAN5 =
;= >
public 
SingleModel 
( '
CycleGANInterfaceController 7
cgic8 <
)< =
{ 	
cycleGAN 
= 
cgic 
; 
} 	
public 
string 
PostingError "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
BindProperty	 
] 
public 
	IFormFile 
Image 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
async 
Task 
< 
IActionResult '
>' (
OnPost) /
(/ 0
)0 1
{ 	
if 
( 
Image 
== 
null 
) 
{ 
PostingError 
= 
$str 0
;0 1
return 
Page 
( 
) 
; 
} 
string!! 
[!! 
]!! 
uploads!! 
=!! 
	Directory!! (
.!!( )
GetFiles!!) 1
(!!1 2
$str!!2 C
)!!C D
;!!D E
foreach"" 
("" 
string"" 
upload"" "
in""# %
uploads""& -
)""- .
System## 
.## 
IO## 
.## 
File## 
.## 
Delete## %
(##% &
upload##& ,
)##, -
;##- .
Uri&& 
path&& 
=&& 
new&& 
Uri&& 
(&& 
Path&& #
.&&# $
GetFullPath&&$ /
(&&/ 0
$str&&0 A
)&&A B
+&&C D
Image&&E J
.&&J K
FileName&&K S
)&&S T
;&&T U
using'' 

FileStream'' 
	imgStream'' &
=''' (
new'') ,

FileStream''- 7
(''7 8
Uri''8 ;
.''; <
UnescapeDataString''< N
(''N O
path''O S
.''S T
AbsolutePath''T `
)''` a
,''a b
FileMode''c k
.''k l
Create''l r
)''r s
;''s t
await(( 
Image(( 
.(( 
CopyToAsync(( #
(((# $
	imgStream(($ -
)((- .
;((. /
cycleGAN++ 
.++  
StartInterfaceSingle++ )
(++) *
path++* .
)++. /
;++/ 0
return-- 
RedirectToPage-- !
(--! "
$str--" *
)--* +
;--+ ,
}.. 	
}// 
}00 å

1D:\Git\CycleGANInterface\MockFotohokje\Program.cs
	namespace 	
MockFotohokje
 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{		 	
CreateHostBuilder

 
(

 
args

 "
)

" #
.

# $
Build

$ )
(

) *
)

* +
.

+ ,
Run

, /
(

/ 0
)

0 1
;

1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} ﬂb
ND:\Git\CycleGANInterface\MockFotohokje\Services\CycleGANInterfaceController.cs
	namespace 	
MockFotohokje
 
. 
Services  
{		 
public

 

class

 '
CycleGANInterfaceController

 ,
{ 
private 
readonly 

Dictionary #
<# $
int$ '
,' (
CycleGANProcess) 8
>8 9
currentProcesses: J
;J K
private 
readonly %
CycleGANResultsController 2
resultsController3 D
;D E
private 
readonly 
int 
timeout $
=% &
$num' ,
;, -
private 
readonly 
Uri 
outputFolder )
=* +
new, /
Uri0 3
(3 4
Path4 8
.8 9
GetFullPath9 D
(D E
$strE V
)V W
)W X
;X Y
private 
readonly 
string 
cycleGANPath  ,
=- .
$str	/ ê
;
ê ë
public '
CycleGANInterfaceController *
(+ ,%
CycleGANResultsController, E
resultsF M
)M N
{ 	
currentProcesses 
= 
new "

Dictionary# -
<- .
int. 1
,1 2
CycleGANProcess3 B
>B C
(C D
)D E
;E F
resultsController 
= 
results  '
;' (
} 	
public 
void  
StartInterfaceSingle (
() *
Uri* -
path. 2
)2 3
{ 	
Guid 
processGuid 
= 
resultsController 0
.0 1

GetNewGuid1 ;
(; <
)< =
;= >
string 
output 
= 
$" 
{ 
Uri "
." #
UnescapeDataString# 5
(5 6
outputFolder6 B
.B C
AbsolutePathC O
)O P
}P Q
/Q R
{R S
processGuidS ^
}^ _
"_ `
;` a
Process 
cycleGAN 
= 
StartInterface -
(- .
path. 2
,2 3
new4 7
Uri8 ;
(; <
output< B
)B C
)C D
;D E
currentProcesses   
.   
Add    
(    !
cycleGAN  ! )
.  ) *
Id  * ,
,  , -
new  . 1
CycleGANProcess  2 A
(  A B
cycleGAN  B J
,  J K
new  L O
Uri  P S
(  S T
output  T Z
)  Z [
,  [ \
ProcessType  ] h
.  h i
Single  i o
)  o p
)  p q
;  r s
AwaitResult!! 
(!! 
cycleGAN!!  
)!!  !
;!!! "
}"" 	
public$$ 
void$$  
StartInterfaceSingle$$ (
($$) *
Uri$$* -
path$$. 2
,$$2 3
Uri$$4 7
outputFolder$$8 D
)$$D E
{%% 	
Process(( 
cycleGAN(( 
=(( 
StartInterface(( -
(((- .
path((. 2
,((2 3
outputFolder((4 @
)((@ A
;((A B
currentProcesses)) 
.)) 
Add))  
())  !
cycleGAN))! )
.))) *
Id))* ,
,)), -
new)). 1
CycleGANProcess))2 A
())A B
cycleGAN))B J
,))J K
outputFolder))L X
,))X Y
ProcessType))Z e
.))e f
Single))f l
)))l m
)))m n
;))n o
AwaitResult** 
(** 
cycleGAN**  
)**  !
;**! "
}++ 	
public-- 
void-- 
StartInterfaceBatch-- '
(--( )
Uri--) ,
folder--- 3
)--3 4
{.. 	
Guid11 
processGuid11 
=11 
resultsController11 0
.110 1

GetNewGuid111 ;
(11; <
)11< =
;11= >
string22 
output22 
=22 
$"22 
{22 
Uri22 "
.22" #
UnescapeDataString22# 5
(225 6
outputFolder226 B
.22B C
AbsolutePath22C O
)22O P
}22P Q
/22Q R
{22R S
processGuid22S ^
}22^ _
"22_ `
;22` a
Process33 
cycleGAN33 
=33 
StartInterface33 -
(33- .
folder33. 4
,334 5
new336 9
Uri33: =
(33= >
output33> D
)33D E
)33E F
;33F G
currentProcesses44 
.44 
Add44  
(44  !
cycleGAN44! )
.44) *
Id44* ,
,44, -
new44. 1
CycleGANProcess442 A
(44A B
cycleGAN44B J
,44J K
new44L O
Uri44P S
(44S T
output44T Z
)44Z [
,44[ \
ProcessType44] h
.44h i
Batch44i n
)44n o
)44o p
;44p q
AwaitResult55 
(55 
cycleGAN55  
)55  !
;55! "
}66 	
public88 
void88 
StartInterfaceBatch88 '
(88( )
Uri88) ,
folder88- 3
,883 4
Uri885 8
outputFolder889 E
)88E F
{99 	
Process<< 
cycleGAN<< 
=<< 
StartInterface<< -
(<<- .
folder<<. 4
,<<4 5
outputFolder<<6 B
)<<B C
;<<C D
currentProcesses== 
.== 
Add==  
(==  !
cycleGAN==! )
.==) *
Id==* ,
,==, -
new==. 1
CycleGANProcess==2 A
(==A B
cycleGAN==B J
,==J K
outputFolder==L X
,==X Y
ProcessType==Z e
.==e f
Batch==f k
)==k l
)==l m
;==m n
AwaitResult>> 
(>> 
cycleGAN>>  
)>>  !
;>>! "
}?? 	
privateAA 
ProcessAA 
StartInterfaceAA &
(AA' (
UriAA( +
pathAA, 0
,AA0 1
UriAA2 5
outputFolderAA6 B
)AAB C
{BB 	
stringCC 
argsCC 
=CC 
$strCC 
+CC  !
UriCC" %
.CC% &
UnescapeDataStringCC& 8
(CC8 9
outputFolderCC9 E
.CCE F
AbsolutePathCCF R
)CCR S
+CCT U
$strCCV ^
+CC_ `
UriCCa d
.CCd e
UnescapeDataStringCCe w
(CCw x
pathCCx |
.CC| }
AbsolutePath	CC} â
)
CCâ ä
+
CCã å
$str
CCç ë
;
CCë í
ProcessDD 
cycleGANDD 
=DD 
ProcessDD &
.DD& '
StartDD' ,
(DD, -
cycleGANPathDD- 9
,DD9 :
argsDD; ?
)DD? @
;DD@ A
ConsoleEE 
.EE 
	WriteLineEE 
(EE 
$"EE  .
"Started CycleGAN inteface with id EE  B
{EEB C
cycleGANEEC K
.EEK L
IdEEL N
}EEN O
"EEO P
)EEP Q
;EEQ R
returnFF 
cycleGANFF 
;FF 
}GG 	
privateII 
voidII 
AwaitResultII  
(II! "
ProcessII" )
cycleGANII* 2
)II2 3
{JJ 	
ConsoleKK 
.KK 
	WriteLineKK 
(KK 
$strKK 0
)KK0 1
;KK1 2
cycleGANLL 
.LL 
EnableRaisingEventsLL (
=LL) *
trueLL+ /
;LL/ 0
cycleGANMM 
.MM 
ExitedMM 
+=MM 
(MM  
senderMM  &
,MM& '
eMM( )
)MM) *
=>MM+ -!
OnCycleGANProcessExitMM. C
(MMC D
cycleGANMMD L
.MML M
IdMMM O
)MMO P
;MMP Q
TimerOO 
tOO 
=OO 
newOO 
TimerOO 
(OO  
timeoutOO  '
)OO' (
;OO( )
tPP 
.PP 
ElapsedPP 
+=PP 
(PP 
senderPP  
,PP  !
ePP" #
)PP# $
=>PP% '$
OnCycleGANProcessTimeoutPP( @
(PP@ A
cycleGANPPA I
.PPI J
IdPPJ L
)PPL M
;PPM N
tQQ 
.QQ 
	AutoResetQQ 
=QQ 
falseQQ 
;QQ  
tRR 
.RR 
EnabledRR 
=RR 
trueRR 
;RR 
}SS 	
privateUU 
voidUU $
OnCycleGANProcessTimeoutUU -
(UU- .
intUU. 1

cycleGANIdUU2 <
)UU< =
{VV 	
ifWW 
(WW 
!WW 
currentProcessesWW !
.WW! "
ContainsKeyWW" -
(WW- .

cycleGANIdWW. 8
)WW8 9
)WW9 :
returnXX 
;XX 
ConsoleYY 
.YY 
	WriteLineYY 
(YY 
$"YY   
Timeout reached for YY  4
{YY4 5

cycleGANIdYY5 ?
}YY? @
"YY@ A
)YYA B
;YYB C
CycleGANProcessZZ 
cycleGANZZ $
=ZZ% &
currentProcessesZZ' 7
[ZZ7 8

cycleGANIdZZ8 B
]ZZB C
;ZZC D
currentProcesses[[ 
.[[ 
Remove[[ #
([[# $

cycleGANId[[$ .
)[[. /
;[[/ 0
cycleGAN\\ 
.\\ 
Process\\ 
.\\ 
Kill\\ !
(\\! "
)\\" #
;\\# $
}]] 	
private__ 
void__ !
OnCycleGANProcessExit__ *
(__* +
int__+ .

cycleGANId__/ 9
)__9 :
{`` 	
ifaa 
(aa 
!aa 
currentProcessesaa !
.aa! "
ContainsKeyaa" -
(aa- .

cycleGANIdaa. 8
)aa8 9
)aa9 :
returnbb 
;bb 
Consolecc 
.cc 
	WriteLinecc 
(cc 
$"cc  
Exit reached for cc  1
{cc1 2

cycleGANIdcc2 <
}cc< =
"cc= >
)cc> ?
;cc? @
CycleGANProcessdd 
cycleGANdd $
=dd% &
currentProcessesdd' 7
[dd7 8

cycleGANIddd8 B
]ddB C
;ddC D
currentProcessesee 
.ee 
Removeee #
(ee# $

cycleGANIdee$ .
)ee. /
;ee/ 0
cycleGANff 
.ff 
Processff 
=ff 
nullff #
;ff# $
	AddResultgg 
(gg 
cycleGANgg 
)gg 
;gg  
}hh 	
privatejj 
voidjj 
	AddResultjj 
(jj  
CycleGANProcessjj  /
cycleGANjj0 8
)jj8 9
{kk 	
switchll 
(ll 
cycleGANll 
.ll 
CycleGANTypell )
)ll) *
{mm 
casenn 
ProcessTypenn  
.nn  !
Singlenn! '
:nn' (
resultsControlleroo %
.oo% &
	AddResultoo& /
(oo/ 0
newoo0 3 
CycleGANSingleResultoo4 H
{ooI J
	ImagePathooK T
=ooU V
cycleGANooW _
.oo_ `
OutputFolderoo` l
,ool m
Createdoon u
=oov w
DateTime	oox Ä
.
ooÄ Å
UtcNow
ooÅ á
}
ooà â
)
ooâ ä
;
ooä ã
breakpp 
;pp 
caseqq 
ProcessTypeqq  
.qq  !
Batchqq! &
:qq& '
resultsControllerrr %
.rr% &
	AddResultrr& /
(rr/ 0
newrr0 3
CycleGANBatchResultrr4 G
{rrH I

FolderPathrrJ T
=rrU V
cycleGANrrW _
.rr_ `
OutputFolderrr` l
,rrl m
Createdrrn u
=rrv w
DateTime	rrx Ä
.
rrÄ Å
UtcNow
rrÅ á
}
rrà â
)
rrâ ä
;
rrä ã
breakss 
;ss 
}tt 
}uu 	
}vv 
}ww ∫
LD:\Git\CycleGANInterface\MockFotohokje\Services\CycleGANResultsController.cs
	namespace 	
MockFotohokje
 
. 
Services  
{ 
public 

class %
CycleGANResultsController *
{		 
public

 
List

 
<

 
ICycleGANresult

 #
>

# $
Results

% ,
{

- .
get

/ 2
;

2 3
}

4 5
private 
readonly 
int 
maxTries %
=& '
$num( )
;) *
public %
CycleGANResultsController (
() *
)* +
{ 	
Results 
= 
new 
List 
< 
ICycleGANresult .
>. /
(/ 0
)0 1
;1 2
} 	
public 
Guid 

GetNewGuid 
( 
)  
{ 	
Guid 
result 
= 
Guid 
. 
NewGuid &
(& '
)' (
;( )
int 
count 
= 
$num 
; 
while 
( 
Results 
. 
Exists !
(! "
r" #
=>$ &
r' (
.( )
Id) +
==, .
result/ 5
)5 6
&&7 9
count: ?
<@ A
maxTriesB J
)J K
{ 
result 
= 
Guid 
. 
NewGuid %
(% &
)& '
;' (
count 
++ 
; 
} 
if 
( 
count 
== 
maxTries !
)! "
throw 
new 
	Exception #
(# $
$str$ H
)H I
;I J
return 
result 
; 
} 	
public   
void   
	AddResult   
(   
ICycleGANresult   .
result  / 5
)  5 6
{!! 	
string$$ 
guid$$ 
;$$ 
if%% 
(%% 
result%% 
is%%  
CycleGANSingleResult%% .
)%%. /
guid&& 
=&& 
(&& 
result&& 
as&& ! 
CycleGANSingleResult&&" 6
)&&6 7
.&&7 8
	ImagePath&&8 A
.&&A B
AbsoluteUri&&B M
.&&M N
Split&&N S
(&&S T
$char&&T W
)&&W X
.&&X Y
Last&&Y ]
(&&] ^
)&&^ _
.&&_ `
Trim&&` d
(&&d e
)&&e f
;&&f g
else'' 
guid(( 
=(( 
((( 
result(( 
as(( !
CycleGANBatchResult((" 5
)((5 6
.((6 7

FolderPath((7 A
.((A B
AbsoluteUri((B M
.((M N
Split((N S
(((S T
$char((T W
)((W X
.((X Y
Last((Y ]
(((] ^
)((^ _
.((_ `
Trim((` d
(((d e
)((e f
;((f g
if** 
(** 
!** 
Guid** 
.** 
TryParse** 
(** 
guid** #
,**# $
out**% (
Guid**) -
id**. 0
)**0 1
)**1 2
result++ 
.++ 
Id++ 
=++ 

GetNewGuid++ &
(++& '
)++' (
;++( )
else,, 
result-- 
.-- 
Id-- 
=-- 
id-- 
;-- 
Results// 
.// 
Add// 
(// 
result// 
)// 
;//  
}00 	
}11 
}22 ∞
1D:\Git\CycleGANInterface\MockFotohokje\Startup.cs
	namespace 	
MockFotohokje
 
{		 
public

 

class

 
Startup

 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. 
AddRazorPages "
(" #
)# $
;$ %
services 
. 
AddSingleton !
<! "%
CycleGANResultsController" ;
>; <
(< =
)= >
;> ?
services 
. 
AddSingleton !
<! "'
CycleGANInterfaceController" =
>= >
(> ?
)? @
;@ A
} 	
public 
void 
	Configure 
( 
IApplicationBuilder 1
app2 5
,5 6
IWebHostEnvironment7 J
envK N
)N O
{ 	
if 
( 
env 
. 
IsDevelopment !
(! "
)" #
)# $
{   
app!! 
.!! %
UseDeveloperExceptionPage!! -
(!!- .
)!!. /
;!!/ 0
}"" 
else## 
{$$ 
app%% 
.%% 
UseExceptionHandler%% '
(%%' (
$str%%( 0
)%%0 1
;%%1 2
app'' 
.'' 
UseHsts'' 
('' 
)'' 
;'' 
}(( 
app** 
.** 
UseHttpsRedirection** #
(**# $
)**$ %
;**% &
app++ 
.++ 
UseStaticFiles++ 
(++ 
)++  
;++  !
app-- 
.-- 

UseRouting-- 
(-- 
)-- 
;-- 
app// 
.// 
UseAuthorization//  
(//  !
)//! "
;//" #
app11 
.11 
UseEndpoints11 
(11 
	endpoints11 &
=>11' )
{22 
	endpoints33 
.33 
MapRazorPages33 '
(33' (
)33( )
;33) *
}44 
)44 
;44 
}55 	
}66 
}77 ÿ
KD:\Git\CycleGANInterface\MockFotohokje\ViewModels\CycleGANResultListItem.cs
	namespace 	
MockFotohokje
 
. 

ViewModels "
{ 
public 

class "
CycleGANResultListItem '
{ 
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
DateTime 
Created 
{  !
get" %
;% &
set' *
;* +
}, -
}		 
}

 