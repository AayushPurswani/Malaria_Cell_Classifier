ПД
Ъщ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
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
√
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%╖╤8"&
exponential_avg_factorfloat%  А?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
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
.
Rsqrt
x"T
y"T"
Ttype:

2
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
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
┴
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
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.11.02v2.11.0-rc2-17-gd5b57ca93e58Ию
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
~
Adam/v/dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_8/bias
w
'Adam/v/dense_8/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_8/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_8/bias
w
'Adam/m/dense_8/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_8/bias*
_output_shapes
:*
dtype0
З
Adam/v/dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/v/dense_8/kernel
А
)Adam/v/dense_8/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_8/kernel*
_output_shapes
:	А*
dtype0
З
Adam/m/dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/m/dense_8/kernel
А
)Adam/m/dense_8/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_8/kernel*
_output_shapes
:	А*
dtype0
Э
"Adam/v/batch_normalization_11/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/v/batch_normalization_11/beta
Ц
6Adam/v/batch_normalization_11/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_11/beta*
_output_shapes	
:А*
dtype0
Э
"Adam/m/batch_normalization_11/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/m/batch_normalization_11/beta
Ц
6Adam/m/batch_normalization_11/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_11/beta*
_output_shapes	
:А*
dtype0
Я
#Adam/v/batch_normalization_11/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*4
shared_name%#Adam/v/batch_normalization_11/gamma
Ш
7Adam/v/batch_normalization_11/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_11/gamma*
_output_shapes	
:А*
dtype0
Я
#Adam/m/batch_normalization_11/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*4
shared_name%#Adam/m/batch_normalization_11/gamma
Ш
7Adam/m/batch_normalization_11/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_11/gamma*
_output_shapes	
:А*
dtype0

Adam/v/dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/v/dense_7/bias
x
'Adam/v/dense_7/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_7/bias*
_output_shapes	
:А*
dtype0

Adam/m/dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/m/dense_7/bias
x
'Adam/m/dense_7/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_7/bias*
_output_shapes	
:А*
dtype0
И
Adam/v/dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*&
shared_nameAdam/v/dense_7/kernel
Б
)Adam/v/dense_7/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_7/kernel* 
_output_shapes
:
АА*
dtype0
И
Adam/m/dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*&
shared_nameAdam/m/dense_7/kernel
Б
)Adam/m/dense_7/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_7/kernel* 
_output_shapes
:
АА*
dtype0
Э
"Adam/v/batch_normalization_10/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/v/batch_normalization_10/beta
Ц
6Adam/v/batch_normalization_10/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_10/beta*
_output_shapes	
:А*
dtype0
Э
"Adam/m/batch_normalization_10/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/m/batch_normalization_10/beta
Ц
6Adam/m/batch_normalization_10/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_10/beta*
_output_shapes	
:А*
dtype0
Я
#Adam/v/batch_normalization_10/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*4
shared_name%#Adam/v/batch_normalization_10/gamma
Ш
7Adam/v/batch_normalization_10/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_10/gamma*
_output_shapes	
:А*
dtype0
Я
#Adam/m/batch_normalization_10/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*4
shared_name%#Adam/m/batch_normalization_10/gamma
Ш
7Adam/m/batch_normalization_10/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_10/gamma*
_output_shapes	
:А*
dtype0

Adam/v/dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/v/dense_6/bias
x
'Adam/v/dense_6/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_6/bias*
_output_shapes	
:А*
dtype0

