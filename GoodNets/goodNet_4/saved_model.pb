ей
рј
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
Я
ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"!
output_typetype0	:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resourceИ
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(Р
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
:
OnesLike
x"T
y"T"
Ttype:
2	

M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Ѕ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
∞
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48яВ
У
output/bias/vVarHandleOp*
_output_shapes
: *

debug_nameoutput/bias/v/*
dtype0*
shape:Г
*
shared_nameoutput/bias/v
l
!output/bias/v/Read/ReadVariableOpReadVariableOpoutput/bias/v*
_output_shapes	
:Г
*
dtype0
Ю
output/kernel/vVarHandleOp*
_output_shapes
: * 

debug_nameoutput/kernel/v/*
dtype0*
shape:
†Г
* 
shared_nameoutput/kernel/v
u
#output/kernel/v/Read/ReadVariableOpReadVariableOpoutput/kernel/v* 
_output_shapes
:
†Г
*
dtype0
Н
fc_2/bias/vVarHandleOp*
_output_shapes
: *

debug_namefc_2/bias/v/*
dtype0*
shape:†*
shared_namefc_2/bias/v
h
fc_2/bias/v/Read/ReadVariableOpReadVariableOpfc_2/bias/v*
_output_shapes	
:†*
dtype0
Ш
fc_2/kernel/vVarHandleOp*
_output_shapes
: *

debug_namefc_2/kernel/v/*
dtype0*
shape:
ј†*
shared_namefc_2/kernel/v
q
!fc_2/kernel/v/Read/ReadVariableOpReadVariableOpfc_2/kernel/v* 
_output_shapes
:
ј†*
dtype0
Н
fc_1/bias/vVarHandleOp*
_output_shapes
: *

debug_namefc_1/bias/v/*
dtype0*
shape:†*
shared_namefc_1/bias/v
h
fc_1/bias/v/Read/ReadVariableOpReadVariableOpfc_1/bias/v*
_output_shapes	
:†*
dtype0
Ш
fc_1/kernel/vVarHandleOp*
_output_shapes
: *

debug_namefc_1/kernel/v/*
dtype0*
shape:
∞	†*
shared_namefc_1/kernel/v
q
!fc_1/kernel/v/Read/ReadVariableOpReadVariableOpfc_1/kernel/v* 
_output_shapes
:
∞	†*
dtype0
Т
conv_4/bias/vVarHandleOp*
_output_shapes
: *

debug_nameconv_4/bias/v/*
dtype0*
shape:P*
shared_nameconv_4/bias/v
k
!conv_4/bias/v/Read/ReadVariableOpReadVariableOpconv_4/bias/v*
_output_shapes
:P*
dtype0
§
conv_4/kernel/vVarHandleOp*
_output_shapes
: * 

debug_nameconv_4/kernel/v/*
dtype0*
shape:<P* 
shared_nameconv_4/kernel/v
{
#conv_4/kernel/v/Read/ReadVariableOpReadVariableOpconv_4/kernel/v*&
_output_shapes
:<P*
dtype0
Т
conv_3/bias/vVarHandleOp*
_output_shapes
: *

debug_nameconv_3/bias/v/*
dtype0*
shape:<*
shared_nameconv_3/bias/v
k
!conv_3/bias/v/Read/ReadVariableOpReadVariableOpconv_3/bias/v*
_output_shapes
:<*
dtype0
§
conv_3/kernel/vVarHandleOp*
_output_shapes
: * 

debug_nameconv_3/kernel/v/*
dtype0*
shape:(<* 
shared_nameconv_3/kernel/v
{
#conv_3/kernel/v/Read/ReadVariableOpReadVariableOpconv_3/kernel/v*&
_output_shapes
:(<*
dtype0
Т
conv_2/bias/vVarHandleOp*
_output_shapes
: *

debug_nameconv_2/bias/v/*
dtype0*
shape:(*
shared_nameconv_2/bias/v
k
!conv_2/bias/v/Read/ReadVariableOpReadVariableOpconv_2/bias/v*
_output_shapes
:(*
dtype0
§
conv_2/kernel/vVarHandleOp*
_output_shapes
: * 

debug_nameconv_2/kernel/v/*
dtype0*
shape:(* 
shared_nameconv_2/kernel/v
{
#conv_2/kernel/v/Read/ReadVariableOpReadVariableOpconv_2/kernel/v*&
_output_shapes
:(*
dtype0
Т
conv_1/bias/vVarHandleOp*
_output_shapes
: *

debug_nameconv_1/bias/v/*
dtype0*
shape:*
shared_nameconv_1/bias/v
k
!conv_1/bias/v/Read/ReadVariableOpReadVariableOpconv_1/bias/v*
_output_shapes
:*
dtype0
§
conv_1/kernel/vVarHandleOp*
_output_shapes
: * 

debug_nameconv_1/kernel/v/*
dtype0*
shape:* 
shared_nameconv_1/kernel/v
{
#conv_1/kernel/v/Read/ReadVariableOpReadVariableOpconv_1/kernel/v*&
_output_shapes
:*
dtype0
У
output/bias/mVarHandleOp*
_output_shapes
: *

debug_nameoutput/bias/m/*
dtype0*
shape:Г
*
shared_nameoutput/bias/m
l
!output/bias/m/Read/ReadVariableOpReadVariableOpoutput/bias/m*
_output_shapes	
:Г
*
dtype0
Ю
output/kernel/mVarHandleOp*
_output_shapes
: * 

debug_nameoutput/kernel/m/*
dtype0*
shape:
†Г
* 
shared_nameoutput/kernel/m
u
#output/kernel/m/Read/ReadVariableOpReadVariableOpoutput/kernel/m* 
_output_shapes
:
†Г
*
dtype0
Н
fc_2/bias/mVarHandleOp*
_output_shapes
: *

debug_namefc_2/bias/m/*
dtype0*
shape:†*
shared_namefc_2/bias/m
h
fc_2/bias/m/Read/ReadVariableOpReadVariableOpfc_2/bias/m*
_output_shapes	
:†*
dtype0
Ш
fc_2/kernel/mVarHandleOp*
_output_shapes
: *

debug_namefc_2/kernel/m/*
dtype0*
shape:
ј†*
shared_namefc_2/kernel/m
q
!fc_2/kernel/m/Read/ReadVariableOpReadVariableOpfc_2/kernel/m* 
_output_shapes
:
ј†*
dtype0
Н
fc_1/bias/mVarHandleOp*
_output_shapes
: *

debug_namefc_1/bias/m/*
dtype0*
shape:†*
shared_namefc_1/bias/m
h
fc_1/bias/m/Read/ReadVariableOpReadVariableOpfc_1/bias/m*
_output_shapes	
:†*
dtype0
Ш
fc_1/kernel/mVarHandleOp*
_output_shapes
: *

debug_namefc_1/kernel/m/*
dtype0*
shape:
∞	†*
shared_namefc_1/kernel/m
q
!fc_1/kernel/m/Read/ReadVariableOpReadVariableOpfc_1/kernel/m* 
_output_shapes
:
∞	†*
dtype0
Т
conv_4/bias/mVarHandleOp*
_output_shapes
: *

debug_nameconv_4/bias/m/*
dtype0*
shape:P*
shared_nameconv_4/bias/m
k
!conv_4/bias/m/Read/ReadVariableOpReadVariableOpconv_4/bias/m*
_output_shapes
:P*
dtype0
§
conv_4/kernel/mVarHandleOp*
_output_shapes
: * 

debug_nameconv_4/kernel/m/*
dtype0*
shape:<P* 
shared_nameconv_4/kernel/m
{
#conv_4/kernel/m/Read/ReadVariableOpReadVariableOpconv_4/kernel/m*&
_output_shapes
:<P*
dtype0
Т
conv_3/bias/mVarHandleOp*
_output_shapes
: *

debug_nameconv_3/bias/m/*
dtype0*
shape:<*
shared_nameconv_3/bias/m
k
!conv_3/bias/m/Read/ReadVariableOpReadVariableOpconv_3/bias/m*
_output_shapes
:<*
dtype0
§
conv_3/kernel/mVarHandleOp*
_output_shapes
: * 

debug_nameconv_3/kernel/m/*
dtype0*
shape:(<* 
shared_nameconv_3/kernel/m
{
#conv_3/kernel/m/Read/ReadVariableOpReadVariableOpconv_3/kernel/m*&
_output_shapes
:(<*
dtype0
Т
conv_2/bias/mVarHandleOp*
_output_shapes
: *

debug_nameconv_2/bias/m/*
dtype0*
shape:(*
shared_nameconv_2/bias/m
k
!conv_2/bias/m/Read/ReadVariableOpReadVariableOpconv_2/bias/m*
_output_shapes
:(*
dtype0
§
conv_2/kernel/mVarHandleOp*
_output_shapes
: * 

debug_nameconv_2/kernel/m/*
dtype0*
shape:(* 
shared_nameconv_2/kernel/m
{
#conv_2/kernel/m/Read/ReadVariableOpReadVariableOpconv_2/kernel/m*&
_output_shapes
:(*
dtype0
Т
conv_1/bias/mVarHandleOp*
_output_shapes
: *

debug_nameconv_1/bias/m/*
dtype0*
shape:*
shared_nameconv_1/bias/m
k
!conv_1/bias/m/Read/ReadVariableOpReadVariableOpconv_1/bias/m*
_output_shapes
:*
dtype0
§
conv_1/kernel/mVarHandleOp*
_output_shapes
: * 

debug_nameconv_1/kernel/m/*
dtype0*
shape:* 
shared_nameconv_1/kernel/m
{
#conv_1/kernel/m/Read/ReadVariableOpReadVariableOpconv_1/kernel/m*&
_output_shapes
:*
dtype0
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
total_1VarHandleOp*
_output_shapes
: *

debug_name
total_1/*
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
О
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
v
decayVarHandleOp*
_output_shapes
: *

debug_namedecay/*
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
y
beta_2VarHandleOp*
_output_shapes
: *

debug_name	beta_2/*
dtype0*
shape: *
shared_namebeta_2
Y
beta_2/Read/ReadVariableOpReadVariableOpbeta_2*
_output_shapes
: *
dtype0
y
beta_1VarHandleOp*
_output_shapes
: *

debug_name	beta_1/*
dtype0*
shape: *
shared_namebeta_1
Y
beta_1/Read/ReadVariableOpReadVariableOpbeta_1*
_output_shapes
: *
dtype0
s
iterVarHandleOp*
_output_shapes
: *

debug_nameiter/*
dtype0	*
shape: *
shared_nameiter
U
iter/Read/ReadVariableOpReadVariableOpiter*
_output_shapes
: *
dtype0	
Н
output/biasVarHandleOp*
_output_shapes
: *

debug_nameoutput/bias/*
dtype0*
shape:Г
*
shared_nameoutput/bias
h
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes	
:Г
*
dtype0
Ш
output/kernelVarHandleOp*
_output_shapes
: *

debug_nameoutput/kernel/*
dtype0*
shape:
†Г
*
shared_nameoutput/kernel
q
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel* 
_output_shapes
:
†Г
*
dtype0
З
	fc_2/biasVarHandleOp*
_output_shapes
: *

debug_name
fc_2/bias/*
dtype0*
shape:†*
shared_name	fc_2/bias
d
fc_2/bias/Read/ReadVariableOpReadVariableOp	fc_2/bias*
_output_shapes	
:†*
dtype0
Т
fc_2/kernelVarHandleOp*
_output_shapes
: *

debug_namefc_2/kernel/*
dtype0*
shape:
ј†*
shared_namefc_2/kernel
m
fc_2/kernel/Read/ReadVariableOpReadVariableOpfc_2/kernel* 
_output_shapes
:
ј†*
dtype0
З
	fc_1/biasVarHandleOp*
_output_shapes
: *

debug_name
fc_1/bias/*
dtype0*
shape:†*
shared_name	fc_1/bias
d
fc_1/bias/Read/ReadVariableOpReadVariableOp	fc_1/bias*
_output_shapes	
:†*
dtype0
Т
fc_1/kernelVarHandleOp*
_output_shapes
: *

debug_namefc_1/kernel/*
dtype0*
shape:
∞	†*
shared_namefc_1/kernel
m
fc_1/kernel/Read/ReadVariableOpReadVariableOpfc_1/kernel* 
_output_shapes
:
∞	†*
dtype0
М
conv_4/biasVarHandleOp*
_output_shapes
: *

debug_nameconv_4/bias/*
dtype0*
shape:P*
shared_nameconv_4/bias
g
conv_4/bias/Read/ReadVariableOpReadVariableOpconv_4/bias*
_output_shapes
:P*
dtype0
Ю
conv_4/kernelVarHandleOp*
_output_shapes
: *

debug_nameconv_4/kernel/*
dtype0*
shape:<P*
shared_nameconv_4/kernel
w
!conv_4/kernel/Read/ReadVariableOpReadVariableOpconv_4/kernel*&
_output_shapes
:<P*
dtype0
М
conv_3/biasVarHandleOp*
_output_shapes
: *

debug_nameconv_3/bias/*
dtype0*
shape:<*
shared_nameconv_3/bias
g
conv_3/bias/Read/ReadVariableOpReadVariableOpconv_3/bias*
_output_shapes
:<*
dtype0
Ю
conv_3/kernelVarHandleOp*
_output_shapes
: *

debug_nameconv_3/kernel/*
dtype0*
shape:(<*
shared_nameconv_3/kernel
w
!conv_3/kernel/Read/ReadVariableOpReadVariableOpconv_3/kernel*&
_output_shapes
:(<*
dtype0
М
conv_2/biasVarHandleOp*
_output_shapes
: *

debug_nameconv_2/bias/*
dtype0*
shape:(*
shared_nameconv_2/bias
g
conv_2/bias/Read/ReadVariableOpReadVariableOpconv_2/bias*
_output_shapes
:(*
dtype0
Ю
conv_2/kernelVarHandleOp*
_output_shapes
: *

debug_nameconv_2/kernel/*
dtype0*
shape:(*
shared_nameconv_2/kernel
w
!conv_2/kernel/Read/ReadVariableOpReadVariableOpconv_2/kernel*&
_output_shapes
:(*
dtype0
М
conv_1/biasVarHandleOp*
_output_shapes
: *

debug_nameconv_1/bias/*
dtype0*
shape:*
shared_nameconv_1/bias
g
conv_1/bias/Read/ReadVariableOpReadVariableOpconv_1/bias*
_output_shapes
:*
dtype0
Ю
conv_1/kernelVarHandleOp*
_output_shapes
: *

debug_nameconv_1/kernel/*
dtype0*
shape:*
shared_nameconv_1/kernel
w
!conv_1/kernel/Read/ReadVariableOpReadVariableOpconv_1/kernel*&
_output_shapes
:*
dtype0
У
output/bias_1VarHandleOp*
_output_shapes
: *

debug_nameoutput/bias_1/*
dtype0*
shape:Г
*
shared_nameoutput/bias_1
l
!output/bias_1/Read/ReadVariableOpReadVariableOpoutput/bias_1*
_output_shapes	
:Г
*
dtype0
Ю
output/kernel_1VarHandleOp*
_output_shapes
: * 

debug_nameoutput/kernel_1/*
dtype0*
shape:
†Г
* 
shared_nameoutput/kernel_1
u
#output/kernel_1/Read/ReadVariableOpReadVariableOpoutput/kernel_1* 
_output_shapes
:
†Г
*
dtype0
Н
fc_2/bias_1VarHandleOp*
_output_shapes
: *

debug_namefc_2/bias_1/*
dtype0*
shape:†*
shared_namefc_2/bias_1
h
fc_2/bias_1/Read/ReadVariableOpReadVariableOpfc_2/bias_1*
_output_shapes	
:†*
dtype0
Ш
fc_2/kernel_1VarHandleOp*
_output_shapes
: *

debug_namefc_2/kernel_1/*
dtype0*
shape:
ј†*
shared_namefc_2/kernel_1
q
!fc_2/kernel_1/Read/ReadVariableOpReadVariableOpfc_2/kernel_1* 
_output_shapes
:
ј†*
dtype0
Н
fc_1/bias_1VarHandleOp*
_output_shapes
: *

debug_namefc_1/bias_1/*
dtype0*
shape:†*
shared_namefc_1/bias_1
h
fc_1/bias_1/Read/ReadVariableOpReadVariableOpfc_1/bias_1*
_output_shapes	
:†*
dtype0
Ш
fc_1/kernel_1VarHandleOp*
_output_shapes
: *

debug_namefc_1/kernel_1/*
dtype0*
shape:
∞	†*
shared_namefc_1/kernel_1
q
!fc_1/kernel_1/Read/ReadVariableOpReadVariableOpfc_1/kernel_1* 
_output_shapes
:
∞	†*
dtype0
Т
conv_4/bias_1VarHandleOp*
_output_shapes
: *

debug_nameconv_4/bias_1/*
dtype0*
shape:P*
shared_nameconv_4/bias_1
k
!conv_4/bias_1/Read/ReadVariableOpReadVariableOpconv_4/bias_1*
_output_shapes
:P*
dtype0
§
conv_4/kernel_1VarHandleOp*
_output_shapes
: * 

debug_nameconv_4/kernel_1/*
dtype0*
shape:<P* 
shared_nameconv_4/kernel_1
{
#conv_4/kernel_1/Read/ReadVariableOpReadVariableOpconv_4/kernel_1*&
_output_shapes
:<P*
dtype0
Т
conv_3/bias_1VarHandleOp*
_output_shapes
: *

debug_nameconv_3/bias_1/*
dtype0*
shape:<*
shared_nameconv_3/bias_1
k
!conv_3/bias_1/Read/ReadVariableOpReadVariableOpconv_3/bias_1*
_output_shapes
:<*
dtype0
§
conv_3/kernel_1VarHandleOp*
_output_shapes
: * 

debug_nameconv_3/kernel_1/*
dtype0*
shape:(<* 
shared_nameconv_3/kernel_1
{
#conv_3/kernel_1/Read/ReadVariableOpReadVariableOpconv_3/kernel_1*&
_output_shapes
:(<*
dtype0
Т
conv_2/bias_1VarHandleOp*
_output_shapes
: *

debug_nameconv_2/bias_1/*
dtype0*
shape:(*
shared_nameconv_2/bias_1
k
!conv_2/bias_1/Read/ReadVariableOpReadVariableOpconv_2/bias_1*
_output_shapes
:(*
dtype0
§
conv_2/kernel_1VarHandleOp*
_output_shapes
: * 

debug_nameconv_2/kernel_1/*
dtype0*
shape:(* 
shared_nameconv_2/kernel_1
{
#conv_2/kernel_1/Read/ReadVariableOpReadVariableOpconv_2/kernel_1*&
_output_shapes
:(*
dtype0
Т
conv_1/bias_1VarHandleOp*
_output_shapes
: *

debug_nameconv_1/bias_1/*
dtype0*
shape:*
shared_nameconv_1/bias_1
k
!conv_1/bias_1/Read/ReadVariableOpReadVariableOpconv_1/bias_1*
_output_shapes
:*
dtype0
§
conv_1/kernel_1VarHandleOp*
_output_shapes
: * 

debug_nameconv_1/kernel_1/*
dtype0*
shape:* 
shared_nameconv_1/kernel_1
{
#conv_1/kernel_1/Read/ReadVariableOpReadVariableOpconv_1/kernel_1*&
_output_shapes
:*
dtype0
К
serving_default_input_1Placeholder*/
_output_shapes
:€€€€€€€€€7/*
dtype0*$
shape:€€€€€€€€€7/
ы
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv_1/kernel_1conv_1/bias_1conv_2/kernel_1conv_2/bias_1conv_3/kernel_1conv_3/bias_1conv_4/kernel_1conv_4/bias_1fc_1/kernel_1fc_1/bias_1fc_2/kernel_1fc_2/bias_1output/kernel_1output/bias_1conv_1/kernelconv_1/biasconv_2/kernelconv_2/biasconv_3/kernelconv_3/biasconv_4/kernelconv_4/biasfc_1/kernel	fc_1/biasfc_2/kernel	fc_2/biasoutput/kerneloutput/bias*(
Tin!
2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:€€€€€€€€€*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8В *.
f)R'
%__inference_signature_wrapper_8057015

NoOpNoOp
µЋ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*п 
valueд Bа  BЎ 
„
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
model_1
	model_2


signatures*
Џ
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
 21
!22
"23
#24
$25
%26
&27*
Џ
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
 21
!22
"23
#24
$25
%26
&27*
* 
∞
'non_trainable_variables

(layers
)metrics
*layer_regularization_losses
+layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

,trace_0
-trace_1* 

.trace_0
/trace_1* 
* 
Э
0layer-0
1layer_with_weights-0
1layer-1
2layer-2
3layer_with_weights-1
3layer-3
4layer-4
5layer_with_weights-2
5layer-5
6layer-6
7layer_with_weights-3
7layer-7
8layer-8
9layer-9
:layer_with_weights-4
:layer-10
;layer_with_weights-5
;layer-11
<layer-12
=layer-13
>layer_with_weights-6
>layer-14
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses
E	optimizer*
О
Flayer-0
Glayer_with_weights-0
Glayer-1
Hlayer-2
Ilayer_with_weights-1
Ilayer-3
Jlayer-4
Klayer_with_weights-2
Klayer-5
Llayer-6
Mlayer_with_weights-3
Mlayer-7
Nlayer-8
Olayer-9
Player_with_weights-4
Player-10
Qlayer_with_weights-5
Qlayer-11
Rlayer-12
Slayer-13
Tlayer_with_weights-6
Tlayer-14
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses*

[serving_default* 
OI
VARIABLE_VALUEconv_1/kernel_1&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv_1/bias_1&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv_2/kernel_1&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv_2/bias_1&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv_3/kernel_1&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv_3/bias_1&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv_4/kernel_1&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv_4/bias_1&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEfc_1/kernel_1&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEfc_1/bias_1&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEfc_2/kernel_1'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEfc_2/bias_1'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEoutput/kernel_1'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEoutput/bias_1'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv_1/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEconv_1/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv_2/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEconv_2/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv_3/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEconv_3/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv_4/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEconv_4/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEfc_1/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE	fc_1/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEfc_2/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE	fc_2/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEoutput/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEoutput/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
	1*
* 
* 
* 
* 
* 
* 
* 
* 
»
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses

kernel
bias
 b_jit_compiled_convolution_op*
О
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses* 
»
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

kernel
bias
 o_jit_compiled_convolution_op*
О
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses* 
»
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses

kernel
bias
 |_jit_compiled_convolution_op*
С
}	variables
~trainable_variables
regularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses* 
ѕ
Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses

kernel
bias
!Й_jit_compiled_convolution_op*
Ф
К	variables
Лtrainable_variables
Мregularization_losses
Н	keras_api
О__call__
+П&call_and_return_all_conditional_losses* 
Ф
Р	variables
Сtrainable_variables
Тregularization_losses
У	keras_api
Ф__call__
+Х&call_and_return_all_conditional_losses* 
ђ
Ц	variables
Чtrainable_variables
Шregularization_losses
Щ	keras_api
Ъ__call__
+Ы&call_and_return_all_conditional_losses

kernel
bias*
ђ
Ь	variables
Эtrainable_variables
Юregularization_losses
Я	keras_api
†__call__
+°&call_and_return_all_conditional_losses

kernel
bias*
Ф
Ґ	variables
£trainable_variables
§regularization_losses
•	keras_api
¶__call__
+І&call_and_return_all_conditional_losses* 
Ф
®	variables
©trainable_variables
™regularization_losses
Ђ	keras_api
ђ__call__
+≠&call_and_return_all_conditional_losses* 
ђ
Ѓ	variables
ѓtrainable_variables
∞regularization_losses
±	keras_api
≤__call__
+≥&call_and_return_all_conditional_losses

kernel
bias*
j
0
1
2
3
4
5
6
7
8
9
10
11
12
13*
j
0
1
2
3
4
5
6
7
8
9
10
11
12
13*
* 
Ш
іnon_trainable_variables
µlayers
ґmetrics
 Јlayer_regularization_losses
Єlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*

єtrace_0
Їtrace_1* 

їtrace_0
Љtrace_1* 
б
	љiter
Њbeta_1
њbeta_2

јdecay
Ѕlearning_ratemтmуmфmхmцmчmшmщmъmыmьmэmюm€vАvБvВvГvДvЕvЖvЗvИvЙvКvЛvМvН*
* 
ѕ
¬	variables
√trainable_variables
ƒregularization_losses
≈	keras_api
∆__call__
+«&call_and_return_all_conditional_losses

kernel
bias
!»_jit_compiled_convolution_op*
Ф
…	variables
 trainable_variables
Ћregularization_losses
ћ	keras_api
Ќ__call__
+ќ&call_and_return_all_conditional_losses* 
ѕ
ѕ	variables
–trainable_variables
—regularization_losses
“	keras_api
”__call__
+‘&call_and_return_all_conditional_losses

kernel
bias
!’_jit_compiled_convolution_op*
Ф
÷	variables
„trainable_variables
Ўregularization_losses
ў	keras_api
Џ__call__
+џ&call_and_return_all_conditional_losses* 
ѕ
№	variables
Ёtrainable_variables
ёregularization_losses
я	keras_api
а__call__
+б&call_and_return_all_conditional_losses

kernel
bias
!в_jit_compiled_convolution_op*
Ф
г	variables
дtrainable_variables
еregularization_losses
ж	keras_api
з__call__
+и&call_and_return_all_conditional_losses* 
ѕ
й	variables
кtrainable_variables
лregularization_losses
м	keras_api
н__call__
+о&call_and_return_all_conditional_losses

kernel
 bias
!п_jit_compiled_convolution_op*
Ф
р	variables
сtrainable_variables
тregularization_losses
у	keras_api
ф__call__
+х&call_and_return_all_conditional_losses* 
Ф
ц	variables
чtrainable_variables
шregularization_losses
щ	keras_api
ъ__call__
+ы&call_and_return_all_conditional_losses* 
ђ
ь	variables
эtrainable_variables
юregularization_losses
€	keras_api
А__call__
+Б&call_and_return_all_conditional_losses

!kernel
"bias*
ђ
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses

#kernel
$bias*
Ф
И	variables
Йtrainable_variables
Кregularization_losses
Л	keras_api
М__call__
+Н&call_and_return_all_conditional_losses* 
Ф
О	variables
Пtrainable_variables
Рregularization_losses
С	keras_api
Т__call__
+У&call_and_return_all_conditional_losses* 
ђ
Ф	variables
Хtrainable_variables
Цregularization_losses
Ч	keras_api
Ш__call__
+Щ&call_and_return_all_conditional_losses

%kernel
&bias*
j
0
1
2
3
4
5
6
 7
!8
"9
#10
$11
%12
&13*
j
0
1
2
3
4
5
6
 7
!8
"9
#10
$11
%12
&13*
* 
Ш
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses*

Яtrace_0
†trace_1* 

°trace_0
Ґtrace_1* 
* 

0
1*

0
1*
* 
Ш
£non_trainable_variables
§layers
•metrics
 ¶layer_regularization_losses
Іlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses*

®trace_0* 

©trace_0* 
* 
* 
* 
* 
Ц
™non_trainable_variables
Ђlayers
ђmetrics
 ≠layer_regularization_losses
Ѓlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses* 

ѓtrace_0* 

∞trace_0* 

0
1*

0
1*
* 
Ш
±non_trainable_variables
≤layers
≥metrics
 іlayer_regularization_losses
µlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses*

ґtrace_0* 

Јtrace_0* 
* 
* 
* 
* 
Ц
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Љlayer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses* 

љtrace_0* 

Њtrace_0* 

0
1*

0
1*
* 
Ш
њnon_trainable_variables
јlayers
Ѕmetrics
 ¬layer_regularization_losses
√layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses*

ƒtrace_0* 

≈trace_0* 
* 
* 
* 
* 
Щ
∆non_trainable_variables
«layers
»metrics
 …layer_regularization_losses
 layer_metrics
}	variables
~trainable_variables
regularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses* 

Ћtrace_0* 

ћtrace_0* 

0
1*

0
1*
* 
Ю
Ќnon_trainable_variables
ќlayers
ѕmetrics
 –layer_regularization_losses
—layer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses*

“trace_0* 

”trace_0* 
* 
* 
* 
* 
Ь
‘non_trainable_variables
’layers
÷metrics
 „layer_regularization_losses
Ўlayer_metrics
К	variables
Лtrainable_variables
Мregularization_losses
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses* 

ўtrace_0* 

Џtrace_0* 
* 
* 
* 
Ь
џnon_trainable_variables
№layers
Ёmetrics
 ёlayer_regularization_losses
яlayer_metrics
Р	variables
Сtrainable_variables
Тregularization_losses
Ф__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses* 

аtrace_0* 

бtrace_0* 

0
1*

0
1*
* 
Ю
вnon_trainable_variables
гlayers
дmetrics
 еlayer_regularization_losses
жlayer_metrics
Ц	variables
Чtrainable_variables
Шregularization_losses
Ъ__call__
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses*

зtrace_0* 

иtrace_0* 

0
1*

0
1*
* 
Ю
йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
Ь	variables
Эtrainable_variables
Юregularization_losses
†__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses*

оtrace_0* 

пtrace_0* 
* 
* 
* 
Ь
рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
Ґ	variables
£trainable_variables
§regularization_losses
¶__call__
+І&call_and_return_all_conditional_losses
'І"call_and_return_conditional_losses* 

хtrace_0* 

цtrace_0* 
* 
* 
* 
Ь
чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
®	variables
©trainable_variables
™regularization_losses
ђ__call__
+≠&call_and_return_all_conditional_losses
'≠"call_and_return_conditional_losses* 

ьtrace_0* 

эtrace_0* 

0
1*

0
1*
* 
Ю
юnon_trainable_variables
€layers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
Ѓ	variables
ѓtrainable_variables
∞regularization_losses
≤__call__
+≥&call_and_return_all_conditional_losses
'≥"call_and_return_conditional_losses*

Гtrace_0* 

Дtrace_0* 
* 
r
00
11
22
33
44
55
66
77
88
99
:10
;11
<12
=13
>14*

Е0
Ж1*
* 
* 
* 
* 
* 
* 
OI
VARIABLE_VALUEiter1model_1/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEbeta_13model_1/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEbeta_23model_1/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEdecay2model_1/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUElearning_rate:model_1/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
Ю
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
¬	variables
√trainable_variables
ƒregularization_losses
∆__call__
+«&call_and_return_all_conditional_losses
'«"call_and_return_conditional_losses*

Мtrace_0* 

Нtrace_0* 
* 
* 
* 
* 
Ь
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
…	variables
 trainable_variables
Ћregularization_losses
Ќ__call__
+ќ&call_and_return_all_conditional_losses
'ќ"call_and_return_conditional_losses* 

Уtrace_0* 

Фtrace_0* 

0
1*

0
1*
* 
Ю
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
ѕ	variables
–trainable_variables
—regularization_losses
”__call__
+‘&call_and_return_all_conditional_losses
'‘"call_and_return_conditional_losses*

Ъtrace_0* 

Ыtrace_0* 
* 
* 
* 
* 
Ь
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
†layer_metrics
÷	variables
„trainable_variables
Ўregularization_losses
Џ__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses* 

°trace_0* 

Ґtrace_0* 

0
1*

0
1*
* 
Ю
£non_trainable_variables
§layers
•metrics
 ¶layer_regularization_losses
Іlayer_metrics
№	variables
Ёtrainable_variables
ёregularization_losses
а__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses*

®trace_0* 

©trace_0* 
* 
* 
* 
* 
Ь
™non_trainable_variables
Ђlayers
ђmetrics
 ≠layer_regularization_losses
Ѓlayer_metrics
г	variables
дtrainable_variables
еregularization_losses
з__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses* 

ѓtrace_0* 

∞trace_0* 

0
 1*

0
 1*
* 
Ю
±non_trainable_variables
≤layers
≥metrics
 іlayer_regularization_losses
µlayer_metrics
й	variables
кtrainable_variables
лregularization_losses
н__call__
+о&call_and_return_all_conditional_losses
'о"call_and_return_conditional_losses*

ґtrace_0* 

Јtrace_0* 
* 
* 
* 
* 
Ь
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Љlayer_metrics
р	variables
сtrainable_variables
тregularization_losses
ф__call__
+х&call_and_return_all_conditional_losses
'х"call_and_return_conditional_losses* 

љtrace_0* 

Њtrace_0* 
* 
* 
* 
Ь
њnon_trainable_variables
јlayers
Ѕmetrics
 ¬layer_regularization_losses
√layer_metrics
ц	variables
чtrainable_variables
шregularization_losses
ъ__call__
+ы&call_and_return_all_conditional_losses
'ы"call_and_return_conditional_losses* 

ƒtrace_0* 

≈trace_0* 

!0
"1*

!0
"1*
* 
Ю
∆non_trainable_variables
«layers
»metrics
 …layer_regularization_losses
 layer_metrics
ь	variables
эtrainable_variables
юregularization_losses
А__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses*

Ћtrace_0* 

ћtrace_0* 

#0
$1*

#0
$1*
* 
Ю
Ќnon_trainable_variables
ќlayers
ѕmetrics
 –layer_regularization_losses
—layer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses*

“trace_0* 

”trace_0* 
* 
* 
* 
Ь
‘non_trainable_variables
’layers
÷metrics
 „layer_regularization_losses
Ўlayer_metrics
И	variables
Йtrainable_variables
Кregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses* 

ўtrace_0* 

Џtrace_0* 
* 
* 
* 
Ь
џnon_trainable_variables
№layers
Ёmetrics
 ёlayer_regularization_losses
яlayer_metrics
О	variables
Пtrainable_variables
Рregularization_losses
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses* 

аtrace_0* 

бtrace_0* 

%0
&1*

%0
&1*
* 
Ю
вnon_trainable_variables
гlayers
дmetrics
 еlayer_regularization_losses
жlayer_metrics
Ф	variables
Хtrainable_variables
Цregularization_losses
Ш__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses*

зtrace_0* 

иtrace_0* 
* 
r
F0
G1
H2
I3
J4
K5
L6
M7
N8
O9
P10
Q11
R12
S13
T14*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
й	variables
к	keras_api

лtotal

мcount*
M
н	variables
о	keras_api

пtotal

рcount
с
_fn_kwargs*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

л0
м1*

й	variables*
]W
VARIABLE_VALUEtotal_1<model_1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEcount_1<model_1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

п0
р1*

н	variables*
[U
VARIABLE_VALUEtotal<model_1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEcount<model_1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
sm
VARIABLE_VALUEconv_1/kernel/mJvariables/0/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEconv_1/bias/mJvariables/1/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEconv_2/kernel/mJvariables/2/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEconv_2/bias/mJvariables/3/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEconv_3/kernel/mJvariables/4/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEconv_3/bias/mJvariables/5/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEconv_4/kernel/mJvariables/6/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEconv_4/bias/mJvariables/7/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEfc_1/kernel/mJvariables/8/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEfc_1/bias/mJvariables/9/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEfc_2/kernel/mKvariables/10/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEfc_2/bias/mKvariables/11/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEoutput/kernel/mKvariables/12/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEoutput/bias/mKvariables/13/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEconv_1/kernel/vJvariables/0/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEconv_1/bias/vJvariables/1/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEconv_2/kernel/vJvariables/2/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEconv_2/bias/vJvariables/3/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEconv_3/kernel/vJvariables/4/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEconv_3/bias/vJvariables/5/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEconv_4/kernel/vJvariables/6/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEconv_4/bias/vJvariables/7/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEfc_1/kernel/vJvariables/8/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEfc_1/bias/vJvariables/9/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEfc_2/kernel/vKvariables/10/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEfc_2/bias/vKvariables/11/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEoutput/kernel/vKvariables/12/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEoutput/bias/vKvariables/13/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
н	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv_1/kernel_1conv_1/bias_1conv_2/kernel_1conv_2/bias_1conv_3/kernel_1conv_3/bias_1conv_4/kernel_1conv_4/bias_1fc_1/kernel_1fc_1/bias_1fc_2/kernel_1fc_2/bias_1output/kernel_1output/bias_1conv_1/kernelconv_1/biasconv_2/kernelconv_2/biasconv_3/kernelconv_3/biasconv_4/kernelconv_4/biasfc_1/kernel	fc_1/biasfc_2/kernel	fc_2/biasoutput/kerneloutput/biasiterbeta_1beta_2decaylearning_ratetotal_1count_1totalcountconv_1/kernel/mconv_1/bias/mconv_2/kernel/mconv_2/bias/mconv_3/kernel/mconv_3/bias/mconv_4/kernel/mconv_4/bias/mfc_1/kernel/mfc_1/bias/mfc_2/kernel/mfc_2/bias/moutput/kernel/moutput/bias/mconv_1/kernel/vconv_1/bias/vconv_2/kernel/vconv_2/bias/vconv_3/kernel/vconv_3/bias/vconv_4/kernel/vconv_4/bias/vfc_1/kernel/vfc_1/bias/vfc_2/kernel/vfc_2/bias/voutput/kernel/voutput/bias/vConst*N
TinG
E2C*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__traced_save_8057857
и	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv_1/kernel_1conv_1/bias_1conv_2/kernel_1conv_2/bias_1conv_3/kernel_1conv_3/bias_1conv_4/kernel_1conv_4/bias_1fc_1/kernel_1fc_1/bias_1fc_2/kernel_1fc_2/bias_1output/kernel_1output/bias_1conv_1/kernelconv_1/biasconv_2/kernelconv_2/biasconv_3/kernelconv_3/biasconv_4/kernelconv_4/biasfc_1/kernel	fc_1/biasfc_2/kernel	fc_2/biasoutput/kerneloutput/biasiterbeta_1beta_2decaylearning_ratetotal_1count_1totalcountconv_1/kernel/mconv_1/bias/mconv_2/kernel/mconv_2/bias/mconv_3/kernel/mconv_3/bias/mconv_4/kernel/mconv_4/bias/mfc_1/kernel/mfc_1/bias/mfc_2/kernel/mfc_2/bias/moutput/kernel/moutput/bias/mconv_1/kernel/vconv_1/bias/vconv_2/kernel/vconv_2/bias/vconv_3/kernel/vconv_3/bias/vconv_4/kernel/vconv_4/bias/vfc_1/kernel/vfc_1/bias/vfc_2/kernel/vfc_2/bias/voutput/kernel/voutput/bias/v*M
TinF
D2B*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference__traced_restore_8058061ЈЧ
€	
х
A__inference_fc_2_layer_call_and_return_conditional_losses_8057403

inputs2
matmul_readvariableop_resource:
ј†.
biasadd_readvariableop_resource:	†
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ј†*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€ј: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs
с
Ц
&__inference_fc_2_layer_call_fn_8057181

inputs
unknown:
ј†
	unknown_0:	†
identityИҐStatefulPartitionedCall„
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_fc_2_layer_call_and_return_conditional_losses_8056087p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€ј: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	8057177:'#
!
_user_specified_name	8057175:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs
Ђ
J
.__inference_activation_1_layer_call_fn_8057208

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_8056104a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€†"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€†:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs
≥
ь
C__inference_conv_2_layer_call_and_return_conditional_losses_8057071

inputs8
conv2d_readvariableop_resource:(-
biasadd_readvariableop_resource:(
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:(*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€(*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€(X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€(i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€(S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Т
Е
)__inference_model_1_layer_call_fn_8056605	
input!
unknown:
	unknown_0:#
	unknown_1:(
	unknown_2:(#
	unknown_3:(<
	unknown_4:<#
	unknown_5:<P
	unknown_6:P
	unknown_7:
∞	†
	unknown_8:	†
	unknown_9:
ј†

unknown_10:	†

unknown_11:
†Г


unknown_12:	Г

identityИҐStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Г
*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_8056539p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€7/: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	8056601:'#
!
_user_specified_name	8056599:'#
!
_user_specified_name	8056597:'#
!
_user_specified_name	8056595:'
#
!
_user_specified_name	8056593:'	#
!
_user_specified_name	8056591:'#
!
_user_specified_name	8056589:'#
!
_user_specified_name	8056587:'#
!
_user_specified_name	8056585:'#
!
_user_specified_name	8056583:'#
!
_user_specified_name	8056581:'#
!
_user_specified_name	8056579:'#
!
_user_specified_name	8056577:'#
!
_user_specified_name	8056575:V R
/
_output_shapes
:€€€€€€€€€7/

_user_specified_nameinput
џ

ч
C__inference_output_layer_call_and_return_conditional_losses_8057445

inputs2
matmul_readvariableop_resource:
†Г
.
biasadd_readvariableop_resource:	Г

identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
†Г
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Г
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Г
*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Г
W
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Г
a
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€†: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs
®
D
(__inference_pool_3_layer_call_fn_8057318

inputs
identity—
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pool_3_layer_call_and_return_conditional_losses_8056344Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ъ£
к%
#__inference__traced_restore_8058061
file_prefix:
 assignvariableop_conv_1_kernel_1:.
 assignvariableop_1_conv_1_bias_1:<
"assignvariableop_2_conv_2_kernel_1:(.
 assignvariableop_3_conv_2_bias_1:(<
"assignvariableop_4_conv_3_kernel_1:(<.
 assignvariableop_5_conv_3_bias_1:<<
"assignvariableop_6_conv_4_kernel_1:<P.
 assignvariableop_7_conv_4_bias_1:P4
 assignvariableop_8_fc_1_kernel_1:
∞	†-
assignvariableop_9_fc_1_bias_1:	†5
!assignvariableop_10_fc_2_kernel_1:
ј†.
assignvariableop_11_fc_2_bias_1:	†7
#assignvariableop_12_output_kernel_1:
†Г
0
!assignvariableop_13_output_bias_1:	Г
;
!assignvariableop_14_conv_1_kernel:-
assignvariableop_15_conv_1_bias:;
!assignvariableop_16_conv_2_kernel:(-
assignvariableop_17_conv_2_bias:(;
!assignvariableop_18_conv_3_kernel:(<-
assignvariableop_19_conv_3_bias:<;
!assignvariableop_20_conv_4_kernel:<P-
assignvariableop_21_conv_4_bias:P3
assignvariableop_22_fc_1_kernel:
∞	†,
assignvariableop_23_fc_1_bias:	†3
assignvariableop_24_fc_2_kernel:
ј†,
assignvariableop_25_fc_2_bias:	†5
!assignvariableop_26_output_kernel:
†Г
.
assignvariableop_27_output_bias:	Г
"
assignvariableop_28_iter:	 $
assignvariableop_29_beta_1: $
assignvariableop_30_beta_2: #
assignvariableop_31_decay: +
!assignvariableop_32_learning_rate: %
assignvariableop_33_total_1: %
assignvariableop_34_count_1: #
assignvariableop_35_total: #
assignvariableop_36_count: =
#assignvariableop_37_conv_1_kernel_m:/
!assignvariableop_38_conv_1_bias_m:=
#assignvariableop_39_conv_2_kernel_m:(/
!assignvariableop_40_conv_2_bias_m:(=
#assignvariableop_41_conv_3_kernel_m:(</
!assignvariableop_42_conv_3_bias_m:<=
#assignvariableop_43_conv_4_kernel_m:<P/
!assignvariableop_44_conv_4_bias_m:P5
!assignvariableop_45_fc_1_kernel_m:
∞	†.
assignvariableop_46_fc_1_bias_m:	†5
!assignvariableop_47_fc_2_kernel_m:
ј†.
assignvariableop_48_fc_2_bias_m:	†7
#assignvariableop_49_output_kernel_m:
†Г
0
!assignvariableop_50_output_bias_m:	Г
=
#assignvariableop_51_conv_1_kernel_v:/
!assignvariableop_52_conv_1_bias_v:=
#assignvariableop_53_conv_2_kernel_v:(/
!assignvariableop_54_conv_2_bias_v:(=
#assignvariableop_55_conv_3_kernel_v:(</
!assignvariableop_56_conv_3_bias_v:<=
#assignvariableop_57_conv_4_kernel_v:<P/
!assignvariableop_58_conv_4_bias_v:P5
!assignvariableop_59_fc_1_kernel_v:
∞	†.
assignvariableop_60_fc_1_bias_v:	†5
!assignvariableop_61_fc_2_kernel_v:
ј†.
assignvariableop_62_fc_2_bias_v:	†7
#assignvariableop_63_output_kernel_v:
†Г
0
!assignvariableop_64_output_bias_v:	Г

identity_66ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_54ҐAssignVariableOp_55ҐAssignVariableOp_56ҐAssignVariableOp_57ҐAssignVariableOp_58ҐAssignVariableOp_59ҐAssignVariableOp_6ҐAssignVariableOp_60ҐAssignVariableOp_61ҐAssignVariableOp_62ҐAssignVariableOp_63ҐAssignVariableOp_64ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9№
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*В
valueшBхBB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB1model_1/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB3model_1/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB3model_1/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB2model_1/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB:model_1/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB<model_1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB<model_1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB<model_1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB<model_1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBJvariables/0/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJvariables/1/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJvariables/2/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJvariables/3/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJvariables/4/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJvariables/5/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJvariables/6/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJvariables/7/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJvariables/8/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJvariables/9/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBKvariables/10/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBKvariables/11/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBKvariables/12/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBKvariables/13/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJvariables/0/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJvariables/1/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJvariables/2/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJvariables/3/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJvariables/4/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJvariables/5/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJvariables/6/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJvariables/7/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJvariables/8/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJvariables/9/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBKvariables/10/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBKvariables/11/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBKvariables/12/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBKvariables/13/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHч
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*Щ
valueПBМBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B л
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ю
_output_shapesЛ
И::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*P
dtypesF
D2B	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:≥
AssignVariableOpAssignVariableOp assignvariableop_conv_1_kernel_1Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv_1_bias_1Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv_2_kernel_1Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv_2_bias_1Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv_3_kernel_1Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv_3_bias_1Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv_4_kernel_1Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv_4_bias_1Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_8AssignVariableOp assignvariableop_8_fc_1_kernel_1Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_9AssignVariableOpassignvariableop_9_fc_1_bias_1Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_10AssignVariableOp!assignvariableop_10_fc_2_kernel_1Identity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_11AssignVariableOpassignvariableop_11_fc_2_bias_1Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_12AssignVariableOp#assignvariableop_12_output_kernel_1Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_13AssignVariableOp!assignvariableop_13_output_bias_1Identity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_14AssignVariableOp!assignvariableop_14_conv_1_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_15AssignVariableOpassignvariableop_15_conv_1_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_16AssignVariableOp!assignvariableop_16_conv_2_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_17AssignVariableOpassignvariableop_17_conv_2_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_18AssignVariableOp!assignvariableop_18_conv_3_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_19AssignVariableOpassignvariableop_19_conv_3_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_20AssignVariableOp!assignvariableop_20_conv_4_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_21AssignVariableOpassignvariableop_21_conv_4_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_22AssignVariableOpassignvariableop_22_fc_1_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:ґ
AssignVariableOp_23AssignVariableOpassignvariableop_23_fc_1_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_24AssignVariableOpassignvariableop_24_fc_2_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:ґ
AssignVariableOp_25AssignVariableOpassignvariableop_25_fc_2_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_26AssignVariableOp!assignvariableop_26_output_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_27AssignVariableOpassignvariableop_27_output_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0	*
_output_shapes
:±
AssignVariableOp_28AssignVariableOpassignvariableop_28_iterIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:≥
AssignVariableOp_29AssignVariableOpassignvariableop_29_beta_1Identity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:≥
AssignVariableOp_30AssignVariableOpassignvariableop_30_beta_2Identity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_31AssignVariableOpassignvariableop_31_decayIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_32AssignVariableOp!assignvariableop_32_learning_rateIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_33AssignVariableOpassignvariableop_33_total_1Identity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_34AssignVariableOpassignvariableop_34_count_1Identity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_35AssignVariableOpassignvariableop_35_totalIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_36AssignVariableOpassignvariableop_36_countIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_37AssignVariableOp#assignvariableop_37_conv_1_kernel_mIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_38AssignVariableOp!assignvariableop_38_conv_1_bias_mIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_39AssignVariableOp#assignvariableop_39_conv_2_kernel_mIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_40AssignVariableOp!assignvariableop_40_conv_2_bias_mIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_41AssignVariableOp#assignvariableop_41_conv_3_kernel_mIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_42AssignVariableOp!assignvariableop_42_conv_3_bias_mIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_43AssignVariableOp#assignvariableop_43_conv_4_kernel_mIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_44AssignVariableOp!assignvariableop_44_conv_4_bias_mIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_45AssignVariableOp!assignvariableop_45_fc_1_kernel_mIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_46AssignVariableOpassignvariableop_46_fc_1_bias_mIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_47AssignVariableOp!assignvariableop_47_fc_2_kernel_mIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_48AssignVariableOpassignvariableop_48_fc_2_bias_mIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_49AssignVariableOp#assignvariableop_49_output_kernel_mIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_50AssignVariableOp!assignvariableop_50_output_bias_mIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_51AssignVariableOp#assignvariableop_51_conv_1_kernel_vIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_52AssignVariableOp!assignvariableop_52_conv_1_bias_vIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_53AssignVariableOp#assignvariableop_53_conv_2_kernel_vIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_54AssignVariableOp!assignvariableop_54_conv_2_bias_vIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_55AssignVariableOp#assignvariableop_55_conv_3_kernel_vIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_56AssignVariableOp!assignvariableop_56_conv_3_bias_vIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_57AssignVariableOp#assignvariableop_57_conv_4_kernel_vIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_58AssignVariableOp!assignvariableop_58_conv_4_bias_vIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_59AssignVariableOp!assignvariableop_59_fc_1_kernel_vIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_60AssignVariableOpassignvariableop_60_fc_1_bias_vIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_61AssignVariableOp!assignvariableop_61_fc_2_kernel_vIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_62AssignVariableOpassignvariableop_62_fc_2_bias_vIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_63AssignVariableOp#assignvariableop_63_output_kernel_vIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_64AssignVariableOp!assignvariableop_64_output_bias_vIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 е
Identity_65Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_66IdentityIdentity_65:output:0^NoOp_1*
T0*
_output_shapes
: Ѓ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_66Identity_66:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:-A)
'
_user_specified_nameoutput/bias/v:/@+
)
_user_specified_nameoutput/kernel/v:+?'
%
_user_specified_namefc_2/bias/v:->)
'
_user_specified_namefc_2/kernel/v:+='
%
_user_specified_namefc_1/bias/v:-<)
'
_user_specified_namefc_1/kernel/v:-;)
'
_user_specified_nameconv_4/bias/v:/:+
)
_user_specified_nameconv_4/kernel/v:-9)
'
_user_specified_nameconv_3/bias/v:/8+
)
_user_specified_nameconv_3/kernel/v:-7)
'
_user_specified_nameconv_2/bias/v:/6+
)
_user_specified_nameconv_2/kernel/v:-5)
'
_user_specified_nameconv_1/bias/v:/4+
)
_user_specified_nameconv_1/kernel/v:-3)
'
_user_specified_nameoutput/bias/m:/2+
)
_user_specified_nameoutput/kernel/m:+1'
%
_user_specified_namefc_2/bias/m:-0)
'
_user_specified_namefc_2/kernel/m:+/'
%
_user_specified_namefc_1/bias/m:-.)
'
_user_specified_namefc_1/kernel/m:--)
'
_user_specified_nameconv_4/bias/m:/,+
)
_user_specified_nameconv_4/kernel/m:-+)
'
_user_specified_nameconv_3/bias/m:/*+
)
_user_specified_nameconv_3/kernel/m:-))
'
_user_specified_nameconv_2/bias/m:/(+
)
_user_specified_nameconv_2/kernel/m:-')
'
_user_specified_nameconv_1/bias/m:/&+
)
_user_specified_nameconv_1/kernel/m:%%!

_user_specified_namecount:%$!

_user_specified_nametotal:'##
!
_user_specified_name	count_1:'"#
!
_user_specified_name	total_1:-!)
'
_user_specified_namelearning_rate:% !

_user_specified_namedecay:&"
 
_user_specified_namebeta_2:&"
 
_user_specified_namebeta_1:$ 

_user_specified_nameiter:+'
%
_user_specified_nameoutput/bias:-)
'
_user_specified_nameoutput/kernel:)%
#
_user_specified_name	fc_2/bias:+'
%
_user_specified_namefc_2/kernel:)%
#
_user_specified_name	fc_1/bias:+'
%
_user_specified_namefc_1/kernel:+'
%
_user_specified_nameconv_4/bias:-)
'
_user_specified_nameconv_4/kernel:+'
%
_user_specified_nameconv_3/bias:-)
'
_user_specified_nameconv_3/kernel:+'
%
_user_specified_nameconv_2/bias:-)
'
_user_specified_nameconv_2/kernel:+'
%
_user_specified_nameconv_1/bias:-)
'
_user_specified_nameconv_1/kernel:-)
'
_user_specified_nameoutput/bias_1:/+
)
_user_specified_nameoutput/kernel_1:+'
%
_user_specified_namefc_2/bias_1:-)
'
_user_specified_namefc_2/kernel_1:+
'
%
_user_specified_namefc_1/bias_1:-	)
'
_user_specified_namefc_1/kernel_1:-)
'
_user_specified_nameconv_4/bias_1:/+
)
_user_specified_nameconv_4/kernel_1:-)
'
_user_specified_nameconv_3/bias_1:/+
)
_user_specified_nameconv_3/kernel_1:-)
'
_user_specified_nameconv_2/bias_1:/+
)
_user_specified_nameconv_2/kernel_1:-)
'
_user_specified_nameconv_1/bias_1:/+
)
_user_specified_nameconv_1/kernel_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
€	
х
A__inference_fc_1_layer_call_and_return_conditional_losses_8057384

inputs2
matmul_readvariableop_resource:
∞	†.
biasadd_readvariableop_resource:	†
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
∞	†*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€∞	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:€€€€€€€€€∞	
 
_user_specified_nameinputs
Ц
Э
(__inference_conv_4_layer_call_fn_8057120

inputs!
unknown:<P
	unknown_0:P
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv_4_layer_call_and_return_conditional_losses_8056043w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€P<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€<: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	8057116:'#
!
_user_specified_name	8057114:W S
/
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs
љ
l
B__inference_add_1_layer_call_and_return_conditional_losses_8056468

inputs
inputs_1
identityQ
addAddV2inputsinputs_1*
T0*(
_output_shapes
:€€€€€€€€€†P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:€€€€€€€€€†"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€†:€€€€€€€€€†:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs
≥
ь
C__inference_conv_4_layer_call_and_return_conditional_losses_8056413

inputs8
conv2d_readvariableop_resource:<P-
biasadd_readvariableop_resource:P
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<P*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€P*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€PX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€Pi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€PS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs
€	
х
A__inference_fc_2_layer_call_and_return_conditional_losses_8057191

inputs2
matmul_readvariableop_resource:
ј†.
biasadd_readvariableop_resource:	†
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ј†*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€ј: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs
€	
х
A__inference_fc_1_layer_call_and_return_conditional_losses_8056442

inputs2
matmul_readvariableop_resource:
∞	†.
biasadd_readvariableop_resource:	†
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
∞	†*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€∞	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:€€€€€€€€€∞	
 
_user_specified_nameinputs
џ

ч
C__inference_output_layer_call_and_return_conditional_losses_8056486

inputs2
matmul_readvariableop_resource:
†Г
.
biasadd_readvariableop_resource:	Г

identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
†Г
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Г
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Г
*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Г
W
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Г
a
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€†: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs
≈
n
B__inference_add_1_layer_call_and_return_conditional_losses_8057203
inputs_0
inputs_1
identityS
addAddV2inputs_0inputs_1*
T0*(
_output_shapes
:€€€€€€€€€†P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:€€€€€€€€€†"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€†:€€€€€€€€€†:RN
(
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
inputs_1:R N
(
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
inputs_0
х
Ш
(__inference_output_layer_call_fn_8057434

inputs
unknown:
†Г

	unknown_0:	Г

identityИҐStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Г
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_8056486p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€†: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	8057430:'#
!
_user_specified_name	8057428:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs
≥
ь
C__inference_conv_4_layer_call_and_return_conditional_losses_8056043

inputs8
conv2d_readvariableop_resource:<P-
biasadd_readvariableop_resource:P
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<P*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€P*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€PX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€Pi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€PS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs
—
e
I__inference_activation_1_layer_call_and_return_conditional_losses_8057425

inputs
identityG
ReluReluinputs*
T0*(
_output_shapes
:€€€€€€€€€†[
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€†"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€†:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs
џ

ч
C__inference_output_layer_call_and_return_conditional_losses_8056116

inputs2
matmul_readvariableop_resource:
†Г
.
biasadd_readvariableop_resource:	Г

identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
†Г
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Г
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Г
*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Г
W
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Г
a
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€†: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs
Л
_
C__inference_pool_1_layer_call_and_return_conditional_losses_8057051

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
—
e
I__inference_activation_1_layer_call_and_return_conditional_losses_8056474

inputs
identityG
ReluReluinputs*
T0*(
_output_shapes
:€€€€€€€€€†[
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€†"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€†:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs
≥
ь
C__inference_conv_3_layer_call_and_return_conditional_losses_8056396

inputs8
conv2d_readvariableop_resource:(<-
biasadd_readvariableop_resource:<
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:(<*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
<*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
<X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€
<i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€
<S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€
(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€
(
 
_user_specified_nameinputs
»
b
F__inference_flatten_1_layer_call_and_return_conditional_losses_8057354

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€∞  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€∞	Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€∞	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€<:W S
/
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs
®
D
(__inference_pool_1_layer_call_fn_8057258

inputs
identity—
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pool_1_layer_call_and_return_conditional_losses_8056324Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
≥
ь
C__inference_conv_1_layer_call_and_return_conditional_losses_8057041

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€4,*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€4,X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€4,i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€4,S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€7/: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€7/
 
_user_specified_nameinputs
≥
ь
C__inference_conv_2_layer_call_and_return_conditional_losses_8056379

inputs8
conv2d_readvariableop_resource:(-
biasadd_readvariableop_resource:(
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:(*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€(*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€(X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€(i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€(S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
с
Ц
&__inference_fc_1_layer_call_fn_8057162

inputs
unknown:
∞	†
	unknown_0:	†
identityИҐStatefulPartitionedCall„
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_fc_1_layer_call_and_return_conditional_losses_8056072p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€∞	: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	8057158:'#
!
_user_specified_name	8057156:P L
(
_output_shapes
:€€€€€€€€€∞	
 
_user_specified_nameinputs
Т
Е
)__inference_model_1_layer_call_fn_8056202	
input!
unknown:
	unknown_0:#
	unknown_1:(
	unknown_2:(#
	unknown_3:(<
	unknown_4:<#
	unknown_5:<P
	unknown_6:P
	unknown_7:
∞	†
	unknown_8:	†
	unknown_9:
ј†

unknown_10:	†

unknown_11:
†Г


unknown_12:	Г

identityИҐStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Г
*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_8056123p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€7/: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	8056198:'#
!
_user_specified_name	8056196:'#
!
_user_specified_name	8056194:'#
!
_user_specified_name	8056192:'
#
!
_user_specified_name	8056190:'	#
!
_user_specified_name	8056188:'#
!
_user_specified_name	8056186:'#
!
_user_specified_name	8056184:'#
!
_user_specified_name	8056182:'#
!
_user_specified_name	8056180:'#
!
_user_specified_name	8056178:'#
!
_user_specified_name	8056176:'#
!
_user_specified_name	8056174:'#
!
_user_specified_name	8056172:V R
/
_output_shapes
:€€€€€€€€€7/

_user_specified_nameinput
Л
_
C__inference_pool_2_layer_call_and_return_conditional_losses_8057293

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ђ'
Ь	
H__inference_good_net_28_layer_call_and_return_conditional_losses_8056831
input_1)
model_1_8056763:
model_1_8056765:)
model_1_8056767:(
model_1_8056769:()
model_1_8056771:(<
model_1_8056773:<)
model_1_8056775:<P
model_1_8056777:P#
model_1_8056779:
∞	†
model_1_8056781:	†#
model_1_8056783:
ј†
model_1_8056785:	†#
model_1_8056787:
†Г

model_1_8056789:	Г
)
model_1_8056794:
model_1_8056796:)
model_1_8056798:(
model_1_8056800:()
model_1_8056802:(<
model_1_8056804:<)
model_1_8056806:<P
model_1_8056808:P#
model_1_8056810:
∞	†
model_1_8056812:	†#
model_1_8056814:
ј†
model_1_8056816:	†#
model_1_8056818:
†Г

model_1_8056820:	Г

identity	ИҐmodel_1/StatefulPartitionedCallҐ!model_1/StatefulPartitionedCall_1’
model_1/StatefulPartitionedCallStatefulPartitionedCallinput_1model_1_8056763model_1_8056765model_1_8056767model_1_8056769model_1_8056771model_1_8056773model_1_8056775model_1_8056777model_1_8056779model_1_8056781model_1_8056783model_1_8056785model_1_8056787model_1_8056789*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Г
*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_8056169R
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
value	B :Г
ArgMaxArgMax(model_1/StatefulPartitionedCall:output:0ArgMax/dimension:output:0*
T0*#
_output_shapes
:€€€€€€€€€„
!model_1/StatefulPartitionedCall_1StatefulPartitionedCallinput_1model_1_8056794model_1_8056796model_1_8056798model_1_8056800model_1_8056802model_1_8056804model_1_8056806model_1_8056808model_1_8056810model_1_8056812model_1_8056814model_1_8056816model_1_8056818model_1_8056820*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Г
*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_8056539T
ArgMax_1/dimensionConst*
_output_shapes
: *
dtype0*
value	B :Й
ArgMax_1ArgMax*model_1/StatefulPartitionedCall_1:output:0ArgMax_1/dimension:output:0*
T0*#
_output_shapes
:€€€€€€€€€`
EqualEqualArgMax:output:0ArgMax_1:output:0*
T0	*#
_output_shapes
:€€€€€€€€€T
	ones_likeOnesLikeArgMax:output:0*
T0	*#
_output_shapes
:€€€€€€€€€H
mul/xConst*
_output_shapes
: *
dtype0	*
value
B	 RГ
W
mulMulmul/x:output:0ones_like:y:0*
T0	*#
_output_shapes
:€€€€€€€€€g
SelectV2SelectV2	Equal:z:0ArgMax:output:0mul:z:0*
T0	*#
_output_shapes
:€€€€€€€€€\
IdentityIdentitySelectV2:output:0^NoOp*
T0	*#
_output_shapes
:€€€€€€€€€h
NoOpNoOp ^model_1/StatefulPartitionedCall"^model_1/StatefulPartitionedCall_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:€€€€€€€€€7/: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!model_1/StatefulPartitionedCall_1!model_1/StatefulPartitionedCall_12B
model_1/StatefulPartitionedCallmodel_1/StatefulPartitionedCall:'#
!
_user_specified_name	8056820:'#
!
_user_specified_name	8056818:'#
!
_user_specified_name	8056816:'#
!
_user_specified_name	8056814:'#
!
_user_specified_name	8056812:'#
!
_user_specified_name	8056810:'#
!
_user_specified_name	8056808:'#
!
_user_specified_name	8056806:'#
!
_user_specified_name	8056804:'#
!
_user_specified_name	8056802:'#
!
_user_specified_name	8056800:'#
!
_user_specified_name	8056798:'#
!
_user_specified_name	8056796:'#
!
_user_specified_name	8056794:'#
!
_user_specified_name	8056789:'#
!
_user_specified_name	8056787:'#
!
_user_specified_name	8056785:'#
!
_user_specified_name	8056783:'
#
!
_user_specified_name	8056781:'	#
!
_user_specified_name	8056779:'#
!
_user_specified_name	8056777:'#
!
_user_specified_name	8056775:'#
!
_user_specified_name	8056773:'#
!
_user_specified_name	8056771:'#
!
_user_specified_name	8056769:'#
!
_user_specified_name	8056767:'#
!
_user_specified_name	8056765:'#
!
_user_specified_name	8056763:X T
/
_output_shapes
:€€€€€€€€€7/
!
_user_specified_name	input_1
≥
ь
C__inference_conv_3_layer_call_and_return_conditional_losses_8057313

inputs8
conv2d_readvariableop_resource:(<-
biasadd_readvariableop_resource:<
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:(<*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
<*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
<X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€
<i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€
<S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€
(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€
(
 
_user_specified_nameinputs
Л
_
C__inference_pool_1_layer_call_and_return_conditional_losses_8057263

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ц
Э
(__inference_conv_3_layer_call_fn_8057302

inputs!
unknown:(<
	unknown_0:<
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv_3_layer_call_and_return_conditional_losses_8056396w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€
<<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€
(: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	8057298:'#
!
_user_specified_name	8057296:W S
/
_output_shapes
:€€€€€€€€€
(
 
_user_specified_nameinputs
х
Ш
(__inference_output_layer_call_fn_8057222

inputs
unknown:
†Г

	unknown_0:	Г

identityИҐStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Г
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_8056116p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€†: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	8057218:'#
!
_user_specified_name	8057216:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs
≥
ь
C__inference_conv_1_layer_call_and_return_conditional_losses_8056362

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€4,*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€4,X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€4,i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€4,S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€7/: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€7/
 
_user_specified_nameinputs
≈
n
B__inference_add_1_layer_call_and_return_conditional_losses_8057415
inputs_0
inputs_1
identityS
addAddV2inputs_0inputs_1*
T0*(
_output_shapes
:€€€€€€€€€†P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:€€€€€€€€€†"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€†:€€€€€€€€€†:RN
(
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
inputs_1:R N
(
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
inputs_0
Ц
Э
(__inference_conv_4_layer_call_fn_8057332

inputs!
unknown:<P
	unknown_0:P
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv_4_layer_call_and_return_conditional_losses_8056413w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€P<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€<: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	8057328:'#
!
_user_specified_name	8057326:W S
/
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs
≥
G
+__inference_flatten_1_layer_call_fn_8057348

inputs
identity≤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€∞	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_8056431a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€∞	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€<:W S
/
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs
≥
ь
C__inference_conv_3_layer_call_and_return_conditional_losses_8057101

inputs8
conv2d_readvariableop_resource:(<-
biasadd_readvariableop_resource:<
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:(<*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
<*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
<X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€
<i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€
<S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€
(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€
(
 
_user_specified_nameinputs
Л
_
C__inference_pool_3_layer_call_and_return_conditional_losses_8057111

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
»
b
F__inference_flatten_2_layer_call_and_return_conditional_losses_8057153

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ј  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€јY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€P:W S
/
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs
≥
ь
C__inference_conv_2_layer_call_and_return_conditional_losses_8056009

inputs8
conv2d_readvariableop_resource:(-
biasadd_readvariableop_resource:(
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:(*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€(*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€(X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€(i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€(S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Л
_
C__inference_pool_3_layer_call_and_return_conditional_losses_8056344

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
≥
G
+__inference_flatten_2_layer_call_fn_8057359

inputs
identity≤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_8056424a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€P:W S
/
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs
»
b
F__inference_flatten_2_layer_call_and_return_conditional_losses_8057365

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ј  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€јY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€P:W S
/
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs
е
Љ
-__inference_good_net_28_layer_call_fn_8056892
input_1!
unknown:
	unknown_0:#
	unknown_1:(
	unknown_2:(#
	unknown_3:(<
	unknown_4:<#
	unknown_5:<P
	unknown_6:P
	unknown_7:
∞	†
	unknown_8:	†
	unknown_9:
ј†

unknown_10:	†

unknown_11:
†Г


unknown_12:	Г
$

unknown_13:

unknown_14:$

unknown_15:(

unknown_16:($

unknown_17:(<

unknown_18:<$

unknown_19:<P

unknown_20:P

unknown_21:
∞	†

unknown_22:	†

unknown_23:
ј†

unknown_24:	†

unknown_25:
†Г


unknown_26:	Г

identity	ИҐStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:€€€€€€€€€*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_good_net_28_layer_call_and_return_conditional_losses_8056760k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*#
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:€€€€€€€€€7/: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	8056888:'#
!
_user_specified_name	8056886:'#
!
_user_specified_name	8056884:'#
!
_user_specified_name	8056882:'#
!
_user_specified_name	8056880:'#
!
_user_specified_name	8056878:'#
!
_user_specified_name	8056876:'#
!
_user_specified_name	8056874:'#
!
_user_specified_name	8056872:'#
!
_user_specified_name	8056870:'#
!
_user_specified_name	8056868:'#
!
_user_specified_name	8056866:'#
!
_user_specified_name	8056864:'#
!
_user_specified_name	8056862:'#
!
_user_specified_name	8056860:'#
!
_user_specified_name	8056858:'#
!
_user_specified_name	8056856:'#
!
_user_specified_name	8056854:'
#
!
_user_specified_name	8056852:'	#
!
_user_specified_name	8056850:'#
!
_user_specified_name	8056848:'#
!
_user_specified_name	8056846:'#
!
_user_specified_name	8056844:'#
!
_user_specified_name	8056842:'#
!
_user_specified_name	8056840:'#
!
_user_specified_name	8056838:'#
!
_user_specified_name	8056836:'#
!
_user_specified_name	8056834:X T
/
_output_shapes
:€€€€€€€€€7/
!
_user_specified_name	input_1
≥
ь
C__inference_conv_4_layer_call_and_return_conditional_losses_8057343

inputs8
conv2d_readvariableop_resource:<P-
biasadd_readvariableop_resource:P
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<P*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€P*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€PX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€Pi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€PS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs
€	
х
A__inference_fc_1_layer_call_and_return_conditional_losses_8057172

inputs2
matmul_readvariableop_resource:
∞	†.
biasadd_readvariableop_resource:	†
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
∞	†*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€∞	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:€€€€€€€€€∞	
 
_user_specified_nameinputs
Ј
і
%__inference_signature_wrapper_8057015
input_1!
unknown:
	unknown_0:#
	unknown_1:(
	unknown_2:(#
	unknown_3:(<
	unknown_4:<#
	unknown_5:<P
	unknown_6:P
	unknown_7:
∞	†
	unknown_8:	†
	unknown_9:
ј†

unknown_10:	†

unknown_11:
†Г


unknown_12:	Г
$

unknown_13:

unknown_14:$

unknown_15:(

unknown_16:($

unknown_17:(<

unknown_18:<$

unknown_19:<P

unknown_20:P

unknown_21:
∞	†

unknown_22:	†

unknown_23:
ј†

unknown_24:	†

unknown_25:
†Г


unknown_26:	Г

identity	ИҐStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:€€€€€€€€€*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__wrapped_model_8055949k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*#
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:€€€€€€€€€7/: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	8057011:'#
!
_user_specified_name	8057009:'#
!
_user_specified_name	8057007:'#
!
_user_specified_name	8057005:'#
!
_user_specified_name	8057003:'#
!
_user_specified_name	8057001:'#
!
_user_specified_name	8056999:'#
!
_user_specified_name	8056997:'#
!
_user_specified_name	8056995:'#
!
_user_specified_name	8056993:'#
!
_user_specified_name	8056991:'#
!
_user_specified_name	8056989:'#
!
_user_specified_name	8056987:'#
!
_user_specified_name	8056985:'#
!
_user_specified_name	8056983:'#
!
_user_specified_name	8056981:'#
!
_user_specified_name	8056979:'#
!
_user_specified_name	8056977:'
#
!
_user_specified_name	8056975:'	#
!
_user_specified_name	8056973:'#
!
_user_specified_name	8056971:'#
!
_user_specified_name	8056969:'#
!
_user_specified_name	8056967:'#
!
_user_specified_name	8056965:'#
!
_user_specified_name	8056963:'#
!
_user_specified_name	8056961:'#
!
_user_specified_name	8056959:'#
!
_user_specified_name	8056957:X T
/
_output_shapes
:€€€€€€€€€7/
!
_user_specified_name	input_1
≥
ь
C__inference_conv_1_layer_call_and_return_conditional_losses_8057253

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€4,*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€4,X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€4,i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€4,S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€7/: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€7/
 
_user_specified_nameinputs
с
Ц
&__inference_fc_2_layer_call_fn_8057393

inputs
unknown:
ј†
	unknown_0:	†
identityИҐStatefulPartitionedCall„
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_fc_2_layer_call_and_return_conditional_losses_8056457p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€ј: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	8057389:'#
!
_user_specified_name	8057387:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs
љ
l
B__inference_add_1_layer_call_and_return_conditional_losses_8056098

inputs
inputs_1
identityQ
addAddV2inputsinputs_1*
T0*(
_output_shapes
:€€€€€€€€€†P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:€€€€€€€€€†"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€†:€€€€€€€€€†:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs
®
D
(__inference_pool_3_layer_call_fn_8057106

inputs
identity—
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pool_3_layer_call_and_return_conditional_losses_8055974Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
З<
¶
D__inference_model_1_layer_call_and_return_conditional_losses_8056169	
input(
conv_1_8056126:
conv_1_8056128:(
conv_2_8056132:(
conv_2_8056134:((
conv_3_8056138:(<
conv_3_8056140:<(
conv_4_8056144:<P
conv_4_8056146:P 
fc_1_8056151:
∞	†
fc_1_8056153:	† 
fc_2_8056156:
ј†
fc_2_8056158:	†"
output_8056163:
†Г

output_8056165:	Г

identityИҐconv_1/StatefulPartitionedCallҐconv_2/StatefulPartitionedCallҐconv_3/StatefulPartitionedCallҐconv_4/StatefulPartitionedCallҐfc_1/StatefulPartitionedCallҐfc_2/StatefulPartitionedCallҐoutput/StatefulPartitionedCallт
conv_1/StatefulPartitionedCallStatefulPartitionedCallinputconv_1_8056126conv_1_8056128*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€4,*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv_1_layer_call_and_return_conditional_losses_8055992ё
pool_1/PartitionedCallPartitionedCall'conv_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pool_1_layer_call_and_return_conditional_losses_8055954М
conv_2/StatefulPartitionedCallStatefulPartitionedCallpool_1/PartitionedCall:output:0conv_2_8056132conv_2_8056134*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv_2_layer_call_and_return_conditional_losses_8056009ё
pool_2/PartitionedCallPartitionedCall'conv_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pool_2_layer_call_and_return_conditional_losses_8055964М
conv_3/StatefulPartitionedCallStatefulPartitionedCallpool_2/PartitionedCall:output:0conv_3_8056138conv_3_8056140*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv_3_layer_call_and_return_conditional_losses_8056026ё
pool_3/PartitionedCallPartitionedCall'conv_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pool_3_layer_call_and_return_conditional_losses_8055974М
conv_4/StatefulPartitionedCallStatefulPartitionedCallpool_3/PartitionedCall:output:0conv_4_8056144conv_4_8056146*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv_4_layer_call_and_return_conditional_losses_8056043Ё
flatten_2/PartitionedCallPartitionedCall'conv_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_8056054’
flatten_1/PartitionedCallPartitionedCallpool_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€∞	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_8056061А
fc_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0fc_1_8056151fc_1_8056153*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_fc_1_layer_call_and_return_conditional_losses_8056072А
fc_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0fc_2_8056156fc_2_8056158*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_fc_2_layer_call_and_return_conditional_losses_8056087ы
add_1/PartitionedCallPartitionedCall%fc_1/StatefulPartitionedCall:output:0%fc_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_add_1_layer_call_and_return_conditional_losses_8056098Џ
activation_1/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_8056104Л
output/StatefulPartitionedCallStatefulPartitionedCall%activation_1/PartitionedCall:output:0output_8056163output_8056165*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Г
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_8056116w
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
Е
NoOpNoOp^conv_1/StatefulPartitionedCall^conv_2/StatefulPartitionedCall^conv_3/StatefulPartitionedCall^conv_4/StatefulPartitionedCall^fc_1/StatefulPartitionedCall^fc_2/StatefulPartitionedCall^output/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€7/: : : : : : : : : : : : : : 2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2@
conv_2/StatefulPartitionedCallconv_2/StatefulPartitionedCall2@
conv_3/StatefulPartitionedCallconv_3/StatefulPartitionedCall2@
conv_4/StatefulPartitionedCallconv_4/StatefulPartitionedCall2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:'#
!
_user_specified_name	8056165:'#
!
_user_specified_name	8056163:'#
!
_user_specified_name	8056158:'#
!
_user_specified_name	8056156:'
#
!
_user_specified_name	8056153:'	#
!
_user_specified_name	8056151:'#
!
_user_specified_name	8056146:'#
!
_user_specified_name	8056144:'#
!
_user_specified_name	8056140:'#
!
_user_specified_name	8056138:'#
!
_user_specified_name	8056134:'#
!
_user_specified_name	8056132:'#
!
_user_specified_name	8056128:'#
!
_user_specified_name	8056126:V R
/
_output_shapes
:€€€€€€€€€7/

_user_specified_nameinput
Т
Е
)__inference_model_1_layer_call_fn_8056235	
input!
unknown:
	unknown_0:#
	unknown_1:(
	unknown_2:(#
	unknown_3:(<
	unknown_4:<#
	unknown_5:<P
	unknown_6:P
	unknown_7:
∞	†
	unknown_8:	†
	unknown_9:
ј†

unknown_10:	†

unknown_11:
†Г


unknown_12:	Г

identityИҐStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Г
*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_8056169p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€7/: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	8056231:'#
!
_user_specified_name	8056229:'#
!
_user_specified_name	8056227:'#
!
_user_specified_name	8056225:'
#
!
_user_specified_name	8056223:'	#
!
_user_specified_name	8056221:'#
!
_user_specified_name	8056219:'#
!
_user_specified_name	8056217:'#
!
_user_specified_name	8056215:'#
!
_user_specified_name	8056213:'#
!
_user_specified_name	8056211:'#
!
_user_specified_name	8056209:'#
!
_user_specified_name	8056207:'#
!
_user_specified_name	8056205:V R
/
_output_shapes
:€€€€€€€€€7/

_user_specified_nameinput
∞а
и8
 __inference__traced_save_8057857
file_prefix@
&read_disablecopyonread_conv_1_kernel_1:4
&read_1_disablecopyonread_conv_1_bias_1:B
(read_2_disablecopyonread_conv_2_kernel_1:(4
&read_3_disablecopyonread_conv_2_bias_1:(B
(read_4_disablecopyonread_conv_3_kernel_1:(<4
&read_5_disablecopyonread_conv_3_bias_1:<B
(read_6_disablecopyonread_conv_4_kernel_1:<P4
&read_7_disablecopyonread_conv_4_bias_1:P:
&read_8_disablecopyonread_fc_1_kernel_1:
∞	†3
$read_9_disablecopyonread_fc_1_bias_1:	†;
'read_10_disablecopyonread_fc_2_kernel_1:
ј†4
%read_11_disablecopyonread_fc_2_bias_1:	†=
)read_12_disablecopyonread_output_kernel_1:
†Г
6
'read_13_disablecopyonread_output_bias_1:	Г
A
'read_14_disablecopyonread_conv_1_kernel:3
%read_15_disablecopyonread_conv_1_bias:A
'read_16_disablecopyonread_conv_2_kernel:(3
%read_17_disablecopyonread_conv_2_bias:(A
'read_18_disablecopyonread_conv_3_kernel:(<3
%read_19_disablecopyonread_conv_3_bias:<A
'read_20_disablecopyonread_conv_4_kernel:<P3
%read_21_disablecopyonread_conv_4_bias:P9
%read_22_disablecopyonread_fc_1_kernel:
∞	†2
#read_23_disablecopyonread_fc_1_bias:	†9
%read_24_disablecopyonread_fc_2_kernel:
ј†2
#read_25_disablecopyonread_fc_2_bias:	†;
'read_26_disablecopyonread_output_kernel:
†Г
4
%read_27_disablecopyonread_output_bias:	Г
(
read_28_disablecopyonread_iter:	 *
 read_29_disablecopyonread_beta_1: *
 read_30_disablecopyonread_beta_2: )
read_31_disablecopyonread_decay: 1
'read_32_disablecopyonread_learning_rate: +
!read_33_disablecopyonread_total_1: +
!read_34_disablecopyonread_count_1: )
read_35_disablecopyonread_total: )
read_36_disablecopyonread_count: C
)read_37_disablecopyonread_conv_1_kernel_m:5
'read_38_disablecopyonread_conv_1_bias_m:C
)read_39_disablecopyonread_conv_2_kernel_m:(5
'read_40_disablecopyonread_conv_2_bias_m:(C
)read_41_disablecopyonread_conv_3_kernel_m:(<5
'read_42_disablecopyonread_conv_3_bias_m:<C
)read_43_disablecopyonread_conv_4_kernel_m:<P5
'read_44_disablecopyonread_conv_4_bias_m:P;
'read_45_disablecopyonread_fc_1_kernel_m:
∞	†4
%read_46_disablecopyonread_fc_1_bias_m:	†;
'read_47_disablecopyonread_fc_2_kernel_m:
ј†4
%read_48_disablecopyonread_fc_2_bias_m:	†=
)read_49_disablecopyonread_output_kernel_m:
†Г
6
'read_50_disablecopyonread_output_bias_m:	Г
C
)read_51_disablecopyonread_conv_1_kernel_v:5
'read_52_disablecopyonread_conv_1_bias_v:C
)read_53_disablecopyonread_conv_2_kernel_v:(5
'read_54_disablecopyonread_conv_2_bias_v:(C
)read_55_disablecopyonread_conv_3_kernel_v:(<5
'read_56_disablecopyonread_conv_3_bias_v:<C
)read_57_disablecopyonread_conv_4_kernel_v:<P5
'read_58_disablecopyonread_conv_4_bias_v:P;
'read_59_disablecopyonread_fc_1_kernel_v:
∞	†4
%read_60_disablecopyonread_fc_1_bias_v:	†;
'read_61_disablecopyonread_fc_2_kernel_v:
ј†4
%read_62_disablecopyonread_fc_2_bias_v:	†=
)read_63_disablecopyonread_output_kernel_v:
†Г
6
'read_64_disablecopyonread_output_bias_v:	Г

savev2_const
identity_131ИҐMergeV2CheckpointsҐRead/DisableCopyOnReadҐRead/ReadVariableOpҐRead_1/DisableCopyOnReadҐRead_1/ReadVariableOpҐRead_10/DisableCopyOnReadҐRead_10/ReadVariableOpҐRead_11/DisableCopyOnReadҐRead_11/ReadVariableOpҐRead_12/DisableCopyOnReadҐRead_12/ReadVariableOpҐRead_13/DisableCopyOnReadҐRead_13/ReadVariableOpҐRead_14/DisableCopyOnReadҐRead_14/ReadVariableOpҐRead_15/DisableCopyOnReadҐRead_15/ReadVariableOpҐRead_16/DisableCopyOnReadҐRead_16/ReadVariableOpҐRead_17/DisableCopyOnReadҐRead_17/ReadVariableOpҐRead_18/DisableCopyOnReadҐRead_18/ReadVariableOpҐRead_19/DisableCopyOnReadҐRead_19/ReadVariableOpҐRead_2/DisableCopyOnReadҐRead_2/ReadVariableOpҐRead_20/DisableCopyOnReadҐRead_20/ReadVariableOpҐRead_21/DisableCopyOnReadҐRead_21/ReadVariableOpҐRead_22/DisableCopyOnReadҐRead_22/ReadVariableOpҐRead_23/DisableCopyOnReadҐRead_23/ReadVariableOpҐRead_24/DisableCopyOnReadҐRead_24/ReadVariableOpҐRead_25/DisableCopyOnReadҐRead_25/ReadVariableOpҐRead_26/DisableCopyOnReadҐRead_26/ReadVariableOpҐRead_27/DisableCopyOnReadҐRead_27/ReadVariableOpҐRead_28/DisableCopyOnReadҐRead_28/ReadVariableOpҐRead_29/DisableCopyOnReadҐRead_29/ReadVariableOpҐRead_3/DisableCopyOnReadҐRead_3/ReadVariableOpҐRead_30/DisableCopyOnReadҐRead_30/ReadVariableOpҐRead_31/DisableCopyOnReadҐRead_31/ReadVariableOpҐRead_32/DisableCopyOnReadҐRead_32/ReadVariableOpҐRead_33/DisableCopyOnReadҐRead_33/ReadVariableOpҐRead_34/DisableCopyOnReadҐRead_34/ReadVariableOpҐRead_35/DisableCopyOnReadҐRead_35/ReadVariableOpҐRead_36/DisableCopyOnReadҐRead_36/ReadVariableOpҐRead_37/DisableCopyOnReadҐRead_37/ReadVariableOpҐRead_38/DisableCopyOnReadҐRead_38/ReadVariableOpҐRead_39/DisableCopyOnReadҐRead_39/ReadVariableOpҐRead_4/DisableCopyOnReadҐRead_4/ReadVariableOpҐRead_40/DisableCopyOnReadҐRead_40/ReadVariableOpҐRead_41/DisableCopyOnReadҐRead_41/ReadVariableOpҐRead_42/DisableCopyOnReadҐRead_42/ReadVariableOpҐRead_43/DisableCopyOnReadҐRead_43/ReadVariableOpҐRead_44/DisableCopyOnReadҐRead_44/ReadVariableOpҐRead_45/DisableCopyOnReadҐRead_45/ReadVariableOpҐRead_46/DisableCopyOnReadҐRead_46/ReadVariableOpҐRead_47/DisableCopyOnReadҐRead_47/ReadVariableOpҐRead_48/DisableCopyOnReadҐRead_48/ReadVariableOpҐRead_49/DisableCopyOnReadҐRead_49/ReadVariableOpҐRead_5/DisableCopyOnReadҐRead_5/ReadVariableOpҐRead_50/DisableCopyOnReadҐRead_50/ReadVariableOpҐRead_51/DisableCopyOnReadҐRead_51/ReadVariableOpҐRead_52/DisableCopyOnReadҐRead_52/ReadVariableOpҐRead_53/DisableCopyOnReadҐRead_53/ReadVariableOpҐRead_54/DisableCopyOnReadҐRead_54/ReadVariableOpҐRead_55/DisableCopyOnReadҐRead_55/ReadVariableOpҐRead_56/DisableCopyOnReadҐRead_56/ReadVariableOpҐRead_57/DisableCopyOnReadҐRead_57/ReadVariableOpҐRead_58/DisableCopyOnReadҐRead_58/ReadVariableOpҐRead_59/DisableCopyOnReadҐRead_59/ReadVariableOpҐRead_6/DisableCopyOnReadҐRead_6/ReadVariableOpҐRead_60/DisableCopyOnReadҐRead_60/ReadVariableOpҐRead_61/DisableCopyOnReadҐRead_61/ReadVariableOpҐRead_62/DisableCopyOnReadҐRead_62/ReadVariableOpҐRead_63/DisableCopyOnReadҐRead_63/ReadVariableOpҐRead_64/DisableCopyOnReadҐRead_64/ReadVariableOpҐRead_7/DisableCopyOnReadҐRead_7/ReadVariableOpҐRead_8/DisableCopyOnReadҐRead_8/ReadVariableOpҐRead_9/DisableCopyOnReadҐRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_conv_1_kernel_1"/device:CPU:0*
_output_shapes
 ™
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_conv_1_kernel_1^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_conv_1_bias_1"/device:CPU:0*
_output_shapes
 Ґ
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_conv_1_bias_1^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_2/DisableCopyOnReadDisableCopyOnRead(read_2_disablecopyonread_conv_2_kernel_1"/device:CPU:0*
_output_shapes
 ∞
Read_2/ReadVariableOpReadVariableOp(read_2_disablecopyonread_conv_2_kernel_1^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:(*
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:(k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
:(z
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_conv_2_bias_1"/device:CPU:0*
_output_shapes
 Ґ
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_conv_2_bias_1^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:(*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:(_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:(|
Read_4/DisableCopyOnReadDisableCopyOnRead(read_4_disablecopyonread_conv_3_kernel_1"/device:CPU:0*
_output_shapes
 ∞
Read_4/ReadVariableOpReadVariableOp(read_4_disablecopyonread_conv_3_kernel_1^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:(<*
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:(<k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
:(<z
Read_5/DisableCopyOnReadDisableCopyOnRead&read_5_disablecopyonread_conv_3_bias_1"/device:CPU:0*
_output_shapes
 Ґ
Read_5/ReadVariableOpReadVariableOp&read_5_disablecopyonread_conv_3_bias_1^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:<|
Read_6/DisableCopyOnReadDisableCopyOnRead(read_6_disablecopyonread_conv_4_kernel_1"/device:CPU:0*
_output_shapes
 ∞
Read_6/ReadVariableOpReadVariableOp(read_6_disablecopyonread_conv_4_kernel_1^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:<P*
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:<Pm
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
:<Pz
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_conv_4_bias_1"/device:CPU:0*
_output_shapes
 Ґ
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_conv_4_bias_1^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:P*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:Pa
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:Pz
Read_8/DisableCopyOnReadDisableCopyOnRead&read_8_disablecopyonread_fc_1_kernel_1"/device:CPU:0*
_output_shapes
 ®
Read_8/ReadVariableOpReadVariableOp&read_8_disablecopyonread_fc_1_kernel_1^Read_8/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
∞	†*
dtype0p
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
∞	†g
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0* 
_output_shapes
:
∞	†x
Read_9/DisableCopyOnReadDisableCopyOnRead$read_9_disablecopyonread_fc_1_bias_1"/device:CPU:0*
_output_shapes
 °
Read_9/ReadVariableOpReadVariableOp$read_9_disablecopyonread_fc_1_bias_1^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:†*
dtype0k
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:†b
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes	
:†|
Read_10/DisableCopyOnReadDisableCopyOnRead'read_10_disablecopyonread_fc_2_kernel_1"/device:CPU:0*
_output_shapes
 Ђ
Read_10/ReadVariableOpReadVariableOp'read_10_disablecopyonread_fc_2_kernel_1^Read_10/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ј†*
dtype0q
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ј†g
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ј†z
Read_11/DisableCopyOnReadDisableCopyOnRead%read_11_disablecopyonread_fc_2_bias_1"/device:CPU:0*
_output_shapes
 §
Read_11/ReadVariableOpReadVariableOp%read_11_disablecopyonread_fc_2_bias_1^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:†*
dtype0l
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:†b
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes	
:†~
Read_12/DisableCopyOnReadDisableCopyOnRead)read_12_disablecopyonread_output_kernel_1"/device:CPU:0*
_output_shapes
 ≠
Read_12/ReadVariableOpReadVariableOp)read_12_disablecopyonread_output_kernel_1^Read_12/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
†Г
*
dtype0q
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
†Г
g
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0* 
_output_shapes
:
†Г
|
Read_13/DisableCopyOnReadDisableCopyOnRead'read_13_disablecopyonread_output_bias_1"/device:CPU:0*
_output_shapes
 ¶
Read_13/ReadVariableOpReadVariableOp'read_13_disablecopyonread_output_bias_1^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Г
*
dtype0l
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Г
b
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes	
:Г
|
Read_14/DisableCopyOnReadDisableCopyOnRead'read_14_disablecopyonread_conv_1_kernel"/device:CPU:0*
_output_shapes
 ±
Read_14/ReadVariableOpReadVariableOp'read_14_disablecopyonread_conv_1_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*&
_output_shapes
:z
Read_15/DisableCopyOnReadDisableCopyOnRead%read_15_disablecopyonread_conv_1_bias"/device:CPU:0*
_output_shapes
 £
Read_15/ReadVariableOpReadVariableOp%read_15_disablecopyonread_conv_1_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_16/DisableCopyOnReadDisableCopyOnRead'read_16_disablecopyonread_conv_2_kernel"/device:CPU:0*
_output_shapes
 ±
Read_16/ReadVariableOpReadVariableOp'read_16_disablecopyonread_conv_2_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:(*
dtype0w
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:(m
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*&
_output_shapes
:(z
Read_17/DisableCopyOnReadDisableCopyOnRead%read_17_disablecopyonread_conv_2_bias"/device:CPU:0*
_output_shapes
 £
Read_17/ReadVariableOpReadVariableOp%read_17_disablecopyonread_conv_2_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:(*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:(a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:(|
Read_18/DisableCopyOnReadDisableCopyOnRead'read_18_disablecopyonread_conv_3_kernel"/device:CPU:0*
_output_shapes
 ±
Read_18/ReadVariableOpReadVariableOp'read_18_disablecopyonread_conv_3_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:(<*
dtype0w
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:(<m
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*&
_output_shapes
:(<z
Read_19/DisableCopyOnReadDisableCopyOnRead%read_19_disablecopyonread_conv_3_bias"/device:CPU:0*
_output_shapes
 £
Read_19/ReadVariableOpReadVariableOp%read_19_disablecopyonread_conv_3_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:<|
Read_20/DisableCopyOnReadDisableCopyOnRead'read_20_disablecopyonread_conv_4_kernel"/device:CPU:0*
_output_shapes
 ±
Read_20/ReadVariableOpReadVariableOp'read_20_disablecopyonread_conv_4_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:<P*
dtype0w
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:<Pm
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*&
_output_shapes
:<Pz
Read_21/DisableCopyOnReadDisableCopyOnRead%read_21_disablecopyonread_conv_4_bias"/device:CPU:0*
_output_shapes
 £
Read_21/ReadVariableOpReadVariableOp%read_21_disablecopyonread_conv_4_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:P*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:Pa
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:Pz
Read_22/DisableCopyOnReadDisableCopyOnRead%read_22_disablecopyonread_fc_1_kernel"/device:CPU:0*
_output_shapes
 ©
Read_22/ReadVariableOpReadVariableOp%read_22_disablecopyonread_fc_1_kernel^Read_22/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
∞	†*
dtype0q
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
∞	†g
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0* 
_output_shapes
:
∞	†x
Read_23/DisableCopyOnReadDisableCopyOnRead#read_23_disablecopyonread_fc_1_bias"/device:CPU:0*
_output_shapes
 Ґ
Read_23/ReadVariableOpReadVariableOp#read_23_disablecopyonread_fc_1_bias^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:†*
dtype0l
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:†b
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes	
:†z
Read_24/DisableCopyOnReadDisableCopyOnRead%read_24_disablecopyonread_fc_2_kernel"/device:CPU:0*
_output_shapes
 ©
Read_24/ReadVariableOpReadVariableOp%read_24_disablecopyonread_fc_2_kernel^Read_24/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ј†*
dtype0q
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ј†g
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ј†x
Read_25/DisableCopyOnReadDisableCopyOnRead#read_25_disablecopyonread_fc_2_bias"/device:CPU:0*
_output_shapes
 Ґ
Read_25/ReadVariableOpReadVariableOp#read_25_disablecopyonread_fc_2_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:†*
dtype0l
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:†b
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes	
:†|
Read_26/DisableCopyOnReadDisableCopyOnRead'read_26_disablecopyonread_output_kernel"/device:CPU:0*
_output_shapes
 Ђ
Read_26/ReadVariableOpReadVariableOp'read_26_disablecopyonread_output_kernel^Read_26/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
†Г
*
dtype0q
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
†Г
g
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0* 
_output_shapes
:
†Г
z
Read_27/DisableCopyOnReadDisableCopyOnRead%read_27_disablecopyonread_output_bias"/device:CPU:0*
_output_shapes
 §
Read_27/ReadVariableOpReadVariableOp%read_27_disablecopyonread_output_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Г
*
dtype0l
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Г
b
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes	
:Г
s
Read_28/DisableCopyOnReadDisableCopyOnReadread_28_disablecopyonread_iter"/device:CPU:0*
_output_shapes
 Ш
Read_28/ReadVariableOpReadVariableOpread_28_disablecopyonread_iter^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0	*
_output_shapes
: u
Read_29/DisableCopyOnReadDisableCopyOnRead read_29_disablecopyonread_beta_1"/device:CPU:0*
_output_shapes
 Ъ
Read_29/ReadVariableOpReadVariableOp read_29_disablecopyonread_beta_1^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
: u
Read_30/DisableCopyOnReadDisableCopyOnRead read_30_disablecopyonread_beta_2"/device:CPU:0*
_output_shapes
 Ъ
Read_30/ReadVariableOpReadVariableOp read_30_disablecopyonread_beta_2^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_31/DisableCopyOnReadDisableCopyOnReadread_31_disablecopyonread_decay"/device:CPU:0*
_output_shapes
 Щ
Read_31/ReadVariableOpReadVariableOpread_31_disablecopyonread_decay^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
: |
Read_32/DisableCopyOnReadDisableCopyOnRead'read_32_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 °
Read_32/ReadVariableOpReadVariableOp'read_32_disablecopyonread_learning_rate^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_33/DisableCopyOnReadDisableCopyOnRead!read_33_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
Read_33/ReadVariableOpReadVariableOp!read_33_disablecopyonread_total_1^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_34/DisableCopyOnReadDisableCopyOnRead!read_34_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ы
Read_34/ReadVariableOpReadVariableOp!read_34_disablecopyonread_count_1^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_35/DisableCopyOnReadDisableCopyOnReadread_35_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_35/ReadVariableOpReadVariableOpread_35_disablecopyonread_total^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_36/DisableCopyOnReadDisableCopyOnReadread_36_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_36/ReadVariableOpReadVariableOpread_36_disablecopyonread_count^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
: ~
Read_37/DisableCopyOnReadDisableCopyOnRead)read_37_disablecopyonread_conv_1_kernel_m"/device:CPU:0*
_output_shapes
 ≥
Read_37/ReadVariableOpReadVariableOp)read_37_disablecopyonread_conv_1_kernel_m^Read_37/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*&
_output_shapes
:|
Read_38/DisableCopyOnReadDisableCopyOnRead'read_38_disablecopyonread_conv_1_bias_m"/device:CPU:0*
_output_shapes
 •
Read_38/ReadVariableOpReadVariableOp'read_38_disablecopyonread_conv_1_bias_m^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_39/DisableCopyOnReadDisableCopyOnRead)read_39_disablecopyonread_conv_2_kernel_m"/device:CPU:0*
_output_shapes
 ≥
Read_39/ReadVariableOpReadVariableOp)read_39_disablecopyonread_conv_2_kernel_m^Read_39/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:(*
dtype0w
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:(m
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*&
_output_shapes
:(|
Read_40/DisableCopyOnReadDisableCopyOnRead'read_40_disablecopyonread_conv_2_bias_m"/device:CPU:0*
_output_shapes
 •
Read_40/ReadVariableOpReadVariableOp'read_40_disablecopyonread_conv_2_bias_m^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:(*
dtype0k
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:(a
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
:(~
Read_41/DisableCopyOnReadDisableCopyOnRead)read_41_disablecopyonread_conv_3_kernel_m"/device:CPU:0*
_output_shapes
 ≥
Read_41/ReadVariableOpReadVariableOp)read_41_disablecopyonread_conv_3_kernel_m^Read_41/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:(<*
dtype0w
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:(<m
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*&
_output_shapes
:(<|
Read_42/DisableCopyOnReadDisableCopyOnRead'read_42_disablecopyonread_conv_3_bias_m"/device:CPU:0*
_output_shapes
 •
Read_42/ReadVariableOpReadVariableOp'read_42_disablecopyonread_conv_3_bias_m^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0k
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<a
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
:<~
Read_43/DisableCopyOnReadDisableCopyOnRead)read_43_disablecopyonread_conv_4_kernel_m"/device:CPU:0*
_output_shapes
 ≥
Read_43/ReadVariableOpReadVariableOp)read_43_disablecopyonread_conv_4_kernel_m^Read_43/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:<P*
dtype0w
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:<Pm
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*&
_output_shapes
:<P|
Read_44/DisableCopyOnReadDisableCopyOnRead'read_44_disablecopyonread_conv_4_bias_m"/device:CPU:0*
_output_shapes
 •
Read_44/ReadVariableOpReadVariableOp'read_44_disablecopyonread_conv_4_bias_m^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:P*
dtype0k
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:Pa
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
:P|
Read_45/DisableCopyOnReadDisableCopyOnRead'read_45_disablecopyonread_fc_1_kernel_m"/device:CPU:0*
_output_shapes
 Ђ
Read_45/ReadVariableOpReadVariableOp'read_45_disablecopyonread_fc_1_kernel_m^Read_45/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
∞	†*
dtype0q
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
∞	†g
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0* 
_output_shapes
:
∞	†z
Read_46/DisableCopyOnReadDisableCopyOnRead%read_46_disablecopyonread_fc_1_bias_m"/device:CPU:0*
_output_shapes
 §
Read_46/ReadVariableOpReadVariableOp%read_46_disablecopyonread_fc_1_bias_m^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:†*
dtype0l
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:†b
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes	
:†|
Read_47/DisableCopyOnReadDisableCopyOnRead'read_47_disablecopyonread_fc_2_kernel_m"/device:CPU:0*
_output_shapes
 Ђ
Read_47/ReadVariableOpReadVariableOp'read_47_disablecopyonread_fc_2_kernel_m^Read_47/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ј†*
dtype0q
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ј†g
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ј†z
Read_48/DisableCopyOnReadDisableCopyOnRead%read_48_disablecopyonread_fc_2_bias_m"/device:CPU:0*
_output_shapes
 §
Read_48/ReadVariableOpReadVariableOp%read_48_disablecopyonread_fc_2_bias_m^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:†*
dtype0l
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:†b
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes	
:†~
Read_49/DisableCopyOnReadDisableCopyOnRead)read_49_disablecopyonread_output_kernel_m"/device:CPU:0*
_output_shapes
 ≠
Read_49/ReadVariableOpReadVariableOp)read_49_disablecopyonread_output_kernel_m^Read_49/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
†Г
*
dtype0q
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
†Г
g
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0* 
_output_shapes
:
†Г
|
Read_50/DisableCopyOnReadDisableCopyOnRead'read_50_disablecopyonread_output_bias_m"/device:CPU:0*
_output_shapes
 ¶
Read_50/ReadVariableOpReadVariableOp'read_50_disablecopyonread_output_bias_m^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Г
*
dtype0m
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Г
d
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes	
:Г
~
Read_51/DisableCopyOnReadDisableCopyOnRead)read_51_disablecopyonread_conv_1_kernel_v"/device:CPU:0*
_output_shapes
 ≥
Read_51/ReadVariableOpReadVariableOp)read_51_disablecopyonread_conv_1_kernel_v^Read_51/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*&
_output_shapes
:|
Read_52/DisableCopyOnReadDisableCopyOnRead'read_52_disablecopyonread_conv_1_bias_v"/device:CPU:0*
_output_shapes
 •
Read_52/ReadVariableOpReadVariableOp'read_52_disablecopyonread_conv_1_bias_v^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_53/DisableCopyOnReadDisableCopyOnRead)read_53_disablecopyonread_conv_2_kernel_v"/device:CPU:0*
_output_shapes
 ≥
Read_53/ReadVariableOpReadVariableOp)read_53_disablecopyonread_conv_2_kernel_v^Read_53/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:(*
dtype0x
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:(o
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*&
_output_shapes
:(|
Read_54/DisableCopyOnReadDisableCopyOnRead'read_54_disablecopyonread_conv_2_bias_v"/device:CPU:0*
_output_shapes
 •
Read_54/ReadVariableOpReadVariableOp'read_54_disablecopyonread_conv_2_bias_v^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:(*
dtype0l
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:(c
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes
:(~
Read_55/DisableCopyOnReadDisableCopyOnRead)read_55_disablecopyonread_conv_3_kernel_v"/device:CPU:0*
_output_shapes
 ≥
Read_55/ReadVariableOpReadVariableOp)read_55_disablecopyonread_conv_3_kernel_v^Read_55/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:(<*
dtype0x
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:(<o
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*&
_output_shapes
:(<|
Read_56/DisableCopyOnReadDisableCopyOnRead'read_56_disablecopyonread_conv_3_bias_v"/device:CPU:0*
_output_shapes
 •
Read_56/ReadVariableOpReadVariableOp'read_56_disablecopyonread_conv_3_bias_v^Read_56/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0l
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<c
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes
:<~
Read_57/DisableCopyOnReadDisableCopyOnRead)read_57_disablecopyonread_conv_4_kernel_v"/device:CPU:0*
_output_shapes
 ≥
Read_57/ReadVariableOpReadVariableOp)read_57_disablecopyonread_conv_4_kernel_v^Read_57/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:<P*
dtype0x
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:<Po
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*&
_output_shapes
:<P|
Read_58/DisableCopyOnReadDisableCopyOnRead'read_58_disablecopyonread_conv_4_bias_v"/device:CPU:0*
_output_shapes
 •
Read_58/ReadVariableOpReadVariableOp'read_58_disablecopyonread_conv_4_bias_v^Read_58/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:P*
dtype0l
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:Pc
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes
:P|
Read_59/DisableCopyOnReadDisableCopyOnRead'read_59_disablecopyonread_fc_1_kernel_v"/device:CPU:0*
_output_shapes
 Ђ
Read_59/ReadVariableOpReadVariableOp'read_59_disablecopyonread_fc_1_kernel_v^Read_59/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
∞	†*
dtype0r
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
∞	†i
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0* 
_output_shapes
:
∞	†z
Read_60/DisableCopyOnReadDisableCopyOnRead%read_60_disablecopyonread_fc_1_bias_v"/device:CPU:0*
_output_shapes
 §
Read_60/ReadVariableOpReadVariableOp%read_60_disablecopyonread_fc_1_bias_v^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:†*
dtype0m
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:†d
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes	
:†|
Read_61/DisableCopyOnReadDisableCopyOnRead'read_61_disablecopyonread_fc_2_kernel_v"/device:CPU:0*
_output_shapes
 Ђ
Read_61/ReadVariableOpReadVariableOp'read_61_disablecopyonread_fc_2_kernel_v^Read_61/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ј†*
dtype0r
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ј†i
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ј†z
Read_62/DisableCopyOnReadDisableCopyOnRead%read_62_disablecopyonread_fc_2_bias_v"/device:CPU:0*
_output_shapes
 §
Read_62/ReadVariableOpReadVariableOp%read_62_disablecopyonread_fc_2_bias_v^Read_62/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:†*
dtype0m
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:†d
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*
_output_shapes	
:†~
Read_63/DisableCopyOnReadDisableCopyOnRead)read_63_disablecopyonread_output_kernel_v"/device:CPU:0*
_output_shapes
 ≠
Read_63/ReadVariableOpReadVariableOp)read_63_disablecopyonread_output_kernel_v^Read_63/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
†Г
*
dtype0r
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
†Г
i
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0* 
_output_shapes
:
†Г
|
Read_64/DisableCopyOnReadDisableCopyOnRead'read_64_disablecopyonread_output_bias_v"/device:CPU:0*
_output_shapes
 ¶
Read_64/ReadVariableOpReadVariableOp'read_64_disablecopyonread_output_bias_v^Read_64/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Г
*
dtype0m
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Г
d
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*
_output_shapes	
:Г
ў
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*В
valueшBхBB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB1model_1/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB3model_1/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB3model_1/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB2model_1/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB:model_1/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB<model_1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB<model_1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB<model_1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB<model_1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBJvariables/0/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJvariables/1/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJvariables/2/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJvariables/3/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJvariables/4/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJvariables/5/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJvariables/6/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJvariables/7/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJvariables/8/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJvariables/9/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBKvariables/10/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBKvariables/11/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBKvariables/12/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBKvariables/13/.OPTIMIZER_SLOT/model_1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJvariables/0/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJvariables/1/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJvariables/2/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJvariables/3/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJvariables/4/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJvariables/5/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJvariables/6/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJvariables/7/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJvariables/8/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJvariables/9/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBKvariables/10/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBKvariables/11/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBKvariables/12/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBKvariables/13/.OPTIMIZER_SLOT/model_1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHф
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*Щ
valueПBМBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B є
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *P
dtypesF
D2B	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_130Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_131IdentityIdentity_130:output:0^NoOp*
T0*
_output_shapes
: Ф
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_131Identity_131:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=B9

_output_shapes
: 

_user_specified_nameConst:-A)
'
_user_specified_nameoutput/bias/v:/@+
)
_user_specified_nameoutput/kernel/v:+?'
%
_user_specified_namefc_2/bias/v:->)
'
_user_specified_namefc_2/kernel/v:+='
%
_user_specified_namefc_1/bias/v:-<)
'
_user_specified_namefc_1/kernel/v:-;)
'
_user_specified_nameconv_4/bias/v:/:+
)
_user_specified_nameconv_4/kernel/v:-9)
'
_user_specified_nameconv_3/bias/v:/8+
)
_user_specified_nameconv_3/kernel/v:-7)
'
_user_specified_nameconv_2/bias/v:/6+
)
_user_specified_nameconv_2/kernel/v:-5)
'
_user_specified_nameconv_1/bias/v:/4+
)
_user_specified_nameconv_1/kernel/v:-3)
'
_user_specified_nameoutput/bias/m:/2+
)
_user_specified_nameoutput/kernel/m:+1'
%
_user_specified_namefc_2/bias/m:-0)
'
_user_specified_namefc_2/kernel/m:+/'
%
_user_specified_namefc_1/bias/m:-.)
'
_user_specified_namefc_1/kernel/m:--)
'
_user_specified_nameconv_4/bias/m:/,+
)
_user_specified_nameconv_4/kernel/m:-+)
'
_user_specified_nameconv_3/bias/m:/*+
)
_user_specified_nameconv_3/kernel/m:-))
'
_user_specified_nameconv_2/bias/m:/(+
)
_user_specified_nameconv_2/kernel/m:-')
'
_user_specified_nameconv_1/bias/m:/&+
)
_user_specified_nameconv_1/kernel/m:%%!

_user_specified_namecount:%$!

_user_specified_nametotal:'##
!
_user_specified_name	count_1:'"#
!
_user_specified_name	total_1:-!)
'
_user_specified_namelearning_rate:% !

_user_specified_namedecay:&"
 
_user_specified_namebeta_2:&"
 
_user_specified_namebeta_1:$ 

_user_specified_nameiter:+'
%
_user_specified_nameoutput/bias:-)
'
_user_specified_nameoutput/kernel:)%
#
_user_specified_name	fc_2/bias:+'
%
_user_specified_namefc_2/kernel:)%
#
_user_specified_name	fc_1/bias:+'
%
_user_specified_namefc_1/kernel:+'
%
_user_specified_nameconv_4/bias:-)
'
_user_specified_nameconv_4/kernel:+'
%
_user_specified_nameconv_3/bias:-)
'
_user_specified_nameconv_3/kernel:+'
%
_user_specified_nameconv_2/bias:-)
'
_user_specified_nameconv_2/kernel:+'
%
_user_specified_nameconv_1/bias:-)
'
_user_specified_nameconv_1/kernel:-)
'
_user_specified_nameoutput/bias_1:/+
)
_user_specified_nameoutput/kernel_1:+'
%
_user_specified_namefc_2/bias_1:-)
'
_user_specified_namefc_2/kernel_1:+
'
%
_user_specified_namefc_1/bias_1:-	)
'
_user_specified_namefc_1/kernel_1:-)
'
_user_specified_nameconv_4/bias_1:/+
)
_user_specified_nameconv_4/kernel_1:-)
'
_user_specified_nameconv_3/bias_1:/+
)
_user_specified_nameconv_3/kernel_1:-)
'
_user_specified_nameconv_2/bias_1:/+
)
_user_specified_nameconv_2/kernel_1:-)
'
_user_specified_nameconv_1/bias_1:/+
)
_user_specified_nameconv_1/kernel_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
—
e
I__inference_activation_1_layer_call_and_return_conditional_losses_8057213

inputs
identityG
ReluReluinputs*
T0*(
_output_shapes
:€€€€€€€€€†[
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€†"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€†:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs
»
b
F__inference_flatten_1_layer_call_and_return_conditional_losses_8056061

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€∞  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€∞	Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€∞	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€<:W S
/
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs
Л
_
C__inference_pool_3_layer_call_and_return_conditional_losses_8055974

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Л
_
C__inference_pool_1_layer_call_and_return_conditional_losses_8055954

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
≥
ь
C__inference_conv_1_layer_call_and_return_conditional_losses_8055992

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€4,*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€4,X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€4,i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€4,S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€7/: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€7/
 
_user_specified_nameinputs
®
D
(__inference_pool_2_layer_call_fn_8057288

inputs
identity—
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pool_2_layer_call_and_return_conditional_losses_8056334Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
€	
х
A__inference_fc_2_layer_call_and_return_conditional_losses_8056087

inputs2
matmul_readvariableop_resource:
ј†.
biasadd_readvariableop_resource:	†
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ј†*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€ј: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs
§
S
'__inference_add_1_layer_call_fn_8057197
inputs_0
inputs_1
identityї
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_add_1_layer_call_and_return_conditional_losses_8056098a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€†"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€†:€€€€€€€€€†:RN
(
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
inputs_1:R N
(
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
inputs_0
≥
G
+__inference_flatten_2_layer_call_fn_8057147

inputs
identity≤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_8056054a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€P:W S
/
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs
ђ'
Ь	
H__inference_good_net_28_layer_call_and_return_conditional_losses_8056760
input_1)
model_1_8056692:
model_1_8056694:)
model_1_8056696:(
model_1_8056698:()
model_1_8056700:(<
model_1_8056702:<)
model_1_8056704:<P
model_1_8056706:P#
model_1_8056708:
∞	†
model_1_8056710:	†#
model_1_8056712:
ј†
model_1_8056714:	†#
model_1_8056716:
†Г

model_1_8056718:	Г
)
model_1_8056723:
model_1_8056725:)
model_1_8056727:(
model_1_8056729:()
model_1_8056731:(<
model_1_8056733:<)
model_1_8056735:<P
model_1_8056737:P#
model_1_8056739:
∞	†
model_1_8056741:	†#
model_1_8056743:
ј†
model_1_8056745:	†#
model_1_8056747:
†Г

model_1_8056749:	Г

identity	ИҐmodel_1/StatefulPartitionedCallҐ!model_1/StatefulPartitionedCall_1’
model_1/StatefulPartitionedCallStatefulPartitionedCallinput_1model_1_8056692model_1_8056694model_1_8056696model_1_8056698model_1_8056700model_1_8056702model_1_8056704model_1_8056706model_1_8056708model_1_8056710model_1_8056712model_1_8056714model_1_8056716model_1_8056718*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Г
*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_8056123R
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
value	B :Г
ArgMaxArgMax(model_1/StatefulPartitionedCall:output:0ArgMax/dimension:output:0*
T0*#
_output_shapes
:€€€€€€€€€„
!model_1/StatefulPartitionedCall_1StatefulPartitionedCallinput_1model_1_8056723model_1_8056725model_1_8056727model_1_8056729model_1_8056731model_1_8056733model_1_8056735model_1_8056737model_1_8056739model_1_8056741model_1_8056743model_1_8056745model_1_8056747model_1_8056749*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Г
*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_8056493T
ArgMax_1/dimensionConst*
_output_shapes
: *
dtype0*
value	B :Й
ArgMax_1ArgMax*model_1/StatefulPartitionedCall_1:output:0ArgMax_1/dimension:output:0*
T0*#
_output_shapes
:€€€€€€€€€`
EqualEqualArgMax:output:0ArgMax_1:output:0*
T0	*#
_output_shapes
:€€€€€€€€€T
	ones_likeOnesLikeArgMax:output:0*
T0	*#
_output_shapes
:€€€€€€€€€H
mul/xConst*
_output_shapes
: *
dtype0	*
value
B	 RГ
W
mulMulmul/x:output:0ones_like:y:0*
T0	*#
_output_shapes
:€€€€€€€€€g
SelectV2SelectV2	Equal:z:0ArgMax:output:0mul:z:0*
T0	*#
_output_shapes
:€€€€€€€€€\
IdentityIdentitySelectV2:output:0^NoOp*
T0	*#
_output_shapes
:€€€€€€€€€h
NoOpNoOp ^model_1/StatefulPartitionedCall"^model_1/StatefulPartitionedCall_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:€€€€€€€€€7/: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!model_1/StatefulPartitionedCall_1!model_1/StatefulPartitionedCall_12B
model_1/StatefulPartitionedCallmodel_1/StatefulPartitionedCall:'#
!
_user_specified_name	8056749:'#
!
_user_specified_name	8056747:'#
!
_user_specified_name	8056745:'#
!
_user_specified_name	8056743:'#
!
_user_specified_name	8056741:'#
!
_user_specified_name	8056739:'#
!
_user_specified_name	8056737:'#
!
_user_specified_name	8056735:'#
!
_user_specified_name	8056733:'#
!
_user_specified_name	8056731:'#
!
_user_specified_name	8056729:'#
!
_user_specified_name	8056727:'#
!
_user_specified_name	8056725:'#
!
_user_specified_name	8056723:'#
!
_user_specified_name	8056718:'#
!
_user_specified_name	8056716:'#
!
_user_specified_name	8056714:'#
!
_user_specified_name	8056712:'
#
!
_user_specified_name	8056710:'	#
!
_user_specified_name	8056708:'#
!
_user_specified_name	8056706:'#
!
_user_specified_name	8056704:'#
!
_user_specified_name	8056702:'#
!
_user_specified_name	8056700:'#
!
_user_specified_name	8056698:'#
!
_user_specified_name	8056696:'#
!
_user_specified_name	8056694:'#
!
_user_specified_name	8056692:X T
/
_output_shapes
:€€€€€€€€€7/
!
_user_specified_name	input_1
»
b
F__inference_flatten_2_layer_call_and_return_conditional_losses_8056424

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ј  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€јY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€P:W S
/
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs
≥
ь
C__inference_conv_3_layer_call_and_return_conditional_losses_8056026

inputs8
conv2d_readvariableop_resource:(<-
biasadd_readvariableop_resource:<
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:(<*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
<*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
<X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€
<i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€
<S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€
(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€
(
 
_user_specified_nameinputs
Ц
Э
(__inference_conv_1_layer_call_fn_8057242

inputs!
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€4,*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv_1_layer_call_and_return_conditional_losses_8056362w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€4,<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€7/: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	8057238:'#
!
_user_specified_name	8057236:W S
/
_output_shapes
:€€€€€€€€€7/
 
_user_specified_nameinputs
Т
Е
)__inference_model_1_layer_call_fn_8056572	
input!
unknown:
	unknown_0:#
	unknown_1:(
	unknown_2:(#
	unknown_3:(<
	unknown_4:<#
	unknown_5:<P
	unknown_6:P
	unknown_7:
∞	†
	unknown_8:	†
	unknown_9:
ј†

unknown_10:	†

unknown_11:
†Г


unknown_12:	Г

identityИҐStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Г
*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_8056493p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€7/: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	8056568:'#
!
_user_specified_name	8056566:'#
!
_user_specified_name	8056564:'#
!
_user_specified_name	8056562:'
#
!
_user_specified_name	8056560:'	#
!
_user_specified_name	8056558:'#
!
_user_specified_name	8056556:'#
!
_user_specified_name	8056554:'#
!
_user_specified_name	8056552:'#
!
_user_specified_name	8056550:'#
!
_user_specified_name	8056548:'#
!
_user_specified_name	8056546:'#
!
_user_specified_name	8056544:'#
!
_user_specified_name	8056542:V R
/
_output_shapes
:€€€€€€€€€7/

_user_specified_nameinput
З<
¶
D__inference_model_1_layer_call_and_return_conditional_losses_8056539	
input(
conv_1_8056496:
conv_1_8056498:(
conv_2_8056502:(
conv_2_8056504:((
conv_3_8056508:(<
conv_3_8056510:<(
conv_4_8056514:<P
conv_4_8056516:P 
fc_1_8056521:
∞	†
fc_1_8056523:	† 
fc_2_8056526:
ј†
fc_2_8056528:	†"
output_8056533:
†Г

output_8056535:	Г

identityИҐconv_1/StatefulPartitionedCallҐconv_2/StatefulPartitionedCallҐconv_3/StatefulPartitionedCallҐconv_4/StatefulPartitionedCallҐfc_1/StatefulPartitionedCallҐfc_2/StatefulPartitionedCallҐoutput/StatefulPartitionedCallт
conv_1/StatefulPartitionedCallStatefulPartitionedCallinputconv_1_8056496conv_1_8056498*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€4,*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv_1_layer_call_and_return_conditional_losses_8056362ё
pool_1/PartitionedCallPartitionedCall'conv_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pool_1_layer_call_and_return_conditional_losses_8056324М
conv_2/StatefulPartitionedCallStatefulPartitionedCallpool_1/PartitionedCall:output:0conv_2_8056502conv_2_8056504*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv_2_layer_call_and_return_conditional_losses_8056379ё
pool_2/PartitionedCallPartitionedCall'conv_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pool_2_layer_call_and_return_conditional_losses_8056334М
conv_3/StatefulPartitionedCallStatefulPartitionedCallpool_2/PartitionedCall:output:0conv_3_8056508conv_3_8056510*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv_3_layer_call_and_return_conditional_losses_8056396ё
pool_3/PartitionedCallPartitionedCall'conv_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pool_3_layer_call_and_return_conditional_losses_8056344М
conv_4/StatefulPartitionedCallStatefulPartitionedCallpool_3/PartitionedCall:output:0conv_4_8056514conv_4_8056516*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv_4_layer_call_and_return_conditional_losses_8056413Ё
flatten_2/PartitionedCallPartitionedCall'conv_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_8056424’
flatten_1/PartitionedCallPartitionedCallpool_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€∞	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_8056431А
fc_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0fc_1_8056521fc_1_8056523*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_fc_1_layer_call_and_return_conditional_losses_8056442А
fc_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0fc_2_8056526fc_2_8056528*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_fc_2_layer_call_and_return_conditional_losses_8056457ы
add_1/PartitionedCallPartitionedCall%fc_1/StatefulPartitionedCall:output:0%fc_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_add_1_layer_call_and_return_conditional_losses_8056468Џ
activation_1/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_8056474Л
output/StatefulPartitionedCallStatefulPartitionedCall%activation_1/PartitionedCall:output:0output_8056533output_8056535*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Г
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_8056486w
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
Е
NoOpNoOp^conv_1/StatefulPartitionedCall^conv_2/StatefulPartitionedCall^conv_3/StatefulPartitionedCall^conv_4/StatefulPartitionedCall^fc_1/StatefulPartitionedCall^fc_2/StatefulPartitionedCall^output/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€7/: : : : : : : : : : : : : : 2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2@
conv_2/StatefulPartitionedCallconv_2/StatefulPartitionedCall2@
conv_3/StatefulPartitionedCallconv_3/StatefulPartitionedCall2@
conv_4/StatefulPartitionedCallconv_4/StatefulPartitionedCall2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:'#
!
_user_specified_name	8056535:'#
!
_user_specified_name	8056533:'#
!
_user_specified_name	8056528:'#
!
_user_specified_name	8056526:'
#
!
_user_specified_name	8056523:'	#
!
_user_specified_name	8056521:'#
!
_user_specified_name	8056516:'#
!
_user_specified_name	8056514:'#
!
_user_specified_name	8056510:'#
!
_user_specified_name	8056508:'#
!
_user_specified_name	8056504:'#
!
_user_specified_name	8056502:'#
!
_user_specified_name	8056498:'#
!
_user_specified_name	8056496:V R
/
_output_shapes
:€€€€€€€€€7/

_user_specified_nameinput
е
Љ
-__inference_good_net_28_layer_call_fn_8056953
input_1!
unknown:
	unknown_0:#
	unknown_1:(
	unknown_2:(#
	unknown_3:(<
	unknown_4:<#
	unknown_5:<P
	unknown_6:P
	unknown_7:
∞	†
	unknown_8:	†
	unknown_9:
ј†

unknown_10:	†

unknown_11:
†Г


unknown_12:	Г
$

unknown_13:

unknown_14:$

unknown_15:(

unknown_16:($

unknown_17:(<

unknown_18:<$

unknown_19:<P

unknown_20:P

unknown_21:
∞	†

unknown_22:	†

unknown_23:
ј†

unknown_24:	†

unknown_25:
†Г


unknown_26:	Г

identity	ИҐStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:€€€€€€€€€*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_good_net_28_layer_call_and_return_conditional_losses_8056831k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*#
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:€€€€€€€€€7/: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	8056949:'#
!
_user_specified_name	8056947:'#
!
_user_specified_name	8056945:'#
!
_user_specified_name	8056943:'#
!
_user_specified_name	8056941:'#
!
_user_specified_name	8056939:'#
!
_user_specified_name	8056937:'#
!
_user_specified_name	8056935:'#
!
_user_specified_name	8056933:'#
!
_user_specified_name	8056931:'#
!
_user_specified_name	8056929:'#
!
_user_specified_name	8056927:'#
!
_user_specified_name	8056925:'#
!
_user_specified_name	8056923:'#
!
_user_specified_name	8056921:'#
!
_user_specified_name	8056919:'#
!
_user_specified_name	8056917:'#
!
_user_specified_name	8056915:'
#
!
_user_specified_name	8056913:'	#
!
_user_specified_name	8056911:'#
!
_user_specified_name	8056909:'#
!
_user_specified_name	8056907:'#
!
_user_specified_name	8056905:'#
!
_user_specified_name	8056903:'#
!
_user_specified_name	8056901:'#
!
_user_specified_name	8056899:'#
!
_user_specified_name	8056897:'#
!
_user_specified_name	8056895:X T
/
_output_shapes
:€€€€€€€€€7/
!
_user_specified_name	input_1
®
D
(__inference_pool_2_layer_call_fn_8057076

inputs
identity—
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pool_2_layer_call_and_return_conditional_losses_8055964Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ц
Э
(__inference_conv_2_layer_call_fn_8057272

inputs!
unknown:(
	unknown_0:(
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv_2_layer_call_and_return_conditional_losses_8056379w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€(<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	8057268:'#
!
_user_specified_name	8057266:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Л
_
C__inference_pool_2_layer_call_and_return_conditional_losses_8056334

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
≥
ь
C__inference_conv_2_layer_call_and_return_conditional_losses_8057283

inputs8
conv2d_readvariableop_resource:(-
biasadd_readvariableop_resource:(
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:(*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€(*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€(X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€(i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€(S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
с
Ц
&__inference_fc_1_layer_call_fn_8057374

inputs
unknown:
∞	†
	unknown_0:	†
identityИҐStatefulPartitionedCall„
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_fc_1_layer_call_and_return_conditional_losses_8056442p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€∞	: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	8057370:'#
!
_user_specified_name	8057368:P L
(
_output_shapes
:€€€€€€€€€∞	
 
_user_specified_nameinputs
Л
_
C__inference_pool_3_layer_call_and_return_conditional_losses_8057323

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Л
_
C__inference_pool_1_layer_call_and_return_conditional_losses_8056324

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
≥
ь
C__inference_conv_4_layer_call_and_return_conditional_losses_8057131

inputs8
conv2d_readvariableop_resource:<P-
biasadd_readvariableop_resource:P
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<P*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€P*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€PX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€Pi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€PS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs
—
e
I__inference_activation_1_layer_call_and_return_conditional_losses_8056104

inputs
identityG
ReluReluinputs*
T0*(
_output_shapes
:€€€€€€€€€†[
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€†"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€†:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs
≥
G
+__inference_flatten_1_layer_call_fn_8057136

inputs
identity≤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€∞	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_8056061a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€∞	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€<:W S
/
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs
Ц
Э
(__inference_conv_2_layer_call_fn_8057060

inputs!
unknown:(
	unknown_0:(
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv_2_layer_call_and_return_conditional_losses_8056009w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€(<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	8057056:'#
!
_user_specified_name	8057054:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
€	
х
A__inference_fc_2_layer_call_and_return_conditional_losses_8056457

inputs2
matmul_readvariableop_resource:
ј†.
biasadd_readvariableop_resource:	†
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ј†*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€ј: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs
Ђ
J
.__inference_activation_1_layer_call_fn_8057420

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_8056474a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€†"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€†:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs
§
S
'__inference_add_1_layer_call_fn_8057409
inputs_0
inputs_1
identityї
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_add_1_layer_call_and_return_conditional_losses_8056468a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€†"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€†:€€€€€€€€€†:RN
(
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
inputs_1:R N
(
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
inputs_0
Л
_
C__inference_pool_2_layer_call_and_return_conditional_losses_8057081

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
џ

ч
C__inference_output_layer_call_and_return_conditional_losses_8057233

inputs2
matmul_readvariableop_resource:
†Г
.
biasadd_readvariableop_resource:	Г

identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
†Г
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Г
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Г
*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Г
W
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Г
a
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€†: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs
»
b
F__inference_flatten_1_layer_call_and_return_conditional_losses_8056431

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€∞  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€∞	Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€∞	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€<:W S
/
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs
©ќ
Р
"__inference__wrapped_model_8055949
input_1S
9good_net_28_model_1_conv_1_conv2d_readvariableop_resource:H
:good_net_28_model_1_conv_1_biasadd_readvariableop_resource:S
9good_net_28_model_1_conv_2_conv2d_readvariableop_resource:(H
:good_net_28_model_1_conv_2_biasadd_readvariableop_resource:(S
9good_net_28_model_1_conv_3_conv2d_readvariableop_resource:(<H
:good_net_28_model_1_conv_3_biasadd_readvariableop_resource:<S
9good_net_28_model_1_conv_4_conv2d_readvariableop_resource:<PH
:good_net_28_model_1_conv_4_biasadd_readvariableop_resource:PK
7good_net_28_model_1_fc_1_matmul_readvariableop_resource:
∞	†G
8good_net_28_model_1_fc_1_biasadd_readvariableop_resource:	†K
7good_net_28_model_1_fc_2_matmul_readvariableop_resource:
ј†G
8good_net_28_model_1_fc_2_biasadd_readvariableop_resource:	†M
9good_net_28_model_1_output_matmul_readvariableop_resource:
†Г
I
:good_net_28_model_1_output_biasadd_readvariableop_resource:	Г
U
;good_net_28_model_1_conv_1_conv2d_1_readvariableop_resource:J
<good_net_28_model_1_conv_1_biasadd_1_readvariableop_resource:U
;good_net_28_model_1_conv_2_conv2d_1_readvariableop_resource:(J
<good_net_28_model_1_conv_2_biasadd_1_readvariableop_resource:(U
;good_net_28_model_1_conv_3_conv2d_1_readvariableop_resource:(<J
<good_net_28_model_1_conv_3_biasadd_1_readvariableop_resource:<U
;good_net_28_model_1_conv_4_conv2d_1_readvariableop_resource:<PJ
<good_net_28_model_1_conv_4_biasadd_1_readvariableop_resource:PM
9good_net_28_model_1_fc_1_matmul_1_readvariableop_resource:
∞	†I
:good_net_28_model_1_fc_1_biasadd_1_readvariableop_resource:	†M
9good_net_28_model_1_fc_2_matmul_1_readvariableop_resource:
ј†I
:good_net_28_model_1_fc_2_biasadd_1_readvariableop_resource:	†O
;good_net_28_model_1_output_matmul_1_readvariableop_resource:
†Г
K
<good_net_28_model_1_output_biasadd_1_readvariableop_resource:	Г

identity	ИҐ1good_net_28/model_1/conv_1/BiasAdd/ReadVariableOpҐ3good_net_28/model_1/conv_1/BiasAdd_1/ReadVariableOpҐ0good_net_28/model_1/conv_1/Conv2D/ReadVariableOpҐ2good_net_28/model_1/conv_1/Conv2D_1/ReadVariableOpҐ1good_net_28/model_1/conv_2/BiasAdd/ReadVariableOpҐ3good_net_28/model_1/conv_2/BiasAdd_1/ReadVariableOpҐ0good_net_28/model_1/conv_2/Conv2D/ReadVariableOpҐ2good_net_28/model_1/conv_2/Conv2D_1/ReadVariableOpҐ1good_net_28/model_1/conv_3/BiasAdd/ReadVariableOpҐ3good_net_28/model_1/conv_3/BiasAdd_1/ReadVariableOpҐ0good_net_28/model_1/conv_3/Conv2D/ReadVariableOpҐ2good_net_28/model_1/conv_3/Conv2D_1/ReadVariableOpҐ1good_net_28/model_1/conv_4/BiasAdd/ReadVariableOpҐ3good_net_28/model_1/conv_4/BiasAdd_1/ReadVariableOpҐ0good_net_28/model_1/conv_4/Conv2D/ReadVariableOpҐ2good_net_28/model_1/conv_4/Conv2D_1/ReadVariableOpҐ/good_net_28/model_1/fc_1/BiasAdd/ReadVariableOpҐ1good_net_28/model_1/fc_1/BiasAdd_1/ReadVariableOpҐ.good_net_28/model_1/fc_1/MatMul/ReadVariableOpҐ0good_net_28/model_1/fc_1/MatMul_1/ReadVariableOpҐ/good_net_28/model_1/fc_2/BiasAdd/ReadVariableOpҐ1good_net_28/model_1/fc_2/BiasAdd_1/ReadVariableOpҐ.good_net_28/model_1/fc_2/MatMul/ReadVariableOpҐ0good_net_28/model_1/fc_2/MatMul_1/ReadVariableOpҐ1good_net_28/model_1/output/BiasAdd/ReadVariableOpҐ3good_net_28/model_1/output/BiasAdd_1/ReadVariableOpҐ0good_net_28/model_1/output/MatMul/ReadVariableOpҐ2good_net_28/model_1/output/MatMul_1/ReadVariableOp≤
0good_net_28/model_1/conv_1/Conv2D/ReadVariableOpReadVariableOp9good_net_28_model_1_conv_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0—
!good_net_28/model_1/conv_1/Conv2DConv2Dinput_18good_net_28/model_1/conv_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€4,*
paddingVALID*
strides
®
1good_net_28/model_1/conv_1/BiasAdd/ReadVariableOpReadVariableOp:good_net_28_model_1_conv_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ќ
"good_net_28/model_1/conv_1/BiasAddBiasAdd*good_net_28/model_1/conv_1/Conv2D:output:09good_net_28/model_1/conv_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€4,О
good_net_28/model_1/conv_1/ReluRelu+good_net_28/model_1/conv_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€4,…
"good_net_28/model_1/pool_1/MaxPoolMaxPool-good_net_28/model_1/conv_1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingVALID*
strides
≤
0good_net_28/model_1/conv_2/Conv2D/ReadVariableOpReadVariableOp9good_net_28_model_1_conv_2_conv2d_readvariableop_resource*&
_output_shapes
:(*
dtype0х
!good_net_28/model_1/conv_2/Conv2DConv2D+good_net_28/model_1/pool_1/MaxPool:output:08good_net_28/model_1/conv_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€(*
paddingVALID*
strides
®
1good_net_28/model_1/conv_2/BiasAdd/ReadVariableOpReadVariableOp:good_net_28_model_1_conv_2_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0ќ
"good_net_28/model_1/conv_2/BiasAddBiasAdd*good_net_28/model_1/conv_2/Conv2D:output:09good_net_28/model_1/conv_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€(О
good_net_28/model_1/conv_2/ReluRelu+good_net_28/model_1/conv_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€(…
"good_net_28/model_1/pool_2/MaxPoolMaxPool-good_net_28/model_1/conv_2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€
(*
ksize
*
paddingVALID*
strides
≤
0good_net_28/model_1/conv_3/Conv2D/ReadVariableOpReadVariableOp9good_net_28_model_1_conv_3_conv2d_readvariableop_resource*&
_output_shapes
:(<*
dtype0х
!good_net_28/model_1/conv_3/Conv2DConv2D+good_net_28/model_1/pool_2/MaxPool:output:08good_net_28/model_1/conv_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
<*
paddingVALID*
strides
®
1good_net_28/model_1/conv_3/BiasAdd/ReadVariableOpReadVariableOp:good_net_28_model_1_conv_3_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0ќ
"good_net_28/model_1/conv_3/BiasAddBiasAdd*good_net_28/model_1/conv_3/Conv2D:output:09good_net_28/model_1/conv_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
<О
good_net_28/model_1/conv_3/ReluRelu+good_net_28/model_1/conv_3/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€
<…
"good_net_28/model_1/pool_3/MaxPoolMaxPool-good_net_28/model_1/conv_3/Relu:activations:0*/
_output_shapes
:€€€€€€€€€<*
ksize
*
paddingVALID*
strides
≤
0good_net_28/model_1/conv_4/Conv2D/ReadVariableOpReadVariableOp9good_net_28_model_1_conv_4_conv2d_readvariableop_resource*&
_output_shapes
:<P*
dtype0х
!good_net_28/model_1/conv_4/Conv2DConv2D+good_net_28/model_1/pool_3/MaxPool:output:08good_net_28/model_1/conv_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€P*
paddingVALID*
strides
®
1good_net_28/model_1/conv_4/BiasAdd/ReadVariableOpReadVariableOp:good_net_28_model_1_conv_4_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0ќ
"good_net_28/model_1/conv_4/BiasAddBiasAdd*good_net_28/model_1/conv_4/Conv2D:output:09good_net_28/model_1/conv_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€PО
good_net_28/model_1/conv_4/ReluRelu+good_net_28/model_1/conv_4/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€Pt
#good_net_28/model_1/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ј  ј
%good_net_28/model_1/flatten_2/ReshapeReshape-good_net_28/model_1/conv_4/Relu:activations:0,good_net_28/model_1/flatten_2/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€јt
#good_net_28/model_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€∞  Њ
%good_net_28/model_1/flatten_1/ReshapeReshape+good_net_28/model_1/pool_3/MaxPool:output:0,good_net_28/model_1/flatten_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€∞	®
.good_net_28/model_1/fc_1/MatMul/ReadVariableOpReadVariableOp7good_net_28_model_1_fc_1_matmul_readvariableop_resource* 
_output_shapes
:
∞	†*
dtype0ƒ
good_net_28/model_1/fc_1/MatMulMatMul.good_net_28/model_1/flatten_1/Reshape:output:06good_net_28/model_1/fc_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†•
/good_net_28/model_1/fc_1/BiasAdd/ReadVariableOpReadVariableOp8good_net_28_model_1_fc_1_biasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0¬
 good_net_28/model_1/fc_1/BiasAddBiasAdd)good_net_28/model_1/fc_1/MatMul:product:07good_net_28/model_1/fc_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†®
.good_net_28/model_1/fc_2/MatMul/ReadVariableOpReadVariableOp7good_net_28_model_1_fc_2_matmul_readvariableop_resource* 
_output_shapes
:
ј†*
dtype0ƒ
good_net_28/model_1/fc_2/MatMulMatMul.good_net_28/model_1/flatten_2/Reshape:output:06good_net_28/model_1/fc_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†•
/good_net_28/model_1/fc_2/BiasAdd/ReadVariableOpReadVariableOp8good_net_28_model_1_fc_2_biasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0¬
 good_net_28/model_1/fc_2/BiasAddBiasAdd)good_net_28/model_1/fc_2/MatMul:product:07good_net_28/model_1/fc_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†ѓ
good_net_28/model_1/add_1/addAddV2)good_net_28/model_1/fc_1/BiasAdd:output:0)good_net_28/model_1/fc_2/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€†Г
%good_net_28/model_1/activation_1/ReluRelu!good_net_28/model_1/add_1/add:z:0*
T0*(
_output_shapes
:€€€€€€€€€†ђ
0good_net_28/model_1/output/MatMul/ReadVariableOpReadVariableOp9good_net_28_model_1_output_matmul_readvariableop_resource* 
_output_shapes
:
†Г
*
dtype0Ќ
!good_net_28/model_1/output/MatMulMatMul3good_net_28/model_1/activation_1/Relu:activations:08good_net_28/model_1/output/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Г
©
1good_net_28/model_1/output/BiasAdd/ReadVariableOpReadVariableOp:good_net_28_model_1_output_biasadd_readvariableop_resource*
_output_shapes	
:Г
*
dtype0»
"good_net_28/model_1/output/BiasAddBiasAdd+good_net_28/model_1/output/MatMul:product:09good_net_28/model_1/output/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Г
Н
"good_net_28/model_1/output/SoftmaxSoftmax+good_net_28/model_1/output/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Г
^
good_net_28/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
value	B :Я
good_net_28/ArgMaxArgMax,good_net_28/model_1/output/Softmax:softmax:0%good_net_28/ArgMax/dimension:output:0*
T0*#
_output_shapes
:€€€€€€€€€ґ
2good_net_28/model_1/conv_1/Conv2D_1/ReadVariableOpReadVariableOp;good_net_28_model_1_conv_1_conv2d_1_readvariableop_resource*&
_output_shapes
:*
dtype0’
#good_net_28/model_1/conv_1/Conv2D_1Conv2Dinput_1:good_net_28/model_1/conv_1/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€4,*
paddingVALID*
strides
ђ
3good_net_28/model_1/conv_1/BiasAdd_1/ReadVariableOpReadVariableOp<good_net_28_model_1_conv_1_biasadd_1_readvariableop_resource*
_output_shapes
:*
dtype0‘
$good_net_28/model_1/conv_1/BiasAdd_1BiasAdd,good_net_28/model_1/conv_1/Conv2D_1:output:0;good_net_28/model_1/conv_1/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€4,Т
!good_net_28/model_1/conv_1/Relu_1Relu-good_net_28/model_1/conv_1/BiasAdd_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€4,Ќ
$good_net_28/model_1/pool_1/MaxPool_1MaxPool/good_net_28/model_1/conv_1/Relu_1:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingVALID*
strides
ґ
2good_net_28/model_1/conv_2/Conv2D_1/ReadVariableOpReadVariableOp;good_net_28_model_1_conv_2_conv2d_1_readvariableop_resource*&
_output_shapes
:(*
dtype0ы
#good_net_28/model_1/conv_2/Conv2D_1Conv2D-good_net_28/model_1/pool_1/MaxPool_1:output:0:good_net_28/model_1/conv_2/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€(*
paddingVALID*
strides
ђ
3good_net_28/model_1/conv_2/BiasAdd_1/ReadVariableOpReadVariableOp<good_net_28_model_1_conv_2_biasadd_1_readvariableop_resource*
_output_shapes
:(*
dtype0‘
$good_net_28/model_1/conv_2/BiasAdd_1BiasAdd,good_net_28/model_1/conv_2/Conv2D_1:output:0;good_net_28/model_1/conv_2/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€(Т
!good_net_28/model_1/conv_2/Relu_1Relu-good_net_28/model_1/conv_2/BiasAdd_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€(Ќ
$good_net_28/model_1/pool_2/MaxPool_1MaxPool/good_net_28/model_1/conv_2/Relu_1:activations:0*/
_output_shapes
:€€€€€€€€€
(*
ksize
*
paddingVALID*
strides
ґ
2good_net_28/model_1/conv_3/Conv2D_1/ReadVariableOpReadVariableOp;good_net_28_model_1_conv_3_conv2d_1_readvariableop_resource*&
_output_shapes
:(<*
dtype0ы
#good_net_28/model_1/conv_3/Conv2D_1Conv2D-good_net_28/model_1/pool_2/MaxPool_1:output:0:good_net_28/model_1/conv_3/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
<*
paddingVALID*
strides
ђ
3good_net_28/model_1/conv_3/BiasAdd_1/ReadVariableOpReadVariableOp<good_net_28_model_1_conv_3_biasadd_1_readvariableop_resource*
_output_shapes
:<*
dtype0‘
$good_net_28/model_1/conv_3/BiasAdd_1BiasAdd,good_net_28/model_1/conv_3/Conv2D_1:output:0;good_net_28/model_1/conv_3/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
<Т
!good_net_28/model_1/conv_3/Relu_1Relu-good_net_28/model_1/conv_3/BiasAdd_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€
<Ќ
$good_net_28/model_1/pool_3/MaxPool_1MaxPool/good_net_28/model_1/conv_3/Relu_1:activations:0*/
_output_shapes
:€€€€€€€€€<*
ksize
*
paddingVALID*
strides
ґ
2good_net_28/model_1/conv_4/Conv2D_1/ReadVariableOpReadVariableOp;good_net_28_model_1_conv_4_conv2d_1_readvariableop_resource*&
_output_shapes
:<P*
dtype0ы
#good_net_28/model_1/conv_4/Conv2D_1Conv2D-good_net_28/model_1/pool_3/MaxPool_1:output:0:good_net_28/model_1/conv_4/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€P*
paddingVALID*
strides
ђ
3good_net_28/model_1/conv_4/BiasAdd_1/ReadVariableOpReadVariableOp<good_net_28_model_1_conv_4_biasadd_1_readvariableop_resource*
_output_shapes
:P*
dtype0‘
$good_net_28/model_1/conv_4/BiasAdd_1BiasAdd,good_net_28/model_1/conv_4/Conv2D_1:output:0;good_net_28/model_1/conv_4/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€PТ
!good_net_28/model_1/conv_4/Relu_1Relu-good_net_28/model_1/conv_4/BiasAdd_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€Pv
%good_net_28/model_1/flatten_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"€€€€ј  ∆
'good_net_28/model_1/flatten_2/Reshape_1Reshape/good_net_28/model_1/conv_4/Relu_1:activations:0.good_net_28/model_1/flatten_2/Const_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€јv
%good_net_28/model_1/flatten_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"€€€€∞  ƒ
'good_net_28/model_1/flatten_1/Reshape_1Reshape-good_net_28/model_1/pool_3/MaxPool_1:output:0.good_net_28/model_1/flatten_1/Const_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€∞	ђ
0good_net_28/model_1/fc_1/MatMul_1/ReadVariableOpReadVariableOp9good_net_28_model_1_fc_1_matmul_1_readvariableop_resource* 
_output_shapes
:
∞	†*
dtype0 
!good_net_28/model_1/fc_1/MatMul_1MatMul0good_net_28/model_1/flatten_1/Reshape_1:output:08good_net_28/model_1/fc_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†©
1good_net_28/model_1/fc_1/BiasAdd_1/ReadVariableOpReadVariableOp:good_net_28_model_1_fc_1_biasadd_1_readvariableop_resource*
_output_shapes	
:†*
dtype0»
"good_net_28/model_1/fc_1/BiasAdd_1BiasAdd+good_net_28/model_1/fc_1/MatMul_1:product:09good_net_28/model_1/fc_1/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†ђ
0good_net_28/model_1/fc_2/MatMul_1/ReadVariableOpReadVariableOp9good_net_28_model_1_fc_2_matmul_1_readvariableop_resource* 
_output_shapes
:
ј†*
dtype0 
!good_net_28/model_1/fc_2/MatMul_1MatMul0good_net_28/model_1/flatten_2/Reshape_1:output:08good_net_28/model_1/fc_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†©
1good_net_28/model_1/fc_2/BiasAdd_1/ReadVariableOpReadVariableOp:good_net_28_model_1_fc_2_biasadd_1_readvariableop_resource*
_output_shapes	
:†*
dtype0»
"good_net_28/model_1/fc_2/BiasAdd_1BiasAdd+good_net_28/model_1/fc_2/MatMul_1:product:09good_net_28/model_1/fc_2/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†µ
good_net_28/model_1/add_1/add_1AddV2+good_net_28/model_1/fc_1/BiasAdd_1:output:0+good_net_28/model_1/fc_2/BiasAdd_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€†З
'good_net_28/model_1/activation_1/Relu_1Relu#good_net_28/model_1/add_1/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†∞
2good_net_28/model_1/output/MatMul_1/ReadVariableOpReadVariableOp;good_net_28_model_1_output_matmul_1_readvariableop_resource* 
_output_shapes
:
†Г
*
dtype0”
#good_net_28/model_1/output/MatMul_1MatMul5good_net_28/model_1/activation_1/Relu_1:activations:0:good_net_28/model_1/output/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Г
≠
3good_net_28/model_1/output/BiasAdd_1/ReadVariableOpReadVariableOp<good_net_28_model_1_output_biasadd_1_readvariableop_resource*
_output_shapes	
:Г
*
dtype0ќ
$good_net_28/model_1/output/BiasAdd_1BiasAdd-good_net_28/model_1/output/MatMul_1:product:0;good_net_28/model_1/output/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Г
С
$good_net_28/model_1/output/Softmax_1Softmax-good_net_28/model_1/output/BiasAdd_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€Г
`
good_net_28/ArgMax_1/dimensionConst*
_output_shapes
: *
dtype0*
value	B :•
good_net_28/ArgMax_1ArgMax.good_net_28/model_1/output/Softmax_1:softmax:0'good_net_28/ArgMax_1/dimension:output:0*
T0*#
_output_shapes
:€€€€€€€€€Д
good_net_28/EqualEqualgood_net_28/ArgMax:output:0good_net_28/ArgMax_1:output:0*
T0	*#
_output_shapes
:€€€€€€€€€l
good_net_28/ones_likeOnesLikegood_net_28/ArgMax:output:0*
T0	*#
_output_shapes
:€€€€€€€€€T
good_net_28/mul/xConst*
_output_shapes
: *
dtype0	*
value
B	 RГ
{
good_net_28/mulMulgood_net_28/mul/x:output:0good_net_28/ones_like:y:0*
T0	*#
_output_shapes
:€€€€€€€€€Ч
good_net_28/SelectV2SelectV2good_net_28/Equal:z:0good_net_28/ArgMax:output:0good_net_28/mul:z:0*
T0	*#
_output_shapes
:€€€€€€€€€h
IdentityIdentitygood_net_28/SelectV2:output:0^NoOp*
T0	*#
_output_shapes
:€€€€€€€€€–
NoOpNoOp2^good_net_28/model_1/conv_1/BiasAdd/ReadVariableOp4^good_net_28/model_1/conv_1/BiasAdd_1/ReadVariableOp1^good_net_28/model_1/conv_1/Conv2D/ReadVariableOp3^good_net_28/model_1/conv_1/Conv2D_1/ReadVariableOp2^good_net_28/model_1/conv_2/BiasAdd/ReadVariableOp4^good_net_28/model_1/conv_2/BiasAdd_1/ReadVariableOp1^good_net_28/model_1/conv_2/Conv2D/ReadVariableOp3^good_net_28/model_1/conv_2/Conv2D_1/ReadVariableOp2^good_net_28/model_1/conv_3/BiasAdd/ReadVariableOp4^good_net_28/model_1/conv_3/BiasAdd_1/ReadVariableOp1^good_net_28/model_1/conv_3/Conv2D/ReadVariableOp3^good_net_28/model_1/conv_3/Conv2D_1/ReadVariableOp2^good_net_28/model_1/conv_4/BiasAdd/ReadVariableOp4^good_net_28/model_1/conv_4/BiasAdd_1/ReadVariableOp1^good_net_28/model_1/conv_4/Conv2D/ReadVariableOp3^good_net_28/model_1/conv_4/Conv2D_1/ReadVariableOp0^good_net_28/model_1/fc_1/BiasAdd/ReadVariableOp2^good_net_28/model_1/fc_1/BiasAdd_1/ReadVariableOp/^good_net_28/model_1/fc_1/MatMul/ReadVariableOp1^good_net_28/model_1/fc_1/MatMul_1/ReadVariableOp0^good_net_28/model_1/fc_2/BiasAdd/ReadVariableOp2^good_net_28/model_1/fc_2/BiasAdd_1/ReadVariableOp/^good_net_28/model_1/fc_2/MatMul/ReadVariableOp1^good_net_28/model_1/fc_2/MatMul_1/ReadVariableOp2^good_net_28/model_1/output/BiasAdd/ReadVariableOp4^good_net_28/model_1/output/BiasAdd_1/ReadVariableOp1^good_net_28/model_1/output/MatMul/ReadVariableOp3^good_net_28/model_1/output/MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:€€€€€€€€€7/: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2f
1good_net_28/model_1/conv_1/BiasAdd/ReadVariableOp1good_net_28/model_1/conv_1/BiasAdd/ReadVariableOp2j
3good_net_28/model_1/conv_1/BiasAdd_1/ReadVariableOp3good_net_28/model_1/conv_1/BiasAdd_1/ReadVariableOp2d
0good_net_28/model_1/conv_1/Conv2D/ReadVariableOp0good_net_28/model_1/conv_1/Conv2D/ReadVariableOp2h
2good_net_28/model_1/conv_1/Conv2D_1/ReadVariableOp2good_net_28/model_1/conv_1/Conv2D_1/ReadVariableOp2f
1good_net_28/model_1/conv_2/BiasAdd/ReadVariableOp1good_net_28/model_1/conv_2/BiasAdd/ReadVariableOp2j
3good_net_28/model_1/conv_2/BiasAdd_1/ReadVariableOp3good_net_28/model_1/conv_2/BiasAdd_1/ReadVariableOp2d
0good_net_28/model_1/conv_2/Conv2D/ReadVariableOp0good_net_28/model_1/conv_2/Conv2D/ReadVariableOp2h
2good_net_28/model_1/conv_2/Conv2D_1/ReadVariableOp2good_net_28/model_1/conv_2/Conv2D_1/ReadVariableOp2f
1good_net_28/model_1/conv_3/BiasAdd/ReadVariableOp1good_net_28/model_1/conv_3/BiasAdd/ReadVariableOp2j
3good_net_28/model_1/conv_3/BiasAdd_1/ReadVariableOp3good_net_28/model_1/conv_3/BiasAdd_1/ReadVariableOp2d
0good_net_28/model_1/conv_3/Conv2D/ReadVariableOp0good_net_28/model_1/conv_3/Conv2D/ReadVariableOp2h
2good_net_28/model_1/conv_3/Conv2D_1/ReadVariableOp2good_net_28/model_1/conv_3/Conv2D_1/ReadVariableOp2f
1good_net_28/model_1/conv_4/BiasAdd/ReadVariableOp1good_net_28/model_1/conv_4/BiasAdd/ReadVariableOp2j
3good_net_28/model_1/conv_4/BiasAdd_1/ReadVariableOp3good_net_28/model_1/conv_4/BiasAdd_1/ReadVariableOp2d
0good_net_28/model_1/conv_4/Conv2D/ReadVariableOp0good_net_28/model_1/conv_4/Conv2D/ReadVariableOp2h
2good_net_28/model_1/conv_4/Conv2D_1/ReadVariableOp2good_net_28/model_1/conv_4/Conv2D_1/ReadVariableOp2b
/good_net_28/model_1/fc_1/BiasAdd/ReadVariableOp/good_net_28/model_1/fc_1/BiasAdd/ReadVariableOp2f
1good_net_28/model_1/fc_1/BiasAdd_1/ReadVariableOp1good_net_28/model_1/fc_1/BiasAdd_1/ReadVariableOp2`
.good_net_28/model_1/fc_1/MatMul/ReadVariableOp.good_net_28/model_1/fc_1/MatMul/ReadVariableOp2d
0good_net_28/model_1/fc_1/MatMul_1/ReadVariableOp0good_net_28/model_1/fc_1/MatMul_1/ReadVariableOp2b
/good_net_28/model_1/fc_2/BiasAdd/ReadVariableOp/good_net_28/model_1/fc_2/BiasAdd/ReadVariableOp2f
1good_net_28/model_1/fc_2/BiasAdd_1/ReadVariableOp1good_net_28/model_1/fc_2/BiasAdd_1/ReadVariableOp2`
.good_net_28/model_1/fc_2/MatMul/ReadVariableOp.good_net_28/model_1/fc_2/MatMul/ReadVariableOp2d
0good_net_28/model_1/fc_2/MatMul_1/ReadVariableOp0good_net_28/model_1/fc_2/MatMul_1/ReadVariableOp2f
1good_net_28/model_1/output/BiasAdd/ReadVariableOp1good_net_28/model_1/output/BiasAdd/ReadVariableOp2j
3good_net_28/model_1/output/BiasAdd_1/ReadVariableOp3good_net_28/model_1/output/BiasAdd_1/ReadVariableOp2d
0good_net_28/model_1/output/MatMul/ReadVariableOp0good_net_28/model_1/output/MatMul/ReadVariableOp2h
2good_net_28/model_1/output/MatMul_1/ReadVariableOp2good_net_28/model_1/output/MatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
/
_output_shapes
:€€€€€€€€€7/
!
_user_specified_name	input_1
»
b
F__inference_flatten_2_layer_call_and_return_conditional_losses_8056054

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ј  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€јY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€P:W S
/
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs
Л
_
C__inference_pool_2_layer_call_and_return_conditional_losses_8055964

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
€	
х
A__inference_fc_1_layer_call_and_return_conditional_losses_8056072

inputs2
matmul_readvariableop_resource:
∞	†.
biasadd_readvariableop_resource:	†
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
∞	†*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:†*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€†`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€∞	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:€€€€€€€€€∞	
 
_user_specified_nameinputs
Ц
Э
(__inference_conv_1_layer_call_fn_8057030

inputs!
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€4,*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv_1_layer_call_and_return_conditional_losses_8055992w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€4,<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€7/: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	8057026:'#
!
_user_specified_name	8057024:W S
/
_output_shapes
:€€€€€€€€€7/
 
_user_specified_nameinputs
Ц
Э
(__inference_conv_3_layer_call_fn_8057090

inputs!
unknown:(<
	unknown_0:<
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv_3_layer_call_and_return_conditional_losses_8056026w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€
<<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€
(: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	8057086:'#
!
_user_specified_name	8057084:W S
/
_output_shapes
:€€€€€€€€€
(
 
_user_specified_nameinputs
З<
¶
D__inference_model_1_layer_call_and_return_conditional_losses_8056123	
input(
conv_1_8055993:
conv_1_8055995:(
conv_2_8056010:(
conv_2_8056012:((
conv_3_8056027:(<
conv_3_8056029:<(
conv_4_8056044:<P
conv_4_8056046:P 
fc_1_8056073:
∞	†
fc_1_8056075:	† 
fc_2_8056088:
ј†
fc_2_8056090:	†"
output_8056117:
†Г

output_8056119:	Г

identityИҐconv_1/StatefulPartitionedCallҐconv_2/StatefulPartitionedCallҐconv_3/StatefulPartitionedCallҐconv_4/StatefulPartitionedCallҐfc_1/StatefulPartitionedCallҐfc_2/StatefulPartitionedCallҐoutput/StatefulPartitionedCallт
conv_1/StatefulPartitionedCallStatefulPartitionedCallinputconv_1_8055993conv_1_8055995*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€4,*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv_1_layer_call_and_return_conditional_losses_8055992ё
pool_1/PartitionedCallPartitionedCall'conv_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pool_1_layer_call_and_return_conditional_losses_8055954М
conv_2/StatefulPartitionedCallStatefulPartitionedCallpool_1/PartitionedCall:output:0conv_2_8056010conv_2_8056012*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv_2_layer_call_and_return_conditional_losses_8056009ё
pool_2/PartitionedCallPartitionedCall'conv_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pool_2_layer_call_and_return_conditional_losses_8055964М
conv_3/StatefulPartitionedCallStatefulPartitionedCallpool_2/PartitionedCall:output:0conv_3_8056027conv_3_8056029*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv_3_layer_call_and_return_conditional_losses_8056026ё
pool_3/PartitionedCallPartitionedCall'conv_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pool_3_layer_call_and_return_conditional_losses_8055974М
conv_4/StatefulPartitionedCallStatefulPartitionedCallpool_3/PartitionedCall:output:0conv_4_8056044conv_4_8056046*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv_4_layer_call_and_return_conditional_losses_8056043Ё
flatten_2/PartitionedCallPartitionedCall'conv_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_8056054’
flatten_1/PartitionedCallPartitionedCallpool_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€∞	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_8056061А
fc_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0fc_1_8056073fc_1_8056075*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_fc_1_layer_call_and_return_conditional_losses_8056072А
fc_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0fc_2_8056088fc_2_8056090*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_fc_2_layer_call_and_return_conditional_losses_8056087ы
add_1/PartitionedCallPartitionedCall%fc_1/StatefulPartitionedCall:output:0%fc_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_add_1_layer_call_and_return_conditional_losses_8056098Џ
activation_1/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_8056104Л
output/StatefulPartitionedCallStatefulPartitionedCall%activation_1/PartitionedCall:output:0output_8056117output_8056119*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Г
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_8056116w
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
Е
NoOpNoOp^conv_1/StatefulPartitionedCall^conv_2/StatefulPartitionedCall^conv_3/StatefulPartitionedCall^conv_4/StatefulPartitionedCall^fc_1/StatefulPartitionedCall^fc_2/StatefulPartitionedCall^output/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€7/: : : : : : : : : : : : : : 2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2@
conv_2/StatefulPartitionedCallconv_2/StatefulPartitionedCall2@
conv_3/StatefulPartitionedCallconv_3/StatefulPartitionedCall2@
conv_4/StatefulPartitionedCallconv_4/StatefulPartitionedCall2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:'#
!
_user_specified_name	8056119:'#
!
_user_specified_name	8056117:'#
!
_user_specified_name	8056090:'#
!
_user_specified_name	8056088:'
#
!
_user_specified_name	8056075:'	#
!
_user_specified_name	8056073:'#
!
_user_specified_name	8056046:'#
!
_user_specified_name	8056044:'#
!
_user_specified_name	8056029:'#
!
_user_specified_name	8056027:'#
!
_user_specified_name	8056012:'#
!
_user_specified_name	8056010:'#
!
_user_specified_name	8055995:'#
!
_user_specified_name	8055993:V R
/
_output_shapes
:€€€€€€€€€7/

_user_specified_nameinput
З<
¶
D__inference_model_1_layer_call_and_return_conditional_losses_8056493	
input(
conv_1_8056363:
conv_1_8056365:(
conv_2_8056380:(
conv_2_8056382:((
conv_3_8056397:(<
conv_3_8056399:<(
conv_4_8056414:<P
conv_4_8056416:P 
fc_1_8056443:
∞	†
fc_1_8056445:	† 
fc_2_8056458:
ј†
fc_2_8056460:	†"
output_8056487:
†Г

output_8056489:	Г

identityИҐconv_1/StatefulPartitionedCallҐconv_2/StatefulPartitionedCallҐconv_3/StatefulPartitionedCallҐconv_4/StatefulPartitionedCallҐfc_1/StatefulPartitionedCallҐfc_2/StatefulPartitionedCallҐoutput/StatefulPartitionedCallт
conv_1/StatefulPartitionedCallStatefulPartitionedCallinputconv_1_8056363conv_1_8056365*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€4,*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv_1_layer_call_and_return_conditional_losses_8056362ё
pool_1/PartitionedCallPartitionedCall'conv_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pool_1_layer_call_and_return_conditional_losses_8056324М
conv_2/StatefulPartitionedCallStatefulPartitionedCallpool_1/PartitionedCall:output:0conv_2_8056380conv_2_8056382*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv_2_layer_call_and_return_conditional_losses_8056379ё
pool_2/PartitionedCallPartitionedCall'conv_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pool_2_layer_call_and_return_conditional_losses_8056334М
conv_3/StatefulPartitionedCallStatefulPartitionedCallpool_2/PartitionedCall:output:0conv_3_8056397conv_3_8056399*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv_3_layer_call_and_return_conditional_losses_8056396ё
pool_3/PartitionedCallPartitionedCall'conv_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pool_3_layer_call_and_return_conditional_losses_8056344М
conv_4/StatefulPartitionedCallStatefulPartitionedCallpool_3/PartitionedCall:output:0conv_4_8056414conv_4_8056416*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv_4_layer_call_and_return_conditional_losses_8056413Ё
flatten_2/PartitionedCallPartitionedCall'conv_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_8056424’
flatten_1/PartitionedCallPartitionedCallpool_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€∞	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_8056431А
fc_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0fc_1_8056443fc_1_8056445*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_fc_1_layer_call_and_return_conditional_losses_8056442А
fc_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0fc_2_8056458fc_2_8056460*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_fc_2_layer_call_and_return_conditional_losses_8056457ы
add_1/PartitionedCallPartitionedCall%fc_1/StatefulPartitionedCall:output:0%fc_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_add_1_layer_call_and_return_conditional_losses_8056468Џ
activation_1/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_8056474Л
output/StatefulPartitionedCallStatefulPartitionedCall%activation_1/PartitionedCall:output:0output_8056487output_8056489*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Г
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_8056486w
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Г
Е
NoOpNoOp^conv_1/StatefulPartitionedCall^conv_2/StatefulPartitionedCall^conv_3/StatefulPartitionedCall^conv_4/StatefulPartitionedCall^fc_1/StatefulPartitionedCall^fc_2/StatefulPartitionedCall^output/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€7/: : : : : : : : : : : : : : 2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2@
conv_2/StatefulPartitionedCallconv_2/StatefulPartitionedCall2@
conv_3/StatefulPartitionedCallconv_3/StatefulPartitionedCall2@
conv_4/StatefulPartitionedCallconv_4/StatefulPartitionedCall2<
fc_1/StatefulPartitionedCallfc_1/StatefulPartitionedCall2<
fc_2/StatefulPartitionedCallfc_2/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:'#
!
_user_specified_name	8056489:'#
!
_user_specified_name	8056487:'#
!
_user_specified_name	8056460:'#
!
_user_specified_name	8056458:'
#
!
_user_specified_name	8056445:'	#
!
_user_specified_name	8056443:'#
!
_user_specified_name	8056416:'#
!
_user_specified_name	8056414:'#
!
_user_specified_name	8056399:'#
!
_user_specified_name	8056397:'#
!
_user_specified_name	8056382:'#
!
_user_specified_name	8056380:'#
!
_user_specified_name	8056365:'#
!
_user_specified_name	8056363:V R
/
_output_shapes
:€€€€€€€€€7/

_user_specified_nameinput
®
D
(__inference_pool_1_layer_call_fn_8057046

inputs
identity—
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pool_1_layer_call_and_return_conditional_losses_8055954Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
»
b
F__inference_flatten_1_layer_call_and_return_conditional_losses_8057142

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€∞  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€∞	Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€∞	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€<:W S
/
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs"нL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ѓ
serving_defaultЫ
C
input_18
serving_default_input_1:0€€€€€€€€€7/8
output_1,
StatefulPartitionedCall:0	€€€€€€€€€tensorflow/serving/predict:™ћ
м
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
model_1
	model_2


signatures"
_tf_keras_model
ц
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
 21
!22
"23
#24
$25
%26
&27"
trackable_list_wrapper
ц
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
 21
!22
"23
#24
$25
%26
&27"
trackable_list_wrapper
 "
trackable_list_wrapper
 
'non_trainable_variables

(layers
)metrics
*layer_regularization_losses
+layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ћ
,trace_0
-trace_12Ф
-__inference_good_net_28_layer_call_fn_8056892
-__inference_good_net_28_layer_call_fn_8056953≥
ђ≤®
FullArgSpec
argsЪ
jdata
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 z,trace_0z-trace_1
Б
.trace_0
/trace_12 
H__inference_good_net_28_layer_call_and_return_conditional_losses_8056760
H__inference_good_net_28_layer_call_and_return_conditional_losses_8056831≥
ђ≤®
FullArgSpec
argsЪ
jdata
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining%
kwonlydefaults™

trainingp 
annotations™ *
 z.trace_0z/trace_1
ЌB 
"__inference__wrapped_model_8055949input_1"Ш
С≤Н
FullArgSpec
argsЪ

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
і
0layer-0
1layer_with_weights-0
1layer-1
2layer-2
3layer_with_weights-1
3layer-3
4layer-4
5layer_with_weights-2
5layer-5
6layer-6
7layer_with_weights-3
7layer-7
8layer-8
9layer-9
:layer_with_weights-4
:layer-10
;layer_with_weights-5
;layer-11
<layer-12
=layer-13
>layer_with_weights-6
>layer-14
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses
E	optimizer"
_tf_keras_network
•
Flayer-0
Glayer_with_weights-0
Glayer-1
Hlayer-2
Ilayer_with_weights-1
Ilayer-3
Jlayer-4
Klayer_with_weights-2
Klayer-5
Llayer-6
Mlayer_with_weights-3
Mlayer-7
Nlayer-8
Olayer-9
Player_with_weights-4
Player-10
Qlayer_with_weights-5
Qlayer-11
Rlayer-12
Slayer-13
Tlayer_with_weights-6
Tlayer-14
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_network
,
[serving_default"
signature_map
':%2conv_1/kernel
:2conv_1/bias
':%(2conv_2/kernel
:(2conv_2/bias
':%(<2conv_3/kernel
:<2conv_3/bias
':%<P2conv_4/kernel
:P2conv_4/bias
:
∞	†2fc_1/kernel
:†2	fc_1/bias
:
ј†2fc_2/kernel
:†2	fc_2/bias
!:
†Г
2output/kernel
:Г
2output/bias
':%2conv_1/kernel
:2conv_1/bias
':%(2conv_2/kernel
:(2conv_2/bias
':%(<2conv_3/kernel
:<2conv_3/bias
':%<P2conv_4/kernel
:P2conv_4/bias
:
∞	†2fc_1/kernel
:†2	fc_1/bias
:
ј†2fc_2/kernel
:†2	fc_2/bias
!:
†Г
2output/kernel
:Г
2output/bias
 "
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
вBя
-__inference_good_net_28_layer_call_fn_8056892input_1"Ґ
Ы≤Ч
FullArgSpec
argsЪ
jdata
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining
kwonlydefaults
 
annotations™ *
 
вBя
-__inference_good_net_28_layer_call_fn_8056953input_1"Ґ
Ы≤Ч
FullArgSpec
argsЪ
jdata
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining
kwonlydefaults
 
annotations™ *
 
эBъ
H__inference_good_net_28_layer_call_and_return_conditional_losses_8056760input_1"Ґ
Ы≤Ч
FullArgSpec
argsЪ
jdata
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining
kwonlydefaults
 
annotations™ *
 
эBъ
H__inference_good_net_28_layer_call_and_return_conditional_losses_8056831input_1"Ґ
Ы≤Ч
FullArgSpec
argsЪ
jdata
varargs
 
varkw
 
defaults
 

kwonlyargsЪ

jtraining
kwonlydefaults
 
annotations™ *
 
"
_tf_keras_input_layer
Ё
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses

kernel
bias
 b_jit_compiled_convolution_op"
_tf_keras_layer
•
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

kernel
bias
 o_jit_compiled_convolution_op"
_tf_keras_layer
•
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses

kernel
bias
 |_jit_compiled_convolution_op"
_tf_keras_layer
®
}	variables
~trainable_variables
regularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses"
_tf_keras_layer
д
Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses

kernel
bias
!Й_jit_compiled_convolution_op"
_tf_keras_layer
Ђ
К	variables
Лtrainable_variables
Мregularization_losses
Н	keras_api
О__call__
+П&call_and_return_all_conditional_losses"
_tf_keras_layer
Ђ
Р	variables
Сtrainable_variables
Тregularization_losses
У	keras_api
Ф__call__
+Х&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
Ц	variables
Чtrainable_variables
Шregularization_losses
Щ	keras_api
Ъ__call__
+Ы&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
Ѕ
Ь	variables
Эtrainable_variables
Юregularization_losses
Я	keras_api
†__call__
+°&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
Ђ
Ґ	variables
£trainable_variables
§regularization_losses
•	keras_api
¶__call__
+І&call_and_return_all_conditional_losses"
_tf_keras_layer
Ђ
®	variables
©trainable_variables
™regularization_losses
Ђ	keras_api
ђ__call__
+≠&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
Ѓ	variables
ѓtrainable_variables
∞regularization_losses
±	keras_api
≤__call__
+≥&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
Ж
0
1
2
3
4
5
6
7
8
9
10
11
12
13"
trackable_list_wrapper
Ж
0
1
2
3
4
5
6
7
8
9
10
11
12
13"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
іnon_trainable_variables
µlayers
ґmetrics
 Јlayer_regularization_losses
Єlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
…
єtrace_0
Їtrace_12О
)__inference_model_1_layer_call_fn_8056202
)__inference_model_1_layer_call_fn_8056235µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zєtrace_0zЇtrace_1
€
їtrace_0
Љtrace_12ƒ
D__inference_model_1_layer_call_and_return_conditional_losses_8056123
D__inference_model_1_layer_call_and_return_conditional_losses_8056169µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zїtrace_0zЉtrace_1
р
	љiter
Њbeta_1
њbeta_2

јdecay
Ѕlearning_ratemтmуmфmхmцmчmшmщmъmыmьmэmюm€vАvБvВvГvДvЕvЖvЗvИvЙvКvЛvМvН"
	optimizer
"
_tf_keras_input_layer
д
¬	variables
√trainable_variables
ƒregularization_losses
≈	keras_api
∆__call__
+«&call_and_return_all_conditional_losses

kernel
bias
!»_jit_compiled_convolution_op"
_tf_keras_layer
Ђ
…	variables
 trainable_variables
Ћregularization_losses
ћ	keras_api
Ќ__call__
+ќ&call_and_return_all_conditional_losses"
_tf_keras_layer
д
ѕ	variables
–trainable_variables
—regularization_losses
“	keras_api
”__call__
+‘&call_and_return_all_conditional_losses

kernel
bias
!’_jit_compiled_convolution_op"
_tf_keras_layer
Ђ
÷	variables
„trainable_variables
Ўregularization_losses
ў	keras_api
Џ__call__
+џ&call_and_return_all_conditional_losses"
_tf_keras_layer
д
№	variables
Ёtrainable_variables
ёregularization_losses
я	keras_api
а__call__
+б&call_and_return_all_conditional_losses

kernel
bias
!в_jit_compiled_convolution_op"
_tf_keras_layer
Ђ
г	variables
дtrainable_variables
еregularization_losses
ж	keras_api
з__call__
+и&call_and_return_all_conditional_losses"
_tf_keras_layer
д
й	variables
кtrainable_variables
лregularization_losses
м	keras_api
н__call__
+о&call_and_return_all_conditional_losses

kernel
 bias
!п_jit_compiled_convolution_op"
_tf_keras_layer
Ђ
р	variables
сtrainable_variables
тregularization_losses
у	keras_api
ф__call__
+х&call_and_return_all_conditional_losses"
_tf_keras_layer
Ђ
ц	variables
чtrainable_variables
шregularization_losses
щ	keras_api
ъ__call__
+ы&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
ь	variables
эtrainable_variables
юregularization_losses
€	keras_api
А__call__
+Б&call_and_return_all_conditional_losses

!kernel
"bias"
_tf_keras_layer
Ѕ
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses

#kernel
$bias"
_tf_keras_layer
Ђ
И	variables
Йtrainable_variables
Кregularization_losses
Л	keras_api
М__call__
+Н&call_and_return_all_conditional_losses"
_tf_keras_layer
Ђ
О	variables
Пtrainable_variables
Рregularization_losses
С	keras_api
Т__call__
+У&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
Ф	variables
Хtrainable_variables
Цregularization_losses
Ч	keras_api
Ш__call__
+Щ&call_and_return_all_conditional_losses

%kernel
&bias"
_tf_keras_layer
Ж
0
1
2
3
4
5
6
 7
!8
"9
#10
$11
%12
&13"
trackable_list_wrapper
Ж
0
1
2
3
4
5
6
 7
!8
"9
#10
$11
%12
&13"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
…
Яtrace_0
†trace_12О
)__inference_model_1_layer_call_fn_8056572
)__inference_model_1_layer_call_fn_8056605µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЯtrace_0z†trace_1
€
°trace_0
Ґtrace_12ƒ
D__inference_model_1_layer_call_and_return_conditional_losses_8056493
D__inference_model_1_layer_call_and_return_conditional_losses_8056539µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z°trace_0zҐtrace_1
—Bќ
%__inference_signature_wrapper_8057015input_1"Щ
Т≤О
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ
	jinput_1
kwonlydefaults
 
annotations™ *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
£non_trainable_variables
§layers
•metrics
 ¶layer_regularization_losses
Іlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
д
®trace_02≈
(__inference_conv_1_layer_call_fn_8057030Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z®trace_0
€
©trace_02а
C__inference_conv_1_layer_call_and_return_conditional_losses_8057041Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z©trace_0
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
™non_trainable_variables
Ђlayers
ђmetrics
 ≠layer_regularization_losses
Ѓlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
д
ѓtrace_02≈
(__inference_pool_1_layer_call_fn_8057046Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zѓtrace_0
€
∞trace_02а
C__inference_pool_1_layer_call_and_return_conditional_losses_8057051Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z∞trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
±non_trainable_variables
≤layers
≥metrics
 іlayer_regularization_losses
µlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
д
ґtrace_02≈
(__inference_conv_2_layer_call_fn_8057060Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zґtrace_0
€
Јtrace_02а
C__inference_conv_2_layer_call_and_return_conditional_losses_8057071Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЈtrace_0
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Љlayer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
д
љtrace_02≈
(__inference_pool_2_layer_call_fn_8057076Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zљtrace_0
€
Њtrace_02а
C__inference_pool_2_layer_call_and_return_conditional_losses_8057081Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЊtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
њnon_trainable_variables
јlayers
Ѕmetrics
 ¬layer_regularization_losses
√layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
д
ƒtrace_02≈
(__inference_conv_3_layer_call_fn_8057090Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zƒtrace_0
€
≈trace_02а
C__inference_conv_3_layer_call_and_return_conditional_losses_8057101Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z≈trace_0
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
∆non_trainable_variables
«layers
»metrics
 …layer_regularization_losses
 layer_metrics
}	variables
~trainable_variables
regularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
д
Ћtrace_02≈
(__inference_pool_3_layer_call_fn_8057106Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЋtrace_0
€
ћtrace_02а
C__inference_pool_3_layer_call_and_return_conditional_losses_8057111Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zћtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Ќnon_trainable_variables
ќlayers
ѕmetrics
 –layer_regularization_losses
—layer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses"
_generic_user_object
д
“trace_02≈
(__inference_conv_4_layer_call_fn_8057120Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z“trace_0
€
”trace_02а
C__inference_conv_4_layer_call_and_return_conditional_losses_8057131Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z”trace_0
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
‘non_trainable_variables
’layers
÷metrics
 „layer_regularization_losses
Ўlayer_metrics
К	variables
Лtrainable_variables
Мregularization_losses
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses"
_generic_user_object
з
ўtrace_02»
+__inference_flatten_1_layer_call_fn_8057136Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zўtrace_0
В
Џtrace_02г
F__inference_flatten_1_layer_call_and_return_conditional_losses_8057142Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЏtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
џnon_trainable_variables
№layers
Ёmetrics
 ёlayer_regularization_losses
яlayer_metrics
Р	variables
Сtrainable_variables
Тregularization_losses
Ф__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses"
_generic_user_object
з
аtrace_02»
+__inference_flatten_2_layer_call_fn_8057147Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zаtrace_0
В
бtrace_02г
F__inference_flatten_2_layer_call_and_return_conditional_losses_8057153Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zбtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
вnon_trainable_variables
гlayers
дmetrics
 еlayer_regularization_losses
жlayer_metrics
Ц	variables
Чtrainable_variables
Шregularization_losses
Ъ__call__
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses"
_generic_user_object
в
зtrace_02√
&__inference_fc_1_layer_call_fn_8057162Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zзtrace_0
э
иtrace_02ё
A__inference_fc_1_layer_call_and_return_conditional_losses_8057172Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zиtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
Ь	variables
Эtrainable_variables
Юregularization_losses
†__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses"
_generic_user_object
в
оtrace_02√
&__inference_fc_2_layer_call_fn_8057181Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zоtrace_0
э
пtrace_02ё
A__inference_fc_2_layer_call_and_return_conditional_losses_8057191Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zпtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
Ґ	variables
£trainable_variables
§regularization_losses
¶__call__
+І&call_and_return_all_conditional_losses
'І"call_and_return_conditional_losses"
_generic_user_object
г
хtrace_02ƒ
'__inference_add_1_layer_call_fn_8057197Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zхtrace_0
ю
цtrace_02я
B__inference_add_1_layer_call_and_return_conditional_losses_8057203Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zцtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
®	variables
©trainable_variables
™regularization_losses
ђ__call__
+≠&call_and_return_all_conditional_losses
'≠"call_and_return_conditional_losses"
_generic_user_object
к
ьtrace_02Ћ
.__inference_activation_1_layer_call_fn_8057208Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zьtrace_0
Е
эtrace_02ж
I__inference_activation_1_layer_call_and_return_conditional_losses_8057213Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zэtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
юnon_trainable_variables
€layers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
Ѓ	variables
ѓtrainable_variables
∞regularization_losses
≤__call__
+≥&call_and_return_all_conditional_losses
'≥"call_and_return_conditional_losses"
_generic_user_object
д
Гtrace_02≈
(__inference_output_layer_call_fn_8057222Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zГtrace_0
€
Дtrace_02а
C__inference_output_layer_call_and_return_conditional_losses_8057233Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zДtrace_0
 "
trackable_list_wrapper
О
00
11
22
33
44
55
66
77
88
99
:10
;11
<12
=13
>14"
trackable_list_wrapper
0
Е0
Ж1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
жBг
)__inference_model_1_layer_call_fn_8056202input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
жBг
)__inference_model_1_layer_call_fn_8056235input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
D__inference_model_1_layer_call_and_return_conditional_losses_8056123input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
D__inference_model_1_layer_call_and_return_conditional_losses_8056169input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
:	 (2iter
: (2beta_1
: (2beta_2
: (2decay
: (2learning_rate
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
¬	variables
√trainable_variables
ƒregularization_losses
∆__call__
+«&call_and_return_all_conditional_losses
'«"call_and_return_conditional_losses"
_generic_user_object
д
Мtrace_02≈
(__inference_conv_1_layer_call_fn_8057242Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zМtrace_0
€
Нtrace_02а
C__inference_conv_1_layer_call_and_return_conditional_losses_8057253Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zНtrace_0
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
…	variables
 trainable_variables
Ћregularization_losses
Ќ__call__
+ќ&call_and_return_all_conditional_losses
'ќ"call_and_return_conditional_losses"
_generic_user_object
д
Уtrace_02≈
(__inference_pool_1_layer_call_fn_8057258Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zУtrace_0
€
Фtrace_02а
C__inference_pool_1_layer_call_and_return_conditional_losses_8057263Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zФtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
ѕ	variables
–trainable_variables
—regularization_losses
”__call__
+‘&call_and_return_all_conditional_losses
'‘"call_and_return_conditional_losses"
_generic_user_object
д
Ъtrace_02≈
(__inference_conv_2_layer_call_fn_8057272Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЪtrace_0
€
Ыtrace_02а
C__inference_conv_2_layer_call_and_return_conditional_losses_8057283Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЫtrace_0
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
†layer_metrics
÷	variables
„trainable_variables
Ўregularization_losses
Џ__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses"
_generic_user_object
д
°trace_02≈
(__inference_pool_2_layer_call_fn_8057288Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z°trace_0
€
Ґtrace_02а
C__inference_pool_2_layer_call_and_return_conditional_losses_8057293Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zҐtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
£non_trainable_variables
§layers
•metrics
 ¶layer_regularization_losses
Іlayer_metrics
№	variables
Ёtrainable_variables
ёregularization_losses
а__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses"
_generic_user_object
д
®trace_02≈
(__inference_conv_3_layer_call_fn_8057302Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z®trace_0
€
©trace_02а
C__inference_conv_3_layer_call_and_return_conditional_losses_8057313Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z©trace_0
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
™non_trainable_variables
Ђlayers
ђmetrics
 ≠layer_regularization_losses
Ѓlayer_metrics
г	variables
дtrainable_variables
еregularization_losses
з__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses"
_generic_user_object
д
ѓtrace_02≈
(__inference_pool_3_layer_call_fn_8057318Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zѓtrace_0
€
∞trace_02а
C__inference_pool_3_layer_call_and_return_conditional_losses_8057323Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z∞trace_0
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
±non_trainable_variables
≤layers
≥metrics
 іlayer_regularization_losses
µlayer_metrics
й	variables
кtrainable_variables
лregularization_losses
н__call__
+о&call_and_return_all_conditional_losses
'о"call_and_return_conditional_losses"
_generic_user_object
д
ґtrace_02≈
(__inference_conv_4_layer_call_fn_8057332Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zґtrace_0
€
Јtrace_02а
C__inference_conv_4_layer_call_and_return_conditional_losses_8057343Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЈtrace_0
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Љlayer_metrics
р	variables
сtrainable_variables
тregularization_losses
ф__call__
+х&call_and_return_all_conditional_losses
'х"call_and_return_conditional_losses"
_generic_user_object
з
љtrace_02»
+__inference_flatten_1_layer_call_fn_8057348Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zљtrace_0
В
Њtrace_02г
F__inference_flatten_1_layer_call_and_return_conditional_losses_8057354Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЊtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
њnon_trainable_variables
јlayers
Ѕmetrics
 ¬layer_regularization_losses
√layer_metrics
ц	variables
чtrainable_variables
шregularization_losses
ъ__call__
+ы&call_and_return_all_conditional_losses
'ы"call_and_return_conditional_losses"
_generic_user_object
з
ƒtrace_02»
+__inference_flatten_2_layer_call_fn_8057359Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zƒtrace_0
В
≈trace_02г
F__inference_flatten_2_layer_call_and_return_conditional_losses_8057365Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z≈trace_0
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
∆non_trainable_variables
«layers
»metrics
 …layer_regularization_losses
 layer_metrics
ь	variables
эtrainable_variables
юregularization_losses
А__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses"
_generic_user_object
в
Ћtrace_02√
&__inference_fc_1_layer_call_fn_8057374Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЋtrace_0
э
ћtrace_02ё
A__inference_fc_1_layer_call_and_return_conditional_losses_8057384Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zћtrace_0
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Ќnon_trainable_variables
ќlayers
ѕmetrics
 –layer_regularization_losses
—layer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
в
“trace_02√
&__inference_fc_2_layer_call_fn_8057393Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z“trace_0
э
”trace_02ё
A__inference_fc_2_layer_call_and_return_conditional_losses_8057403Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z”trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
‘non_trainable_variables
’layers
÷metrics
 „layer_regularization_losses
Ўlayer_metrics
И	variables
Йtrainable_variables
Кregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
г
ўtrace_02ƒ
'__inference_add_1_layer_call_fn_8057409Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zўtrace_0
ю
Џtrace_02я
B__inference_add_1_layer_call_and_return_conditional_losses_8057415Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЏtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
џnon_trainable_variables
№layers
Ёmetrics
 ёlayer_regularization_losses
яlayer_metrics
О	variables
Пtrainable_variables
Рregularization_losses
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses"
_generic_user_object
к
аtrace_02Ћ
.__inference_activation_1_layer_call_fn_8057420Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zаtrace_0
Е
бtrace_02ж
I__inference_activation_1_layer_call_and_return_conditional_losses_8057425Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zбtrace_0
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
вnon_trainable_variables
гlayers
дmetrics
 еlayer_regularization_losses
жlayer_metrics
Ф	variables
Хtrainable_variables
Цregularization_losses
Ш__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses"
_generic_user_object
д
зtrace_02≈
(__inference_output_layer_call_fn_8057434Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zзtrace_0
€
иtrace_02а
C__inference_output_layer_call_and_return_conditional_losses_8057445Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zиtrace_0
 "
trackable_list_wrapper
О
F0
G1
H2
I3
J4
K5
L6
M7
N8
O9
P10
Q11
R12
S13
T14"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
жBг
)__inference_model_1_layer_call_fn_8056572input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
жBг
)__inference_model_1_layer_call_fn_8056605input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
D__inference_model_1_layer_call_and_return_conditional_losses_8056493input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
D__inference_model_1_layer_call_and_return_conditional_losses_8056539input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
“Bѕ
(__inference_conv_1_layer_call_fn_8057030inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_conv_1_layer_call_and_return_conditional_losses_8057041inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
“Bѕ
(__inference_pool_1_layer_call_fn_8057046inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_pool_1_layer_call_and_return_conditional_losses_8057051inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
“Bѕ
(__inference_conv_2_layer_call_fn_8057060inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_conv_2_layer_call_and_return_conditional_losses_8057071inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
“Bѕ
(__inference_pool_2_layer_call_fn_8057076inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_pool_2_layer_call_and_return_conditional_losses_8057081inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
“Bѕ
(__inference_conv_3_layer_call_fn_8057090inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_conv_3_layer_call_and_return_conditional_losses_8057101inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
“Bѕ
(__inference_pool_3_layer_call_fn_8057106inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_pool_3_layer_call_and_return_conditional_losses_8057111inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
“Bѕ
(__inference_conv_4_layer_call_fn_8057120inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_conv_4_layer_call_and_return_conditional_losses_8057131inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
’B“
+__inference_flatten_1_layer_call_fn_8057136inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
рBн
F__inference_flatten_1_layer_call_and_return_conditional_losses_8057142inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
’B“
+__inference_flatten_2_layer_call_fn_8057147inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
рBн
F__inference_flatten_2_layer_call_and_return_conditional_losses_8057153inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
–BЌ
&__inference_fc_1_layer_call_fn_8057162inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
лBи
A__inference_fc_1_layer_call_and_return_conditional_losses_8057172inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
–BЌ
&__inference_fc_2_layer_call_fn_8057181inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
лBи
A__inference_fc_2_layer_call_and_return_conditional_losses_8057191inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЁBЏ
'__inference_add_1_layer_call_fn_8057197inputs_0inputs_1"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
B__inference_add_1_layer_call_and_return_conditional_losses_8057203inputs_0inputs_1"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЎB’
.__inference_activation_1_layer_call_fn_8057208inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
уBр
I__inference_activation_1_layer_call_and_return_conditional_losses_8057213inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
“Bѕ
(__inference_output_layer_call_fn_8057222inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_output_layer_call_and_return_conditional_losses_8057233inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
R
й	variables
к	keras_api

лtotal

мcount"
_tf_keras_metric
c
н	variables
о	keras_api

пtotal

рcount
с
_fn_kwargs"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
“Bѕ
(__inference_conv_1_layer_call_fn_8057242inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_conv_1_layer_call_and_return_conditional_losses_8057253inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
“Bѕ
(__inference_pool_1_layer_call_fn_8057258inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_pool_1_layer_call_and_return_conditional_losses_8057263inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
“Bѕ
(__inference_conv_2_layer_call_fn_8057272inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_conv_2_layer_call_and_return_conditional_losses_8057283inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
“Bѕ
(__inference_pool_2_layer_call_fn_8057288inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_pool_2_layer_call_and_return_conditional_losses_8057293inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
“Bѕ
(__inference_conv_3_layer_call_fn_8057302inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_conv_3_layer_call_and_return_conditional_losses_8057313inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
“Bѕ
(__inference_pool_3_layer_call_fn_8057318inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_pool_3_layer_call_and_return_conditional_losses_8057323inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
“Bѕ
(__inference_conv_4_layer_call_fn_8057332inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_conv_4_layer_call_and_return_conditional_losses_8057343inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
’B“
+__inference_flatten_1_layer_call_fn_8057348inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
рBн
F__inference_flatten_1_layer_call_and_return_conditional_losses_8057354inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
’B“
+__inference_flatten_2_layer_call_fn_8057359inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
рBн
F__inference_flatten_2_layer_call_and_return_conditional_losses_8057365inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
–BЌ
&__inference_fc_1_layer_call_fn_8057374inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
лBи
A__inference_fc_1_layer_call_and_return_conditional_losses_8057384inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
–BЌ
&__inference_fc_2_layer_call_fn_8057393inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
лBи
A__inference_fc_2_layer_call_and_return_conditional_losses_8057403inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЁBЏ
'__inference_add_1_layer_call_fn_8057409inputs_0inputs_1"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
B__inference_add_1_layer_call_and_return_conditional_losses_8057415inputs_0inputs_1"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЎB’
.__inference_activation_1_layer_call_fn_8057420inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
уBр
I__inference_activation_1_layer_call_and_return_conditional_losses_8057425inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
“Bѕ
(__inference_output_layer_call_fn_8057434inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_output_layer_call_and_return_conditional_losses_8057445inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
0
л0
м1"
trackable_list_wrapper
.
й	variables"
_generic_user_object
:  (2total
:  (2count
0
п0
р1"
trackable_list_wrapper
.
н	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
':%2conv_1/kernel/m
:2conv_1/bias/m
':%(2conv_2/kernel/m
:(2conv_2/bias/m
':%(<2conv_3/kernel/m
:<2conv_3/bias/m
':%<P2conv_4/kernel/m
:P2conv_4/bias/m
:
∞	†2fc_1/kernel/m
:†2fc_1/bias/m
:
ј†2fc_2/kernel/m
:†2fc_2/bias/m
!:
†Г
2output/kernel/m
:Г
2output/bias/m
':%2conv_1/kernel/v
:2conv_1/bias/v
':%(2conv_2/kernel/v
:(2conv_2/bias/v
':%(<2conv_3/kernel/v
:<2conv_3/bias/v
':%<P2conv_4/kernel/v
:P2conv_4/bias/v
:
∞	†2fc_1/kernel/v
:†2fc_1/bias/v
:
ј†2fc_2/kernel/v
:†2fc_2/bias/v
!:
†Г
2output/kernel/v
:Г
2output/bias/v∞
"__inference__wrapped_model_8055949Й !"#$%&8Ґ5
.Ґ+
)К&
input_1€€€€€€€€€7/
™ "/™,
*
output_1К
output_1€€€€€€€€€	Ѓ
I__inference_activation_1_layer_call_and_return_conditional_losses_8057213a0Ґ-
&Ґ#
!К
inputs€€€€€€€€€†
™ "-Ґ*
#К 
tensor_0€€€€€€€€€†
Ъ Ѓ
I__inference_activation_1_layer_call_and_return_conditional_losses_8057425a0Ґ-
&Ґ#
!К
inputs€€€€€€€€€†
™ "-Ґ*
#К 
tensor_0€€€€€€€€€†
Ъ И
.__inference_activation_1_layer_call_fn_8057208V0Ґ-
&Ґ#
!К
inputs€€€€€€€€€†
™ ""К
unknown€€€€€€€€€†И
.__inference_activation_1_layer_call_fn_8057420V0Ґ-
&Ґ#
!К
inputs€€€€€€€€€†
™ ""К
unknown€€€€€€€€€†‘
B__inference_add_1_layer_call_and_return_conditional_losses_8057203Н\ҐY
RҐO
MЪJ
#К 
inputs_0€€€€€€€€€†
#К 
inputs_1€€€€€€€€€†
™ "-Ґ*
#К 
tensor_0€€€€€€€€€†
Ъ ‘
B__inference_add_1_layer_call_and_return_conditional_losses_8057415Н\ҐY
RҐO
MЪJ
#К 
inputs_0€€€€€€€€€†
#К 
inputs_1€€€€€€€€€†
™ "-Ґ*
#К 
tensor_0€€€€€€€€€†
Ъ Ѓ
'__inference_add_1_layer_call_fn_8057197В\ҐY
RҐO
MЪJ
#К 
inputs_0€€€€€€€€€†
#К 
inputs_1€€€€€€€€€†
™ ""К
unknown€€€€€€€€€†Ѓ
'__inference_add_1_layer_call_fn_8057409В\ҐY
RҐO
MЪJ
#К 
inputs_0€€€€€€€€€†
#К 
inputs_1€€€€€€€€€†
™ ""К
unknown€€€€€€€€€†Ї
C__inference_conv_1_layer_call_and_return_conditional_losses_8057041s7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€7/
™ "4Ґ1
*К'
tensor_0€€€€€€€€€4,
Ъ Ї
C__inference_conv_1_layer_call_and_return_conditional_losses_8057253s7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€7/
™ "4Ґ1
*К'
tensor_0€€€€€€€€€4,
Ъ Ф
(__inference_conv_1_layer_call_fn_8057030h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€7/
™ ")К&
unknown€€€€€€€€€4,Ф
(__inference_conv_1_layer_call_fn_8057242h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€7/
™ ")К&
unknown€€€€€€€€€4,Ї
C__inference_conv_2_layer_call_and_return_conditional_losses_8057071s7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ "4Ґ1
*К'
tensor_0€€€€€€€€€(
Ъ Ї
C__inference_conv_2_layer_call_and_return_conditional_losses_8057283s7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ "4Ґ1
*К'
tensor_0€€€€€€€€€(
Ъ Ф
(__inference_conv_2_layer_call_fn_8057060h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ ")К&
unknown€€€€€€€€€(Ф
(__inference_conv_2_layer_call_fn_8057272h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ ")К&
unknown€€€€€€€€€(Ї
C__inference_conv_3_layer_call_and_return_conditional_losses_8057101s7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
(
™ "4Ґ1
*К'
tensor_0€€€€€€€€€
<
Ъ Ї
C__inference_conv_3_layer_call_and_return_conditional_losses_8057313s7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
(
™ "4Ґ1
*К'
tensor_0€€€€€€€€€
<
Ъ Ф
(__inference_conv_3_layer_call_fn_8057090h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
(
™ ")К&
unknown€€€€€€€€€
<Ф
(__inference_conv_3_layer_call_fn_8057302h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
(
™ ")К&
unknown€€€€€€€€€
<Ї
C__inference_conv_4_layer_call_and_return_conditional_losses_8057131s7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€<
™ "4Ґ1
*К'
tensor_0€€€€€€€€€P
Ъ Ї
C__inference_conv_4_layer_call_and_return_conditional_losses_8057343s 7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€<
™ "4Ґ1
*К'
tensor_0€€€€€€€€€P
Ъ Ф
(__inference_conv_4_layer_call_fn_8057120h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€<
™ ")К&
unknown€€€€€€€€€PФ
(__inference_conv_4_layer_call_fn_8057332h 7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€<
™ ")К&
unknown€€€€€€€€€P™
A__inference_fc_1_layer_call_and_return_conditional_losses_8057172e0Ґ-
&Ґ#
!К
inputs€€€€€€€€€∞	
™ "-Ґ*
#К 
tensor_0€€€€€€€€€†
Ъ ™
A__inference_fc_1_layer_call_and_return_conditional_losses_8057384e!"0Ґ-
&Ґ#
!К
inputs€€€€€€€€€∞	
™ "-Ґ*
#К 
tensor_0€€€€€€€€€†
Ъ Д
&__inference_fc_1_layer_call_fn_8057162Z0Ґ-
&Ґ#
!К
inputs€€€€€€€€€∞	
™ ""К
unknown€€€€€€€€€†Д
&__inference_fc_1_layer_call_fn_8057374Z!"0Ґ-
&Ґ#
!К
inputs€€€€€€€€€∞	
™ ""К
unknown€€€€€€€€€†™
A__inference_fc_2_layer_call_and_return_conditional_losses_8057191e0Ґ-
&Ґ#
!К
inputs€€€€€€€€€ј
™ "-Ґ*
#К 
tensor_0€€€€€€€€€†
Ъ ™
A__inference_fc_2_layer_call_and_return_conditional_losses_8057403e#$0Ґ-
&Ґ#
!К
inputs€€€€€€€€€ј
™ "-Ґ*
#К 
tensor_0€€€€€€€€€†
Ъ Д
&__inference_fc_2_layer_call_fn_8057181Z0Ґ-
&Ґ#
!К
inputs€€€€€€€€€ј
™ ""К
unknown€€€€€€€€€†Д
&__inference_fc_2_layer_call_fn_8057393Z#$0Ґ-
&Ґ#
!К
inputs€€€€€€€€€ј
™ ""К
unknown€€€€€€€€€†≤
F__inference_flatten_1_layer_call_and_return_conditional_losses_8057142h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€<
™ "-Ґ*
#К 
tensor_0€€€€€€€€€∞	
Ъ ≤
F__inference_flatten_1_layer_call_and_return_conditional_losses_8057354h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€<
™ "-Ґ*
#К 
tensor_0€€€€€€€€€∞	
Ъ М
+__inference_flatten_1_layer_call_fn_8057136]7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€<
™ ""К
unknown€€€€€€€€€∞	М
+__inference_flatten_1_layer_call_fn_8057348]7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€<
™ ""К
unknown€€€€€€€€€∞	≤
F__inference_flatten_2_layer_call_and_return_conditional_losses_8057153h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€P
™ "-Ґ*
#К 
tensor_0€€€€€€€€€ј
Ъ ≤
F__inference_flatten_2_layer_call_and_return_conditional_losses_8057365h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€P
™ "-Ґ*
#К 
tensor_0€€€€€€€€€ј
Ъ М
+__inference_flatten_2_layer_call_fn_8057147]7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€P
™ ""К
unknown€€€€€€€€€јМ
+__inference_flatten_2_layer_call_fn_8057359]7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€P
™ ""К
unknown€€€€€€€€€јя
H__inference_good_net_28_layer_call_and_return_conditional_losses_8056760Т !"#$%&HҐE
.Ґ+
)К&
input_1€€€€€€€€€7/
™

trainingp"(Ґ%
К
tensor_0€€€€€€€€€	
Ъ я
H__inference_good_net_28_layer_call_and_return_conditional_losses_8056831Т !"#$%&HҐE
.Ґ+
)К&
input_1€€€€€€€€€7/
™

trainingp "(Ґ%
К
tensor_0€€€€€€€€€	
Ъ є
-__inference_good_net_28_layer_call_fn_8056892З !"#$%&HҐE
.Ґ+
)К&
input_1€€€€€€€€€7/
™

trainingp"К
unknown€€€€€€€€€	є
-__inference_good_net_28_layer_call_fn_8056953З !"#$%&HҐE
.Ґ+
)К&
input_1€€€€€€€€€7/
™

trainingp "К
unknown€€€€€€€€€	«
D__inference_model_1_layer_call_and_return_conditional_losses_8056123>Ґ;
4Ґ1
'К$
input€€€€€€€€€7/
p

 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€Г

Ъ «
D__inference_model_1_layer_call_and_return_conditional_losses_8056169>Ґ;
4Ґ1
'К$
input€€€€€€€€€7/
p 

 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€Г

Ъ «
D__inference_model_1_layer_call_and_return_conditional_losses_8056493 !"#$%&>Ґ;
4Ґ1
'К$
input€€€€€€€€€7/
p

 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€Г

Ъ «
D__inference_model_1_layer_call_and_return_conditional_losses_8056539 !"#$%&>Ґ;
4Ґ1
'К$
input€€€€€€€€€7/
p 

 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€Г

Ъ °
)__inference_model_1_layer_call_fn_8056202t>Ґ;
4Ґ1
'К$
input€€€€€€€€€7/
p

 
™ ""К
unknown€€€€€€€€€Г
°
)__inference_model_1_layer_call_fn_8056235t>Ґ;
4Ґ1
'К$
input€€€€€€€€€7/
p 

 
™ ""К
unknown€€€€€€€€€Г
°
)__inference_model_1_layer_call_fn_8056572t !"#$%&>Ґ;
4Ґ1
'К$
input€€€€€€€€€7/
p

 
™ ""К
unknown€€€€€€€€€Г
°
)__inference_model_1_layer_call_fn_8056605t !"#$%&>Ґ;
4Ґ1
'К$
input€€€€€€€€€7/
p 

 
™ ""К
unknown€€€€€€€€€Г
ђ
C__inference_output_layer_call_and_return_conditional_losses_8057233e0Ґ-
&Ґ#
!К
inputs€€€€€€€€€†
™ "-Ґ*
#К 
tensor_0€€€€€€€€€Г

Ъ ђ
C__inference_output_layer_call_and_return_conditional_losses_8057445e%&0Ґ-
&Ґ#
!К
inputs€€€€€€€€€†
™ "-Ґ*
#К 
tensor_0€€€€€€€€€Г

Ъ Ж
(__inference_output_layer_call_fn_8057222Z0Ґ-
&Ґ#
!К
inputs€€€€€€€€€†
™ ""К
unknown€€€€€€€€€Г
Ж
(__inference_output_layer_call_fn_8057434Z%&0Ґ-
&Ґ#
!К
inputs€€€€€€€€€†
™ ""К
unknown€€€€€€€€€Г
н
C__inference_pool_1_layer_call_and_return_conditional_losses_8057051•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ н
C__inference_pool_1_layer_call_and_return_conditional_losses_8057263•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ «
(__inference_pool_1_layer_call_fn_8057046ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€«
(__inference_pool_1_layer_call_fn_8057258ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€н
C__inference_pool_2_layer_call_and_return_conditional_losses_8057081•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ н
C__inference_pool_2_layer_call_and_return_conditional_losses_8057293•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ «
(__inference_pool_2_layer_call_fn_8057076ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€«
(__inference_pool_2_layer_call_fn_8057288ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€н
C__inference_pool_3_layer_call_and_return_conditional_losses_8057111•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ н
C__inference_pool_3_layer_call_and_return_conditional_losses_8057323•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ «
(__inference_pool_3_layer_call_fn_8057106ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€«
(__inference_pool_3_layer_call_fn_8057318ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Њ
%__inference_signature_wrapper_8057015Ф !"#$%&CҐ@
Ґ 
9™6
4
input_1)К&
input_1€€€€€€€€€7/"/™,
*
output_1К
output_1€€€€€€€€€	