Adam/m/dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/m/dense_6/bias
x
'Adam/m/dense_6/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_6/bias*
_output_shapes	
:А*
dtype0
И
Adam/v/dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
А@А*&
shared_nameAdam/v/dense_6/kernel
Б
)Adam/v/dense_6/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_6/kernel* 
_output_shapes
:
А@А*
dtype0
И
Adam/m/dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
А@А*&
shared_nameAdam/m/dense_6/kernel
Б
)Adam/m/dense_6/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_6/kernel* 
_output_shapes
:
А@А*
dtype0
Ъ
!Adam/v/batch_normalization_9/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/v/batch_normalization_9/beta
У
5Adam/v/batch_normalization_9/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_9/beta*
_output_shapes
: *
dtype0
Ъ
!Adam/m/batch_normalization_9/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/m/batch_normalization_9/beta
У
5Adam/m/batch_normalization_9/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_9/beta*
_output_shapes
: *
dtype0
Ь
"Adam/v/batch_normalization_9/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/v/batch_normalization_9/gamma
Х
6Adam/v/batch_normalization_9/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_9/gamma*
_output_shapes
: *
dtype0
Ь
"Adam/m/batch_normalization_9/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/m/batch_normalization_9/gamma
Х
6Adam/m/batch_normalization_9/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_9/gamma*
_output_shapes
: *
dtype0
А
Adam/v/conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/v/conv2d_5/bias
y
(Adam/v/conv2d_5/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_5/bias*
_output_shapes
: *
dtype0
А
Adam/m/conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/m/conv2d_5/bias
y
(Adam/m/conv2d_5/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_5/bias*
_output_shapes
: *
dtype0
Р
Adam/v/conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameAdam/v/conv2d_5/kernel
Й
*Adam/v/conv2d_5/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_5/kernel*&
_output_shapes
:  *
dtype0
Р
Adam/m/conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameAdam/m/conv2d_5/kernel
Й
*Adam/m/conv2d_5/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_5/kernel*&
_output_shapes
:  *
dtype0
Ъ
!Adam/v/batch_normalization_8/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/v/batch_normalization_8/beta
У
5Adam/v/batch_normalization_8/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_8/beta*
_output_shapes
: *
dtype0
Ъ
!Adam/m/batch_normalization_8/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/m/batch_normalization_8/beta
У
5Adam/m/batch_normalization_8/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_8/beta*
_output_shapes
: *
dtype0
Ь
"Adam/v/batch_normalization_8/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/v/batch_normalization_8/gamma
Х
6Adam/v/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_8/gamma*
_output_shapes
: *
dtype0
Ь
"Adam/m/batch_normalization_8/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/m/batch_normalization_8/gamma
Х
6Adam/m/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_8/gamma*
_output_shapes
: *
dtype0
А
Adam/v/conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/v/conv2d_4/bias
y
(Adam/v/conv2d_4/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_4/bias*
_output_shapes
: *
dtype0
А
Adam/m/conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/m/conv2d_4/bias
y
(Adam/m/conv2d_4/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_4/bias*
_output_shapes
: *
dtype0
Р
Adam/v/conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/v/conv2d_4/kernel
Й
*Adam/v/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_4/kernel*&
_output_shapes
: *
dtype0
Р
Adam/m/conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/m/conv2d_4/kernel
Й
*Adam/m/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_4/kernel*&
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
p
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_8/bias
i
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes
:*
dtype0
y
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_namedense_8/kernel
r
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*
_output_shapes
:	А*
dtype0
е
&batch_normalization_11/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*7
shared_name(&batch_normalization_11/moving_variance
Ю
:batch_normalization_11/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_11/moving_variance*
_output_shapes	
:А*
dtype0
Э
"batch_normalization_11/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"batch_normalization_11/moving_mean
Ц
6batch_normalization_11/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_11/moving_mean*
_output_shapes	
:А*
dtype0
П
batch_normalization_11/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namebatch_normalization_11/beta
И
/batch_normalization_11/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_11/beta*
_output_shapes	
:А*
dtype0
С
batch_normalization_11/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*-
shared_namebatch_normalization_11/gamma
К
0batch_normalization_11/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_11/gamma*
_output_shapes	
:А*
dtype0
q
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_7/bias
j
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes	
:А*
dtype0
z
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*
shared_namedense_7/kernel
s
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel* 
_output_shapes
:
АА*
dtype0
е
&batch_normalization_10/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*7
shared_name(&batch_normalization_10/moving_variance
Ю
:batch_normalization_10/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_10/moving_variance*
_output_shapes	
:А*
dtype0
Э
"batch_normalization_10/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"batch_normalization_10/moving_mean
Ц
6batch_normalization_10/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_10/moving_mean*
_output_shapes	
:А*
dtype0
П
batch_normalization_10/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namebatch_normalization_10/beta
И
/batch_normalization_10/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_10/beta*
_output_shapes	
:А*
dtype0
С
batch_normalization_10/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*-
shared_namebatch_normalization_10/gamma
К
0batch_normalization_10/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_10/gamma*
_output_shapes	
:А*
dtype0
q
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_6/bias
j
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes	
:А*
dtype0
z
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
А@А*
shared_namedense_6/kernel
s
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel* 
_output_shapes
:
А@А*
dtype0
в
%batch_normalization_9/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%batch_normalization_9/moving_variance
Ы
9batch_normalization_9/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_9/moving_variance*
_output_shapes
: *
dtype0
Ъ
!batch_normalization_9/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!batch_normalization_9/moving_mean
У
5batch_normalization_9/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_9/moving_mean*
_output_shapes
: *
dtype0
М
batch_normalization_9/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namebatch_normalization_9/beta
Е
.batch_normalization_9/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_9/beta*
_output_shapes
: *
dtype0
О
batch_normalization_9/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_9/gamma
З
/batch_normalization_9/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_9/gamma*
_output_shapes
: *
dtype0
r
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
: *
dtype0
В
conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:  *
dtype0
в
%batch_normalization_8/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%batch_normalization_8/moving_variance
Ы
9batch_normalization_8/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_8/moving_variance*
_output_shapes
: *
dtype0
Ъ
!batch_normalization_8/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!batch_normalization_8/moving_mean
У
5batch_normalization_8/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_8/moving_mean*
_output_shapes
: *
dtype0
М
batch_normalization_8/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namebatch_normalization_8/beta
Е
.batch_normalization_8/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_8/beta*
_output_shapes
: *
dtype0
О
batch_normalization_8/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_8/gamma
З
/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_8/gamma*
_output_shapes
: *
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
: *
dtype0
В
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
: *
dtype0
К
serving_default_input_3Placeholder*/
_output_shapes
:         @@*
dtype0*$
shape:         @@
Ч
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3conv2d_4/kernelconv2d_4/biasbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_varianceconv2d_5/kernelconv2d_5/biasbatch_normalization_9/gammabatch_normalization_9/beta!batch_normalization_9/moving_mean%batch_normalization_9/moving_variancedense_6/kerneldense_6/bias&batch_normalization_10/moving_variancebatch_normalization_10/gamma"batch_normalization_10/moving_meanbatch_normalization_10/betadense_7/kerneldense_7/bias&batch_normalization_11/moving_variancebatch_normalization_11/gamma"batch_normalization_11/moving_meanbatch_normalization_11/betadense_8/kerneldense_8/bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_468559

NoOpNoOp
·Щ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*┤Щ
valueйЩBеЩ BЭЩ
Ъ
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer-12
layer_with_weights-6
layer-13
layer_with_weights-7
layer-14
layer-15
layer_with_weights-8
layer-16
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
╚
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses

!kernel
"bias
 #_jit_compiled_convolution_op*
О
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses* 
╒
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0axis
	1gamma
2beta
3moving_mean
4moving_variance*
е
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses
;_random_generator* 
╚
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

Bkernel
Cbias
 D_jit_compiled_convolution_op*
О
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses* 
╒
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses
Qaxis
	Rgamma
Sbeta
Tmoving_mean
Umoving_variance*
е
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses
\_random_generator* 
О
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses* 
ж
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses

ikernel
jbias*
╒
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses
qaxis
	rgamma
sbeta
tmoving_mean
umoving_variance*
е
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses
|_random_generator* 
л
}	variables
~trainable_variables
regularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses
Гkernel
	Дbias*
р
Е	variables
Жtrainable_variables
Зregularization_losses
И	keras_api
Й__call__
+К&call_and_return_all_conditional_losses
	Лaxis

Мgamma
	Нbeta
Оmoving_mean
Пmoving_variance*
м
Р	variables
Сtrainable_variables
Тregularization_losses
У	keras_api
Ф__call__
+Х&call_and_return_all_conditional_losses
Ц_random_generator* 
о
Ч	variables
Шtrainable_variables
Щregularization_losses
Ъ	keras_api
Ы__call__
+Ь&call_and_return_all_conditional_losses
Эkernel
	Юbias*
╥
!0
"1
12
23
34
45
B6
C7
R8
S9
T10
U11
i12
j13
r14
s15
t16
u17
Г18
Д19
М20
Н21
О22
П23
Э24
Ю25*
Р
!0
"1
12
23
B4
C5
R6
S7
i8
j9
r10
s11
Г12
Д13
М14
Н15
Э16
Ю17*
* 
╡
Яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
дtrace_0
еtrace_1
жtrace_2
зtrace_3* 
:
иtrace_0
йtrace_1
кtrace_2
лtrace_3* 
* 
И
м
_variables
н_iterations
о_learning_rate
п_index_dict
░
_momentums
▒_velocities
▓_update_step_xla*

│serving_default* 

!0
"1*

!0
"1*
* 
Ш
┤non_trainable_variables
╡layers
╢metrics
 ╖layer_regularization_losses
╕layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*

╣trace_0* 

║trace_0* 
_Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
╗non_trainable_variables
╝layers
╜metrics
 ╛layer_regularization_losses
┐layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses* 

└trace_0* 

┴trace_0* 
 
10
21
32
43*

10
21*
* 
Ш
┬non_trainable_variables
├layers
─metrics
 ┼layer_regularization_losses
╞layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

╟trace_0
╚trace_1* 

╔trace_0
╩trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_8/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_8/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_8/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_8/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
╦non_trainable_variables
╠layers
═metrics
 ╬layer_regularization_losses
╧layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses* 

╨trace_0
╤trace_1* 

╥trace_0
╙trace_1* 
* 

B0
C1*

B0
C1*
* 
Ш
╘non_trainable_variables
╒layers
╓metrics
 ╫layer_regularization_losses
╪layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*

┘trace_0* 

┌trace_0* 
_Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
█non_trainable_variables
▄layers
▌metrics
 ▐layer_regularization_losses
▀layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses* 

рtrace_0* 

сtrace_0* 
 
R0
S1
T2
U3*

R0
S1*
* 
Ш
тnon_trainable_variables
уlayers
фmetrics
 хlayer_regularization_losses
цlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses*

чtrace_0
шtrace_1* 

щtrace_0
ъtrace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_9/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_9/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_9/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_9/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
яlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses* 

Ёtrace_0
ёtrace_1* 

Єtrace_0
єtrace_1* 
* 
* 
* 
* 
Ц
Їnon_trainable_variables
їlayers
Ўmetrics
 ўlayer_regularization_losses
°layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses* 

∙trace_0* 

·trace_0* 

i0
j1*

i0
j1*
* 
Ш
√non_trainable_variables
№layers
¤metrics
 ■layer_regularization_losses
 layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses*

Аtrace_0* 

Бtrace_0* 
^X
VARIABLE_VALUEdense_6/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_6/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
 
r0
s1
t2
u3*

r0
s1*
* 
Ш
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses*

Зtrace_0
Иtrace_1* 

Йtrace_0
Кtrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_10/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_10/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_10/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_10/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses* 

Рtrace_0
Сtrace_1* 

Тtrace_0
Уtrace_1* 
* 

Г0
Д1*

Г0
Д1*
* 
Ы
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
}	variables
~trainable_variables
regularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses*

Щtrace_0* 

Ъtrace_0* 
^X
VARIABLE_VALUEdense_7/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_7/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
$
М0
Н1
О2
П3*

М0
Н1*
* 
Ю
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
Е	variables
Жtrainable_variables
Зregularization_losses
Й__call__
+К&call_and_return_all_conditional_losses
'К"call_and_return_conditional_losses*

аtrace_0
бtrace_1* 

вtrace_0
гtrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_11/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_11/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_11/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_11/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ь
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
Р	variables
Сtrainable_variables
Тregularization_losses
Ф__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses* 

йtrace_0
кtrace_1* 

лtrace_0
мtrace_1* 
* 

Э0
Ю1*

Э0
Ю1*
* 
Ю
нnon_trainable_variables
оlayers
пmetrics
 ░layer_regularization_losses
▒layer_metrics
Ч	variables
Шtrainable_variables
Щregularization_losses
Ы__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses*

▓trace_0* 

│trace_0* 
^X
VARIABLE_VALUEdense_8/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_8/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
>
30
41
T2
U3
t4
u5
О6
П7*
В
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16*

┤0
╡1*
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
╟
н0
╢1
╖2
╕3
╣4
║5
╗6
╝7
╜8
╛9
┐10
└11
┴12
┬13
├14
─15
┼16
╞17
╟18
╚19
╔20
╩21
╦22
╠23
═24
╬25
╧26
╨27
╤28
╥29
╙30
╘31
╒32
╓33
╫34
╪35
┘36*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
Ь
╢0
╕1
║2
╝3
╛4
└5
┬6
─7
╞8
╚9
╩10
╠11
╬12
╨13
╥14
╘15
╓16
╪17*
Ь
╖0
╣1
╗2
╜3
┐4
┴5
├6
┼7
╟8
╔9
╦10
═11
╧12
╤13
╙14
╒15
╫16
┘17*
Ж
┌trace_0
█trace_1
▄trace_2
▌trace_3
▐trace_4
▀trace_5
рtrace_6
сtrace_7
тtrace_8
уtrace_9
фtrace_10
хtrace_11
цtrace_12
чtrace_13
шtrace_14
щtrace_15
ъtrace_16
ыtrace_17* 
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

30
41*
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

T0
U1*
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

t0
u1*
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
О0
П1*
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
ь	variables
э	keras_api

юtotal

яcount*
M
Ё	variables
ё	keras_api

Єtotal

єcount
Ї
_fn_kwargs*
a[
VARIABLE_VALUEAdam/m/conv2d_4/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_4/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/conv2d_4/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d_4/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/m/batch_normalization_8/gamma1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/v/batch_normalization_8/gamma1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!Adam/m/batch_normalization_8/beta1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!Adam/v/batch_normalization_8/beta1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_5/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_5/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_5/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_5/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_9/gamma2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_9/gamma2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_9/beta2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_9/beta2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_6/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_6/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_6/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_6/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_10/gamma2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_10/gamma2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_10/beta2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_10/beta2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_7/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_7/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_7/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_7/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_11/gamma2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_11/gamma2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_11/beta2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_11/beta2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_8/kernel2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_8/kernel2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_8/bias2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_8/bias2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
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
ю0
я1*

ь	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Є0
є1*

Ё	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ъ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp/batch_normalization_8/gamma/Read/ReadVariableOp.batch_normalization_8/beta/Read/ReadVariableOp5batch_normalization_8/moving_mean/Read/ReadVariableOp9batch_normalization_8/moving_variance/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp/batch_normalization_9/gamma/Read/ReadVariableOp.batch_normalization_9/beta/Read/ReadVariableOp5batch_normalization_9/moving_mean/Read/ReadVariableOp9batch_normalization_9/moving_variance/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp0batch_normalization_10/gamma/Read/ReadVariableOp/batch_normalization_10/beta/Read/ReadVariableOp6batch_normalization_10/moving_mean/Read/ReadVariableOp:batch_normalization_10/moving_variance/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOp0batch_normalization_11/gamma/Read/ReadVariableOp/batch_normalization_11/beta/Read/ReadVariableOp6batch_normalization_11/moving_mean/Read/ReadVariableOp:batch_normalization_11/moving_variance/Read/ReadVariableOp"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp*Adam/m/conv2d_4/kernel/Read/ReadVariableOp*Adam/v/conv2d_4/kernel/Read/ReadVariableOp(Adam/m/conv2d_4/bias/Read/ReadVariableOp(Adam/v/conv2d_4/bias/Read/ReadVariableOp6Adam/m/batch_normalization_8/gamma/Read/ReadVariableOp6Adam/v/batch_normalization_8/gamma/Read/ReadVariableOp5Adam/m/batch_normalization_8/beta/Read/ReadVariableOp5Adam/v/batch_normalization_8/beta/Read/ReadVariableOp*Adam/m/conv2d_5/kernel/Read/ReadVariableOp*Adam/v/conv2d_5/kernel/Read/ReadVariableOp(Adam/m/conv2d_5/bias/Read/ReadVariableOp(Adam/v/conv2d_5/bias/Read/ReadVariableOp6Adam/m/batch_normalization_9/gamma/Read/ReadVariableOp6Adam/v/batch_normalization_9/gamma/Read/ReadVariableOp5Adam/m/batch_normalization_9/beta/Read/ReadVariableOp5Adam/v/batch_normalization_9/beta/Read/ReadVariableOp)Adam/m/dense_6/kernel/Read/ReadVariableOp)Adam/v/dense_6/kernel/Read/ReadVariableOp'Adam/m/dense_6/bias/Read/ReadVariableOp'Adam/v/dense_6/bias/Read/ReadVariableOp7Adam/m/batch_normalization_10/gamma/Read/ReadVariableOp7Adam/v/batch_normalization_10/gamma/Read/ReadVariableOp6Adam/m/batch_normalization_10/beta/Read/ReadVariableOp6Adam/v/batch_normalization_10/beta/Read/ReadVariableOp)Adam/m/dense_7/kernel/Read/ReadVariableOp)Adam/v/dense_7/kernel/Read/ReadVariableOp'Adam/m/dense_7/bias/Read/ReadVariableOp'Adam/v/dense_7/bias/Read/ReadVariableOp7Adam/m/batch_normalization_11/gamma/Read/ReadVariableOp7Adam/v/batch_normalization_11/gamma/Read/ReadVariableOp6Adam/m/batch_normalization_11/beta/Read/ReadVariableOp6Adam/v/batch_normalization_11/beta/Read/ReadVariableOp)Adam/m/dense_8/kernel/Read/ReadVariableOp)Adam/v/dense_8/kernel/Read/ReadVariableOp'Adam/m/dense_8/bias/Read/ReadVariableOp'Adam/v/dense_8/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*Q
TinJ
H2F	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference__traced_save_469693
┼
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_4/kernelconv2d_4/biasbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_varianceconv2d_5/kernelconv2d_5/biasbatch_normalization_9/gammabatch_normalization_9/beta!batch_normalization_9/moving_mean%batch_normalization_9/moving_variancedense_6/kerneldense_6/biasbatch_normalization_10/gammabatch_normalization_10/beta"batch_normalization_10/moving_mean&batch_normalization_10/moving_variancedense_7/kerneldense_7/biasbatch_normalization_11/gammabatch_normalization_11/beta"batch_normalization_11/moving_mean&batch_normalization_11/moving_variancedense_8/kerneldense_8/bias	iterationlearning_rateAdam/m/conv2d_4/kernelAdam/v/conv2d_4/kernelAdam/m/conv2d_4/biasAdam/v/conv2d_4/bias"Adam/m/batch_normalization_8/gamma"Adam/v/batch_normalization_8/gamma!Adam/m/batch_normalization_8/beta!Adam/v/batch_normalization_8/betaAdam/m/conv2d_5/kernelAdam/v/conv2d_5/kernelAdam/m/conv2d_5/biasAdam/v/conv2d_5/bias"Adam/m/batch_normalization_9/gamma"Adam/v/batch_normalization_9/gamma!Adam/m/batch_normalization_9/beta!Adam/v/batch_normalization_9/betaAdam/m/dense_6/kernelAdam/v/dense_6/kernelAdam/m/dense_6/biasAdam/v/dense_6/bias#Adam/m/batch_normalization_10/gamma#Adam/v/batch_normalization_10/gamma"Adam/m/batch_normalization_10/beta"Adam/v/batch_normalization_10/betaAdam/m/dense_7/kernelAdam/v/dense_7/kernelAdam/m/dense_7/biasAdam/v/dense_7/bias#Adam/m/batch_normalization_11/gamma#Adam/v/batch_normalization_11/gamma"Adam/m/batch_normalization_11/beta"Adam/v/batch_normalization_11/betaAdam/m/dense_8/kernelAdam/v/dense_8/kernelAdam/m/dense_8/biasAdam/v/dense_8/biastotal_1count_1totalcount*P
TinI
G2E*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *+
f&R$
"__inference__traced_restore_469907╘М
╟
a
E__inference_flatten_2_layer_call_and_return_conditional_losses_469192

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"        ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А@Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
ж

ў
C__inference_dense_6_layer_call_and_return_conditional_losses_469212

inputs2
matmul_readvariableop_resource:
А@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
А@А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А@
 
_user_specified_nameinputs
У

e
F__inference_dropout_11_layer_call_and_return_conditional_losses_467993

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ж

ў
C__inference_dense_6_layer_call_and_return_conditional_losses_467835

inputs2
matmul_readvariableop_resource:
А@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
А@А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А@
 
_user_specified_nameinputs
·
d
+__inference_dropout_11_layer_call_fn_469429

inputs
identityИвStatefulPartitionedCall┼
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_467993p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ж

ў
C__inference_dense_7_layer_call_and_return_conditional_losses_469339

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
■Й
л
C__inference_model_2_layer_call_and_return_conditional_losses_468780

inputsA
'conv2d_4_conv2d_readvariableop_resource: 6
(conv2d_4_biasadd_readvariableop_resource: ;
-batch_normalization_8_readvariableop_resource: =
/batch_normalization_8_readvariableop_1_resource: L
>batch_normalization_8_fusedbatchnormv3_readvariableop_resource: N
@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource: A
'conv2d_5_conv2d_readvariableop_resource:  6
(conv2d_5_biasadd_readvariableop_resource: ;
-batch_normalization_9_readvariableop_resource: =
/batch_normalization_9_readvariableop_1_resource: L
>batch_normalization_9_fusedbatchnormv3_readvariableop_resource: N
@batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource: :
&dense_6_matmul_readvariableop_resource:
А@А6
'dense_6_biasadd_readvariableop_resource:	АG
8batch_normalization_10_batchnorm_readvariableop_resource:	АK
<batch_normalization_10_batchnorm_mul_readvariableop_resource:	АI
:batch_normalization_10_batchnorm_readvariableop_1_resource:	АI
:batch_normalization_10_batchnorm_readvariableop_2_resource:	А:
&dense_7_matmul_readvariableop_resource:
АА6
'dense_7_biasadd_readvariableop_resource:	АG
8batch_normalization_11_batchnorm_readvariableop_resource:	АK
<batch_normalization_11_batchnorm_mul_readvariableop_resource:	АI
:batch_normalization_11_batchnorm_readvariableop_1_resource:	АI
:batch_normalization_11_batchnorm_readvariableop_2_resource:	А9
&dense_8_matmul_readvariableop_resource:	А5
'dense_8_biasadd_readvariableop_resource:
identityИв/batch_normalization_10/batchnorm/ReadVariableOpв1batch_normalization_10/batchnorm/ReadVariableOp_1в1batch_normalization_10/batchnorm/ReadVariableOp_2в3batch_normalization_10/batchnorm/mul/ReadVariableOpв/batch_normalization_11/batchnorm/ReadVariableOpв1batch_normalization_11/batchnorm/ReadVariableOp_1в1batch_normalization_11/batchnorm/ReadVariableOp_2в3batch_normalization_11/batchnorm/mul/ReadVariableOpв5batch_normalization_8/FusedBatchNormV3/ReadVariableOpв7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_8/ReadVariableOpв&batch_normalization_8/ReadVariableOp_1в5batch_normalization_9/FusedBatchNormV3/ReadVariableOpв7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_9/ReadVariableOpв&batch_normalization_9/ReadVariableOp_1вconv2d_4/BiasAdd/ReadVariableOpвconv2d_4/Conv2D/ReadVariableOpвconv2d_5/BiasAdd/ReadVariableOpвconv2d_5/Conv2D/ReadVariableOpвdense_6/BiasAdd/ReadVariableOpвdense_6/MatMul/ReadVariableOpвdense_7/BiasAdd/ReadVariableOpвdense_7/MatMul/ReadVariableOpвdense_8/BiasAdd/ReadVariableOpвdense_8/MatMul/ReadVariableOpО
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0л
conv2d_4/Conv2DConv2Dinputs&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ *
paddingSAME*
strides
Д
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ш
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ j
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:         @@ м
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/Relu:activations:0*/
_output_shapes
:            *
ksize
*
paddingVALID*
strides
О
$batch_normalization_8/ReadVariableOpReadVariableOp-batch_normalization_8_readvariableop_resource*
_output_shapes
: *
dtype0Т
&batch_normalization_8/ReadVariableOp_1ReadVariableOp/batch_normalization_8_readvariableop_1_resource*
_output_shapes
: *
dtype0░
5batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0┤
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╛
&batch_normalization_8/FusedBatchNormV3FusedBatchNormV3 max_pooling2d_4/MaxPool:output:0,batch_normalization_8/ReadVariableOp:value:0.batch_normalization_8/ReadVariableOp_1:value:0=batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:            : : : : :*
epsilon%oГ:*
is_training( Д
dropout_8/IdentityIdentity*batch_normalization_8/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:            О
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0└
conv2d_5/Conv2DConv2Ddropout_8/Identity:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
Д
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ш
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            j
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:            м
max_pooling2d_5/MaxPoolMaxPoolconv2d_5/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
О
$batch_normalization_9/ReadVariableOpReadVariableOp-batch_normalization_9_readvariableop_resource*
_output_shapes
: *
dtype0Т
&batch_normalization_9/ReadVariableOp_1ReadVariableOp/batch_normalization_9_readvariableop_1_resource*
_output_shapes
: *
dtype0░
5batch_normalization_9/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_9_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0┤
7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╛
&batch_normalization_9/FusedBatchNormV3FusedBatchNormV3 max_pooling2d_5/MaxPool:output:0,batch_normalization_9/ReadVariableOp:value:0.batch_normalization_9/ReadVariableOp_1:value:0=batch_normalization_9/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:          : : : : :*
epsilon%oГ:*
is_training( Д
dropout_9/IdentityIdentity*batch_normalization_9/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:          `
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"        Ж
flatten_2/ReshapeReshapedropout_9/Identity:output:0flatten_2/Const:output:0*
T0*(
_output_shapes
:         А@Ж
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
А@А*
dtype0О
dense_6/MatMulMatMulflatten_2/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0П
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аa
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*(
_output_shapes
:         Ае
/batch_normalization_10/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_10_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0k
&batch_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:╜
$batch_normalization_10/batchnorm/addAddV27batch_normalization_10/batchnorm/ReadVariableOp:value:0/batch_normalization_10/batchnorm/add/y:output:0*
T0*
_output_shapes	
:А
&batch_normalization_10/batchnorm/RsqrtRsqrt(batch_normalization_10/batchnorm/add:z:0*
T0*
_output_shapes	
:Ан
3batch_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0║
$batch_normalization_10/batchnorm/mulMul*batch_normalization_10/batchnorm/Rsqrt:y:0;batch_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:Аж
&batch_normalization_10/batchnorm/mul_1Muldense_6/Relu:activations:0(batch_normalization_10/batchnorm/mul:z:0*
T0*(
_output_shapes
:         Ай
1batch_normalization_10/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_10_batchnorm_readvariableop_1_resource*
_output_shapes	
:А*
dtype0╕
&batch_normalization_10/batchnorm/mul_2Mul9batch_normalization_10/batchnorm/ReadVariableOp_1:value:0(batch_normalization_10/batchnorm/mul:z:0*
T0*
_output_shapes	
:Ай
1batch_normalization_10/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_10_batchnorm_readvariableop_2_resource*
_output_shapes	
:А*
dtype0╕
$batch_normalization_10/batchnorm/subSub9batch_normalization_10/batchnorm/ReadVariableOp_2:value:0*batch_normalization_10/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А╕
&batch_normalization_10/batchnorm/add_1AddV2*batch_normalization_10/batchnorm/mul_1:z:0(batch_normalization_10/batchnorm/sub:z:0*
T0*(
_output_shapes
:         А~
dropout_10/IdentityIdentity*batch_normalization_10/batchnorm/add_1:z:0*
T0*(
_output_shapes
:         АЖ
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Р
dense_7/MatMulMatMuldropout_10/Identity:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0П
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аa
dense_7/ReluReludense_7/BiasAdd:output:0*
T0*(
_output_shapes
:         Ае
/batch_normalization_11/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_11_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0k
&batch_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:╜
$batch_normalization_11/batchnorm/addAddV27batch_normalization_11/batchnorm/ReadVariableOp:value:0/batch_normalization_11/batchnorm/add/y:output:0*
T0*
_output_shapes	
:А
&batch_normalization_11/batchnorm/RsqrtRsqrt(batch_normalization_11/batchnorm/add:z:0*
T0*
_output_shapes	
:Ан
3batch_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0║
$batch_normalization_11/batchnorm/mulMul*batch_normalization_11/batchnorm/Rsqrt:y:0;batch_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:Аж
&batch_normalization_11/batchnorm/mul_1Muldense_7/Relu:activations:0(batch_normalization_11/batchnorm/mul:z:0*
T0*(
_output_shapes
:         Ай
1batch_normalization_11/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_11_batchnorm_readvariableop_1_resource*
_output_shapes	
:А*
dtype0╕
&batch_normalization_11/batchnorm/mul_2Mul9batch_normalization_11/batchnorm/ReadVariableOp_1:value:0(batch_normalization_11/batchnorm/mul:z:0*
T0*
_output_shapes	
:Ай
1batch_normalization_11/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_11_batchnorm_readvariableop_2_resource*
_output_shapes	
:А*
dtype0╕
$batch_normalization_11/batchnorm/subSub9batch_normalization_11/batchnorm/ReadVariableOp_2:value:0*batch_normalization_11/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А╕
&batch_normalization_11/batchnorm/add_1AddV2*batch_normalization_11/batchnorm/mul_1:z:0(batch_normalization_11/batchnorm/sub:z:0*
T0*(
_output_shapes
:         А~
dropout_11/IdentityIdentity*batch_normalization_11/batchnorm/add_1:z:0*
T0*(
_output_shapes
:         АЕ
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0П
dense_8/MatMulMatMuldropout_11/Identity:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_8/SigmoidSigmoiddense_8/BiasAdd:output:0*
T0*'
_output_shapes
:         b
IdentityIdentitydense_8/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         │	
NoOpNoOp0^batch_normalization_10/batchnorm/ReadVariableOp2^batch_normalization_10/batchnorm/ReadVariableOp_12^batch_normalization_10/batchnorm/ReadVariableOp_24^batch_normalization_10/batchnorm/mul/ReadVariableOp0^batch_normalization_11/batchnorm/ReadVariableOp2^batch_normalization_11/batchnorm/ReadVariableOp_12^batch_normalization_11/batchnorm/ReadVariableOp_24^batch_normalization_11/batchnorm/mul/ReadVariableOp6^batch_normalization_8/FusedBatchNormV3/ReadVariableOp8^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_8/ReadVariableOp'^batch_normalization_8/ReadVariableOp_16^batch_normalization_9/FusedBatchNormV3/ReadVariableOp8^batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_9/ReadVariableOp'^batch_normalization_9/ReadVariableOp_1 ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:         @@: : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_10/batchnorm/ReadVariableOp/batch_normalization_10/batchnorm/ReadVariableOp2f
1batch_normalization_10/batchnorm/ReadVariableOp_11batch_normalization_10/batchnorm/ReadVariableOp_12f
1batch_normalization_10/batchnorm/ReadVariableOp_21batch_normalization_10/batchnorm/ReadVariableOp_22j
3batch_normalization_10/batchnorm/mul/ReadVariableOp3batch_normalization_10/batchnorm/mul/ReadVariableOp2b
/batch_normalization_11/batchnorm/ReadVariableOp/batch_normalization_11/batchnorm/ReadVariableOp2f
1batch_normalization_11/batchnorm/ReadVariableOp_11batch_normalization_11/batchnorm/ReadVariableOp_12f
1batch_normalization_11/batchnorm/ReadVariableOp_21batch_normalization_11/batchnorm/ReadVariableOp_22j
3batch_normalization_11/batchnorm/mul/ReadVariableOp3batch_normalization_11/batchnorm/mul/ReadVariableOp2n
5batch_normalization_8/FusedBatchNormV3/ReadVariableOp5batch_normalization_8/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_17batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_8/ReadVariableOp$batch_normalization_8/ReadVariableOp2P
&batch_normalization_8/ReadVariableOp_1&batch_normalization_8/ReadVariableOp_12n
5batch_normalization_9/FusedBatchNormV3/ReadVariableOp5batch_normalization_9/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_17batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_9/ReadVariableOp$batch_normalization_9/ReadVariableOp2P
&batch_normalization_9/ReadVariableOp_1&batch_normalization_9/ReadVariableOp_12B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
п
L
#__inference__update_step_xla_194783
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: *
	_noinline(:E A

_output_shapes	
:А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
┬
F
*__inference_dropout_9_layer_call_fn_469159

inputs
identity╗
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_467814h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:          "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
·
d
+__inference_dropout_10_layer_call_fn_469302

inputs
identityИвStatefulPartitionedCall┼
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_468026p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
с
╡
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_467601

inputs0
!batchnorm_readvariableop_resource:	А4
%batchnorm_mul_readvariableop_resource:	А2
#batchnorm_readvariableop_1_resource:	А2
#batchnorm_readvariableop_2_resource:	А
identityИвbatchnorm/ReadVariableOpвbatchnorm/ReadVariableOp_1вbatchnorm/ReadVariableOp_2вbatchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:АQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:Аd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         А{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:А*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:А*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:Аs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         Аc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         А║
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╛
Q
#__inference__update_step_xla_194793
gradient
variable:
АА*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*!
_input_shapes
:
АА: *
	_noinline(:J F
 
_output_shapes
:
АА
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
╗
L
0__inference_max_pooling2d_4_layer_call_fn_468968

inputs
identity▄
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_467434Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▓ь
Ы
C__inference_model_2_layer_call_and_return_conditional_losses_468943

inputsA
'conv2d_4_conv2d_readvariableop_resource: 6
(conv2d_4_biasadd_readvariableop_resource: ;
-batch_normalization_8_readvariableop_resource: =
/batch_normalization_8_readvariableop_1_resource: L
>batch_normalization_8_fusedbatchnormv3_readvariableop_resource: N
@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource: A
'conv2d_5_conv2d_readvariableop_resource:  6
(conv2d_5_biasadd_readvariableop_resource: ;
-batch_normalization_9_readvariableop_resource: =
/batch_normalization_9_readvariableop_1_resource: L
>batch_normalization_9_fusedbatchnormv3_readvariableop_resource: N
@batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource: :
&dense_6_matmul_readvariableop_resource:
А@А6
'dense_6_biasadd_readvariableop_resource:	АM
>batch_normalization_10_assignmovingavg_readvariableop_resource:	АO
@batch_normalization_10_assignmovingavg_1_readvariableop_resource:	АK
<batch_normalization_10_batchnorm_mul_readvariableop_resource:	АG
8batch_normalization_10_batchnorm_readvariableop_resource:	А:
&dense_7_matmul_readvariableop_resource:
АА6
'dense_7_biasadd_readvariableop_resource:	АM
>batch_normalization_11_assignmovingavg_readvariableop_resource:	АO
@batch_normalization_11_assignmovingavg_1_readvariableop_resource:	АK
<batch_normalization_11_batchnorm_mul_readvariableop_resource:	АG
8batch_normalization_11_batchnorm_readvariableop_resource:	А9
&dense_8_matmul_readvariableop_resource:	А5
'dense_8_biasadd_readvariableop_resource:
identityИв&batch_normalization_10/AssignMovingAvgв5batch_normalization_10/AssignMovingAvg/ReadVariableOpв(batch_normalization_10/AssignMovingAvg_1в7batch_normalization_10/AssignMovingAvg_1/ReadVariableOpв/batch_normalization_10/batchnorm/ReadVariableOpв3batch_normalization_10/batchnorm/mul/ReadVariableOpв&batch_normalization_11/AssignMovingAvgв5batch_normalization_11/AssignMovingAvg/ReadVariableOpв(batch_normalization_11/AssignMovingAvg_1в7batch_normalization_11/AssignMovingAvg_1/ReadVariableOpв/batch_normalization_11/batchnorm/ReadVariableOpв3batch_normalization_11/batchnorm/mul/ReadVariableOpв$batch_normalization_8/AssignNewValueв&batch_normalization_8/AssignNewValue_1в5batch_normalization_8/FusedBatchNormV3/ReadVariableOpв7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_8/ReadVariableOpв&batch_normalization_8/ReadVariableOp_1в$batch_normalization_9/AssignNewValueв&batch_normalization_9/AssignNewValue_1в5batch_normalization_9/FusedBatchNormV3/ReadVariableOpв7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_9/ReadVariableOpв&batch_normalization_9/ReadVariableOp_1вconv2d_4/BiasAdd/ReadVariableOpвconv2d_4/Conv2D/ReadVariableOpвconv2d_5/BiasAdd/ReadVariableOpвconv2d_5/Conv2D/ReadVariableOpвdense_6/BiasAdd/ReadVariableOpвdense_6/MatMul/ReadVariableOpвdense_7/BiasAdd/ReadVariableOpвdense_7/MatMul/ReadVariableOpвdense_8/BiasAdd/ReadVariableOpвdense_8/MatMul/ReadVariableOpО
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0л
conv2d_4/Conv2DConv2Dinputs&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ *
paddingSAME*
strides
Д
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ш
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ j
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:         @@ м
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/Relu:activations:0*/
_output_shapes
:            *
ksize
*
paddingVALID*
strides
О
$batch_normalization_8/ReadVariableOpReadVariableOp-batch_normalization_8_readvariableop_resource*
_output_shapes
: *
dtype0Т
&batch_normalization_8/ReadVariableOp_1ReadVariableOp/batch_normalization_8_readvariableop_1_resource*
_output_shapes
: *
dtype0░
5batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0┤
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╠
&batch_normalization_8/FusedBatchNormV3FusedBatchNormV3 max_pooling2d_4/MaxPool:output:0,batch_normalization_8/ReadVariableOp:value:0.batch_normalization_8/ReadVariableOp_1:value:0=batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<Ю
$batch_normalization_8/AssignNewValueAssignVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource3batch_normalization_8/FusedBatchNormV3:batch_mean:06^batch_normalization_8/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(и
&batch_normalization_8/AssignNewValue_1AssignVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_8/FusedBatchNormV3:batch_variance:08^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(\
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?д
dropout_8/dropout/MulMul*batch_normalization_8/FusedBatchNormV3:y:0 dropout_8/dropout/Const:output:0*
T0*/
_output_shapes
:            q
dropout_8/dropout/ShapeShape*batch_normalization_8/FusedBatchNormV3:y:0*
T0*
_output_shapes
:и
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*/
_output_shapes
:            *
dtype0e
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╠
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:            ^
dropout_8/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
dropout_8/dropout/SelectV2SelectV2"dropout_8/dropout/GreaterEqual:z:0dropout_8/dropout/Mul:z:0"dropout_8/dropout/Const_1:output:0*
T0*/
_output_shapes
:            О
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0╚
conv2d_5/Conv2DConv2D#dropout_8/dropout/SelectV2:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
Д
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ш
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            j
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:            м
max_pooling2d_5/MaxPoolMaxPoolconv2d_5/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
О
$batch_normalization_9/ReadVariableOpReadVariableOp-batch_normalization_9_readvariableop_resource*
_output_shapes
: *
dtype0Т
&batch_normalization_9/ReadVariableOp_1ReadVariableOp/batch_normalization_9_readvariableop_1_resource*
_output_shapes
: *
dtype0░
5batch_normalization_9/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_9_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0┤
7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╠
&batch_normalization_9/FusedBatchNormV3FusedBatchNormV3 max_pooling2d_5/MaxPool:output:0,batch_normalization_9/ReadVariableOp:value:0.batch_normalization_9/ReadVariableOp_1:value:0=batch_normalization_9/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:          : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<Ю
$batch_normalization_9/AssignNewValueAssignVariableOp>batch_normalization_9_fusedbatchnormv3_readvariableop_resource3batch_normalization_9/FusedBatchNormV3:batch_mean:06^batch_normalization_9/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(и
&batch_normalization_9/AssignNewValue_1AssignVariableOp@batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_9/FusedBatchNormV3:batch_variance:08^batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(\
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?д
dropout_9/dropout/MulMul*batch_normalization_9/FusedBatchNormV3:y:0 dropout_9/dropout/Const:output:0*
T0*/
_output_shapes
:          q
dropout_9/dropout/ShapeShape*batch_normalization_9/FusedBatchNormV3:y:0*
T0*
_output_shapes
:и
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*/
_output_shapes
:          *
dtype0e
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╠
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:          ^
dropout_9/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
dropout_9/dropout/SelectV2SelectV2"dropout_9/dropout/GreaterEqual:z:0dropout_9/dropout/Mul:z:0"dropout_9/dropout/Const_1:output:0*
T0*/
_output_shapes
:          `
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"        О
flatten_2/ReshapeReshape#dropout_9/dropout/SelectV2:output:0flatten_2/Const:output:0*
T0*(
_output_shapes
:         А@Ж
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
А@А*
dtype0О
dense_6/MatMulMatMulflatten_2/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0П
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аa
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*(
_output_shapes
:         А
5batch_normalization_10/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ┬
#batch_normalization_10/moments/meanMeandense_6/Relu:activations:0>batch_normalization_10/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(У
+batch_normalization_10/moments/StopGradientStopGradient,batch_normalization_10/moments/mean:output:0*
T0*
_output_shapes
:	А╩
0batch_normalization_10/moments/SquaredDifferenceSquaredDifferencedense_6/Relu:activations:04batch_normalization_10/moments/StopGradient:output:0*
T0*(
_output_shapes
:         АГ
9batch_normalization_10/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ф
'batch_normalization_10/moments/varianceMean4batch_normalization_10/moments/SquaredDifference:z:0Bbatch_normalization_10/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(Ь
&batch_normalization_10/moments/SqueezeSqueeze,batch_normalization_10/moments/mean:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 в
(batch_normalization_10/moments/Squeeze_1Squeeze0batch_normalization_10/moments/variance:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 q
,batch_normalization_10/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<▒
5batch_normalization_10/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_10_assignmovingavg_readvariableop_resource*
_output_shapes	
:А*
dtype0╟
*batch_normalization_10/AssignMovingAvg/subSub=batch_normalization_10/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_10/moments/Squeeze:output:0*
T0*
_output_shapes	
:А╛
*batch_normalization_10/AssignMovingAvg/mulMul.batch_normalization_10/AssignMovingAvg/sub:z:05batch_normalization_10/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:АИ
&batch_normalization_10/AssignMovingAvgAssignSubVariableOp>batch_normalization_10_assignmovingavg_readvariableop_resource.batch_normalization_10/AssignMovingAvg/mul:z:06^batch_normalization_10/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_10/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<╡
7batch_normalization_10/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_10_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:А*
dtype0═
,batch_normalization_10/AssignMovingAvg_1/subSub?batch_normalization_10/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_10/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:А─
,batch_normalization_10/AssignMovingAvg_1/mulMul0batch_normalization_10/AssignMovingAvg_1/sub:z:07batch_normalization_10/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:АР
(batch_normalization_10/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_10_assignmovingavg_1_readvariableop_resource0batch_normalization_10/AssignMovingAvg_1/mul:z:08^batch_normalization_10/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:╖
$batch_normalization_10/batchnorm/addAddV21batch_normalization_10/moments/Squeeze_1:output:0/batch_normalization_10/batchnorm/add/y:output:0*
T0*
_output_shapes	
:А
&batch_normalization_10/batchnorm/RsqrtRsqrt(batch_normalization_10/batchnorm/add:z:0*
T0*
_output_shapes	
:Ан
3batch_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0║
$batch_normalization_10/batchnorm/mulMul*batch_normalization_10/batchnorm/Rsqrt:y:0;batch_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:Аж
&batch_normalization_10/batchnorm/mul_1Muldense_6/Relu:activations:0(batch_normalization_10/batchnorm/mul:z:0*
T0*(
_output_shapes
:         Ао
&batch_normalization_10/batchnorm/mul_2Mul/batch_normalization_10/moments/Squeeze:output:0(batch_normalization_10/batchnorm/mul:z:0*
T0*
_output_shapes	
:Ае
/batch_normalization_10/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_10_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0╢
$batch_normalization_10/batchnorm/subSub7batch_normalization_10/batchnorm/ReadVariableOp:value:0*batch_normalization_10/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А╕
&batch_normalization_10/batchnorm/add_1AddV2*batch_normalization_10/batchnorm/mul_1:z:0(batch_normalization_10/batchnorm/sub:z:0*
T0*(
_output_shapes
:         А]
dropout_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Я
dropout_10/dropout/MulMul*batch_normalization_10/batchnorm/add_1:z:0!dropout_10/dropout/Const:output:0*
T0*(
_output_shapes
:         Аr
dropout_10/dropout/ShapeShape*batch_normalization_10/batchnorm/add_1:z:0*
T0*
_output_shapes
:г
/dropout_10/dropout/random_uniform/RandomUniformRandomUniform!dropout_10/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0f
!dropout_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╚
dropout_10/dropout/GreaterEqualGreaterEqual8dropout_10/dropout/random_uniform/RandomUniform:output:0*dropout_10/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А_
dropout_10/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    └
dropout_10/dropout/SelectV2SelectV2#dropout_10/dropout/GreaterEqual:z:0dropout_10/dropout/Mul:z:0#dropout_10/dropout/Const_1:output:0*
T0*(
_output_shapes
:         АЖ
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ш
dense_7/MatMulMatMul$dropout_10/dropout/SelectV2:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0П
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аa
dense_7/ReluReludense_7/BiasAdd:output:0*
T0*(
_output_shapes
:         А
5batch_normalization_11/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ┬
#batch_normalization_11/moments/meanMeandense_7/Relu:activations:0>batch_normalization_11/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(У
+batch_normalization_11/moments/StopGradientStopGradient,batch_normalization_11/moments/mean:output:0*
T0*
_output_shapes
:	А╩
0batch_normalization_11/moments/SquaredDifferenceSquaredDifferencedense_7/Relu:activations:04batch_normalization_11/moments/StopGradient:output:0*
T0*(
_output_shapes
:         АГ
9batch_normalization_11/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ф
'batch_normalization_11/moments/varianceMean4batch_normalization_11/moments/SquaredDifference:z:0Bbatch_normalization_11/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(Ь
&batch_normalization_11/moments/SqueezeSqueeze,batch_normalization_11/moments/mean:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 в
(batch_normalization_11/moments/Squeeze_1Squeeze0batch_normalization_11/moments/variance:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 q
,batch_normalization_11/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<▒
5batch_normalization_11/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_11_assignmovingavg_readvariableop_resource*
_output_shapes	
:А*
dtype0╟
*batch_normalization_11/AssignMovingAvg/subSub=batch_normalization_11/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_11/moments/Squeeze:output:0*
T0*
_output_shapes	
:А╛
*batch_normalization_11/AssignMovingAvg/mulMul.batch_normalization_11/AssignMovingAvg/sub:z:05batch_normalization_11/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:АИ
&batch_normalization_11/AssignMovingAvgAssignSubVariableOp>batch_normalization_11_assignmovingavg_readvariableop_resource.batch_normalization_11/AssignMovingAvg/mul:z:06^batch_normalization_11/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_11/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<╡
7batch_normalization_11/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_11_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:А*
dtype0═
,batch_normalization_11/AssignMovingAvg_1/subSub?batch_normalization_11/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_11/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:А─
,batch_normalization_11/AssignMovingAvg_1/mulMul0batch_normalization_11/AssignMovingAvg_1/sub:z:07batch_normalization_11/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:АР
(batch_normalization_11/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_11_assignmovingavg_1_readvariableop_resource0batch_normalization_11/AssignMovingAvg_1/mul:z:08^batch_normalization_11/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:╖
$batch_normalization_11/batchnorm/addAddV21batch_normalization_11/moments/Squeeze_1:output:0/batch_normalization_11/batchnorm/add/y:output:0*
T0*
_output_shapes	
:А
&batch_normalization_11/batchnorm/RsqrtRsqrt(batch_normalization_11/batchnorm/add:z:0*
T0*
_output_shapes	
:Ан
3batch_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0║
$batch_normalization_11/batchnorm/mulMul*batch_normalization_11/batchnorm/Rsqrt:y:0;batch_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:Аж
&batch_normalization_11/batchnorm/mul_1Muldense_7/Relu:activations:0(batch_normalization_11/batchnorm/mul:z:0*
T0*(
_output_shapes
:         Ао
&batch_normalization_11/batchnorm/mul_2Mul/batch_normalization_11/moments/Squeeze:output:0(batch_normalization_11/batchnorm/mul:z:0*
T0*
_output_shapes	
:Ае
/batch_normalization_11/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_11_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0╢
$batch_normalization_11/batchnorm/subSub7batch_normalization_11/batchnorm/ReadVariableOp:value:0*batch_normalization_11/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А╕
&batch_normalization_11/batchnorm/add_1AddV2*batch_normalization_11/batchnorm/mul_1:z:0(batch_normalization_11/batchnorm/sub:z:0*
T0*(
_output_shapes
:         А]
dropout_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Я
dropout_11/dropout/MulMul*batch_normalization_11/batchnorm/add_1:z:0!dropout_11/dropout/Const:output:0*
T0*(
_output_shapes
:         Аr
dropout_11/dropout/ShapeShape*batch_normalization_11/batchnorm/add_1:z:0*
T0*
_output_shapes
:г
/dropout_11/dropout/random_uniform/RandomUniformRandomUniform!dropout_11/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0f
!dropout_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╚
dropout_11/dropout/GreaterEqualGreaterEqual8dropout_11/dropout/random_uniform/RandomUniform:output:0*dropout_11/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А_
dropout_11/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    └
dropout_11/dropout/SelectV2SelectV2#dropout_11/dropout/GreaterEqual:z:0dropout_11/dropout/Mul:z:0#dropout_11/dropout/Const_1:output:0*
T0*(
_output_shapes
:         АЕ
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Ч
dense_8/MatMulMatMul$dropout_11/dropout/SelectV2:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_8/SigmoidSigmoiddense_8/BiasAdd:output:0*
T0*'
_output_shapes
:         b
IdentityIdentitydense_8/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         П
NoOpNoOp'^batch_normalization_10/AssignMovingAvg6^batch_normalization_10/AssignMovingAvg/ReadVariableOp)^batch_normalization_10/AssignMovingAvg_18^batch_normalization_10/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_10/batchnorm/ReadVariableOp4^batch_normalization_10/batchnorm/mul/ReadVariableOp'^batch_normalization_11/AssignMovingAvg6^batch_normalization_11/AssignMovingAvg/ReadVariableOp)^batch_normalization_11/AssignMovingAvg_18^batch_normalization_11/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_11/batchnorm/ReadVariableOp4^batch_normalization_11/batchnorm/mul/ReadVariableOp%^batch_normalization_8/AssignNewValue'^batch_normalization_8/AssignNewValue_16^batch_normalization_8/FusedBatchNormV3/ReadVariableOp8^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_8/ReadVariableOp'^batch_normalization_8/ReadVariableOp_1%^batch_normalization_9/AssignNewValue'^batch_normalization_9/AssignNewValue_16^batch_normalization_9/FusedBatchNormV3/ReadVariableOp8^batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_9/ReadVariableOp'^batch_normalization_9/ReadVariableOp_1 ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:         @@: : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_10/AssignMovingAvg&batch_normalization_10/AssignMovingAvg2n
5batch_normalization_10/AssignMovingAvg/ReadVariableOp5batch_normalization_10/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_10/AssignMovingAvg_1(batch_normalization_10/AssignMovingAvg_12r
7batch_normalization_10/AssignMovingAvg_1/ReadVariableOp7batch_normalization_10/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_10/batchnorm/ReadVariableOp/batch_normalization_10/batchnorm/ReadVariableOp2j
3batch_normalization_10/batchnorm/mul/ReadVariableOp3batch_normalization_10/batchnorm/mul/ReadVariableOp2P
&batch_normalization_11/AssignMovingAvg&batch_normalization_11/AssignMovingAvg2n
5batch_normalization_11/AssignMovingAvg/ReadVariableOp5batch_normalization_11/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_11/AssignMovingAvg_1(batch_normalization_11/AssignMovingAvg_12r
7batch_normalization_11/AssignMovingAvg_1/ReadVariableOp7batch_normalization_11/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_11/batchnorm/ReadVariableOp/batch_normalization_11/batchnorm/ReadVariableOp2j
3batch_normalization_11/batchnorm/mul/ReadVariableOp3batch_normalization_11/batchnorm/mul/ReadVariableOp2L
$batch_normalization_8/AssignNewValue$batch_normalization_8/AssignNewValue2P
&batch_normalization_8/AssignNewValue_1&batch_normalization_8/AssignNewValue_12n
5batch_normalization_8/FusedBatchNormV3/ReadVariableOp5batch_normalization_8/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_17batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_8/ReadVariableOp$batch_normalization_8/ReadVariableOp2P
&batch_normalization_8/ReadVariableOp_1&batch_normalization_8/ReadVariableOp_12L
$batch_normalization_9/AssignNewValue$batch_normalization_9/AssignNewValue2P
&batch_normalization_9/AssignNewValue_1&batch_normalization_9/AssignNewValue_12n
5batch_normalization_9/FusedBatchNormV3/ReadVariableOp5batch_normalization_9/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_17batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_9/ReadVariableOp$batch_normalization_9/ReadVariableOp2P
&batch_normalization_9/ReadVariableOp_1&batch_normalization_9/ReadVariableOp_12B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
э
Ю
)__inference_conv2d_5_layer_call_fn_469071

inputs!
unknown:  
	unknown_0: 
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_467793w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:            `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:            : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
Ф
c
*__inference_dropout_8_layer_call_fn_469045

inputs
identityИвStatefulPartitionedCall╦
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_468098w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:            `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:            22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
р
л
(__inference_model_2_layer_call_fn_468616

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:
А@А

unknown_12:	А

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:
АА

unknown_18:	А

unknown_19:	А

unknown_20:	А

unknown_21:	А

unknown_22:	А

unknown_23:	А

unknown_24:
identityИвStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_467908o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:         @@: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
ЕЬ
к
!__inference__wrapped_model_467425
input_3I
/model_2_conv2d_4_conv2d_readvariableop_resource: >
0model_2_conv2d_4_biasadd_readvariableop_resource: C
5model_2_batch_normalization_8_readvariableop_resource: E
7model_2_batch_normalization_8_readvariableop_1_resource: T
Fmodel_2_batch_normalization_8_fusedbatchnormv3_readvariableop_resource: V
Hmodel_2_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource: I
/model_2_conv2d_5_conv2d_readvariableop_resource:  >
0model_2_conv2d_5_biasadd_readvariableop_resource: C
5model_2_batch_normalization_9_readvariableop_resource: E
7model_2_batch_normalization_9_readvariableop_1_resource: T
Fmodel_2_batch_normalization_9_fusedbatchnormv3_readvariableop_resource: V
Hmodel_2_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource: B
.model_2_dense_6_matmul_readvariableop_resource:
А@А>
/model_2_dense_6_biasadd_readvariableop_resource:	АO
@model_2_batch_normalization_10_batchnorm_readvariableop_resource:	АS
Dmodel_2_batch_normalization_10_batchnorm_mul_readvariableop_resource:	АQ
Bmodel_2_batch_normalization_10_batchnorm_readvariableop_1_resource:	АQ
Bmodel_2_batch_normalization_10_batchnorm_readvariableop_2_resource:	АB
.model_2_dense_7_matmul_readvariableop_resource:
АА>
/model_2_dense_7_biasadd_readvariableop_resource:	АO
@model_2_batch_normalization_11_batchnorm_readvariableop_resource:	АS
Dmodel_2_batch_normalization_11_batchnorm_mul_readvariableop_resource:	АQ
Bmodel_2_batch_normalization_11_batchnorm_readvariableop_1_resource:	АQ
Bmodel_2_batch_normalization_11_batchnorm_readvariableop_2_resource:	АA
.model_2_dense_8_matmul_readvariableop_resource:	А=
/model_2_dense_8_biasadd_readvariableop_resource:
identityИв7model_2/batch_normalization_10/batchnorm/ReadVariableOpв9model_2/batch_normalization_10/batchnorm/ReadVariableOp_1в9model_2/batch_normalization_10/batchnorm/ReadVariableOp_2в;model_2/batch_normalization_10/batchnorm/mul/ReadVariableOpв7model_2/batch_normalization_11/batchnorm/ReadVariableOpв9model_2/batch_normalization_11/batchnorm/ReadVariableOp_1в9model_2/batch_normalization_11/batchnorm/ReadVariableOp_2в;model_2/batch_normalization_11/batchnorm/mul/ReadVariableOpв=model_2/batch_normalization_8/FusedBatchNormV3/ReadVariableOpв?model_2/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1в,model_2/batch_normalization_8/ReadVariableOpв.model_2/batch_normalization_8/ReadVariableOp_1в=model_2/batch_normalization_9/FusedBatchNormV3/ReadVariableOpв?model_2/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1в,model_2/batch_normalization_9/ReadVariableOpв.model_2/batch_normalization_9/ReadVariableOp_1в'model_2/conv2d_4/BiasAdd/ReadVariableOpв&model_2/conv2d_4/Conv2D/ReadVariableOpв'model_2/conv2d_5/BiasAdd/ReadVariableOpв&model_2/conv2d_5/Conv2D/ReadVariableOpв&model_2/dense_6/BiasAdd/ReadVariableOpв%model_2/dense_6/MatMul/ReadVariableOpв&model_2/dense_7/BiasAdd/ReadVariableOpв%model_2/dense_7/MatMul/ReadVariableOpв&model_2/dense_8/BiasAdd/ReadVariableOpв%model_2/dense_8/MatMul/ReadVariableOpЮ
&model_2/conv2d_4/Conv2D/ReadVariableOpReadVariableOp/model_2_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0╝
model_2/conv2d_4/Conv2DConv2Dinput_3.model_2/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ *
paddingSAME*
strides
Ф
'model_2/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp0model_2_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0░
model_2/conv2d_4/BiasAddBiasAdd model_2/conv2d_4/Conv2D:output:0/model_2/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ z
model_2/conv2d_4/ReluRelu!model_2/conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:         @@ ╝
model_2/max_pooling2d_4/MaxPoolMaxPool#model_2/conv2d_4/Relu:activations:0*/
_output_shapes
:            *
ksize
*
paddingVALID*
strides
Ю
,model_2/batch_normalization_8/ReadVariableOpReadVariableOp5model_2_batch_normalization_8_readvariableop_resource*
_output_shapes
: *
dtype0в
.model_2/batch_normalization_8/ReadVariableOp_1ReadVariableOp7model_2_batch_normalization_8_readvariableop_1_resource*
_output_shapes
: *
dtype0└
=model_2/batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOpFmodel_2_batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0─
?model_2/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHmodel_2_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ю
.model_2/batch_normalization_8/FusedBatchNormV3FusedBatchNormV3(model_2/max_pooling2d_4/MaxPool:output:04model_2/batch_normalization_8/ReadVariableOp:value:06model_2/batch_normalization_8/ReadVariableOp_1:value:0Emodel_2/batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0Gmodel_2/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:            : : : : :*
epsilon%oГ:*
is_training( Ф
model_2/dropout_8/IdentityIdentity2model_2/batch_normalization_8/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:            Ю
&model_2/conv2d_5/Conv2D/ReadVariableOpReadVariableOp/model_2_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0╪
model_2/conv2d_5/Conv2DConv2D#model_2/dropout_8/Identity:output:0.model_2/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
Ф
'model_2/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp0model_2_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0░
model_2/conv2d_5/BiasAddBiasAdd model_2/conv2d_5/Conv2D:output:0/model_2/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            z
model_2/conv2d_5/ReluRelu!model_2/conv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:            ╝
model_2/max_pooling2d_5/MaxPoolMaxPool#model_2/conv2d_5/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
Ю
,model_2/batch_normalization_9/ReadVariableOpReadVariableOp5model_2_batch_normalization_9_readvariableop_resource*
_output_shapes
: *
dtype0в
.model_2/batch_normalization_9/ReadVariableOp_1ReadVariableOp7model_2_batch_normalization_9_readvariableop_1_resource*
_output_shapes
: *
dtype0└
=model_2/batch_normalization_9/FusedBatchNormV3/ReadVariableOpReadVariableOpFmodel_2_batch_normalization_9_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0─
?model_2/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHmodel_2_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ю
.model_2/batch_normalization_9/FusedBatchNormV3FusedBatchNormV3(model_2/max_pooling2d_5/MaxPool:output:04model_2/batch_normalization_9/ReadVariableOp:value:06model_2/batch_normalization_9/ReadVariableOp_1:value:0Emodel_2/batch_normalization_9/FusedBatchNormV3/ReadVariableOp:value:0Gmodel_2/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:          : : : : :*
epsilon%oГ:*
is_training( Ф
model_2/dropout_9/IdentityIdentity2model_2/batch_normalization_9/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:          h
model_2/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"        Ю
model_2/flatten_2/ReshapeReshape#model_2/dropout_9/Identity:output:0 model_2/flatten_2/Const:output:0*
T0*(
_output_shapes
:         А@Ц
%model_2/dense_6/MatMul/ReadVariableOpReadVariableOp.model_2_dense_6_matmul_readvariableop_resource* 
_output_shapes
:
А@А*
dtype0ж
model_2/dense_6/MatMulMatMul"model_2/flatten_2/Reshape:output:0-model_2/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АУ
&model_2/dense_6/BiasAdd/ReadVariableOpReadVariableOp/model_2_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0з
model_2/dense_6/BiasAddBiasAdd model_2/dense_6/MatMul:product:0.model_2/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аq
model_2/dense_6/ReluRelu model_2/dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:         А╡
7model_2/batch_normalization_10/batchnorm/ReadVariableOpReadVariableOp@model_2_batch_normalization_10_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0s
.model_2/batch_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:╒
,model_2/batch_normalization_10/batchnorm/addAddV2?model_2/batch_normalization_10/batchnorm/ReadVariableOp:value:07model_2/batch_normalization_10/batchnorm/add/y:output:0*
T0*
_output_shapes	
:АП
.model_2/batch_normalization_10/batchnorm/RsqrtRsqrt0model_2/batch_normalization_10/batchnorm/add:z:0*
T0*
_output_shapes	
:А╜
;model_2/batch_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_2_batch_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0╥
,model_2/batch_normalization_10/batchnorm/mulMul2model_2/batch_normalization_10/batchnorm/Rsqrt:y:0Cmodel_2/batch_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А╛
.model_2/batch_normalization_10/batchnorm/mul_1Mul"model_2/dense_6/Relu:activations:00model_2/batch_normalization_10/batchnorm/mul:z:0*
T0*(
_output_shapes
:         А╣
9model_2/batch_normalization_10/batchnorm/ReadVariableOp_1ReadVariableOpBmodel_2_batch_normalization_10_batchnorm_readvariableop_1_resource*
_output_shapes	
:А*
dtype0╨
.model_2/batch_normalization_10/batchnorm/mul_2MulAmodel_2/batch_normalization_10/batchnorm/ReadVariableOp_1:value:00model_2/batch_normalization_10/batchnorm/mul:z:0*
T0*
_output_shapes	
:А╣
9model_2/batch_normalization_10/batchnorm/ReadVariableOp_2ReadVariableOpBmodel_2_batch_normalization_10_batchnorm_readvariableop_2_resource*
_output_shapes	
:А*
dtype0╨
,model_2/batch_normalization_10/batchnorm/subSubAmodel_2/batch_normalization_10/batchnorm/ReadVariableOp_2:value:02model_2/batch_normalization_10/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А╨
.model_2/batch_normalization_10/batchnorm/add_1AddV22model_2/batch_normalization_10/batchnorm/mul_1:z:00model_2/batch_normalization_10/batchnorm/sub:z:0*
T0*(
_output_shapes
:         АО
model_2/dropout_10/IdentityIdentity2model_2/batch_normalization_10/batchnorm/add_1:z:0*
T0*(
_output_shapes
:         АЦ
%model_2/dense_7/MatMul/ReadVariableOpReadVariableOp.model_2_dense_7_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0и
model_2/dense_7/MatMulMatMul$model_2/dropout_10/Identity:output:0-model_2/dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АУ
&model_2/dense_7/BiasAdd/ReadVariableOpReadVariableOp/model_2_dense_7_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0з
model_2/dense_7/BiasAddBiasAdd model_2/dense_7/MatMul:product:0.model_2/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аq
model_2/dense_7/ReluRelu model_2/dense_7/BiasAdd:output:0*
T0*(
_output_shapes
:         А╡
7model_2/batch_normalization_11/batchnorm/ReadVariableOpReadVariableOp@model_2_batch_normalization_11_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0s
.model_2/batch_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:╒
,model_2/batch_normalization_11/batchnorm/addAddV2?model_2/batch_normalization_11/batchnorm/ReadVariableOp:value:07model_2/batch_normalization_11/batchnorm/add/y:output:0*
T0*
_output_shapes	
:АП
.model_2/batch_normalization_11/batchnorm/RsqrtRsqrt0model_2/batch_normalization_11/batchnorm/add:z:0*
T0*
_output_shapes	
:А╜
;model_2/batch_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_2_batch_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0╥
,model_2/batch_normalization_11/batchnorm/mulMul2model_2/batch_normalization_11/batchnorm/Rsqrt:y:0Cmodel_2/batch_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А╛
.model_2/batch_normalization_11/batchnorm/mul_1Mul"model_2/dense_7/Relu:activations:00model_2/batch_normalization_11/batchnorm/mul:z:0*
T0*(
_output_shapes
:         А╣
9model_2/batch_normalization_11/batchnorm/ReadVariableOp_1ReadVariableOpBmodel_2_batch_normalization_11_batchnorm_readvariableop_1_resource*
_output_shapes	
:А*
dtype0╨
.model_2/batch_normalization_11/batchnorm/mul_2MulAmodel_2/batch_normalization_11/batchnorm/ReadVariableOp_1:value:00model_2/batch_normalization_11/batchnorm/mul:z:0*
T0*
_output_shapes	
:А╣
9model_2/batch_normalization_11/batchnorm/ReadVariableOp_2ReadVariableOpBmodel_2_batch_normalization_11_batchnorm_readvariableop_2_resource*
_output_shapes	
:А*
dtype0╨
,model_2/batch_normalization_11/batchnorm/subSubAmodel_2/batch_normalization_11/batchnorm/ReadVariableOp_2:value:02model_2/batch_normalization_11/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А╨
.model_2/batch_normalization_11/batchnorm/add_1AddV22model_2/batch_normalization_11/batchnorm/mul_1:z:00model_2/batch_normalization_11/batchnorm/sub:z:0*
T0*(
_output_shapes
:         АО
model_2/dropout_11/IdentityIdentity2model_2/batch_normalization_11/batchnorm/add_1:z:0*
T0*(
_output_shapes
:         АХ
%model_2/dense_8/MatMul/ReadVariableOpReadVariableOp.model_2_dense_8_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0з
model_2/dense_8/MatMulMatMul$model_2/dropout_11/Identity:output:0-model_2/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Т
&model_2/dense_8/BiasAdd/ReadVariableOpReadVariableOp/model_2_dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ж
model_2/dense_8/BiasAddBiasAdd model_2/dense_8/MatMul:product:0.model_2/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         v
model_2/dense_8/SigmoidSigmoid model_2/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:         j
IdentityIdentitymodel_2/dense_8/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         Г
NoOpNoOp8^model_2/batch_normalization_10/batchnorm/ReadVariableOp:^model_2/batch_normalization_10/batchnorm/ReadVariableOp_1:^model_2/batch_normalization_10/batchnorm/ReadVariableOp_2<^model_2/batch_normalization_10/batchnorm/mul/ReadVariableOp8^model_2/batch_normalization_11/batchnorm/ReadVariableOp:^model_2/batch_normalization_11/batchnorm/ReadVariableOp_1:^model_2/batch_normalization_11/batchnorm/ReadVariableOp_2<^model_2/batch_normalization_11/batchnorm/mul/ReadVariableOp>^model_2/batch_normalization_8/FusedBatchNormV3/ReadVariableOp@^model_2/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1-^model_2/batch_normalization_8/ReadVariableOp/^model_2/batch_normalization_8/ReadVariableOp_1>^model_2/batch_normalization_9/FusedBatchNormV3/ReadVariableOp@^model_2/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1-^model_2/batch_normalization_9/ReadVariableOp/^model_2/batch_normalization_9/ReadVariableOp_1(^model_2/conv2d_4/BiasAdd/ReadVariableOp'^model_2/conv2d_4/Conv2D/ReadVariableOp(^model_2/conv2d_5/BiasAdd/ReadVariableOp'^model_2/conv2d_5/Conv2D/ReadVariableOp'^model_2/dense_6/BiasAdd/ReadVariableOp&^model_2/dense_6/MatMul/ReadVariableOp'^model_2/dense_7/BiasAdd/ReadVariableOp&^model_2/dense_7/MatMul/ReadVariableOp'^model_2/dense_8/BiasAdd/ReadVariableOp&^model_2/dense_8/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:         @@: : : : : : : : : : : : : : : : : : : : : : : : : : 2r
7model_2/batch_normalization_10/batchnorm/ReadVariableOp7model_2/batch_normalization_10/batchnorm/ReadVariableOp2v
9model_2/batch_normalization_10/batchnorm/ReadVariableOp_19model_2/batch_normalization_10/batchnorm/ReadVariableOp_12v
9model_2/batch_normalization_10/batchnorm/ReadVariableOp_29model_2/batch_normalization_10/batchnorm/ReadVariableOp_22z
;model_2/batch_normalization_10/batchnorm/mul/ReadVariableOp;model_2/batch_normalization_10/batchnorm/mul/ReadVariableOp2r
7model_2/batch_normalization_11/batchnorm/ReadVariableOp7model_2/batch_normalization_11/batchnorm/ReadVariableOp2v
9model_2/batch_normalization_11/batchnorm/ReadVariableOp_19model_2/batch_normalization_11/batchnorm/ReadVariableOp_12v
9model_2/batch_normalization_11/batchnorm/ReadVariableOp_29model_2/batch_normalization_11/batchnorm/ReadVariableOp_22z
;model_2/batch_normalization_11/batchnorm/mul/ReadVariableOp;model_2/batch_normalization_11/batchnorm/mul/ReadVariableOp2~
=model_2/batch_normalization_8/FusedBatchNormV3/ReadVariableOp=model_2/batch_normalization_8/FusedBatchNormV3/ReadVariableOp2В
?model_2/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?model_2/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12\
,model_2/batch_normalization_8/ReadVariableOp,model_2/batch_normalization_8/ReadVariableOp2`
.model_2/batch_normalization_8/ReadVariableOp_1.model_2/batch_normalization_8/ReadVariableOp_12~
=model_2/batch_normalization_9/FusedBatchNormV3/ReadVariableOp=model_2/batch_normalization_9/FusedBatchNormV3/ReadVariableOp2В
?model_2/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1?model_2/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12\
,model_2/batch_normalization_9/ReadVariableOp,model_2/batch_normalization_9/ReadVariableOp2`
.model_2/batch_normalization_9/ReadVariableOp_1.model_2/batch_normalization_9/ReadVariableOp_12R
'model_2/conv2d_4/BiasAdd/ReadVariableOp'model_2/conv2d_4/BiasAdd/ReadVariableOp2P
&model_2/conv2d_4/Conv2D/ReadVariableOp&model_2/conv2d_4/Conv2D/ReadVariableOp2R
'model_2/conv2d_5/BiasAdd/ReadVariableOp'model_2/conv2d_5/BiasAdd/ReadVariableOp2P
&model_2/conv2d_5/Conv2D/ReadVariableOp&model_2/conv2d_5/Conv2D/ReadVariableOp2P
&model_2/dense_6/BiasAdd/ReadVariableOp&model_2/dense_6/BiasAdd/ReadVariableOp2N
%model_2/dense_6/MatMul/ReadVariableOp%model_2/dense_6/MatMul/ReadVariableOp2P
&model_2/dense_7/BiasAdd/ReadVariableOp&model_2/dense_7/BiasAdd/ReadVariableOp2N
%model_2/dense_7/MatMul/ReadVariableOp%model_2/dense_7/MatMul/ReadVariableOp2P
&model_2/dense_8/BiasAdd/ReadVariableOp&model_2/dense_8/BiasAdd/ReadVariableOp2N
%model_2/dense_8/MatMul/ReadVariableOp%model_2/dense_8/MatMul/ReadVariableOp:X T
/
_output_shapes
:         @@
!
_user_specified_name	input_3
У
g
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_468973

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
├

d
E__inference_dropout_8_layer_call_and_return_conditional_losses_468098

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:            C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:            *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:            T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:            i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:            "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:            :W S
/
_output_shapes
:            
 
_user_specified_nameinputs
╠
Ь
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_467459

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
м
K
#__inference__update_step_xla_194738
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ж
└
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_467490

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
╠
Ь
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_469017

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Ж
└
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_467566

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
│
╓
7__inference_batch_normalization_11_layer_call_fn_469365

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_467730p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╟
a
E__inference_flatten_2_layer_call_and_return_conditional_losses_467822

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"        ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А@Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
ж

ў
C__inference_dense_7_layer_call_and_return_conditional_losses_467868

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╡
╓
7__inference_batch_normalization_10_layer_call_fn_469225

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_467601p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
п
L
#__inference__update_step_xla_194808
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: *
	_noinline(:E A

_output_shapes	
:А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
╫R
О
C__inference_model_2_layer_call_and_return_conditional_losses_468498
input_3)
conv2d_4_468429: 
conv2d_4_468431: *
batch_normalization_8_468435: *
batch_normalization_8_468437: *
batch_normalization_8_468439: *
batch_normalization_8_468441: )
conv2d_5_468445:  
conv2d_5_468447: *
batch_normalization_9_468451: *
batch_normalization_9_468453: *
batch_normalization_9_468455: *
batch_normalization_9_468457: "
dense_6_468462:
А@А
dense_6_468464:	А,
batch_normalization_10_468467:	А,
batch_normalization_10_468469:	А,
batch_normalization_10_468471:	А,
batch_normalization_10_468473:	А"
dense_7_468477:
АА
dense_7_468479:	А,
batch_normalization_11_468482:	А,
batch_normalization_11_468484:	А,
batch_normalization_11_468486:	А,
batch_normalization_11_468488:	А!
dense_8_468492:	А
dense_8_468494:
identityИв.batch_normalization_10/StatefulPartitionedCallв.batch_normalization_11/StatefulPartitionedCallв-batch_normalization_8/StatefulPartitionedCallв-batch_normalization_9/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallв conv2d_5/StatefulPartitionedCallвdense_6/StatefulPartitionedCallвdense_7/StatefulPartitionedCallвdense_8/StatefulPartitionedCallв"dropout_10/StatefulPartitionedCallв"dropout_11/StatefulPartitionedCallв!dropout_8/StatefulPartitionedCallв!dropout_9/StatefulPartitionedCall№
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallinput_3conv2d_4_468429conv2d_4_468431*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_467759Ї
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_467434П
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0batch_normalization_8_468435batch_normalization_8_468437batch_normalization_8_468439batch_normalization_8_468441*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_467490Е
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_468098Я
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0conv2d_5_468445conv2d_5_468447*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_467793Ї
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_467510П
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0batch_normalization_9_468451batch_normalization_9_468453batch_normalization_9_468455batch_normalization_9_468457*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_467566й
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_468065т
flatten_2/PartitionedCallPartitionedCall*dropout_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_467822М
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_6_468462dense_6_468464*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_467835О
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0batch_normalization_10_468467batch_normalization_10_468469batch_normalization_10_468471batch_normalization_10_468473*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_467648е
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0"^dropout_9/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_468026Х
dense_7/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0dense_7_468477dense_7_468479*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_467868О
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0batch_normalization_11_468482batch_normalization_11_468484batch_normalization_11_468486batch_normalization_11_468488*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_467730ж
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0#^dropout_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_467993Ф
dense_8/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0dense_8_468492dense_8_468494*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_467901w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╞
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:         @@: : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:X T
/
_output_shapes
:         @@
!
_user_specified_name	input_3
У
g
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_467434

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
█
м
(__inference_model_2_layer_call_fn_468354
input_3!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:
А@А

unknown_12:	А

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:
АА

unknown_18:	А

unknown_19:	А

unknown_20:	А

unknown_21:	А

unknown_22:	А

unknown_23:	А

unknown_24:
identityИвStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_468242o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:         @@: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:         @@
!
_user_specified_name	input_3
Г
¤
D__inference_conv2d_4_layer_call_and_return_conditional_losses_467759

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @@ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @@ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
Ж
└
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_469154

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
м
K
#__inference__update_step_xla_194743
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
├

d
E__inference_dropout_8_layer_call_and_return_conditional_losses_469062

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:            C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:            *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:            T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:            i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:            "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:            :W S
/
_output_shapes
:            
 
_user_specified_nameinputs
и
G
+__inference_dropout_10_layer_call_fn_469297

inputs
identity╡
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_467855a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
У

e
F__inference_dropout_11_layer_call_and_return_conditional_losses_469446

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╪
л
(__inference_model_2_layer_call_fn_468673

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:
А@А

unknown_12:	А

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:
АА

unknown_18:	А

unknown_19:	А

unknown_20:	А

unknown_21:	А

unknown_22:	А

unknown_23:	А

unknown_24:
identityИвStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_468242o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:         @@: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
°
c
E__inference_dropout_8_layer_call_and_return_conditional_losses_469050

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:            c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:            "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:            :W S
/
_output_shapes
:            
 
_user_specified_nameinputs
у
м
(__inference_model_2_layer_call_fn_467963
input_3!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:
А@А

unknown_12:	А

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:
АА

unknown_18:	А

unknown_19:	А

unknown_20:	А

unknown_21:	А

unknown_22:	А

unknown_23:	А

unknown_24:
identityИвStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_467908o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:         @@: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:         @@
!
_user_specified_name	input_3
Г
¤
D__inference_conv2d_4_layer_call_and_return_conditional_losses_468963

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @@ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @@ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @@ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
У

e
F__inference_dropout_10_layer_call_and_return_conditional_losses_468026

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ф	
╤
6__inference_batch_normalization_9_layer_call_fn_469105

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_467535Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
м
K
#__inference__update_step_xla_194758
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
°
c
E__inference_dropout_8_layer_call_and_return_conditional_losses_467780

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:            c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:            "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:            :W S
/
_output_shapes
:            
 
_user_specified_nameinputs
Т	
╤
6__inference_batch_normalization_8_layer_call_fn_468999

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_467490Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
м
K
#__inference__update_step_xla_194748
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
▌
d
F__inference_dropout_11_layer_call_and_return_conditional_losses_469434

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
░%
я
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_469419

inputs6
'assignmovingavg_readvariableop_resource:	А8
)assignmovingavg_1_readvariableop_resource:	А4
%batchnorm_mul_readvariableop_resource:	А0
!batchnorm_readvariableop_resource:	А
identityИвAssignMovingAvgвAssignMovingAvg/ReadVariableOpвAssignMovingAvg_1в AssignMovingAvg_1/ReadVariableOpвbatchnorm/ReadVariableOpвbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: А
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	АИ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:         Аl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Я
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<Г
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:А*
dtype0В
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:Аy
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:Ам
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<З
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:А*
dtype0И
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:А
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:А┤
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:АQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:Аd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         Аi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:Аw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:Аs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         Аc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         Аъ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
▌
d
F__inference_dropout_11_layer_call_and_return_conditional_losses_467888

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
с
╡
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_469385

inputs0
!batchnorm_readvariableop_resource:	А4
%batchnorm_mul_readvariableop_resource:	А2
#batchnorm_readvariableop_1_resource:	А2
#batchnorm_readvariableop_2_resource:	А
identityИвbatchnorm/ReadVariableOpвbatchnorm/ReadVariableOp_1вbatchnorm/ReadVariableOp_2вbatchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:АQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:Аd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         А{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:А*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:А*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:Аs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         Аc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         А║
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
э
Ю
)__inference_conv2d_4_layer_call_fn_468952

inputs!
unknown: 
	unknown_0: 
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_467759w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @@ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
░%
я
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_469292

inputs6
'assignmovingavg_readvariableop_resource:	А8
)assignmovingavg_1_readvariableop_resource:	А4
%batchnorm_mul_readvariableop_resource:	А0
!batchnorm_readvariableop_resource:	А
identityИвAssignMovingAvgвAssignMovingAvg/ReadVariableOpвAssignMovingAvg_1в AssignMovingAvg_1/ReadVariableOpвbatchnorm/ReadVariableOpвbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: А
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	АИ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:         Аl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Я
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<Г
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:А*
dtype0В
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:Аy
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:Ам
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<З
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:А*
dtype0И
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:А
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:А┤
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:АQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:Аd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         Аi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:Аw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:Аs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         Аc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         Аъ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
░%
я
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_467730

inputs6
'assignmovingavg_readvariableop_resource:	А8
)assignmovingavg_1_readvariableop_resource:	А4
%batchnorm_mul_readvariableop_resource:	А0
!batchnorm_readvariableop_resource:	А
identityИвAssignMovingAvgвAssignMovingAvg/ReadVariableOpвAssignMovingAvg_1в AssignMovingAvg_1/ReadVariableOpвbatchnorm/ReadVariableOpвbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: А
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	АИ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:         Аl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Я
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<Г
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:А*
dtype0В
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:Аy
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:Ам
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<З
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:А*
dtype0И
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:А
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:А┤
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:АQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:Аd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         Аi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:Аw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:Аs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         Аc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         Аъ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╩
Ш
(__inference_dense_6_layer_call_fn_469201

inputs
unknown:
А@А
	unknown_0:	А
identityИвStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_467835p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А@: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А@
 
_user_specified_nameinputs
Ж
└
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_469035

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
°
c
E__inference_dropout_9_layer_call_and_return_conditional_losses_467814

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:          c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:          "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
и
G
+__inference_dropout_11_layer_call_fn_469424

inputs
identity╡
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_467888a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Г
¤
D__inference_conv2d_5_layer_call_and_return_conditional_losses_469082

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:            i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:            w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:            : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
п
L
#__inference__update_step_xla_194788
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: *
	_noinline(:E A

_output_shapes	
:А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
м
K
#__inference__update_step_xla_194763
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
╜
и
$__inference_signature_wrapper_468559
input_3!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:
А@А

unknown_12:	А

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:
АА

unknown_18:	А

unknown_19:	А

unknown_20:	А

unknown_21:	А

unknown_22:	А

unknown_23:	А

unknown_24:
identityИвStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_467425o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:         @@: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:         @@
!
_user_specified_name	input_3
п
L
#__inference__update_step_xla_194778
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: *
	_noinline(:E A

_output_shapes	
:А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
с
╡
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_467683

inputs0
!batchnorm_readvariableop_resource:	А4
%batchnorm_mul_readvariableop_resource:	А2
#batchnorm_readvariableop_1_resource:	А2
#batchnorm_readvariableop_2_resource:	А
identityИвbatchnorm/ReadVariableOpвbatchnorm/ReadVariableOp_1вbatchnorm/ReadVariableOp_2вbatchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:АQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:Аd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         А{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:А*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:А*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:Аs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         Аc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         А║
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╗
P
#__inference__update_step_xla_194813
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	А: *
	_noinline(:I E

_output_shapes
:	А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
╡
╓
7__inference_batch_normalization_11_layer_call_fn_469352

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_467683p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
│
╓
7__inference_batch_normalization_10_layer_call_fn_469238

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_467648p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╨
W
#__inference__update_step_xla_194733
gradient"
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: : *
	_noinline(:P L
&
_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
╠
Ь
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_469136

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
°
c
E__inference_dropout_9_layer_call_and_return_conditional_losses_469169

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:          c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:          "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
╗
L
0__inference_max_pooling2d_5_layer_call_fn_469087

inputs
identity▄
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_467510Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
У

e
F__inference_dropout_10_layer_call_and_return_conditional_losses_469319

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╩L
№
C__inference_model_2_layer_call_and_return_conditional_losses_468426
input_3)
conv2d_4_468357: 
conv2d_4_468359: *
batch_normalization_8_468363: *
batch_normalization_8_468365: *
batch_normalization_8_468367: *
batch_normalization_8_468369: )
conv2d_5_468373:  
conv2d_5_468375: *
batch_normalization_9_468379: *
batch_normalization_9_468381: *
batch_normalization_9_468383: *
batch_normalization_9_468385: "
dense_6_468390:
А@А
dense_6_468392:	А,
batch_normalization_10_468395:	А,
batch_normalization_10_468397:	А,
batch_normalization_10_468399:	А,
batch_normalization_10_468401:	А"
dense_7_468405:
АА
dense_7_468407:	А,
batch_normalization_11_468410:	А,
batch_normalization_11_468412:	А,
batch_normalization_11_468414:	А,
batch_normalization_11_468416:	А!
dense_8_468420:	А
dense_8_468422:
identityИв.batch_normalization_10/StatefulPartitionedCallв.batch_normalization_11/StatefulPartitionedCallв-batch_normalization_8/StatefulPartitionedCallв-batch_normalization_9/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallв conv2d_5/StatefulPartitionedCallвdense_6/StatefulPartitionedCallвdense_7/StatefulPartitionedCallвdense_8/StatefulPartitionedCall№
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallinput_3conv2d_4_468357conv2d_4_468359*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_467759Ї
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_467434С
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0batch_normalization_8_468363batch_normalization_8_468365batch_normalization_8_468367batch_normalization_8_468369*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_467459ї
dropout_8/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_467780Ч
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0conv2d_5_468373conv2d_5_468375*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_467793Ї
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_467510С
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0batch_normalization_9_468379batch_normalization_9_468381batch_normalization_9_468383batch_normalization_9_468385*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_467535ї
dropout_9/PartitionedCallPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_467814┌
flatten_2/PartitionedCallPartitionedCall"dropout_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_467822М
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_6_468390dense_6_468392*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_467835Р
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0batch_normalization_10_468395batch_normalization_10_468397batch_normalization_10_468399batch_normalization_10_468401*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_467601ё
dropout_10/PartitionedCallPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_467855Н
dense_7/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0dense_7_468405dense_7_468407*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_467868Р
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0batch_normalization_11_468410batch_normalization_11_468412batch_normalization_11_468414batch_normalization_11_468416*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_467683ё
dropout_11/PartitionedCallPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_467888М
dense_8/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0dense_8_468420dense_8_468422*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_467901w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ┤
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:         @@: : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall:X T
/
_output_shapes
:         @@
!
_user_specified_name	input_3
Ф
c
*__inference_dropout_9_layer_call_fn_469164

inputs
identityИвStatefulPartitionedCall╦
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_468065w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
┬
F
*__inference_dropout_8_layer_call_fn_469040

inputs
identity╗
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_467780h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:            "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:            :W S
/
_output_shapes
:            
 
_user_specified_nameinputs
╩
Ш
(__inference_dense_7_layer_call_fn_469328

inputs
unknown:
АА
	unknown_0:	А
identityИвStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_467868p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
п
L
#__inference__update_step_xla_194798
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: *
	_noinline(:E A

_output_shapes	
:А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Т	
╤
6__inference_batch_normalization_9_layer_call_fn_469118

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_467566Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
с
╡
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_469258

inputs0
!batchnorm_readvariableop_resource:	А4
%batchnorm_mul_readvariableop_resource:	А2
#batchnorm_readvariableop_1_resource:	А2
#batchnorm_readvariableop_2_resource:	А
identityИвbatchnorm/ReadVariableOpвbatchnorm/ReadVariableOp_1вbatchnorm/ReadVariableOp_2вbatchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:АQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:Аd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         А{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:А*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:А*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:Аs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         Аc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         А║
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_469092

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╠
Ь
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_467535

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
▌
d
F__inference_dropout_10_layer_call_and_return_conditional_losses_469307

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╨
W
#__inference__update_step_xla_194753
gradient"
variable:  *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:  : *
	_noinline(:P L
&
_output_shapes
:  
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Эб
Є,
"__inference__traced_restore_469907
file_prefix:
 assignvariableop_conv2d_4_kernel: .
 assignvariableop_1_conv2d_4_bias: <
.assignvariableop_2_batch_normalization_8_gamma: ;
-assignvariableop_3_batch_normalization_8_beta: B
4assignvariableop_4_batch_normalization_8_moving_mean: F
8assignvariableop_5_batch_normalization_8_moving_variance: <
"assignvariableop_6_conv2d_5_kernel:  .
 assignvariableop_7_conv2d_5_bias: <
.assignvariableop_8_batch_normalization_9_gamma: ;
-assignvariableop_9_batch_normalization_9_beta: C
5assignvariableop_10_batch_normalization_9_moving_mean: G
9assignvariableop_11_batch_normalization_9_moving_variance: 6
"assignvariableop_12_dense_6_kernel:
А@А/
 assignvariableop_13_dense_6_bias:	А?
0assignvariableop_14_batch_normalization_10_gamma:	А>
/assignvariableop_15_batch_normalization_10_beta:	АE
6assignvariableop_16_batch_normalization_10_moving_mean:	АI
:assignvariableop_17_batch_normalization_10_moving_variance:	А6
"assignvariableop_18_dense_7_kernel:
АА/
 assignvariableop_19_dense_7_bias:	А?
0assignvariableop_20_batch_normalization_11_gamma:	А>
/assignvariableop_21_batch_normalization_11_beta:	АE
6assignvariableop_22_batch_normalization_11_moving_mean:	АI
:assignvariableop_23_batch_normalization_11_moving_variance:	А5
"assignvariableop_24_dense_8_kernel:	А.
 assignvariableop_25_dense_8_bias:'
assignvariableop_26_iteration:	 +
!assignvariableop_27_learning_rate: D
*assignvariableop_28_adam_m_conv2d_4_kernel: D
*assignvariableop_29_adam_v_conv2d_4_kernel: 6
(assignvariableop_30_adam_m_conv2d_4_bias: 6
(assignvariableop_31_adam_v_conv2d_4_bias: D
6assignvariableop_32_adam_m_batch_normalization_8_gamma: D
6assignvariableop_33_adam_v_batch_normalization_8_gamma: C
5assignvariableop_34_adam_m_batch_normalization_8_beta: C
5assignvariableop_35_adam_v_batch_normalization_8_beta: D
*assignvariableop_36_adam_m_conv2d_5_kernel:  D
*assignvariableop_37_adam_v_conv2d_5_kernel:  6
(assignvariableop_38_adam_m_conv2d_5_bias: 6
(assignvariableop_39_adam_v_conv2d_5_bias: D
6assignvariableop_40_adam_m_batch_normalization_9_gamma: D
6assignvariableop_41_adam_v_batch_normalization_9_gamma: C
5assignvariableop_42_adam_m_batch_normalization_9_beta: C
5assignvariableop_43_adam_v_batch_normalization_9_beta: =
)assignvariableop_44_adam_m_dense_6_kernel:
А@А=
)assignvariableop_45_adam_v_dense_6_kernel:
А@А6
'assignvariableop_46_adam_m_dense_6_bias:	А6
'assignvariableop_47_adam_v_dense_6_bias:	АF
7assignvariableop_48_adam_m_batch_normalization_10_gamma:	АF
7assignvariableop_49_adam_v_batch_normalization_10_gamma:	АE
6assignvariableop_50_adam_m_batch_normalization_10_beta:	АE
6assignvariableop_51_adam_v_batch_normalization_10_beta:	А=
)assignvariableop_52_adam_m_dense_7_kernel:
АА=
)assignvariableop_53_adam_v_dense_7_kernel:
АА6
'assignvariableop_54_adam_m_dense_7_bias:	А6
'assignvariableop_55_adam_v_dense_7_bias:	АF
7assignvariableop_56_adam_m_batch_normalization_11_gamma:	АF
7assignvariableop_57_adam_v_batch_normalization_11_gamma:	АE
6assignvariableop_58_adam_m_batch_normalization_11_beta:	АE
6assignvariableop_59_adam_v_batch_normalization_11_beta:	А<
)assignvariableop_60_adam_m_dense_8_kernel:	А<
)assignvariableop_61_adam_v_dense_8_kernel:	А5
'assignvariableop_62_adam_m_dense_8_bias:5
'assignvariableop_63_adam_v_dense_8_bias:%
assignvariableop_64_total_1: %
assignvariableop_65_count_1: #
assignvariableop_66_total: #
assignvariableop_67_count: 
identity_69ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_56вAssignVariableOp_57вAssignVariableOp_58вAssignVariableOp_59вAssignVariableOp_6вAssignVariableOp_60вAssignVariableOp_61вAssignVariableOp_62вAssignVariableOp_63вAssignVariableOp_64вAssignVariableOp_65вAssignVariableOp_66вAssignVariableOp_67вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9х
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*Л
valueБB■EB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¤
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*Я
valueХBТEB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ·
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*к
_output_shapesЧ
Ф:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*S
dtypesI
G2E	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOpAssignVariableOp assignvariableop_conv2d_4_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_4_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_2AssignVariableOp.assignvariableop_2_batch_normalization_8_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_3AssignVariableOp-assignvariableop_3_batch_normalization_8_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:╦
AssignVariableOp_4AssignVariableOp4assignvariableop_4_batch_normalization_8_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_5AssignVariableOp8assignvariableop_5_batch_normalization_8_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_5_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_5_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_8AssignVariableOp.assignvariableop_8_batch_normalization_9_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_9AssignVariableOp-assignvariableop_9_batch_normalization_9_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_10AssignVariableOp5assignvariableop_10_batch_normalization_9_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:╥
AssignVariableOp_11AssignVariableOp9assignvariableop_11_batch_normalization_9_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_6_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_6_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:╔
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_10_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_10_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_10_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:╙
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_10_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_18AssignVariableOp"assignvariableop_18_dense_7_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_19AssignVariableOp assignvariableop_19_dense_7_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:╔
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_11_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_11_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_11_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:╙
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_11_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_24AssignVariableOp"assignvariableop_24_dense_8_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_25AssignVariableOp assignvariableop_25_dense_8_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0	*
_output_shapes
:╢
AssignVariableOp_26AssignVariableOpassignvariableop_26_iterationIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_27AssignVariableOp!assignvariableop_27_learning_rateIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_m_conv2d_4_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_v_conv2d_4_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_m_conv2d_4_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_v_conv2d_4_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_32AssignVariableOp6assignvariableop_32_adam_m_batch_normalization_8_gammaIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_v_batch_normalization_8_gammaIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_34AssignVariableOp5assignvariableop_34_adam_m_batch_normalization_8_betaIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_35AssignVariableOp5assignvariableop_35_adam_v_batch_normalization_8_betaIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_m_conv2d_5_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_v_conv2d_5_kernelIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_m_conv2d_5_biasIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_39AssignVariableOp(assignvariableop_39_adam_v_conv2d_5_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_40AssignVariableOp6assignvariableop_40_adam_m_batch_normalization_9_gammaIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_41AssignVariableOp6assignvariableop_41_adam_v_batch_normalization_9_gammaIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_42AssignVariableOp5assignvariableop_42_adam_m_batch_normalization_9_betaIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_43AssignVariableOp5assignvariableop_43_adam_v_batch_normalization_9_betaIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_m_dense_6_kernelIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_45AssignVariableOp)assignvariableop_45_adam_v_dense_6_kernelIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_46AssignVariableOp'assignvariableop_46_adam_m_dense_6_biasIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_47AssignVariableOp'assignvariableop_47_adam_v_dense_6_biasIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:╨
AssignVariableOp_48AssignVariableOp7assignvariableop_48_adam_m_batch_normalization_10_gammaIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:╨
AssignVariableOp_49AssignVariableOp7assignvariableop_49_adam_v_batch_normalization_10_gammaIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_50AssignVariableOp6assignvariableop_50_adam_m_batch_normalization_10_betaIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_51AssignVariableOp6assignvariableop_51_adam_v_batch_normalization_10_betaIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_m_dense_7_kernelIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_53AssignVariableOp)assignvariableop_53_adam_v_dense_7_kernelIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_54AssignVariableOp'assignvariableop_54_adam_m_dense_7_biasIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_55AssignVariableOp'assignvariableop_55_adam_v_dense_7_biasIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:╨
AssignVariableOp_56AssignVariableOp7assignvariableop_56_adam_m_batch_normalization_11_gammaIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:╨
AssignVariableOp_57AssignVariableOp7assignvariableop_57_adam_v_batch_normalization_11_gammaIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_58AssignVariableOp6assignvariableop_58_adam_m_batch_normalization_11_betaIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_59AssignVariableOp6assignvariableop_59_adam_v_batch_normalization_11_betaIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_60AssignVariableOp)assignvariableop_60_adam_m_dense_8_kernelIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_61AssignVariableOp)assignvariableop_61_adam_v_dense_8_kernelIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_62AssignVariableOp'assignvariableop_62_adam_m_dense_8_biasIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_63AssignVariableOp'assignvariableop_63_adam_v_dense_8_biasIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_64AssignVariableOpassignvariableop_64_total_1Identity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_65AssignVariableOpassignvariableop_65_count_1Identity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_66AssignVariableOpassignvariableop_66_totalIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_67AssignVariableOpassignvariableop_67_countIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 з
Identity_68Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_69IdentityIdentity_68:output:0^NoOp_1*
T0*
_output_shapes
: Ф
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_69Identity_69:output:0*Я
_input_shapesН
К: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
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
AssignVariableOp_3AssignVariableOp_32*
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
AssignVariableOp_4AssignVariableOp_42*
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
AssignVariableOp_5AssignVariableOp_52*
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
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
╛
Q
#__inference__update_step_xla_194773
gradient
variable:
А@А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*!
_input_shapes
:
А@А: *
	_noinline(:J F
 
_output_shapes
:
А@А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
╟L
√
C__inference_model_2_layer_call_and_return_conditional_losses_467908

inputs)
conv2d_4_467760: 
conv2d_4_467762: *
batch_normalization_8_467766: *
batch_normalization_8_467768: *
batch_normalization_8_467770: *
batch_normalization_8_467772: )
conv2d_5_467794:  
conv2d_5_467796: *
batch_normalization_9_467800: *
batch_normalization_9_467802: *
batch_normalization_9_467804: *
batch_normalization_9_467806: "
dense_6_467836:
А@А
dense_6_467838:	А,
batch_normalization_10_467841:	А,
batch_normalization_10_467843:	А,
batch_normalization_10_467845:	А,
batch_normalization_10_467847:	А"
dense_7_467869:
АА
dense_7_467871:	А,
batch_normalization_11_467874:	А,
batch_normalization_11_467876:	А,
batch_normalization_11_467878:	А,
batch_normalization_11_467880:	А!
dense_8_467902:	А
dense_8_467904:
identityИв.batch_normalization_10/StatefulPartitionedCallв.batch_normalization_11/StatefulPartitionedCallв-batch_normalization_8/StatefulPartitionedCallв-batch_normalization_9/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallв conv2d_5/StatefulPartitionedCallвdense_6/StatefulPartitionedCallвdense_7/StatefulPartitionedCallвdense_8/StatefulPartitionedCall√
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_4_467760conv2d_4_467762*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_467759Ї
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_467434С
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0batch_normalization_8_467766batch_normalization_8_467768batch_normalization_8_467770batch_normalization_8_467772*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_467459ї
dropout_8/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_467780Ч
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0conv2d_5_467794conv2d_5_467796*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_467793Ї
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_467510С
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0batch_normalization_9_467800batch_normalization_9_467802batch_normalization_9_467804batch_normalization_9_467806*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_467535ї
dropout_9/PartitionedCallPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_467814┌
flatten_2/PartitionedCallPartitionedCall"dropout_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_467822М
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_6_467836dense_6_467838*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_467835Р
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0batch_normalization_10_467841batch_normalization_10_467843batch_normalization_10_467845batch_normalization_10_467847*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_467601ё
dropout_10/PartitionedCallPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_467855Н
dense_7/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0dense_7_467869dense_7_467871*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_467868Р
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0batch_normalization_11_467874batch_normalization_11_467876batch_normalization_11_467878batch_normalization_11_467880*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_467683ё
dropout_11/PartitionedCallPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_467888М
dense_8/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0dense_8_467902dense_8_467904*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_467901w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ┤
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:         @@: : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
├

d
E__inference_dropout_9_layer_call_and_return_conditional_losses_468065

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:          C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:          *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:          T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:          i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:          "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
п
L
#__inference__update_step_xla_194803
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: *
	_noinline(:E A

_output_shapes	
:А
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Э

ї
C__inference_dense_8_layer_call_and_return_conditional_losses_469466

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
м
K
#__inference__update_step_xla_194768
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
╞
Ц
(__inference_dense_8_layer_call_fn_469455

inputs
unknown:	А
	unknown_0:
identityИвStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_467901o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
├

d
E__inference_dropout_9_layer_call_and_return_conditional_losses_469181

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:          C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:          *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:          T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:          i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:          "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
░%
я
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_467648

inputs6
'assignmovingavg_readvariableop_resource:	А8
)assignmovingavg_1_readvariableop_resource:	А4
%batchnorm_mul_readvariableop_resource:	А0
!batchnorm_readvariableop_resource:	А
identityИвAssignMovingAvgвAssignMovingAvg/ReadVariableOpвAssignMovingAvg_1в AssignMovingAvg_1/ReadVariableOpвbatchnorm/ReadVariableOpвbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: А
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	АИ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:         Аl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Я
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<Г
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:А*
dtype0В
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:Аy
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:Ам
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<З
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:А*
dtype0И
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:А
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:А┤
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:АQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:Аd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         Аi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:Аw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:Аs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         Аc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         Аъ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ф	
╤
6__inference_batch_normalization_8_layer_call_fn_468986

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_467459Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Г
¤
D__inference_conv2d_5_layer_call_and_return_conditional_losses_467793

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:            i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:            w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:            : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:            
 
_user_specified_nameinputs
╘R
Н
C__inference_model_2_layer_call_and_return_conditional_losses_468242

inputs)
conv2d_4_468173: 
conv2d_4_468175: *
batch_normalization_8_468179: *
batch_normalization_8_468181: *
batch_normalization_8_468183: *
batch_normalization_8_468185: )
conv2d_5_468189:  
conv2d_5_468191: *
batch_normalization_9_468195: *
batch_normalization_9_468197: *
batch_normalization_9_468199: *
batch_normalization_9_468201: "
dense_6_468206:
А@А
dense_6_468208:	А,
batch_normalization_10_468211:	А,
batch_normalization_10_468213:	А,
batch_normalization_10_468215:	А,
batch_normalization_10_468217:	А"
dense_7_468221:
АА
dense_7_468223:	А,
batch_normalization_11_468226:	А,
batch_normalization_11_468228:	А,
batch_normalization_11_468230:	А,
batch_normalization_11_468232:	А!
dense_8_468236:	А
dense_8_468238:
identityИв.batch_normalization_10/StatefulPartitionedCallв.batch_normalization_11/StatefulPartitionedCallв-batch_normalization_8/StatefulPartitionedCallв-batch_normalization_9/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallв conv2d_5/StatefulPartitionedCallвdense_6/StatefulPartitionedCallвdense_7/StatefulPartitionedCallвdense_8/StatefulPartitionedCallв"dropout_10/StatefulPartitionedCallв"dropout_11/StatefulPartitionedCallв!dropout_8/StatefulPartitionedCallв!dropout_9/StatefulPartitionedCall√
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_4_468173conv2d_4_468175*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_467759Ї
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_467434П
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0batch_normalization_8_468179batch_normalization_8_468181batch_normalization_8_468183batch_normalization_8_468185*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_467490Е
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_468098Я
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0conv2d_5_468189conv2d_5_468191*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_467793Ї
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_467510П
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0batch_normalization_9_468195batch_normalization_9_468197batch_normalization_9_468199batch_normalization_9_468201*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_467566й
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_468065т
flatten_2/PartitionedCallPartitionedCall*dropout_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_467822М
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_6_468206dense_6_468208*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_467835О
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0batch_normalization_10_468211batch_normalization_10_468213batch_normalization_10_468215batch_normalization_10_468217*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_467648е
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0"^dropout_9/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_468026Х
dense_7/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0dense_7_468221dense_7_468223*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_467868О
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0batch_normalization_11_468226batch_normalization_11_468228batch_normalization_11_468230batch_normalization_11_468232*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_467730ж
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0#^dropout_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_467993Ф
dense_8/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0dense_8_468236dense_8_468238*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_467901w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╞
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:         @@: : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
╫Б
Р
__inference__traced_save_469693
file_prefix.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop:
6savev2_batch_normalization_8_gamma_read_readvariableop9
5savev2_batch_normalization_8_beta_read_readvariableop@
<savev2_batch_normalization_8_moving_mean_read_readvariableopD
@savev2_batch_normalization_8_moving_variance_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableop:
6savev2_batch_normalization_9_gamma_read_readvariableop9
5savev2_batch_normalization_9_beta_read_readvariableop@
<savev2_batch_normalization_9_moving_mean_read_readvariableopD
@savev2_batch_normalization_9_moving_variance_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop;
7savev2_batch_normalization_10_gamma_read_readvariableop:
6savev2_batch_normalization_10_beta_read_readvariableopA
=savev2_batch_normalization_10_moving_mean_read_readvariableopE
Asavev2_batch_normalization_10_moving_variance_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop;
7savev2_batch_normalization_11_gamma_read_readvariableop:
6savev2_batch_normalization_11_beta_read_readvariableopA
=savev2_batch_normalization_11_moving_mean_read_readvariableopE
Asavev2_batch_normalization_11_moving_variance_read_readvariableop-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop5
1savev2_adam_m_conv2d_4_kernel_read_readvariableop5
1savev2_adam_v_conv2d_4_kernel_read_readvariableop3
/savev2_adam_m_conv2d_4_bias_read_readvariableop3
/savev2_adam_v_conv2d_4_bias_read_readvariableopA
=savev2_adam_m_batch_normalization_8_gamma_read_readvariableopA
=savev2_adam_v_batch_normalization_8_gamma_read_readvariableop@
<savev2_adam_m_batch_normalization_8_beta_read_readvariableop@
<savev2_adam_v_batch_normalization_8_beta_read_readvariableop5
1savev2_adam_m_conv2d_5_kernel_read_readvariableop5
1savev2_adam_v_conv2d_5_kernel_read_readvariableop3
/savev2_adam_m_conv2d_5_bias_read_readvariableop3
/savev2_adam_v_conv2d_5_bias_read_readvariableopA
=savev2_adam_m_batch_normalization_9_gamma_read_readvariableopA
=savev2_adam_v_batch_normalization_9_gamma_read_readvariableop@
<savev2_adam_m_batch_normalization_9_beta_read_readvariableop@
<savev2_adam_v_batch_normalization_9_beta_read_readvariableop4
0savev2_adam_m_dense_6_kernel_read_readvariableop4
0savev2_adam_v_dense_6_kernel_read_readvariableop2
.savev2_adam_m_dense_6_bias_read_readvariableop2
.savev2_adam_v_dense_6_bias_read_readvariableopB
>savev2_adam_m_batch_normalization_10_gamma_read_readvariableopB
>savev2_adam_v_batch_normalization_10_gamma_read_readvariableopA
=savev2_adam_m_batch_normalization_10_beta_read_readvariableopA
=savev2_adam_v_batch_normalization_10_beta_read_readvariableop4
0savev2_adam_m_dense_7_kernel_read_readvariableop4
0savev2_adam_v_dense_7_kernel_read_readvariableop2
.savev2_adam_m_dense_7_bias_read_readvariableop2
.savev2_adam_v_dense_7_bias_read_readvariableopB
>savev2_adam_m_batch_normalization_11_gamma_read_readvariableopB
>savev2_adam_v_batch_normalization_11_gamma_read_readvariableopA
=savev2_adam_m_batch_normalization_11_beta_read_readvariableopA
=savev2_adam_v_batch_normalization_11_beta_read_readvariableop4
0savev2_adam_m_dense_8_kernel_read_readvariableop4
0savev2_adam_v_dense_8_kernel_read_readvariableop2
.savev2_adam_m_dense_8_bias_read_readvariableop2
.savev2_adam_v_dense_8_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
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
: т
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*Л
valueБB■EB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH·
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*Я
valueХBТEB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ░
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop6savev2_batch_normalization_8_gamma_read_readvariableop5savev2_batch_normalization_8_beta_read_readvariableop<savev2_batch_normalization_8_moving_mean_read_readvariableop@savev2_batch_normalization_8_moving_variance_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop6savev2_batch_normalization_9_gamma_read_readvariableop5savev2_batch_normalization_9_beta_read_readvariableop<savev2_batch_normalization_9_moving_mean_read_readvariableop@savev2_batch_normalization_9_moving_variance_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop7savev2_batch_normalization_10_gamma_read_readvariableop6savev2_batch_normalization_10_beta_read_readvariableop=savev2_batch_normalization_10_moving_mean_read_readvariableopAsavev2_batch_normalization_10_moving_variance_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop7savev2_batch_normalization_11_gamma_read_readvariableop6savev2_batch_normalization_11_beta_read_readvariableop=savev2_batch_normalization_11_moving_mean_read_readvariableopAsavev2_batch_normalization_11_moving_variance_read_readvariableop)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop1savev2_adam_m_conv2d_4_kernel_read_readvariableop1savev2_adam_v_conv2d_4_kernel_read_readvariableop/savev2_adam_m_conv2d_4_bias_read_readvariableop/savev2_adam_v_conv2d_4_bias_read_readvariableop=savev2_adam_m_batch_normalization_8_gamma_read_readvariableop=savev2_adam_v_batch_normalization_8_gamma_read_readvariableop<savev2_adam_m_batch_normalization_8_beta_read_readvariableop<savev2_adam_v_batch_normalization_8_beta_read_readvariableop1savev2_adam_m_conv2d_5_kernel_read_readvariableop1savev2_adam_v_conv2d_5_kernel_read_readvariableop/savev2_adam_m_conv2d_5_bias_read_readvariableop/savev2_adam_v_conv2d_5_bias_read_readvariableop=savev2_adam_m_batch_normalization_9_gamma_read_readvariableop=savev2_adam_v_batch_normalization_9_gamma_read_readvariableop<savev2_adam_m_batch_normalization_9_beta_read_readvariableop<savev2_adam_v_batch_normalization_9_beta_read_readvariableop0savev2_adam_m_dense_6_kernel_read_readvariableop0savev2_adam_v_dense_6_kernel_read_readvariableop.savev2_adam_m_dense_6_bias_read_readvariableop.savev2_adam_v_dense_6_bias_read_readvariableop>savev2_adam_m_batch_normalization_10_gamma_read_readvariableop>savev2_adam_v_batch_normalization_10_gamma_read_readvariableop=savev2_adam_m_batch_normalization_10_beta_read_readvariableop=savev2_adam_v_batch_normalization_10_beta_read_readvariableop0savev2_adam_m_dense_7_kernel_read_readvariableop0savev2_adam_v_dense_7_kernel_read_readvariableop.savev2_adam_m_dense_7_bias_read_readvariableop.savev2_adam_v_dense_7_bias_read_readvariableop>savev2_adam_m_batch_normalization_11_gamma_read_readvariableop>savev2_adam_v_batch_normalization_11_gamma_read_readvariableop=savev2_adam_m_batch_normalization_11_beta_read_readvariableop=savev2_adam_v_batch_normalization_11_beta_read_readvariableop0savev2_adam_m_dense_8_kernel_read_readvariableop0savev2_adam_v_dense_8_kernel_read_readvariableop.savev2_adam_m_dense_8_bias_read_readvariableop.savev2_adam_v_dense_8_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *S
dtypesI
G2E	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*к
_input_shapesШ
Х: : : : : : : :  : : : : : :
А@А:А:А:А:А:А:
АА:А:А:А:А:А:	А:: : : : : : : : : : :  :  : : : : : : :
А@А:
А@А:А:А:А:А:А:А:
АА:
АА:А:А:А:А:А:А:	А:	А::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: : 	

_output_shapes
: : 


_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :&"
 
_output_shapes
:
А@А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :  

_output_shapes
: : !

_output_shapes
: : "

_output_shapes
: : #

_output_shapes
: : $

_output_shapes
: :,%(
&
_output_shapes
:  :,&(
&
_output_shapes
:  : '

_output_shapes
: : (

_output_shapes
: : )

_output_shapes
: : *

_output_shapes
: : +

_output_shapes
: : ,

_output_shapes
: :&-"
 
_output_shapes
:
А@А:&."
 
_output_shapes
:
А@А:!/

_output_shapes	
:А:!0

_output_shapes	
:А:!1

_output_shapes	
:А:!2

_output_shapes	
:А:!3

_output_shapes	
:А:!4

_output_shapes	
:А:&5"
 
_output_shapes
:
АА:&6"
 
_output_shapes
:
АА:!7

_output_shapes	
:А:!8

_output_shapes	
:А:!9

_output_shapes	
:А:!:

_output_shapes	
:А:!;

_output_shapes	
:А:!<

_output_shapes	
:А:%=!

_output_shapes
:	А:%>!

_output_shapes
:	А: ?

_output_shapes
:: @

_output_shapes
::A

_output_shapes
: :B

_output_shapes
: :C

_output_shapes
: :D

_output_shapes
: :E

_output_shapes
: 
Э

ї
C__inference_dense_8_layer_call_and_return_conditional_losses_467901

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
┤
F
*__inference_flatten_2_layer_call_fn_469186

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_467822a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
▌
d
F__inference_dropout_10_layer_call_and_return_conditional_losses_467855

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
м
K
#__inference__update_step_xla_194818
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
У
g
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_467510

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs"Ж
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*▓
serving_defaultЮ
C
input_38
serving_default_input_3:0         @@;
dense_80
StatefulPartitionedCall:0         tensorflow/serving/predict:■·
▒
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer-12
layer_with_weights-6
layer-13
layer_with_weights-7
layer-14
layer-15
layer_with_weights-8
layer-16
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
▌
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses

!kernel
"bias
 #_jit_compiled_convolution_op"
_tf_keras_layer
е
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
ъ
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0axis
	1gamma
2beta
3moving_mean
4moving_variance"
_tf_keras_layer
╝
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses
;_random_generator"
_tf_keras_layer
▌
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

Bkernel
Cbias
 D_jit_compiled_convolution_op"
_tf_keras_layer
е
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
ъ
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses
Qaxis
	Rgamma
Sbeta
Tmoving_mean
Umoving_variance"
_tf_keras_layer
╝
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses
\_random_generator"
_tf_keras_layer
е
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses"
_tf_keras_layer
╗
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses

ikernel
jbias"
_tf_keras_layer
ъ
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses
qaxis
	rgamma
sbeta
tmoving_mean
umoving_variance"
_tf_keras_layer
╝
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses
|_random_generator"
_tf_keras_layer
└
}	variables
~trainable_variables
regularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses
Гkernel
	Дbias"
_tf_keras_layer
ї
Е	variables
Жtrainable_variables
Зregularization_losses
И	keras_api
Й__call__
+К&call_and_return_all_conditional_losses
	Лaxis

Мgamma
	Нbeta
Оmoving_mean
Пmoving_variance"
_tf_keras_layer
├
Р	variables
Сtrainable_variables
Тregularization_losses
У	keras_api
Ф__call__
+Х&call_and_return_all_conditional_losses
Ц_random_generator"
_tf_keras_layer
├
Ч	variables
Шtrainable_variables
Щregularization_losses
Ъ	keras_api
Ы__call__
+Ь&call_and_return_all_conditional_losses
Эkernel
	Юbias"
_tf_keras_layer
ю
!0
"1
12
23
34
45
B6
C7
R8
S9
T10
U11
i12
j13
r14
s15
t16
u17
Г18
Д19
М20
Н21
О22
П23
Э24
Ю25"
trackable_list_wrapper
м
!0
"1
12
23
B4
C5
R6
S7
i8
j9
r10
s11
Г12
Д13
М14
Н15
Э16
Ю17"
trackable_list_wrapper
 "
trackable_list_wrapper
╧
Яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
▌
дtrace_0
еtrace_1
жtrace_2
зtrace_32ъ
(__inference_model_2_layer_call_fn_467963
(__inference_model_2_layer_call_fn_468616
(__inference_model_2_layer_call_fn_468673
(__inference_model_2_layer_call_fn_468354┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zдtrace_0zеtrace_1zжtrace_2zзtrace_3
╔
иtrace_0
йtrace_1
кtrace_2
лtrace_32╓
C__inference_model_2_layer_call_and_return_conditional_losses_468780
C__inference_model_2_layer_call_and_return_conditional_losses_468943
C__inference_model_2_layer_call_and_return_conditional_losses_468426
C__inference_model_2_layer_call_and_return_conditional_losses_468498┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zиtrace_0zйtrace_1zкtrace_2zлtrace_3
╠B╔
!__inference__wrapped_model_467425input_3"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
г
м
_variables
н_iterations
о_learning_rate
п_index_dict
░
_momentums
▒_velocities
▓_update_step_xla"
experimentalOptimizer
-
│serving_default"
signature_map
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
▓
┤non_trainable_variables
╡layers
╢metrics
 ╖layer_regularization_losses
╕layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
я
╣trace_02╨
)__inference_conv2d_4_layer_call_fn_468952в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 z╣trace_0
К
║trace_02ы
D__inference_conv2d_4_layer_call_and_return_conditional_losses_468963в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 z║trace_0
):' 2conv2d_4/kernel
: 2conv2d_4/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
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
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╗non_trainable_variables
╝layers
╜metrics
 ╛layer_regularization_losses
┐layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
Ў
└trace_02╫
0__inference_max_pooling2d_4_layer_call_fn_468968в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 z└trace_0
С
┴trace_02Є
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_468973в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 z┴trace_0
<
10
21
32
43"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
┬non_trainable_variables
├layers
─metrics
 ┼layer_regularization_losses
╞layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
с
╟trace_0
╚trace_12ж
6__inference_batch_normalization_8_layer_call_fn_468986
6__inference_batch_normalization_8_layer_call_fn_468999│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╟trace_0z╚trace_1
Ч
╔trace_0
╩trace_12▄
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_469017
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_469035│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╔trace_0z╩trace_1
 "
trackable_list_wrapper
):' 2batch_normalization_8/gamma
(:& 2batch_normalization_8/beta
1:/  (2!batch_normalization_8/moving_mean
5:3  (2%batch_normalization_8/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╦non_trainable_variables
╠layers
═metrics
 ╬layer_regularization_losses
╧layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
╔
╨trace_0
╤trace_12О
*__inference_dropout_8_layer_call_fn_469040
*__inference_dropout_8_layer_call_fn_469045│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╨trace_0z╤trace_1
 
╥trace_0
╙trace_12─
E__inference_dropout_8_layer_call_and_return_conditional_losses_469050
E__inference_dropout_8_layer_call_and_return_conditional_losses_469062│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╥trace_0z╙trace_1
"
_generic_user_object
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╘non_trainable_variables
╒layers
╓metrics
 ╫layer_regularization_losses
╪layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
я
┘trace_02╨
)__inference_conv2d_5_layer_call_fn_469071в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 z┘trace_0
К
┌trace_02ы
D__inference_conv2d_5_layer_call_and_return_conditional_losses_469082в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 z┌trace_0
):'  2conv2d_5/kernel
: 2conv2d_5/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
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
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
█non_trainable_variables
▄layers
▌metrics
 ▐layer_regularization_losses
▀layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
Ў
рtrace_02╫
0__inference_max_pooling2d_5_layer_call_fn_469087в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 zрtrace_0
С
сtrace_02Є
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_469092в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 zсtrace_0
<
R0
S1
T2
U3"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
тnon_trainable_variables
уlayers
фmetrics
 хlayer_regularization_losses
цlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
с
чtrace_0
шtrace_12ж
6__inference_batch_normalization_9_layer_call_fn_469105
6__inference_batch_normalization_9_layer_call_fn_469118│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zчtrace_0zшtrace_1
Ч
щtrace_0
ъtrace_12▄
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_469136
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_469154│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zщtrace_0zъtrace_1
 "
trackable_list_wrapper
):' 2batch_normalization_9/gamma
(:& 2batch_normalization_9/beta
1:/  (2!batch_normalization_9/moving_mean
5:3  (2%batch_normalization_9/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
яlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
╔
Ёtrace_0
ёtrace_12О
*__inference_dropout_9_layer_call_fn_469159
*__inference_dropout_9_layer_call_fn_469164│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЁtrace_0zёtrace_1
 
Єtrace_0
єtrace_12─
E__inference_dropout_9_layer_call_and_return_conditional_losses_469169
E__inference_dropout_9_layer_call_and_return_conditional_losses_469181│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЄtrace_0zєtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Їnon_trainable_variables
їlayers
Ўmetrics
 ўlayer_regularization_losses
°layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
Ё
∙trace_02╤
*__inference_flatten_2_layer_call_fn_469186в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 z∙trace_0
Л
·trace_02ь
E__inference_flatten_2_layer_call_and_return_conditional_losses_469192в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 z·trace_0
.
i0
j1"
trackable_list_wrapper
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
√non_trainable_variables
№layers
¤metrics
 ■layer_regularization_losses
 layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
ю
Аtrace_02╧
(__inference_dense_6_layer_call_fn_469201в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 zАtrace_0
Й
Бtrace_02ъ
C__inference_dense_6_layer_call_and_return_conditional_losses_469212в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 zБtrace_0
": 
А@А2dense_6/kernel
:А2dense_6/bias
<
r0
s1
t2
u3"
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
у
Зtrace_0
Иtrace_12и
7__inference_batch_normalization_10_layer_call_fn_469225
7__inference_batch_normalization_10_layer_call_fn_469238│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЗtrace_0zИtrace_1
Щ
Йtrace_0
Кtrace_12▐
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_469258
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_469292│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЙtrace_0zКtrace_1
 "
trackable_list_wrapper
+:)А2batch_normalization_10/gamma
*:(А2batch_normalization_10/beta
3:1А (2"batch_normalization_10/moving_mean
7:5А (2&batch_normalization_10/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
╦
Рtrace_0
Сtrace_12Р
+__inference_dropout_10_layer_call_fn_469297
+__inference_dropout_10_layer_call_fn_469302│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zРtrace_0zСtrace_1
Б
Тtrace_0
Уtrace_12╞
F__inference_dropout_10_layer_call_and_return_conditional_losses_469307
F__inference_dropout_10_layer_call_and_return_conditional_losses_469319│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zТtrace_0zУtrace_1
"
_generic_user_object
0
Г0
Д1"
trackable_list_wrapper
0
Г0
Д1"
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
}	variables
~trainable_variables
regularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
ю
Щtrace_02╧
(__inference_dense_7_layer_call_fn_469328в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 zЩtrace_0
Й
Ъtrace_02ъ
C__inference_dense_7_layer_call_and_return_conditional_losses_469339в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 zЪtrace_0
": 
АА2dense_7/kernel
:А2dense_7/bias
@
М0
Н1
О2
П3"
trackable_list_wrapper
0
М0
Н1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
Е	variables
Жtrainable_variables
Зregularization_losses
Й__call__
+К&call_and_return_all_conditional_losses
'К"call_and_return_conditional_losses"
_generic_user_object
у
аtrace_0
бtrace_12и
7__inference_batch_normalization_11_layer_call_fn_469352
7__inference_batch_normalization_11_layer_call_fn_469365│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zаtrace_0zбtrace_1
Щ
вtrace_0
гtrace_12▐
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_469385
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_469419│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zвtrace_0zгtrace_1
 "
trackable_list_wrapper
+:)А2batch_normalization_11/gamma
*:(А2batch_normalization_11/beta
3:1А (2"batch_normalization_11/moving_mean
7:5А (2&batch_normalization_11/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
Р	variables
Сtrainable_variables
Тregularization_losses
Ф__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses"
_generic_user_object
╦
йtrace_0
кtrace_12Р
+__inference_dropout_11_layer_call_fn_469424
+__inference_dropout_11_layer_call_fn_469429│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zйtrace_0zкtrace_1
Б
лtrace_0
мtrace_12╞
F__inference_dropout_11_layer_call_and_return_conditional_losses_469434
F__inference_dropout_11_layer_call_and_return_conditional_losses_469446│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zлtrace_0zмtrace_1
"
_generic_user_object
0
Э0
Ю1"
trackable_list_wrapper
0
Э0
Ю1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
нnon_trainable_variables
оlayers
пmetrics
 ░layer_regularization_losses
▒layer_metrics
Ч	variables
Шtrainable_variables
Щregularization_losses
Ы__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses"
_generic_user_object
ю
▓trace_02╧
(__inference_dense_8_layer_call_fn_469455в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 z▓trace_0
Й
│trace_02ъ
C__inference_dense_8_layer_call_and_return_conditional_losses_469466в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 z│trace_0
!:	А2dense_8/kernel
:2dense_8/bias
Z
30
41
T2
U3
t4
u5
О6
П7"
trackable_list_wrapper
Ю
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16"
trackable_list_wrapper
0
┤0
╡1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
·Bў
(__inference_model_2_layer_call_fn_467963input_3"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
(__inference_model_2_layer_call_fn_468616inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
(__inference_model_2_layer_call_fn_468673inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
(__inference_model_2_layer_call_fn_468354input_3"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ФBС
C__inference_model_2_layer_call_and_return_conditional_losses_468780inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ФBС
C__inference_model_2_layer_call_and_return_conditional_losses_468943inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ХBТ
C__inference_model_2_layer_call_and_return_conditional_losses_468426input_3"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ХBТ
C__inference_model_2_layer_call_and_return_conditional_losses_468498input_3"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
у
н0
╢1
╖2
╕3
╣4
║5
╗6
╝7
╜8
╛9
┐10
└11
┴12
┬13
├14
─15
┼16
╞17
╟18
╚19
╔20
╩21
╦22
╠23
═24
╬25
╧26
╨27
╤28
╥29
╙30
╘31
╒32
╓33
╫34
╪35
┘36"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
╕
╢0
╕1
║2
╝3
╛4
└5
┬6
─7
╞8
╚9
╩10
╠11
╬12
╨13
╥14
╘15
╓16
╪17"
trackable_list_wrapper
╕
╖0
╣1
╗2
╜3
┐4
┴5
├6
┼7
╟8
╔9
╦10
═11
╧12
╤13
╙14
╒15
╫16
┘17"
trackable_list_wrapper
с

┌trace_0
█trace_1
▄trace_2
▌trace_3
▐trace_4
▀trace_5
рtrace_6
сtrace_7
тtrace_8
уtrace_9
фtrace_10
хtrace_11
цtrace_12
чtrace_13
шtrace_14
щtrace_15
ъtrace_16
ыtrace_172╓
#__inference__update_step_xla_194733
#__inference__update_step_xla_194738
#__inference__update_step_xla_194743
#__inference__update_step_xla_194748
#__inference__update_step_xla_194753
#__inference__update_step_xla_194758
#__inference__update_step_xla_194763
#__inference__update_step_xla_194768
#__inference__update_step_xla_194773
#__inference__update_step_xla_194778
#__inference__update_step_xla_194783
#__inference__update_step_xla_194788
#__inference__update_step_xla_194793
#__inference__update_step_xla_194798
#__inference__update_step_xla_194803
#__inference__update_step_xla_194808
#__inference__update_step_xla_194813
#__inference__update_step_xla_194818╣
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0z┌trace_0z█trace_1z▄trace_2z▌trace_3z▐trace_4z▀trace_5zрtrace_6zсtrace_7zтtrace_8zуtrace_9zфtrace_10zхtrace_11zцtrace_12zчtrace_13zшtrace_14zщtrace_15zъtrace_16zыtrace_17
╦B╚
$__inference_signature_wrapper_468559input_3"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▌B┌
)__inference_conv2d_4_layer_call_fn_468952inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
°Bї
D__inference_conv2d_4_layer_call_and_return_conditional_losses_468963inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
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
фBс
0__inference_max_pooling2d_4_layer_call_fn_468968inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
 B№
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_468973inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
√B°
6__inference_batch_normalization_8_layer_call_fn_468986inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
6__inference_batch_normalization_8_layer_call_fn_468999inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЦBУ
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_469017inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЦBУ
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_469035inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
яBь
*__inference_dropout_8_layer_call_fn_469040inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
*__inference_dropout_8_layer_call_fn_469045inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
E__inference_dropout_8_layer_call_and_return_conditional_losses_469050inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
E__inference_dropout_8_layer_call_and_return_conditional_losses_469062inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▌B┌
)__inference_conv2d_5_layer_call_fn_469071inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
°Bї
D__inference_conv2d_5_layer_call_and_return_conditional_losses_469082inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
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
фBс
0__inference_max_pooling2d_5_layer_call_fn_469087inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
 B№
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_469092inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
√B°
6__inference_batch_normalization_9_layer_call_fn_469105inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
6__inference_batch_normalization_9_layer_call_fn_469118inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЦBУ
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_469136inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЦBУ
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_469154inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
яBь
*__inference_dropout_9_layer_call_fn_469159inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
*__inference_dropout_9_layer_call_fn_469164inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
E__inference_dropout_9_layer_call_and_return_conditional_losses_469169inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
E__inference_dropout_9_layer_call_and_return_conditional_losses_469181inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▐B█
*__inference_flatten_2_layer_call_fn_469186inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
∙BЎ
E__inference_flatten_2_layer_call_and_return_conditional_losses_469192inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
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
▄B┘
(__inference_dense_6_layer_call_fn_469201inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
ўBЇ
C__inference_dense_6_layer_call_and_return_conditional_losses_469212inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
.
t0
u1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
№B∙
7__inference_batch_normalization_10_layer_call_fn_469225inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
№B∙
7__inference_batch_normalization_10_layer_call_fn_469238inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЧBФ
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_469258inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЧBФ
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_469292inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
ЁBэ
+__inference_dropout_10_layer_call_fn_469297inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЁBэ
+__inference_dropout_10_layer_call_fn_469302inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЛBИ
F__inference_dropout_10_layer_call_and_return_conditional_losses_469307inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЛBИ
F__inference_dropout_10_layer_call_and_return_conditional_losses_469319inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▄B┘
(__inference_dense_7_layer_call_fn_469328inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
ўBЇ
C__inference_dense_7_layer_call_and_return_conditional_losses_469339inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
0
О0
П1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
№B∙
7__inference_batch_normalization_11_layer_call_fn_469352inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
№B∙
7__inference_batch_normalization_11_layer_call_fn_469365inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЧBФ
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_469385inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЧBФ
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_469419inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
ЁBэ
+__inference_dropout_11_layer_call_fn_469424inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЁBэ
+__inference_dropout_11_layer_call_fn_469429inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЛBИ
F__inference_dropout_11_layer_call_and_return_conditional_losses_469434inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЛBИ
F__inference_dropout_11_layer_call_and_return_conditional_losses_469446inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▄B┘
(__inference_dense_8_layer_call_fn_469455inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
ўBЇ
C__inference_dense_8_layer_call_and_return_conditional_losses_469466inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
R
ь	variables
э	keras_api

юtotal

яcount"
_tf_keras_metric
c
Ё	variables
ё	keras_api

Єtotal

єcount
Ї
_fn_kwargs"
_tf_keras_metric
.:, 2Adam/m/conv2d_4/kernel
.:, 2Adam/v/conv2d_4/kernel
 : 2Adam/m/conv2d_4/bias
 : 2Adam/v/conv2d_4/bias
.:, 2"Adam/m/batch_normalization_8/gamma
.:, 2"Adam/v/batch_normalization_8/gamma
-:+ 2!Adam/m/batch_normalization_8/beta
-:+ 2!Adam/v/batch_normalization_8/beta
.:,  2Adam/m/conv2d_5/kernel
.:,  2Adam/v/conv2d_5/kernel
 : 2Adam/m/conv2d_5/bias
 : 2Adam/v/conv2d_5/bias
.:, 2"Adam/m/batch_normalization_9/gamma
.:, 2"Adam/v/batch_normalization_9/gamma
-:+ 2!Adam/m/batch_normalization_9/beta
-:+ 2!Adam/v/batch_normalization_9/beta
':%
А@А2Adam/m/dense_6/kernel
':%
А@А2Adam/v/dense_6/kernel
 :А2Adam/m/dense_6/bias
 :А2Adam/v/dense_6/bias
0:.А2#Adam/m/batch_normalization_10/gamma
0:.А2#Adam/v/batch_normalization_10/gamma
/:-А2"Adam/m/batch_normalization_10/beta
/:-А2"Adam/v/batch_normalization_10/beta
':%
АА2Adam/m/dense_7/kernel
':%
АА2Adam/v/dense_7/kernel
 :А2Adam/m/dense_7/bias
 :А2Adam/v/dense_7/bias
0:.А2#Adam/m/batch_normalization_11/gamma
0:.А2#Adam/v/batch_normalization_11/gamma
/:-А2"Adam/m/batch_normalization_11/beta
/:-А2"Adam/v/batch_normalization_11/beta
&:$	А2Adam/m/dense_8/kernel
&:$	А2Adam/v/dense_8/kernel
:2Adam/m/dense_8/bias
:2Adam/v/dense_8/bias
°Bї
#__inference__update_step_xla_194733gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
#__inference__update_step_xla_194738gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
#__inference__update_step_xla_194743gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
#__inference__update_step_xla_194748gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
#__inference__update_step_xla_194753gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
#__inference__update_step_xla_194758gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
#__inference__update_step_xla_194763gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
#__inference__update_step_xla_194768gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
#__inference__update_step_xla_194773gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
#__inference__update_step_xla_194778gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
#__inference__update_step_xla_194783gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
#__inference__update_step_xla_194788gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
#__inference__update_step_xla_194793gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
#__inference__update_step_xla_194798gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
#__inference__update_step_xla_194803gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
#__inference__update_step_xla_194808gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
#__inference__update_step_xla_194813gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
#__inference__update_step_xla_194818gradientvariable"╖
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
ю0
я1"
trackable_list_wrapper
.
ь	variables"
_generic_user_object
:  (2total
:  (2count
0
Є0
є1"
trackable_list_wrapper
.
Ё	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperе
#__inference__update_step_xla_194733~xвu
nвk
!К
gradient 
<Т9	%в"
· 
А
p
` VariableSpec 
`└ШП╢╥╡=
к "
 Н
#__inference__update_step_xla_194738f`в]
VвS
К
gradient 
0Т-	в
· 
А
p
` VariableSpec 
`а╫П╢╥╡=
к "
 Н
#__inference__update_step_xla_194743f`в]
VвS
К
gradient 
0Т-	в
· 
А
p
` VariableSpec 
`а┼░й╥╡=
к "
 Н
#__inference__update_step_xla_194748f`в]
VвS
К
gradient 
0Т-	в
· 
А
p
` VariableSpec 
`р╝¤лт╡=
к "
 е
#__inference__update_step_xla_194753~xвu
nвk
!К
gradient  
<Т9	%в"
·  
А
p
` VariableSpec 
`└мт╡╥╡=
к "
 Н
#__inference__update_step_xla_194758f`в]
VвS
К
gradient 
0Т-	в
· 
А
p
` VariableSpec 
`рЕт╡╥╡=
к "
 Н
#__inference__update_step_xla_194763f`в]
VвS
К
gradient 
0Т-	в
· 
А
p
` VariableSpec 
`рн┤й╥╡=
к "
 Н
#__inference__update_step_xla_194768f`в]
VвS
К
gradient 
0Т-	в
· 
А
p
` VariableSpec 
`└ШЯ╡╥╡=
к "
 Щ
#__inference__update_step_xla_194773rlвi
bв_
К
gradient
А@А
6Т3	в
·
А@А
А
p
` VariableSpec 
`АС▓╡╥╡=
к "
 П
#__inference__update_step_xla_194778hbв_
XвU
К
gradientА
1Т.	в
·А
А
p
` VariableSpec 
`АЦ│╡╥╡=
к "
 П
#__inference__update_step_xla_194783hbв_
XвU
К
gradientА
1Т.	в
·А
А
p
` VariableSpec 
`рк┬з╥╡=
к "
 П
#__inference__update_step_xla_194788hbв_
XвU
К
gradientА
1Т.	в
·А
А
p
` VariableSpec 
`рд┬з╥╡=
к "
 Щ
#__inference__update_step_xla_194793rlвi
bв_
К
gradient
АА
6Т3	в
·
АА
А
p
` VariableSpec 
`А╣М╡╥╡=
к "
 П
#__inference__update_step_xla_194798hbв_
XвU
К
gradientА
1Т.	в
·А
А
p
` VariableSpec 
`АСН╡╥╡=
к "
 П
#__inference__update_step_xla_194803hbв_
XвU
К
gradientА
1Т.	в
·А
А
p
` VariableSpec 
`ау╩з╥╡=
к "
 П
#__inference__update_step_xla_194808hbв_
XвU
К
gradientА
1Т.	в
·А
А
p
` VariableSpec 
`ац╩з╥╡=
к "
 Ч
#__inference__update_step_xla_194813pjвg
`в]
К
gradient	А
5Т2	в
·	А
А
p
` VariableSpec 
`асу┤╥╡=
к "
 Н
#__inference__update_step_xla_194818f`в]
VвS
К
gradient
0Т-	в
·
А
p
` VariableSpec 
`а═ф┤╥╡=
к "
 ╖
!__inference__wrapped_model_467425С"!"1234BCRSTUijurtsГДПМОНЭЮ8в5
.в+
)К&
input_3         @@
к "1к.
,
dense_8!К
dense_8         ┴
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_469258kurts4в1
*в'
!К
inputs         А
p 
к "-в*
#К 
tensor_0         А
Ъ ┴
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_469292kturs4в1
*в'
!К
inputs         А
p
к "-в*
#К 
tensor_0         А
Ъ Ы
7__inference_batch_normalization_10_layer_call_fn_469225`urts4в1
*в'
!К
inputs         А
p 
к ""К
unknown         АЫ
7__inference_batch_normalization_10_layer_call_fn_469238`turs4в1
*в'
!К
inputs         А
p
к ""К
unknown         А┼
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_469385oПМОН4в1
*в'
!К
inputs         А
p 
к "-в*
#К 
tensor_0         А
Ъ ┼
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_469419oОПМН4в1
*в'
!К
inputs         А
p
к "-в*
#К 
tensor_0         А
Ъ Я
7__inference_batch_normalization_11_layer_call_fn_469352dПМОН4в1
*в'
!К
inputs         А
p 
к ""К
unknown         АЯ
7__inference_batch_normalization_11_layer_call_fn_469365dОПМН4в1
*в'
!К
inputs         А
p
к ""К
unknown         Ає
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_469017Э1234MвJ
Cв@
:К7
inputs+                            
p 
к "FвC
<К9
tensor_0+                            
Ъ є
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_469035Э1234MвJ
Cв@
:К7
inputs+                            
p
к "FвC
<К9
tensor_0+                            
Ъ ═
6__inference_batch_normalization_8_layer_call_fn_468986Т1234MвJ
Cв@
:К7
inputs+                            
p 
к ";К8
unknown+                            ═
6__inference_batch_normalization_8_layer_call_fn_468999Т1234MвJ
Cв@
:К7
inputs+                            
p
к ";К8
unknown+                            є
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_469136ЭRSTUMвJ
Cв@
:К7
inputs+                            
p 
к "FвC
<К9
tensor_0+                            
Ъ є
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_469154ЭRSTUMвJ
Cв@
:К7
inputs+                            
p
к "FвC
<К9
tensor_0+                            
Ъ ═
6__inference_batch_normalization_9_layer_call_fn_469105ТRSTUMвJ
Cв@
:К7
inputs+                            
p 
к ";К8
unknown+                            ═
6__inference_batch_normalization_9_layer_call_fn_469118ТRSTUMвJ
Cв@
:К7
inputs+                            
p
к ";К8
unknown+                            ╗
D__inference_conv2d_4_layer_call_and_return_conditional_losses_468963s!"7в4
-в*
(К%
inputs         @@
к "4в1
*К'
tensor_0         @@ 
Ъ Х
)__inference_conv2d_4_layer_call_fn_468952h!"7в4
-в*
(К%
inputs         @@
к ")К&
unknown         @@ ╗
D__inference_conv2d_5_layer_call_and_return_conditional_losses_469082sBC7в4
-в*
(К%
inputs            
к "4в1
*К'
tensor_0            
Ъ Х
)__inference_conv2d_5_layer_call_fn_469071hBC7в4
-в*
(К%
inputs            
к ")К&
unknown            м
C__inference_dense_6_layer_call_and_return_conditional_losses_469212eij0в-
&в#
!К
inputs         А@
к "-в*
#К 
tensor_0         А
Ъ Ж
(__inference_dense_6_layer_call_fn_469201Zij0в-
&в#
!К
inputs         А@
к ""К
unknown         Ао
C__inference_dense_7_layer_call_and_return_conditional_losses_469339gГД0в-
&в#
!К
inputs         А
к "-в*
#К 
tensor_0         А
Ъ И
(__inference_dense_7_layer_call_fn_469328\ГД0в-
&в#
!К
inputs         А
к ""К
unknown         Ан
C__inference_dense_8_layer_call_and_return_conditional_losses_469466fЭЮ0в-
&в#
!К
inputs         А
к ",в)
"К
tensor_0         
Ъ З
(__inference_dense_8_layer_call_fn_469455[ЭЮ0в-
&в#
!К
inputs         А
к "!К
unknown         п
F__inference_dropout_10_layer_call_and_return_conditional_losses_469307e4в1
*в'
!К
inputs         А
p 
к "-в*
#К 
tensor_0         А
Ъ п
F__inference_dropout_10_layer_call_and_return_conditional_losses_469319e4в1
*в'
!К
inputs         А
p
к "-в*
#К 
tensor_0         А
Ъ Й
+__inference_dropout_10_layer_call_fn_469297Z4в1
*в'
!К
inputs         А
p 
к ""К
unknown         АЙ
+__inference_dropout_10_layer_call_fn_469302Z4в1
*в'
!К
inputs         А
p
к ""К
unknown         Ап
F__inference_dropout_11_layer_call_and_return_conditional_losses_469434e4в1
*в'
!К
inputs         А
p 
к "-в*
#К 
tensor_0         А
Ъ п
F__inference_dropout_11_layer_call_and_return_conditional_losses_469446e4в1
*в'
!К
inputs         А
p
к "-в*
#К 
tensor_0         А
Ъ Й
+__inference_dropout_11_layer_call_fn_469424Z4в1
*в'
!К
inputs         А
p 
к ""К
unknown         АЙ
+__inference_dropout_11_layer_call_fn_469429Z4в1
*в'
!К
inputs         А
p
к ""К
unknown         А╝
E__inference_dropout_8_layer_call_and_return_conditional_losses_469050s;в8
1в.
(К%
inputs            
p 
к "4в1
*К'
tensor_0            
Ъ ╝
E__inference_dropout_8_layer_call_and_return_conditional_losses_469062s;в8
1в.
(К%
inputs            
p
к "4в1
*К'
tensor_0            
Ъ Ц
*__inference_dropout_8_layer_call_fn_469040h;в8
1в.
(К%
inputs            
p 
к ")К&
unknown            Ц
*__inference_dropout_8_layer_call_fn_469045h;в8
1в.
(К%
inputs            
p
к ")К&
unknown            ╝
E__inference_dropout_9_layer_call_and_return_conditional_losses_469169s;в8
1в.
(К%
inputs          
p 
к "4в1
*К'
tensor_0          
Ъ ╝
E__inference_dropout_9_layer_call_and_return_conditional_losses_469181s;в8
1в.
(К%
inputs          
p
к "4в1
*К'
tensor_0          
Ъ Ц
*__inference_dropout_9_layer_call_fn_469159h;в8
1в.
(К%
inputs          
p 
к ")К&
unknown          Ц
*__inference_dropout_9_layer_call_fn_469164h;в8
1в.
(К%
inputs          
p
к ")К&
unknown          ▒
E__inference_flatten_2_layer_call_and_return_conditional_losses_469192h7в4
-в*
(К%
inputs          
к "-в*
#К 
tensor_0         А@
Ъ Л
*__inference_flatten_2_layer_call_fn_469186]7в4
-в*
(К%
inputs          
к ""К
unknown         А@ї
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_468973еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╧
0__inference_max_pooling2d_4_layer_call_fn_468968ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ї
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_469092еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╧
0__inference_max_pooling2d_5_layer_call_fn_469087ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ▄
C__inference_model_2_layer_call_and_return_conditional_losses_468426Ф"!"1234BCRSTUijurtsГДПМОНЭЮ@в=
6в3
)К&
input_3         @@
p 

 
к ",в)
"К
tensor_0         
Ъ ▄
C__inference_model_2_layer_call_and_return_conditional_losses_468498Ф"!"1234BCRSTUijtursГДОПМНЭЮ@в=
6в3
)К&
input_3         @@
p

 
к ",в)
"К
tensor_0         
Ъ █
C__inference_model_2_layer_call_and_return_conditional_losses_468780У"!"1234BCRSTUijurtsГДПМОНЭЮ?в<
5в2
(К%
inputs         @@
p 

 
к ",в)
"К
tensor_0         
Ъ █
C__inference_model_2_layer_call_and_return_conditional_losses_468943У"!"1234BCRSTUijtursГДОПМНЭЮ?в<
5в2
(К%
inputs         @@
p

 
к ",в)
"К
tensor_0         
Ъ ╢
(__inference_model_2_layer_call_fn_467963Й"!"1234BCRSTUijurtsГДПМОНЭЮ@в=
6в3
)К&
input_3         @@
p 

 
к "!К
unknown         ╢
(__inference_model_2_layer_call_fn_468354Й"!"1234BCRSTUijtursГДОПМНЭЮ@в=
6в3
)К&
input_3         @@
p

 
к "!К
unknown         ╡
(__inference_model_2_layer_call_fn_468616И"!"1234BCRSTUijurtsГДПМОНЭЮ?в<
5в2
(К%
inputs         @@
p 

 
к "!К
unknown         ╡
(__inference_model_2_layer_call_fn_468673И"!"1234BCRSTUijtursГДОПМНЭЮ?в<
5в2
(К%
inputs         @@
p

 
к "!К
unknown         ┼
$__inference_signature_wrapper_468559Ь"!"1234BCRSTUijurtsГДПМОНЭЮCв@
в 
9к6
4
input_3)К&
input_3         @@"1к.
,
dense_8!К
dense_8         