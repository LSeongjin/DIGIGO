ģ
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
?
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
?
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
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
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
?
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
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
executor_typestring ??
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-0-gc256c071bb28??
?
cnn_model/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namecnn_model/conv2d/kernel
?
+cnn_model/conv2d/kernel/Read/ReadVariableOpReadVariableOpcnn_model/conv2d/kernel*&
_output_shapes
:*
dtype0
?
cnn_model/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_namecnn_model/conv2d/bias
{
)cnn_model/conv2d/bias/Read/ReadVariableOpReadVariableOpcnn_model/conv2d/bias*
_output_shapes
:*
dtype0
?
cnn_model/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namecnn_model/conv2d_1/kernel
?
-cnn_model/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpcnn_model/conv2d_1/kernel*&
_output_shapes
:*
dtype0
?
cnn_model/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namecnn_model/conv2d_1/bias

+cnn_model/conv2d_1/bias/Read/ReadVariableOpReadVariableOpcnn_model/conv2d_1/bias*
_output_shapes
:*
dtype0
?
#cnn_model/batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#cnn_model/batch_normalization/gamma
?
7cnn_model/batch_normalization/gamma/Read/ReadVariableOpReadVariableOp#cnn_model/batch_normalization/gamma*
_output_shapes
:*
dtype0
?
"cnn_model/batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"cnn_model/batch_normalization/beta
?
6cnn_model/batch_normalization/beta/Read/ReadVariableOpReadVariableOp"cnn_model/batch_normalization/beta*
_output_shapes
:*
dtype0
?
)cnn_model/batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)cnn_model/batch_normalization/moving_mean
?
=cnn_model/batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOp)cnn_model/batch_normalization/moving_mean*
_output_shapes
:*
dtype0
?
-cnn_model/batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-cnn_model/batch_normalization/moving_variance
?
Acnn_model/batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp-cnn_model/batch_normalization/moving_variance*
_output_shapes
:*
dtype0
?
cnn_model/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namecnn_model/conv2d_2/kernel
?
-cnn_model/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpcnn_model/conv2d_2/kernel*&
_output_shapes
:*
dtype0
?
cnn_model/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namecnn_model/conv2d_2/bias

+cnn_model/conv2d_2/bias/Read/ReadVariableOpReadVariableOpcnn_model/conv2d_2/bias*
_output_shapes
:*
dtype0
?
%cnn_model/batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%cnn_model/batch_normalization_1/gamma
?
9cnn_model/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOp%cnn_model/batch_normalization_1/gamma*
_output_shapes
:*
dtype0
?
$cnn_model/batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$cnn_model/batch_normalization_1/beta
?
8cnn_model/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOp$cnn_model/batch_normalization_1/beta*
_output_shapes
:*
dtype0
?
+cnn_model/batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+cnn_model/batch_normalization_1/moving_mean
?
?cnn_model/batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp+cnn_model/batch_normalization_1/moving_mean*
_output_shapes
:*
dtype0
?
/cnn_model/batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/cnn_model/batch_normalization_1/moving_variance
?
Ccnn_model/batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp/cnn_model/batch_normalization_1/moving_variance*
_output_shapes
:*
dtype0
?
cnn_model/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namecnn_model/conv2d_3/kernel
?
-cnn_model/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpcnn_model/conv2d_3/kernel*&
_output_shapes
:*
dtype0
?
cnn_model/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namecnn_model/conv2d_3/bias

+cnn_model/conv2d_3/bias/Read/ReadVariableOpReadVariableOpcnn_model/conv2d_3/bias*
_output_shapes
:*
dtype0
?
%cnn_model/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%cnn_model/batch_normalization_2/gamma
?
9cnn_model/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp%cnn_model/batch_normalization_2/gamma*
_output_shapes
:*
dtype0
?
$cnn_model/batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$cnn_model/batch_normalization_2/beta
?
8cnn_model/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp$cnn_model/batch_normalization_2/beta*
_output_shapes
:*
dtype0
?
+cnn_model/batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+cnn_model/batch_normalization_2/moving_mean
?
?cnn_model/batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp+cnn_model/batch_normalization_2/moving_mean*
_output_shapes
:*
dtype0
?
/cnn_model/batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/cnn_model/batch_normalization_2/moving_variance
?
Ccnn_model/batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp/cnn_model/batch_normalization_2/moving_variance*
_output_shapes
:*
dtype0
?
cnn_model/conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namecnn_model/conv2d_4/kernel
?
-cnn_model/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpcnn_model/conv2d_4/kernel*&
_output_shapes
:*
dtype0
?
cnn_model/conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namecnn_model/conv2d_4/bias

+cnn_model/conv2d_4/bias/Read/ReadVariableOpReadVariableOpcnn_model/conv2d_4/bias*
_output_shapes
:*
dtype0
?
%cnn_model/batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%cnn_model/batch_normalization_3/gamma
?
9cnn_model/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOp%cnn_model/batch_normalization_3/gamma*
_output_shapes
:*
dtype0
?
$cnn_model/batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$cnn_model/batch_normalization_3/beta
?
8cnn_model/batch_normalization_3/beta/Read/ReadVariableOpReadVariableOp$cnn_model/batch_normalization_3/beta*
_output_shapes
:*
dtype0
?
+cnn_model/batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+cnn_model/batch_normalization_3/moving_mean
?
?cnn_model/batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp+cnn_model/batch_normalization_3/moving_mean*
_output_shapes
:*
dtype0
?
/cnn_model/batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/cnn_model/batch_normalization_3/moving_variance
?
Ccnn_model/batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp/cnn_model/batch_normalization_3/moving_variance*
_output_shapes
:*
dtype0
?
cnn_model/conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namecnn_model/conv2d_5/kernel
?
-cnn_model/conv2d_5/kernel/Read/ReadVariableOpReadVariableOpcnn_model/conv2d_5/kernel*&
_output_shapes
:*
dtype0
?
cnn_model/conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namecnn_model/conv2d_5/bias

+cnn_model/conv2d_5/bias/Read/ReadVariableOpReadVariableOpcnn_model/conv2d_5/bias*
_output_shapes
:*
dtype0
?
cnn_model/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?`*'
shared_namecnn_model/dense/kernel
?
*cnn_model/dense/kernel/Read/ReadVariableOpReadVariableOpcnn_model/dense/kernel*
_output_shapes
:	?`*
dtype0
?
cnn_model/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_namecnn_model/dense/bias
y
(cnn_model/dense/bias/Read/ReadVariableOpReadVariableOpcnn_model/dense/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
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
?
Adam/cnn_model/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/cnn_model/conv2d/kernel/m
?
2Adam/cnn_model/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/cnn_model/conv2d/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/cnn_model/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/cnn_model/conv2d/bias/m
?
0Adam/cnn_model/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/cnn_model/conv2d/bias/m*
_output_shapes
:*
dtype0
?
 Adam/cnn_model/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/cnn_model/conv2d_1/kernel/m
?
4Adam/cnn_model/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/cnn_model/conv2d_1/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/cnn_model/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/cnn_model/conv2d_1/bias/m
?
2Adam/cnn_model/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/cnn_model/conv2d_1/bias/m*
_output_shapes
:*
dtype0
?
*Adam/cnn_model/batch_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/cnn_model/batch_normalization/gamma/m
?
>Adam/cnn_model/batch_normalization/gamma/m/Read/ReadVariableOpReadVariableOp*Adam/cnn_model/batch_normalization/gamma/m*
_output_shapes
:*
dtype0
?
)Adam/cnn_model/batch_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)Adam/cnn_model/batch_normalization/beta/m
?
=Adam/cnn_model/batch_normalization/beta/m/Read/ReadVariableOpReadVariableOp)Adam/cnn_model/batch_normalization/beta/m*
_output_shapes
:*
dtype0
?
 Adam/cnn_model/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/cnn_model/conv2d_2/kernel/m
?
4Adam/cnn_model/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOp Adam/cnn_model/conv2d_2/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/cnn_model/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/cnn_model/conv2d_2/bias/m
?
2Adam/cnn_model/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/cnn_model/conv2d_2/bias/m*
_output_shapes
:*
dtype0
?
,Adam/cnn_model/batch_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adam/cnn_model/batch_normalization_1/gamma/m
?
@Adam/cnn_model/batch_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp,Adam/cnn_model/batch_normalization_1/gamma/m*
_output_shapes
:*
dtype0
?
+Adam/cnn_model/batch_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/cnn_model/batch_normalization_1/beta/m
?
?Adam/cnn_model/batch_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp+Adam/cnn_model/batch_normalization_1/beta/m*
_output_shapes
:*
dtype0
?
 Adam/cnn_model/conv2d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/cnn_model/conv2d_3/kernel/m
?
4Adam/cnn_model/conv2d_3/kernel/m/Read/ReadVariableOpReadVariableOp Adam/cnn_model/conv2d_3/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/cnn_model/conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/cnn_model/conv2d_3/bias/m
?
2Adam/cnn_model/conv2d_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/cnn_model/conv2d_3/bias/m*
_output_shapes
:*
dtype0
?
,Adam/cnn_model/batch_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adam/cnn_model/batch_normalization_2/gamma/m
?
@Adam/cnn_model/batch_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOp,Adam/cnn_model/batch_normalization_2/gamma/m*
_output_shapes
:*
dtype0
?
+Adam/cnn_model/batch_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/cnn_model/batch_normalization_2/beta/m
?
?Adam/cnn_model/batch_normalization_2/beta/m/Read/ReadVariableOpReadVariableOp+Adam/cnn_model/batch_normalization_2/beta/m*
_output_shapes
:*
dtype0
?
 Adam/cnn_model/conv2d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/cnn_model/conv2d_4/kernel/m
?
4Adam/cnn_model/conv2d_4/kernel/m/Read/ReadVariableOpReadVariableOp Adam/cnn_model/conv2d_4/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/cnn_model/conv2d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/cnn_model/conv2d_4/bias/m
?
2Adam/cnn_model/conv2d_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/cnn_model/conv2d_4/bias/m*
_output_shapes
:*
dtype0
?
,Adam/cnn_model/batch_normalization_3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adam/cnn_model/batch_normalization_3/gamma/m
?
@Adam/cnn_model/batch_normalization_3/gamma/m/Read/ReadVariableOpReadVariableOp,Adam/cnn_model/batch_normalization_3/gamma/m*
_output_shapes
:*
dtype0
?
+Adam/cnn_model/batch_normalization_3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/cnn_model/batch_normalization_3/beta/m
?
?Adam/cnn_model/batch_normalization_3/beta/m/Read/ReadVariableOpReadVariableOp+Adam/cnn_model/batch_normalization_3/beta/m*
_output_shapes
:*
dtype0
?
 Adam/cnn_model/conv2d_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/cnn_model/conv2d_5/kernel/m
?
4Adam/cnn_model/conv2d_5/kernel/m/Read/ReadVariableOpReadVariableOp Adam/cnn_model/conv2d_5/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/cnn_model/conv2d_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/cnn_model/conv2d_5/bias/m
?
2Adam/cnn_model/conv2d_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/cnn_model/conv2d_5/bias/m*
_output_shapes
:*
dtype0
?
Adam/cnn_model/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?`*.
shared_nameAdam/cnn_model/dense/kernel/m
?
1Adam/cnn_model/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/cnn_model/dense/kernel/m*
_output_shapes
:	?`*
dtype0
?
Adam/cnn_model/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameAdam/cnn_model/dense/bias/m
?
/Adam/cnn_model/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/cnn_model/dense/bias/m*
_output_shapes
:*
dtype0
?
Adam/cnn_model/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/cnn_model/conv2d/kernel/v
?
2Adam/cnn_model/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/cnn_model/conv2d/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/cnn_model/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/cnn_model/conv2d/bias/v
?
0Adam/cnn_model/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/cnn_model/conv2d/bias/v*
_output_shapes
:*
dtype0
?
 Adam/cnn_model/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/cnn_model/conv2d_1/kernel/v
?
4Adam/cnn_model/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/cnn_model/conv2d_1/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/cnn_model/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/cnn_model/conv2d_1/bias/v
?
2Adam/cnn_model/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/cnn_model/conv2d_1/bias/v*
_output_shapes
:*
dtype0
?
*Adam/cnn_model/batch_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/cnn_model/batch_normalization/gamma/v
?
>Adam/cnn_model/batch_normalization/gamma/v/Read/ReadVariableOpReadVariableOp*Adam/cnn_model/batch_normalization/gamma/v*
_output_shapes
:*
dtype0
?
)Adam/cnn_model/batch_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)Adam/cnn_model/batch_normalization/beta/v
?
=Adam/cnn_model/batch_normalization/beta/v/Read/ReadVariableOpReadVariableOp)Adam/cnn_model/batch_normalization/beta/v*
_output_shapes
:*
dtype0
?
 Adam/cnn_model/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/cnn_model/conv2d_2/kernel/v
?
4Adam/cnn_model/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOp Adam/cnn_model/conv2d_2/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/cnn_model/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/cnn_model/conv2d_2/bias/v
?
2Adam/cnn_model/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/cnn_model/conv2d_2/bias/v*
_output_shapes
:*
dtype0
?
,Adam/cnn_model/batch_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adam/cnn_model/batch_normalization_1/gamma/v
?
@Adam/cnn_model/batch_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp,Adam/cnn_model/batch_normalization_1/gamma/v*
_output_shapes
:*
dtype0
?
+Adam/cnn_model/batch_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/cnn_model/batch_normalization_1/beta/v
?
?Adam/cnn_model/batch_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp+Adam/cnn_model/batch_normalization_1/beta/v*
_output_shapes
:*
dtype0
?
 Adam/cnn_model/conv2d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/cnn_model/conv2d_3/kernel/v
?
4Adam/cnn_model/conv2d_3/kernel/v/Read/ReadVariableOpReadVariableOp Adam/cnn_model/conv2d_3/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/cnn_model/conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/cnn_model/conv2d_3/bias/v
?
2Adam/cnn_model/conv2d_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/cnn_model/conv2d_3/bias/v*
_output_shapes
:*
dtype0
?
,Adam/cnn_model/batch_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adam/cnn_model/batch_normalization_2/gamma/v
?
@Adam/cnn_model/batch_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOp,Adam/cnn_model/batch_normalization_2/gamma/v*
_output_shapes
:*
dtype0
?
+Adam/cnn_model/batch_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/cnn_model/batch_normalization_2/beta/v
?
?Adam/cnn_model/batch_normalization_2/beta/v/Read/ReadVariableOpReadVariableOp+Adam/cnn_model/batch_normalization_2/beta/v*
_output_shapes
:*
dtype0
?
 Adam/cnn_model/conv2d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/cnn_model/conv2d_4/kernel/v
?
4Adam/cnn_model/conv2d_4/kernel/v/Read/ReadVariableOpReadVariableOp Adam/cnn_model/conv2d_4/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/cnn_model/conv2d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/cnn_model/conv2d_4/bias/v
?
2Adam/cnn_model/conv2d_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/cnn_model/conv2d_4/bias/v*
_output_shapes
:*
dtype0
?
,Adam/cnn_model/batch_normalization_3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adam/cnn_model/batch_normalization_3/gamma/v
?
@Adam/cnn_model/batch_normalization_3/gamma/v/Read/ReadVariableOpReadVariableOp,Adam/cnn_model/batch_normalization_3/gamma/v*
_output_shapes
:*
dtype0
?
+Adam/cnn_model/batch_normalization_3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/cnn_model/batch_normalization_3/beta/v
?
?Adam/cnn_model/batch_normalization_3/beta/v/Read/ReadVariableOpReadVariableOp+Adam/cnn_model/batch_normalization_3/beta/v*
_output_shapes
:*
dtype0
?
 Adam/cnn_model/conv2d_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/cnn_model/conv2d_5/kernel/v
?
4Adam/cnn_model/conv2d_5/kernel/v/Read/ReadVariableOpReadVariableOp Adam/cnn_model/conv2d_5/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/cnn_model/conv2d_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/cnn_model/conv2d_5/bias/v
?
2Adam/cnn_model/conv2d_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/cnn_model/conv2d_5/bias/v*
_output_shapes
:*
dtype0
?
Adam/cnn_model/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?`*.
shared_nameAdam/cnn_model/dense/kernel/v
?
1Adam/cnn_model/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/cnn_model/dense/kernel/v*
_output_shapes
:	?`*
dtype0
?
Adam/cnn_model/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameAdam/cnn_model/dense/bias/v
?
/Adam/cnn_model/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/cnn_model/dense/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
	conv1
	pool1
conv2_t

batchnorm1
	relu1
	conv2

batchnorm2
	relu2
	add1
	
conv3

batchnorm3
	relu3
	conv4

batchnorm4
	relu4
	identity1
add2
flat
fc1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
 	variables
!trainable_variables
"regularization_losses
#	keras_api
h

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
?
*axis
	+gamma
,beta
-moving_mean
.moving_variance
/	variables
0trainable_variables
1regularization_losses
2	keras_api
R
3	variables
4trainable_variables
5regularization_losses
6	keras_api
h

7kernel
8bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api
?
=axis
	>gamma
?beta
@moving_mean
Amoving_variance
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
R
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
R
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
h

Nkernel
Obias
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
?
Taxis
	Ugamma
Vbeta
Wmoving_mean
Xmoving_variance
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
R
]	variables
^trainable_variables
_regularization_losses
`	keras_api
h

akernel
bbias
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
?
gaxis
	hgamma
ibeta
jmoving_mean
kmoving_variance
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
R
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
h

tkernel
ubias
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
R
z	variables
{trainable_variables
|regularization_losses
}	keras_api
T
~	variables
trainable_variables
?regularization_losses
?	keras_api
n
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
	?iter
?beta_1
?beta_2

?decay
?learning_ratem?m?$m?%m?+m?,m?7m?8m?>m??m?Nm?Om?Um?Vm?am?bm?hm?im?tm?um?	?m?	?m?v?v?$v?%v?+v?,v?7v?8v?>v??v?Nv?Ov?Uv?Vv?av?bv?hv?iv?tv?uv?	?v?	?v?
?
0
1
$2
%3
+4
,5
-6
.7
78
89
>10
?11
@12
A13
N14
O15
U16
V17
W18
X19
a20
b21
h22
i23
j24
k25
t26
u27
?28
?29
?
0
1
$2
%3
+4
,5
76
87
>8
?9
N10
O11
U12
V13
a14
b15
h16
i17
t18
u19
?20
?21
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
 
TR
VARIABLE_VALUEcnn_model/conv2d/kernel'conv1/kernel/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEcnn_model/conv2d/bias%conv1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
 	variables
!trainable_variables
"regularization_losses
XV
VARIABLE_VALUEcnn_model/conv2d_1/kernel)conv2_t/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEcnn_model/conv2d_1/bias'conv2_t/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1

$0
%1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
&	variables
'trainable_variables
(regularization_losses
 
db
VARIABLE_VALUE#cnn_model/batch_normalization/gamma+batchnorm1/gamma/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE"cnn_model/batch_normalization/beta*batchnorm1/beta/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE)cnn_model/batch_normalization/moving_mean1batchnorm1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE-cnn_model/batch_normalization/moving_variance5batchnorm1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

+0
,1
-2
.3

+0
,1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
/	variables
0trainable_variables
1regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
3	variables
4trainable_variables
5regularization_losses
VT
VARIABLE_VALUEcnn_model/conv2d_2/kernel'conv2/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEcnn_model/conv2d_2/bias%conv2/bias/.ATTRIBUTES/VARIABLE_VALUE

70
81

70
81
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
9	variables
:trainable_variables
;regularization_losses
 
fd
VARIABLE_VALUE%cnn_model/batch_normalization_1/gamma+batchnorm2/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUE$cnn_model/batch_normalization_1/beta*batchnorm2/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE+cnn_model/batch_normalization_1/moving_mean1batchnorm2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE/cnn_model/batch_normalization_1/moving_variance5batchnorm2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

>0
?1
@2
A3

>0
?1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
VT
VARIABLE_VALUEcnn_model/conv2d_3/kernel'conv3/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEcnn_model/conv2d_3/bias%conv3/bias/.ATTRIBUTES/VARIABLE_VALUE

N0
O1

N0
O1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
 
fd
VARIABLE_VALUE%cnn_model/batch_normalization_2/gamma+batchnorm3/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUE$cnn_model/batch_normalization_2/beta*batchnorm3/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE+cnn_model/batch_normalization_2/moving_mean1batchnorm3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE/cnn_model/batch_normalization_2/moving_variance5batchnorm3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

U0
V1
W2
X3

U0
V1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
]	variables
^trainable_variables
_regularization_losses
VT
VARIABLE_VALUEcnn_model/conv2d_4/kernel'conv4/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEcnn_model/conv2d_4/bias%conv4/bias/.ATTRIBUTES/VARIABLE_VALUE

a0
b1

a0
b1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
c	variables
dtrainable_variables
eregularization_losses
 
fd
VARIABLE_VALUE%cnn_model/batch_normalization_3/gamma+batchnorm4/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUE$cnn_model/batch_normalization_3/beta*batchnorm4/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE+cnn_model/batch_normalization_3/moving_mean1batchnorm4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE/cnn_model/batch_normalization_3/moving_variance5batchnorm4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

h0
i1
j2
k3

h0
i1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
l	variables
mtrainable_variables
nregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
p	variables
qtrainable_variables
rregularization_losses
ZX
VARIABLE_VALUEcnn_model/conv2d_5/kernel+identity1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEcnn_model/conv2d_5/bias)identity1/bias/.ATTRIBUTES/VARIABLE_VALUE

t0
u1

t0
u1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
v	variables
wtrainable_variables
xregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
z	variables
{trainable_variables
|regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
~	variables
trainable_variables
?regularization_losses
QO
VARIABLE_VALUEcnn_model/dense/kernel%fc1/kernel/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEcnn_model/dense/bias#fc1/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
8
-0
.1
@2
A3
W4
X5
j6
k7
?
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
16
17
18

?0
?1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

-0
.1
 
 
 
 
 
 
 
 
 
 
 
 
 
 

@0
A1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

W0
X1
 
 
 
 
 
 
 
 
 
 
 
 
 
 

j0
k1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
wu
VARIABLE_VALUEAdam/cnn_model/conv2d/kernel/mCconv1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/cnn_model/conv2d/bias/mAconv1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE Adam/cnn_model/conv2d_1/kernel/mEconv2_t/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/cnn_model/conv2d_1/bias/mCconv2_t/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/cnn_model/batch_normalization/gamma/mGbatchnorm1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/cnn_model/batch_normalization/beta/mFbatchnorm1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE Adam/cnn_model/conv2d_2/kernel/mCconv2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/cnn_model/conv2d_2/bias/mAconv2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/cnn_model/batch_normalization_1/gamma/mGbatchnorm2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/cnn_model/batch_normalization_1/beta/mFbatchnorm2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE Adam/cnn_model/conv2d_3/kernel/mCconv3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/cnn_model/conv2d_3/bias/mAconv3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/cnn_model/batch_normalization_2/gamma/mGbatchnorm3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/cnn_model/batch_normalization_2/beta/mFbatchnorm3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE Adam/cnn_model/conv2d_4/kernel/mCconv4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/cnn_model/conv2d_4/bias/mAconv4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/cnn_model/batch_normalization_3/gamma/mGbatchnorm4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/cnn_model/batch_normalization_3/beta/mFbatchnorm4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE Adam/cnn_model/conv2d_5/kernel/mGidentity1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/cnn_model/conv2d_5/bias/mEidentity1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/cnn_model/dense/kernel/mAfc1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/cnn_model/dense/bias/m?fc1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/cnn_model/conv2d/kernel/vCconv1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/cnn_model/conv2d/bias/vAconv1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE Adam/cnn_model/conv2d_1/kernel/vEconv2_t/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/cnn_model/conv2d_1/bias/vCconv2_t/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/cnn_model/batch_normalization/gamma/vGbatchnorm1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/cnn_model/batch_normalization/beta/vFbatchnorm1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE Adam/cnn_model/conv2d_2/kernel/vCconv2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/cnn_model/conv2d_2/bias/vAconv2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/cnn_model/batch_normalization_1/gamma/vGbatchnorm2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/cnn_model/batch_normalization_1/beta/vFbatchnorm2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE Adam/cnn_model/conv2d_3/kernel/vCconv3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/cnn_model/conv2d_3/bias/vAconv3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/cnn_model/batch_normalization_2/gamma/vGbatchnorm3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/cnn_model/batch_normalization_2/beta/vFbatchnorm3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE Adam/cnn_model/conv2d_4/kernel/vCconv4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/cnn_model/conv2d_4/bias/vAconv4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/cnn_model/batch_normalization_3/gamma/vGbatchnorm4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/cnn_model/batch_normalization_3/beta/vFbatchnorm4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE Adam/cnn_model/conv2d_5/kernel/vGidentity1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/cnn_model/conv2d_5/bias/vEidentity1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/cnn_model/dense/kernel/vAfc1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/cnn_model/dense/bias/v?fc1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_1Placeholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1cnn_model/conv2d/kernelcnn_model/conv2d/biascnn_model/conv2d_1/kernelcnn_model/conv2d_1/bias#cnn_model/batch_normalization/gamma"cnn_model/batch_normalization/beta)cnn_model/batch_normalization/moving_mean-cnn_model/batch_normalization/moving_variancecnn_model/conv2d_2/kernelcnn_model/conv2d_2/bias%cnn_model/batch_normalization_1/gamma$cnn_model/batch_normalization_1/beta+cnn_model/batch_normalization_1/moving_mean/cnn_model/batch_normalization_1/moving_variancecnn_model/conv2d_3/kernelcnn_model/conv2d_3/bias%cnn_model/batch_normalization_2/gamma$cnn_model/batch_normalization_2/beta+cnn_model/batch_normalization_2/moving_mean/cnn_model/batch_normalization_2/moving_variancecnn_model/conv2d_4/kernelcnn_model/conv2d_4/bias%cnn_model/batch_normalization_3/gamma$cnn_model/batch_normalization_3/beta+cnn_model/batch_normalization_3/moving_mean/cnn_model/batch_normalization_3/moving_variancecnn_model/conv2d_5/kernelcnn_model/conv2d_5/biascnn_model/dense/kernelcnn_model/dense/bias**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_10554
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?%
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename+cnn_model/conv2d/kernel/Read/ReadVariableOp)cnn_model/conv2d/bias/Read/ReadVariableOp-cnn_model/conv2d_1/kernel/Read/ReadVariableOp+cnn_model/conv2d_1/bias/Read/ReadVariableOp7cnn_model/batch_normalization/gamma/Read/ReadVariableOp6cnn_model/batch_normalization/beta/Read/ReadVariableOp=cnn_model/batch_normalization/moving_mean/Read/ReadVariableOpAcnn_model/batch_normalization/moving_variance/Read/ReadVariableOp-cnn_model/conv2d_2/kernel/Read/ReadVariableOp+cnn_model/conv2d_2/bias/Read/ReadVariableOp9cnn_model/batch_normalization_1/gamma/Read/ReadVariableOp8cnn_model/batch_normalization_1/beta/Read/ReadVariableOp?cnn_model/batch_normalization_1/moving_mean/Read/ReadVariableOpCcnn_model/batch_normalization_1/moving_variance/Read/ReadVariableOp-cnn_model/conv2d_3/kernel/Read/ReadVariableOp+cnn_model/conv2d_3/bias/Read/ReadVariableOp9cnn_model/batch_normalization_2/gamma/Read/ReadVariableOp8cnn_model/batch_normalization_2/beta/Read/ReadVariableOp?cnn_model/batch_normalization_2/moving_mean/Read/ReadVariableOpCcnn_model/batch_normalization_2/moving_variance/Read/ReadVariableOp-cnn_model/conv2d_4/kernel/Read/ReadVariableOp+cnn_model/conv2d_4/bias/Read/ReadVariableOp9cnn_model/batch_normalization_3/gamma/Read/ReadVariableOp8cnn_model/batch_normalization_3/beta/Read/ReadVariableOp?cnn_model/batch_normalization_3/moving_mean/Read/ReadVariableOpCcnn_model/batch_normalization_3/moving_variance/Read/ReadVariableOp-cnn_model/conv2d_5/kernel/Read/ReadVariableOp+cnn_model/conv2d_5/bias/Read/ReadVariableOp*cnn_model/dense/kernel/Read/ReadVariableOp(cnn_model/dense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp2Adam/cnn_model/conv2d/kernel/m/Read/ReadVariableOp0Adam/cnn_model/conv2d/bias/m/Read/ReadVariableOp4Adam/cnn_model/conv2d_1/kernel/m/Read/ReadVariableOp2Adam/cnn_model/conv2d_1/bias/m/Read/ReadVariableOp>Adam/cnn_model/batch_normalization/gamma/m/Read/ReadVariableOp=Adam/cnn_model/batch_normalization/beta/m/Read/ReadVariableOp4Adam/cnn_model/conv2d_2/kernel/m/Read/ReadVariableOp2Adam/cnn_model/conv2d_2/bias/m/Read/ReadVariableOp@Adam/cnn_model/batch_normalization_1/gamma/m/Read/ReadVariableOp?Adam/cnn_model/batch_normalization_1/beta/m/Read/ReadVariableOp4Adam/cnn_model/conv2d_3/kernel/m/Read/ReadVariableOp2Adam/cnn_model/conv2d_3/bias/m/Read/ReadVariableOp@Adam/cnn_model/batch_normalization_2/gamma/m/Read/ReadVariableOp?Adam/cnn_model/batch_normalization_2/beta/m/Read/ReadVariableOp4Adam/cnn_model/conv2d_4/kernel/m/Read/ReadVariableOp2Adam/cnn_model/conv2d_4/bias/m/Read/ReadVariableOp@Adam/cnn_model/batch_normalization_3/gamma/m/Read/ReadVariableOp?Adam/cnn_model/batch_normalization_3/beta/m/Read/ReadVariableOp4Adam/cnn_model/conv2d_5/kernel/m/Read/ReadVariableOp2Adam/cnn_model/conv2d_5/bias/m/Read/ReadVariableOp1Adam/cnn_model/dense/kernel/m/Read/ReadVariableOp/Adam/cnn_model/dense/bias/m/Read/ReadVariableOp2Adam/cnn_model/conv2d/kernel/v/Read/ReadVariableOp0Adam/cnn_model/conv2d/bias/v/Read/ReadVariableOp4Adam/cnn_model/conv2d_1/kernel/v/Read/ReadVariableOp2Adam/cnn_model/conv2d_1/bias/v/Read/ReadVariableOp>Adam/cnn_model/batch_normalization/gamma/v/Read/ReadVariableOp=Adam/cnn_model/batch_normalization/beta/v/Read/ReadVariableOp4Adam/cnn_model/conv2d_2/kernel/v/Read/ReadVariableOp2Adam/cnn_model/conv2d_2/bias/v/Read/ReadVariableOp@Adam/cnn_model/batch_normalization_1/gamma/v/Read/ReadVariableOp?Adam/cnn_model/batch_normalization_1/beta/v/Read/ReadVariableOp4Adam/cnn_model/conv2d_3/kernel/v/Read/ReadVariableOp2Adam/cnn_model/conv2d_3/bias/v/Read/ReadVariableOp@Adam/cnn_model/batch_normalization_2/gamma/v/Read/ReadVariableOp?Adam/cnn_model/batch_normalization_2/beta/v/Read/ReadVariableOp4Adam/cnn_model/conv2d_4/kernel/v/Read/ReadVariableOp2Adam/cnn_model/conv2d_4/bias/v/Read/ReadVariableOp@Adam/cnn_model/batch_normalization_3/gamma/v/Read/ReadVariableOp?Adam/cnn_model/batch_normalization_3/beta/v/Read/ReadVariableOp4Adam/cnn_model/conv2d_5/kernel/v/Read/ReadVariableOp2Adam/cnn_model/conv2d_5/bias/v/Read/ReadVariableOp1Adam/cnn_model/dense/kernel/v/Read/ReadVariableOp/Adam/cnn_model/dense/bias/v/Read/ReadVariableOpConst*`
TinY
W2U	*
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
GPU2*0J 8? *'
f"R 
__inference__traced_save_11907
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamecnn_model/conv2d/kernelcnn_model/conv2d/biascnn_model/conv2d_1/kernelcnn_model/conv2d_1/bias#cnn_model/batch_normalization/gamma"cnn_model/batch_normalization/beta)cnn_model/batch_normalization/moving_mean-cnn_model/batch_normalization/moving_variancecnn_model/conv2d_2/kernelcnn_model/conv2d_2/bias%cnn_model/batch_normalization_1/gamma$cnn_model/batch_normalization_1/beta+cnn_model/batch_normalization_1/moving_mean/cnn_model/batch_normalization_1/moving_variancecnn_model/conv2d_3/kernelcnn_model/conv2d_3/bias%cnn_model/batch_normalization_2/gamma$cnn_model/batch_normalization_2/beta+cnn_model/batch_normalization_2/moving_mean/cnn_model/batch_normalization_2/moving_variancecnn_model/conv2d_4/kernelcnn_model/conv2d_4/bias%cnn_model/batch_normalization_3/gamma$cnn_model/batch_normalization_3/beta+cnn_model/batch_normalization_3/moving_mean/cnn_model/batch_normalization_3/moving_variancecnn_model/conv2d_5/kernelcnn_model/conv2d_5/biascnn_model/dense/kernelcnn_model/dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/cnn_model/conv2d/kernel/mAdam/cnn_model/conv2d/bias/m Adam/cnn_model/conv2d_1/kernel/mAdam/cnn_model/conv2d_1/bias/m*Adam/cnn_model/batch_normalization/gamma/m)Adam/cnn_model/batch_normalization/beta/m Adam/cnn_model/conv2d_2/kernel/mAdam/cnn_model/conv2d_2/bias/m,Adam/cnn_model/batch_normalization_1/gamma/m+Adam/cnn_model/batch_normalization_1/beta/m Adam/cnn_model/conv2d_3/kernel/mAdam/cnn_model/conv2d_3/bias/m,Adam/cnn_model/batch_normalization_2/gamma/m+Adam/cnn_model/batch_normalization_2/beta/m Adam/cnn_model/conv2d_4/kernel/mAdam/cnn_model/conv2d_4/bias/m,Adam/cnn_model/batch_normalization_3/gamma/m+Adam/cnn_model/batch_normalization_3/beta/m Adam/cnn_model/conv2d_5/kernel/mAdam/cnn_model/conv2d_5/bias/mAdam/cnn_model/dense/kernel/mAdam/cnn_model/dense/bias/mAdam/cnn_model/conv2d/kernel/vAdam/cnn_model/conv2d/bias/v Adam/cnn_model/conv2d_1/kernel/vAdam/cnn_model/conv2d_1/bias/v*Adam/cnn_model/batch_normalization/gamma/v)Adam/cnn_model/batch_normalization/beta/v Adam/cnn_model/conv2d_2/kernel/vAdam/cnn_model/conv2d_2/bias/v,Adam/cnn_model/batch_normalization_1/gamma/v+Adam/cnn_model/batch_normalization_1/beta/v Adam/cnn_model/conv2d_3/kernel/vAdam/cnn_model/conv2d_3/bias/v,Adam/cnn_model/batch_normalization_2/gamma/v+Adam/cnn_model/batch_normalization_2/beta/v Adam/cnn_model/conv2d_4/kernel/vAdam/cnn_model/conv2d_4/bias/v,Adam/cnn_model/batch_normalization_3/gamma/v+Adam/cnn_model/batch_normalization_3/beta/v Adam/cnn_model/conv2d_5/kernel/vAdam/cnn_model/conv2d_5/bias/vAdam/cnn_model/dense/kernel/vAdam/cnn_model/dense/bias/v*_
TinX
V2T*
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
GPU2*0J 8? **
f%R#
!__inference__traced_restore_12166??
?
?
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_9501

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@:::::*
epsilon%o?:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????@@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
3__inference_batch_normalization_layer_call_fn_11008

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_9451w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
]
A__inference_flatten_layer_call_and_return_conditional_losses_9656

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 0  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????`Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  :W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?	
?
5__inference_batch_normalization_2_layer_call_fn_11300

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_9282?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_3_layer_call_fn_11492

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_9811w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????  : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?X
?
D__inference_cnn_model_layer_call_and_return_conditional_losses_10185
x&
conv2d_10104:
conv2d_10106:(
conv2d_1_10110:
conv2d_1_10112:'
batch_normalization_10115:'
batch_normalization_10117:'
batch_normalization_10119:'
batch_normalization_10121:(
conv2d_2_10125:
conv2d_2_10127:)
batch_normalization_1_10130:)
batch_normalization_1_10132:)
batch_normalization_1_10134:)
batch_normalization_1_10136:(
conv2d_3_10141:
conv2d_3_10143:)
batch_normalization_2_10146:)
batch_normalization_2_10148:)
batch_normalization_2_10150:)
batch_normalization_2_10152:(
conv2d_4_10156:
conv2d_4_10158:)
batch_normalization_3_10161:)
batch_normalization_3_10163:)
batch_normalization_3_10165:)
batch_normalization_3_10167:(
conv2d_5_10171:
conv2d_5_10173:
dense_10178:	?`
dense_10180:
identity??+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?-batch_normalization_2/StatefulPartitionedCall?-batch_normalization_3/StatefulPartitionedCall?conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall? conv2d_4/StatefulPartitionedCall? conv2d_5/StatefulPartitionedCall?dense/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCallxconv2d_10104conv2d_10106*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_9406?
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_9416?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_10110conv2d_1_10112*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_9428?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_10115batch_normalization_10117batch_normalization_10119batch_normalization_10121*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_9998?
re_lu/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_re_lu_layer_call_and_return_conditional_losses_9466?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallre_lu/PartitionedCall:output:0conv2d_2_10125conv2d_2_10127*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_9478?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_1_10130batch_normalization_1_10132batch_normalization_1_10134batch_normalization_1_10136*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_9938?
re_lu_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_re_lu_1_layer_call_and_return_conditional_losses_9516?
add/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0 re_lu_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *F
fAR?
=__inference_add_layer_call_and_return_conditional_losses_9524?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0conv2d_3_10141conv2d_3_10143*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_9536?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_2_10146batch_normalization_2_10148batch_normalization_2_10150batch_normalization_2_10152*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_9871?
re_lu_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_re_lu_2_layer_call_and_return_conditional_losses_9574?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall re_lu_2/PartitionedCall:output:0conv2d_4_10156conv2d_4_10158*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_9586?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_3_10161batch_normalization_3_10163batch_normalization_3_10165batch_normalization_3_10167*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_9811?
re_lu_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_re_lu_3_layer_call_and_return_conditional_losses_9624?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0conv2d_5_10171conv2d_5_10173*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2d_5_layer_call_and_return_conditional_losses_9636?
add_1/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0 re_lu_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_add_1_layer_call_and_return_conditional_losses_9648?
flatten/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_9656?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_10178dense_10180*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_9668l
SoftmaxSoftmax&dense/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:T P
1
_output_shapes
:???????????

_user_specified_namex
?X
?
D__inference_cnn_model_layer_call_and_return_conditional_losses_10397
input_1&
conv2d_10316:
conv2d_10318:(
conv2d_1_10322:
conv2d_1_10324:'
batch_normalization_10327:'
batch_normalization_10329:'
batch_normalization_10331:'
batch_normalization_10333:(
conv2d_2_10337:
conv2d_2_10339:)
batch_normalization_1_10342:)
batch_normalization_1_10344:)
batch_normalization_1_10346:)
batch_normalization_1_10348:(
conv2d_3_10353:
conv2d_3_10355:)
batch_normalization_2_10358:)
batch_normalization_2_10360:)
batch_normalization_2_10362:)
batch_normalization_2_10364:(
conv2d_4_10368:
conv2d_4_10370:)
batch_normalization_3_10373:)
batch_normalization_3_10375:)
batch_normalization_3_10377:)
batch_normalization_3_10379:(
conv2d_5_10383:
conv2d_5_10385:
dense_10390:	?`
dense_10392:
identity??+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?-batch_normalization_2/StatefulPartitionedCall?-batch_normalization_3/StatefulPartitionedCall?conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall? conv2d_4/StatefulPartitionedCall? conv2d_5/StatefulPartitionedCall?dense/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_10316conv2d_10318*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_9406?
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_9416?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_10322conv2d_1_10324*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_9428?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_10327batch_normalization_10329batch_normalization_10331batch_normalization_10333*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_9451?
re_lu/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_re_lu_layer_call_and_return_conditional_losses_9466?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallre_lu/PartitionedCall:output:0conv2d_2_10337conv2d_2_10339*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_9478?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_1_10342batch_normalization_1_10344batch_normalization_1_10346batch_normalization_1_10348*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_9501?
re_lu_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_re_lu_1_layer_call_and_return_conditional_losses_9516?
add/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0 re_lu_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *F
fAR?
=__inference_add_layer_call_and_return_conditional_losses_9524?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0conv2d_3_10353conv2d_3_10355*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_9536?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_2_10358batch_normalization_2_10360batch_normalization_2_10362batch_normalization_2_10364*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_9559?
re_lu_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_re_lu_2_layer_call_and_return_conditional_losses_9574?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall re_lu_2/PartitionedCall:output:0conv2d_4_10368conv2d_4_10370*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_9586?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_3_10373batch_normalization_3_10375batch_normalization_3_10377batch_normalization_3_10379*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_9609?
re_lu_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_re_lu_3_layer_call_and_return_conditional_losses_9624?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0conv2d_5_10383conv2d_5_10385*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2d_5_layer_call_and_return_conditional_losses_9636?
add_1/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0 re_lu_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_add_1_layer_call_and_return_conditional_losses_9648?
flatten/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_9656?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_10390dense_10392*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_9668l
SoftmaxSoftmax&dense/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?
\
@__inference_re_lu_layer_call_and_return_conditional_losses_11103

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????@@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@@:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?	
?
@__inference_dense_layer_call_and_return_conditional_losses_11635

inputs1
matmul_readvariableop_resource:	?`-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?`*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????`: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????`
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_11228

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@:::::*
epsilon%o?:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????@@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
g
=__inference_add_layer_call_and_return_conditional_losses_9524

inputs
inputs_1
identityX
addAddV2inputsinputs_1*
T0*/
_output_shapes
:?????????@@W
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:?????????@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????@@:?????????@@:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?

?
B__inference_conv2d_5_layer_call_and_return_conditional_losses_9636

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????  w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_11246

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@:::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????@@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?	
?
3__inference_batch_normalization_layer_call_fn_10995

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_9185?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?	
?
5__inference_batch_normalization_1_layer_call_fn_11148

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_9249?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_2_layer_call_fn_11326

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_9559w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????  : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
C
'__inference_re_lu_2_layer_call_fn_11416

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_re_lu_2_layer_call_and_return_conditional_losses_9574h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  :W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
%__inference_dense_layer_call_fn_11625

inputs
unknown:	?`
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_9668o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????`: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????`
 
_user_specified_nameinputs
?
?
)__inference_cnn_model_layer_call_fn_10313
input_1!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:$

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:$

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:

unknown_24:$

unknown_25:

unknown_26:

unknown_27:	?`

unknown_28:
identity??StatefulPartitionedCall?
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
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_cnn_model_layer_call_and_return_conditional_losses_10185o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?	
?
3__inference_batch_normalization_layer_call_fn_10982

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_9154?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?	
?
5__inference_batch_normalization_2_layer_call_fn_11313

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_9313?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
^
B__inference_flatten_layer_call_and_return_conditional_losses_11616

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 0  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????`Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  :W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_9249

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
^
B__inference_re_lu_2_layer_call_and_return_conditional_losses_11421

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????  b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  :W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
]
A__inference_re_lu_3_layer_call_and_return_conditional_losses_9624

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????  b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  :W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11564

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????  ?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????  : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_9416

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????@@*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11357

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?

?
C__inference_conv2d_4_layer_call_and_return_conditional_losses_11440

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????  w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_10950

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????@@*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
^
B__inference_re_lu_1_layer_call_and_return_conditional_losses_11256

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????@@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@@:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_9377

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_9609

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????  ?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????  : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_9282

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_1_layer_call_fn_11174

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_9938w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
(__inference_conv2d_2_layer_call_fn_11112

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_9478w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
i
?__inference_add_1_layer_call_and_return_conditional_losses_9648

inputs
inputs_1
identityX
addAddV2inputsinputs_1*
T0*/
_output_shapes
:?????????  W
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:?????????  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????  :?????????  :W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?	
?
?__inference_dense_layer_call_and_return_conditional_losses_9668

inputs1
matmul_readvariableop_resource:	?`-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?`*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????`: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????`
 
_user_specified_nameinputs
?
C
'__inference_flatten_layer_call_fn_11610

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_9656a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????`"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  :W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
A__inference_conv2d_layer_call_and_return_conditional_losses_10930

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_11093

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@:::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????@@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
[
?__inference_re_lu_layer_call_and_return_conditional_losses_9466

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????@@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@@:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
j
>__inference_add_layer_call_and_return_conditional_losses_11268
inputs_0
inputs_1
identityZ
addAddV2inputs_0inputs_1*
T0*/
_output_shapes
:?????????@@W
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:?????????@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????@@:?????????@@:Y U
/
_output_shapes
:?????????@@
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????@@
"
_user_specified_name
inputs/1
?
?
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_9218

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_9346

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
??
?*
__inference__traced_save_11907
file_prefix6
2savev2_cnn_model_conv2d_kernel_read_readvariableop4
0savev2_cnn_model_conv2d_bias_read_readvariableop8
4savev2_cnn_model_conv2d_1_kernel_read_readvariableop6
2savev2_cnn_model_conv2d_1_bias_read_readvariableopB
>savev2_cnn_model_batch_normalization_gamma_read_readvariableopA
=savev2_cnn_model_batch_normalization_beta_read_readvariableopH
Dsavev2_cnn_model_batch_normalization_moving_mean_read_readvariableopL
Hsavev2_cnn_model_batch_normalization_moving_variance_read_readvariableop8
4savev2_cnn_model_conv2d_2_kernel_read_readvariableop6
2savev2_cnn_model_conv2d_2_bias_read_readvariableopD
@savev2_cnn_model_batch_normalization_1_gamma_read_readvariableopC
?savev2_cnn_model_batch_normalization_1_beta_read_readvariableopJ
Fsavev2_cnn_model_batch_normalization_1_moving_mean_read_readvariableopN
Jsavev2_cnn_model_batch_normalization_1_moving_variance_read_readvariableop8
4savev2_cnn_model_conv2d_3_kernel_read_readvariableop6
2savev2_cnn_model_conv2d_3_bias_read_readvariableopD
@savev2_cnn_model_batch_normalization_2_gamma_read_readvariableopC
?savev2_cnn_model_batch_normalization_2_beta_read_readvariableopJ
Fsavev2_cnn_model_batch_normalization_2_moving_mean_read_readvariableopN
Jsavev2_cnn_model_batch_normalization_2_moving_variance_read_readvariableop8
4savev2_cnn_model_conv2d_4_kernel_read_readvariableop6
2savev2_cnn_model_conv2d_4_bias_read_readvariableopD
@savev2_cnn_model_batch_normalization_3_gamma_read_readvariableopC
?savev2_cnn_model_batch_normalization_3_beta_read_readvariableopJ
Fsavev2_cnn_model_batch_normalization_3_moving_mean_read_readvariableopN
Jsavev2_cnn_model_batch_normalization_3_moving_variance_read_readvariableop8
4savev2_cnn_model_conv2d_5_kernel_read_readvariableop6
2savev2_cnn_model_conv2d_5_bias_read_readvariableop5
1savev2_cnn_model_dense_kernel_read_readvariableop3
/savev2_cnn_model_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop=
9savev2_adam_cnn_model_conv2d_kernel_m_read_readvariableop;
7savev2_adam_cnn_model_conv2d_bias_m_read_readvariableop?
;savev2_adam_cnn_model_conv2d_1_kernel_m_read_readvariableop=
9savev2_adam_cnn_model_conv2d_1_bias_m_read_readvariableopI
Esavev2_adam_cnn_model_batch_normalization_gamma_m_read_readvariableopH
Dsavev2_adam_cnn_model_batch_normalization_beta_m_read_readvariableop?
;savev2_adam_cnn_model_conv2d_2_kernel_m_read_readvariableop=
9savev2_adam_cnn_model_conv2d_2_bias_m_read_readvariableopK
Gsavev2_adam_cnn_model_batch_normalization_1_gamma_m_read_readvariableopJ
Fsavev2_adam_cnn_model_batch_normalization_1_beta_m_read_readvariableop?
;savev2_adam_cnn_model_conv2d_3_kernel_m_read_readvariableop=
9savev2_adam_cnn_model_conv2d_3_bias_m_read_readvariableopK
Gsavev2_adam_cnn_model_batch_normalization_2_gamma_m_read_readvariableopJ
Fsavev2_adam_cnn_model_batch_normalization_2_beta_m_read_readvariableop?
;savev2_adam_cnn_model_conv2d_4_kernel_m_read_readvariableop=
9savev2_adam_cnn_model_conv2d_4_bias_m_read_readvariableopK
Gsavev2_adam_cnn_model_batch_normalization_3_gamma_m_read_readvariableopJ
Fsavev2_adam_cnn_model_batch_normalization_3_beta_m_read_readvariableop?
;savev2_adam_cnn_model_conv2d_5_kernel_m_read_readvariableop=
9savev2_adam_cnn_model_conv2d_5_bias_m_read_readvariableop<
8savev2_adam_cnn_model_dense_kernel_m_read_readvariableop:
6savev2_adam_cnn_model_dense_bias_m_read_readvariableop=
9savev2_adam_cnn_model_conv2d_kernel_v_read_readvariableop;
7savev2_adam_cnn_model_conv2d_bias_v_read_readvariableop?
;savev2_adam_cnn_model_conv2d_1_kernel_v_read_readvariableop=
9savev2_adam_cnn_model_conv2d_1_bias_v_read_readvariableopI
Esavev2_adam_cnn_model_batch_normalization_gamma_v_read_readvariableopH
Dsavev2_adam_cnn_model_batch_normalization_beta_v_read_readvariableop?
;savev2_adam_cnn_model_conv2d_2_kernel_v_read_readvariableop=
9savev2_adam_cnn_model_conv2d_2_bias_v_read_readvariableopK
Gsavev2_adam_cnn_model_batch_normalization_1_gamma_v_read_readvariableopJ
Fsavev2_adam_cnn_model_batch_normalization_1_beta_v_read_readvariableop?
;savev2_adam_cnn_model_conv2d_3_kernel_v_read_readvariableop=
9savev2_adam_cnn_model_conv2d_3_bias_v_read_readvariableopK
Gsavev2_adam_cnn_model_batch_normalization_2_gamma_v_read_readvariableopJ
Fsavev2_adam_cnn_model_batch_normalization_2_beta_v_read_readvariableop?
;savev2_adam_cnn_model_conv2d_4_kernel_v_read_readvariableop=
9savev2_adam_cnn_model_conv2d_4_bias_v_read_readvariableopK
Gsavev2_adam_cnn_model_batch_normalization_3_gamma_v_read_readvariableopJ
Fsavev2_adam_cnn_model_batch_normalization_3_beta_v_read_readvariableop?
;savev2_adam_cnn_model_conv2d_5_kernel_v_read_readvariableop=
9savev2_adam_cnn_model_conv2d_5_bias_v_read_readvariableop<
8savev2_adam_cnn_model_dense_kernel_v_read_readvariableop:
6savev2_adam_cnn_model_dense_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?'
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:T*
dtype0*?&
value?&B?&TB'conv1/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv1/bias/.ATTRIBUTES/VARIABLE_VALUEB)conv2_t/kernel/.ATTRIBUTES/VARIABLE_VALUEB'conv2_t/bias/.ATTRIBUTES/VARIABLE_VALUEB+batchnorm1/gamma/.ATTRIBUTES/VARIABLE_VALUEB*batchnorm1/beta/.ATTRIBUTES/VARIABLE_VALUEB1batchnorm1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB5batchnorm1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB'conv2/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv2/bias/.ATTRIBUTES/VARIABLE_VALUEB+batchnorm2/gamma/.ATTRIBUTES/VARIABLE_VALUEB*batchnorm2/beta/.ATTRIBUTES/VARIABLE_VALUEB1batchnorm2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB5batchnorm2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB'conv3/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv3/bias/.ATTRIBUTES/VARIABLE_VALUEB+batchnorm3/gamma/.ATTRIBUTES/VARIABLE_VALUEB*batchnorm3/beta/.ATTRIBUTES/VARIABLE_VALUEB1batchnorm3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB5batchnorm3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB'conv4/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv4/bias/.ATTRIBUTES/VARIABLE_VALUEB+batchnorm4/gamma/.ATTRIBUTES/VARIABLE_VALUEB*batchnorm4/beta/.ATTRIBUTES/VARIABLE_VALUEB1batchnorm4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB5batchnorm4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB+identity1/kernel/.ATTRIBUTES/VARIABLE_VALUEB)identity1/bias/.ATTRIBUTES/VARIABLE_VALUEB%fc1/kernel/.ATTRIBUTES/VARIABLE_VALUEB#fc1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBCconv1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAconv1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBEconv2_t/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCconv2_t/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGbatchnorm1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBFbatchnorm1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCconv2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAconv2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGbatchnorm2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBFbatchnorm2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCconv3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAconv3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGbatchnorm3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBFbatchnorm3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCconv4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAconv4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGbatchnorm4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBFbatchnorm4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGidentity1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBEidentity1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAfc1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB?fc1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCconv1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAconv1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBEconv2_t/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCconv2_t/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBGbatchnorm1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBFbatchnorm1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCconv2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAconv2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBGbatchnorm2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBFbatchnorm2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCconv3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAconv3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBGbatchnorm3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBFbatchnorm3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCconv4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAconv4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBGbatchnorm4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBFbatchnorm4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBGidentity1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBEidentity1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAfc1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB?fc1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:T*
dtype0*?
value?B?TB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?)
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:02savev2_cnn_model_conv2d_kernel_read_readvariableop0savev2_cnn_model_conv2d_bias_read_readvariableop4savev2_cnn_model_conv2d_1_kernel_read_readvariableop2savev2_cnn_model_conv2d_1_bias_read_readvariableop>savev2_cnn_model_batch_normalization_gamma_read_readvariableop=savev2_cnn_model_batch_normalization_beta_read_readvariableopDsavev2_cnn_model_batch_normalization_moving_mean_read_readvariableopHsavev2_cnn_model_batch_normalization_moving_variance_read_readvariableop4savev2_cnn_model_conv2d_2_kernel_read_readvariableop2savev2_cnn_model_conv2d_2_bias_read_readvariableop@savev2_cnn_model_batch_normalization_1_gamma_read_readvariableop?savev2_cnn_model_batch_normalization_1_beta_read_readvariableopFsavev2_cnn_model_batch_normalization_1_moving_mean_read_readvariableopJsavev2_cnn_model_batch_normalization_1_moving_variance_read_readvariableop4savev2_cnn_model_conv2d_3_kernel_read_readvariableop2savev2_cnn_model_conv2d_3_bias_read_readvariableop@savev2_cnn_model_batch_normalization_2_gamma_read_readvariableop?savev2_cnn_model_batch_normalization_2_beta_read_readvariableopFsavev2_cnn_model_batch_normalization_2_moving_mean_read_readvariableopJsavev2_cnn_model_batch_normalization_2_moving_variance_read_readvariableop4savev2_cnn_model_conv2d_4_kernel_read_readvariableop2savev2_cnn_model_conv2d_4_bias_read_readvariableop@savev2_cnn_model_batch_normalization_3_gamma_read_readvariableop?savev2_cnn_model_batch_normalization_3_beta_read_readvariableopFsavev2_cnn_model_batch_normalization_3_moving_mean_read_readvariableopJsavev2_cnn_model_batch_normalization_3_moving_variance_read_readvariableop4savev2_cnn_model_conv2d_5_kernel_read_readvariableop2savev2_cnn_model_conv2d_5_bias_read_readvariableop1savev2_cnn_model_dense_kernel_read_readvariableop/savev2_cnn_model_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop9savev2_adam_cnn_model_conv2d_kernel_m_read_readvariableop7savev2_adam_cnn_model_conv2d_bias_m_read_readvariableop;savev2_adam_cnn_model_conv2d_1_kernel_m_read_readvariableop9savev2_adam_cnn_model_conv2d_1_bias_m_read_readvariableopEsavev2_adam_cnn_model_batch_normalization_gamma_m_read_readvariableopDsavev2_adam_cnn_model_batch_normalization_beta_m_read_readvariableop;savev2_adam_cnn_model_conv2d_2_kernel_m_read_readvariableop9savev2_adam_cnn_model_conv2d_2_bias_m_read_readvariableopGsavev2_adam_cnn_model_batch_normalization_1_gamma_m_read_readvariableopFsavev2_adam_cnn_model_batch_normalization_1_beta_m_read_readvariableop;savev2_adam_cnn_model_conv2d_3_kernel_m_read_readvariableop9savev2_adam_cnn_model_conv2d_3_bias_m_read_readvariableopGsavev2_adam_cnn_model_batch_normalization_2_gamma_m_read_readvariableopFsavev2_adam_cnn_model_batch_normalization_2_beta_m_read_readvariableop;savev2_adam_cnn_model_conv2d_4_kernel_m_read_readvariableop9savev2_adam_cnn_model_conv2d_4_bias_m_read_readvariableopGsavev2_adam_cnn_model_batch_normalization_3_gamma_m_read_readvariableopFsavev2_adam_cnn_model_batch_normalization_3_beta_m_read_readvariableop;savev2_adam_cnn_model_conv2d_5_kernel_m_read_readvariableop9savev2_adam_cnn_model_conv2d_5_bias_m_read_readvariableop8savev2_adam_cnn_model_dense_kernel_m_read_readvariableop6savev2_adam_cnn_model_dense_bias_m_read_readvariableop9savev2_adam_cnn_model_conv2d_kernel_v_read_readvariableop7savev2_adam_cnn_model_conv2d_bias_v_read_readvariableop;savev2_adam_cnn_model_conv2d_1_kernel_v_read_readvariableop9savev2_adam_cnn_model_conv2d_1_bias_v_read_readvariableopEsavev2_adam_cnn_model_batch_normalization_gamma_v_read_readvariableopDsavev2_adam_cnn_model_batch_normalization_beta_v_read_readvariableop;savev2_adam_cnn_model_conv2d_2_kernel_v_read_readvariableop9savev2_adam_cnn_model_conv2d_2_bias_v_read_readvariableopGsavev2_adam_cnn_model_batch_normalization_1_gamma_v_read_readvariableopFsavev2_adam_cnn_model_batch_normalization_1_beta_v_read_readvariableop;savev2_adam_cnn_model_conv2d_3_kernel_v_read_readvariableop9savev2_adam_cnn_model_conv2d_3_bias_v_read_readvariableopGsavev2_adam_cnn_model_batch_normalization_2_gamma_v_read_readvariableopFsavev2_adam_cnn_model_batch_normalization_2_beta_v_read_readvariableop;savev2_adam_cnn_model_conv2d_4_kernel_v_read_readvariableop9savev2_adam_cnn_model_conv2d_4_bias_v_read_readvariableopGsavev2_adam_cnn_model_batch_normalization_3_gamma_v_read_readvariableopFsavev2_adam_cnn_model_batch_normalization_3_beta_v_read_readvariableop;savev2_adam_cnn_model_conv2d_5_kernel_v_read_readvariableop9savev2_adam_cnn_model_conv2d_5_bias_v_read_readvariableop8savev2_adam_cnn_model_dense_kernel_v_read_readvariableop6savev2_adam_cnn_model_dense_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *b
dtypesX
V2T	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :::::::::::::::::::::::::::::	?`:: : : : : : : : : :::::::::::::::::::::	?`::::::::::::::::::::::	?`:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,	(
&
_output_shapes
:: 


_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	?`: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :,((
&
_output_shapes
:: )

_output_shapes
::,*(
&
_output_shapes
:: +

_output_shapes
:: ,

_output_shapes
:: -

_output_shapes
::,.(
&
_output_shapes
:: /

_output_shapes
:: 0

_output_shapes
:: 1

_output_shapes
::,2(
&
_output_shapes
:: 3

_output_shapes
:: 4

_output_shapes
:: 5

_output_shapes
::,6(
&
_output_shapes
:: 7

_output_shapes
:: 8

_output_shapes
:: 9

_output_shapes
::,:(
&
_output_shapes
:: ;

_output_shapes
::%<!

_output_shapes
:	?`: =

_output_shapes
::,>(
&
_output_shapes
:: ?

_output_shapes
::,@(
&
_output_shapes
:: A

_output_shapes
:: B

_output_shapes
:: C

_output_shapes
::,D(
&
_output_shapes
:: E

_output_shapes
:: F

_output_shapes
:: G

_output_shapes
::,H(
&
_output_shapes
:: I

_output_shapes
:: J

_output_shapes
:: K

_output_shapes
::,L(
&
_output_shapes
:: M

_output_shapes
:: N

_output_shapes
:: O

_output_shapes
::,P(
&
_output_shapes
:: Q

_output_shapes
::%R!

_output_shapes
:	?`: S

_output_shapes
::T

_output_shapes
: 
?
?
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_9811

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????  ?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????  : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?

?
B__inference_conv2d_3_layer_call_and_return_conditional_losses_9536

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????  w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
M__inference_batch_normalization_layer_call_and_return_conditional_losses_9451

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@:::::*
epsilon%o?:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????@@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
&__inference_conv2d_layer_call_fn_10919

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_9406y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
5__inference_batch_normalization_3_layer_call_fn_11453

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_9346?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_11039

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?

?
C__inference_conv2d_1_layer_call_and_return_conditional_losses_10969

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11411

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????  ?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????  : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
3__inference_batch_normalization_layer_call_fn_11021

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_9998w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
Q
%__inference_add_1_layer_call_fn_11599
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_add_1_layer_call_and_return_conditional_losses_9648h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????  :?????????  :Y U
/
_output_shapes
:?????????  
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????  
"
_user_specified_name
inputs/1
?
?
@__inference_conv2d_layer_call_and_return_conditional_losses_9406

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?
D__inference_cnn_model_layer_call_and_return_conditional_losses_10910
x?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:A
'conv2d_1_conv2d_readvariableop_resource:6
(conv2d_1_biasadd_readvariableop_resource:9
+batch_normalization_readvariableop_resource:;
-batch_normalization_readvariableop_1_resource:J
<batch_normalization_fusedbatchnormv3_readvariableop_resource:L
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource:A
'conv2d_2_conv2d_readvariableop_resource:6
(conv2d_2_biasadd_readvariableop_resource:;
-batch_normalization_1_readvariableop_resource:=
/batch_normalization_1_readvariableop_1_resource:L
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource:N
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:A
'conv2d_3_conv2d_readvariableop_resource:6
(conv2d_3_biasadd_readvariableop_resource:;
-batch_normalization_2_readvariableop_resource:=
/batch_normalization_2_readvariableop_1_resource:L
>batch_normalization_2_fusedbatchnormv3_readvariableop_resource:N
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:A
'conv2d_4_conv2d_readvariableop_resource:6
(conv2d_4_biasadd_readvariableop_resource:;
-batch_normalization_3_readvariableop_resource:=
/batch_normalization_3_readvariableop_1_resource:L
>batch_normalization_3_fusedbatchnormv3_readvariableop_resource:N
@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:A
'conv2d_5_conv2d_readvariableop_resource:6
(conv2d_5_biasadd_readvariableop_resource:7
$dense_matmul_readvariableop_resource:	?`3
%dense_biasadd_readvariableop_resource:
identity??"batch_normalization/AssignNewValue?$batch_normalization/AssignNewValue_1?3batch_normalization/FusedBatchNormV3/ReadVariableOp?5batch_normalization/FusedBatchNormV3/ReadVariableOp_1?"batch_normalization/ReadVariableOp?$batch_normalization/ReadVariableOp_1?$batch_normalization_1/AssignNewValue?&batch_normalization_1/AssignNewValue_1?5batch_normalization_1/FusedBatchNormV3/ReadVariableOp?7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_1/ReadVariableOp?&batch_normalization_1/ReadVariableOp_1?$batch_normalization_2/AssignNewValue?&batch_normalization_2/AssignNewValue_1?5batch_normalization_2/FusedBatchNormV3/ReadVariableOp?7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_2/ReadVariableOp?&batch_normalization_2/ReadVariableOp_1?$batch_normalization_3/AssignNewValue?&batch_normalization_3/AssignNewValue_1?5batch_normalization_3/FusedBatchNormV3/ReadVariableOp?7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_3/ReadVariableOp?&batch_normalization_3/ReadVariableOp_1?conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?conv2d_3/BiasAdd/ReadVariableOp?conv2d_3/Conv2D/ReadVariableOp?conv2d_4/BiasAdd/ReadVariableOp?conv2d_4/Conv2D/ReadVariableOp?conv2d_5/BiasAdd/ReadVariableOp?conv2d_5/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d/Conv2DConv2Dx$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????h
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:?????????@@*
ksize
*
paddingVALID*
strides
?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@?
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:*
dtype0?
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:*
dtype0?
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
$batch_normalization/FusedBatchNormV3FusedBatchNormV3conv2d_1/BiasAdd:output:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@:::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
"batch_normalization/AssignNewValueAssignVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource1batch_normalization/FusedBatchNormV3:batch_mean:04^batch_normalization/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
$batch_normalization/AssignNewValue_1AssignVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource5batch_normalization/FusedBatchNormV3:batch_variance:06^batch_normalization/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0v

re_lu/ReluRelu(batch_normalization/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@@?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_2/Conv2DConv2Dre_lu/Relu:activations:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@?
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
:*
dtype0?
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
:*
dtype0?
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3conv2d_2/BiasAdd:output:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@:::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
$batch_normalization_1/AssignNewValueAssignVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource3batch_normalization_1/FusedBatchNormV3:batch_mean:06^batch_normalization_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
&batch_normalization_1/AssignNewValue_1AssignVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_1/FusedBatchNormV3:batch_variance:08^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0z
re_lu_1/ReluRelu*batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@@?
add/addAddV2max_pooling2d/MaxPool:output:0re_lu_1/Relu:activations:0*
T0*/
_output_shapes
:?????????@@?
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_3/Conv2DConv2Dadd/add:z:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
?
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  ?
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes
:*
dtype0?
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes
:*
dtype0?
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3conv2d_3/BiasAdd:output:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
$batch_normalization_2/AssignNewValueAssignVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource3batch_normalization_2/FusedBatchNormV3:batch_mean:06^batch_normalization_2/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
&batch_normalization_2/AssignNewValue_1AssignVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_2/FusedBatchNormV3:batch_variance:08^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0z
re_lu_2/ReluRelu*batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????  ?
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_4/Conv2DConv2Dre_lu_2/Relu:activations:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
?
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  ?
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource*
_output_shapes
:*
dtype0?
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3conv2d_4/BiasAdd:output:0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
$batch_normalization_3/AssignNewValueAssignVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource3batch_normalization_3/FusedBatchNormV3:batch_mean:06^batch_normalization_3/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
&batch_normalization_3/AssignNewValue_1AssignVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_3/FusedBatchNormV3:batch_variance:08^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0z
re_lu_3/ReluRelu*batch_normalization_3/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????  ?
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_5/Conv2DConv2Dadd/add:z:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
?
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  ?
	add_1/addAddV2conv2d_5/BiasAdd:output:0re_lu_3/Relu:activations:0*
T0*/
_output_shapes
:?????????  ^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 0  t
flatten/ReshapeReshapeadd_1/add:z:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????`?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?`*
dtype0?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????\
SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^batch_normalization/AssignNewValue%^batch_normalization/AssignNewValue_14^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1%^batch_normalization_1/AssignNewValue'^batch_normalization_1/AssignNewValue_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1%^batch_normalization_2/AssignNewValue'^batch_normalization_2/AssignNewValue_16^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_1%^batch_normalization_3/AssignNewValue'^batch_normalization_3/AssignNewValue_16^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_1^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"batch_normalization/AssignNewValue"batch_normalization/AssignNewValue2L
$batch_normalization/AssignNewValue_1$batch_normalization/AssignNewValue_12j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12L
$batch_normalization_1/AssignNewValue$batch_normalization_1/AssignNewValue2P
&batch_normalization_1/AssignNewValue_1&batch_normalization_1/AssignNewValue_12n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12L
$batch_normalization_2/AssignNewValue$batch_normalization_2/AssignNewValue2P
&batch_normalization_2/AssignNewValue_1&batch_normalization_2/AssignNewValue_12n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12L
$batch_normalization_3/AssignNewValue$batch_normalization_3/AssignNewValue2P
&batch_normalization_3/AssignNewValue_1&batch_normalization_3/AssignNewValue_12n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_12>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:T P
1
_output_shapes
:???????????

_user_specified_namex
?
C
'__inference_re_lu_1_layer_call_fn_11251

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_re_lu_1_layer_call_and_return_conditional_losses_9516h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@@:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_2_layer_call_fn_11339

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_9871w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????  : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_9871

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????  ?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????  : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_10554
input_1!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:$

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:$

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:

unknown_24:$

unknown_25:

unknown_26:

unknown_27:	?`

unknown_28:
identity??StatefulPartitionedCall?
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
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__wrapped_model_9120o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?
?
(__inference_conv2d_3_layer_call_fn_11277

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_9536w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_1_layer_call_fn_11161

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_9501w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
(__inference_cnn_model_layer_call_fn_9739
input_1!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:$

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:$

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:

unknown_24:$

unknown_25:

unknown_26:

unknown_27:	?`

unknown_28:
identity??StatefulPartitionedCall?
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
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_cnn_model_layer_call_and_return_conditional_losses_9676o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?
?
(__inference_conv2d_4_layer_call_fn_11430

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_9586w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11528

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11510

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?	
?
5__inference_batch_normalization_3_layer_call_fn_11466

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_9377?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
ׇ
?
D__inference_cnn_model_layer_call_and_return_conditional_losses_10797
x?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:A
'conv2d_1_conv2d_readvariableop_resource:6
(conv2d_1_biasadd_readvariableop_resource:9
+batch_normalization_readvariableop_resource:;
-batch_normalization_readvariableop_1_resource:J
<batch_normalization_fusedbatchnormv3_readvariableop_resource:L
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource:A
'conv2d_2_conv2d_readvariableop_resource:6
(conv2d_2_biasadd_readvariableop_resource:;
-batch_normalization_1_readvariableop_resource:=
/batch_normalization_1_readvariableop_1_resource:L
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource:N
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:A
'conv2d_3_conv2d_readvariableop_resource:6
(conv2d_3_biasadd_readvariableop_resource:;
-batch_normalization_2_readvariableop_resource:=
/batch_normalization_2_readvariableop_1_resource:L
>batch_normalization_2_fusedbatchnormv3_readvariableop_resource:N
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:A
'conv2d_4_conv2d_readvariableop_resource:6
(conv2d_4_biasadd_readvariableop_resource:;
-batch_normalization_3_readvariableop_resource:=
/batch_normalization_3_readvariableop_1_resource:L
>batch_normalization_3_fusedbatchnormv3_readvariableop_resource:N
@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:A
'conv2d_5_conv2d_readvariableop_resource:6
(conv2d_5_biasadd_readvariableop_resource:7
$dense_matmul_readvariableop_resource:	?`3
%dense_biasadd_readvariableop_resource:
identity??3batch_normalization/FusedBatchNormV3/ReadVariableOp?5batch_normalization/FusedBatchNormV3/ReadVariableOp_1?"batch_normalization/ReadVariableOp?$batch_normalization/ReadVariableOp_1?5batch_normalization_1/FusedBatchNormV3/ReadVariableOp?7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_1/ReadVariableOp?&batch_normalization_1/ReadVariableOp_1?5batch_normalization_2/FusedBatchNormV3/ReadVariableOp?7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_2/ReadVariableOp?&batch_normalization_2/ReadVariableOp_1?5batch_normalization_3/FusedBatchNormV3/ReadVariableOp?7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_3/ReadVariableOp?&batch_normalization_3/ReadVariableOp_1?conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?conv2d_3/BiasAdd/ReadVariableOp?conv2d_3/Conv2D/ReadVariableOp?conv2d_4/BiasAdd/ReadVariableOp?conv2d_4/Conv2D/ReadVariableOp?conv2d_5/BiasAdd/ReadVariableOp?conv2d_5/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d/Conv2DConv2Dx$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????h
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:?????????@@*
ksize
*
paddingVALID*
strides
?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@?
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:*
dtype0?
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:*
dtype0?
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
$batch_normalization/FusedBatchNormV3FusedBatchNormV3conv2d_1/BiasAdd:output:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@:::::*
epsilon%o?:*
is_training( v

re_lu/ReluRelu(batch_normalization/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@@?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_2/Conv2DConv2Dre_lu/Relu:activations:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@?
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
:*
dtype0?
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
:*
dtype0?
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3conv2d_2/BiasAdd:output:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@:::::*
epsilon%o?:*
is_training( z
re_lu_1/ReluRelu*batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@@?
add/addAddV2max_pooling2d/MaxPool:output:0re_lu_1/Relu:activations:0*
T0*/
_output_shapes
:?????????@@?
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_3/Conv2DConv2Dadd/add:z:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
?
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  ?
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes
:*
dtype0?
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes
:*
dtype0?
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3conv2d_3/BiasAdd:output:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
is_training( z
re_lu_2/ReluRelu*batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????  ?
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_4/Conv2DConv2Dre_lu_2/Relu:activations:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
?
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  ?
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource*
_output_shapes
:*
dtype0?
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3conv2d_4/BiasAdd:output:0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
is_training( z
re_lu_3/ReluRelu*batch_normalization_3/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????  ?
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_5/Conv2DConv2Dadd/add:z:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
?
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  ?
	add_1/addAddV2conv2d_5/BiasAdd:output:0re_lu_3/Relu:activations:0*
T0*/
_output_shapes
:?????????  ^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 0  t
flatten/ReshapeReshapeadd_1/add:z:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????`?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?`*
dtype0?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????\
SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????

NoOpNoOp4^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_16^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_16^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_1^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_12>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:T P
1
_output_shapes
:???????????

_user_specified_namex
?X
?
D__inference_cnn_model_layer_call_and_return_conditional_losses_10481
input_1&
conv2d_10400:
conv2d_10402:(
conv2d_1_10406:
conv2d_1_10408:'
batch_normalization_10411:'
batch_normalization_10413:'
batch_normalization_10415:'
batch_normalization_10417:(
conv2d_2_10421:
conv2d_2_10423:)
batch_normalization_1_10426:)
batch_normalization_1_10428:)
batch_normalization_1_10430:)
batch_normalization_1_10432:(
conv2d_3_10437:
conv2d_3_10439:)
batch_normalization_2_10442:)
batch_normalization_2_10444:)
batch_normalization_2_10446:)
batch_normalization_2_10448:(
conv2d_4_10452:
conv2d_4_10454:)
batch_normalization_3_10457:)
batch_normalization_3_10459:)
batch_normalization_3_10461:)
batch_normalization_3_10463:(
conv2d_5_10467:
conv2d_5_10469:
dense_10474:	?`
dense_10476:
identity??+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?-batch_normalization_2/StatefulPartitionedCall?-batch_normalization_3/StatefulPartitionedCall?conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall? conv2d_4/StatefulPartitionedCall? conv2d_5/StatefulPartitionedCall?dense/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_10400conv2d_10402*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_9406?
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_9416?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_10406conv2d_1_10408*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_9428?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_10411batch_normalization_10413batch_normalization_10415batch_normalization_10417*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_9998?
re_lu/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_re_lu_layer_call_and_return_conditional_losses_9466?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallre_lu/PartitionedCall:output:0conv2d_2_10421conv2d_2_10423*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_9478?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_1_10426batch_normalization_1_10428batch_normalization_1_10430batch_normalization_1_10432*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_9938?
re_lu_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_re_lu_1_layer_call_and_return_conditional_losses_9516?
add/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0 re_lu_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *F
fAR?
=__inference_add_layer_call_and_return_conditional_losses_9524?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0conv2d_3_10437conv2d_3_10439*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_9536?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_2_10442batch_normalization_2_10444batch_normalization_2_10446batch_normalization_2_10448*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_9871?
re_lu_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_re_lu_2_layer_call_and_return_conditional_losses_9574?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall re_lu_2/PartitionedCall:output:0conv2d_4_10452conv2d_4_10454*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_9586?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_3_10457batch_normalization_3_10459batch_normalization_3_10461batch_normalization_3_10463*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_9811?
re_lu_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_re_lu_3_layer_call_and_return_conditional_losses_9624?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0conv2d_5_10467conv2d_5_10469*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2d_5_layer_call_and_return_conditional_losses_9636?
add_1/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0 re_lu_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_add_1_layer_call_and_return_conditional_losses_9648?
flatten/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_9656?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_10474dense_10476*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_9668l
SoftmaxSoftmax&dense/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_11192

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
]
A__inference_re_lu_2_layer_call_and_return_conditional_losses_9574

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????  b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  :W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_9129

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11546

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????  ?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????  : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
M__inference_batch_normalization_layer_call_and_return_conditional_losses_9154

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
]
A__inference_re_lu_1_layer_call_and_return_conditional_losses_9516

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????@@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@@:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
)__inference_cnn_model_layer_call_fn_10619
x!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:$

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:$

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:

unknown_24:$

unknown_25:

unknown_26:

unknown_27:	?`

unknown_28:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_cnn_model_layer_call_and_return_conditional_losses_9676o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
1
_output_shapes
:???????????

_user_specified_namex
?

?
B__inference_conv2d_1_layer_call_and_return_conditional_losses_9428

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?

?
B__inference_conv2d_2_layer_call_and_return_conditional_losses_9478

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_3_layer_call_fn_11479

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_9609w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????  : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?X
?
C__inference_cnn_model_layer_call_and_return_conditional_losses_9676
x%
conv2d_9407:
conv2d_9409:'
conv2d_1_9429:
conv2d_1_9431:&
batch_normalization_9452:&
batch_normalization_9454:&
batch_normalization_9456:&
batch_normalization_9458:'
conv2d_2_9479:
conv2d_2_9481:(
batch_normalization_1_9502:(
batch_normalization_1_9504:(
batch_normalization_1_9506:(
batch_normalization_1_9508:'
conv2d_3_9537:
conv2d_3_9539:(
batch_normalization_2_9560:(
batch_normalization_2_9562:(
batch_normalization_2_9564:(
batch_normalization_2_9566:'
conv2d_4_9587:
conv2d_4_9589:(
batch_normalization_3_9610:(
batch_normalization_3_9612:(
batch_normalization_3_9614:(
batch_normalization_3_9616:'
conv2d_5_9637:
conv2d_5_9639:

dense_9669:	?`

dense_9671:
identity??+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?-batch_normalization_2/StatefulPartitionedCall?-batch_normalization_3/StatefulPartitionedCall?conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall? conv2d_4/StatefulPartitionedCall? conv2d_5/StatefulPartitionedCall?dense/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCallxconv2d_9407conv2d_9409*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_9406?
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_9416?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_9429conv2d_1_9431*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_9428?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_9452batch_normalization_9454batch_normalization_9456batch_normalization_9458*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_9451?
re_lu/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_re_lu_layer_call_and_return_conditional_losses_9466?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallre_lu/PartitionedCall:output:0conv2d_2_9479conv2d_2_9481*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_9478?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_1_9502batch_normalization_1_9504batch_normalization_1_9506batch_normalization_1_9508*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_9501?
re_lu_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_re_lu_1_layer_call_and_return_conditional_losses_9516?
add/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0 re_lu_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *F
fAR?
=__inference_add_layer_call_and_return_conditional_losses_9524?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0conv2d_3_9537conv2d_3_9539*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_9536?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_2_9560batch_normalization_2_9562batch_normalization_2_9564batch_normalization_2_9566*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_9559?
re_lu_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_re_lu_2_layer_call_and_return_conditional_losses_9574?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall re_lu_2/PartitionedCall:output:0conv2d_4_9587conv2d_4_9589*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_9586?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_3_9610batch_normalization_3_9612batch_normalization_3_9614batch_normalization_3_9616*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_9609?
re_lu_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_re_lu_3_layer_call_and_return_conditional_losses_9624?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0conv2d_5_9637conv2d_5_9639*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2d_5_layer_call_and_return_conditional_losses_9636?
add_1/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0 re_lu_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_add_1_layer_call_and_return_conditional_losses_9648?
flatten/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_9656?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_9669
dense_9671*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_9668l
SoftmaxSoftmax&dense/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:T P
1
_output_shapes
:???????????

_user_specified_namex
??
?;
!__inference__traced_restore_12166
file_prefixB
(assignvariableop_cnn_model_conv2d_kernel:6
(assignvariableop_1_cnn_model_conv2d_bias:F
,assignvariableop_2_cnn_model_conv2d_1_kernel:8
*assignvariableop_3_cnn_model_conv2d_1_bias:D
6assignvariableop_4_cnn_model_batch_normalization_gamma:C
5assignvariableop_5_cnn_model_batch_normalization_beta:J
<assignvariableop_6_cnn_model_batch_normalization_moving_mean:N
@assignvariableop_7_cnn_model_batch_normalization_moving_variance:F
,assignvariableop_8_cnn_model_conv2d_2_kernel:8
*assignvariableop_9_cnn_model_conv2d_2_bias:G
9assignvariableop_10_cnn_model_batch_normalization_1_gamma:F
8assignvariableop_11_cnn_model_batch_normalization_1_beta:M
?assignvariableop_12_cnn_model_batch_normalization_1_moving_mean:Q
Cassignvariableop_13_cnn_model_batch_normalization_1_moving_variance:G
-assignvariableop_14_cnn_model_conv2d_3_kernel:9
+assignvariableop_15_cnn_model_conv2d_3_bias:G
9assignvariableop_16_cnn_model_batch_normalization_2_gamma:F
8assignvariableop_17_cnn_model_batch_normalization_2_beta:M
?assignvariableop_18_cnn_model_batch_normalization_2_moving_mean:Q
Cassignvariableop_19_cnn_model_batch_normalization_2_moving_variance:G
-assignvariableop_20_cnn_model_conv2d_4_kernel:9
+assignvariableop_21_cnn_model_conv2d_4_bias:G
9assignvariableop_22_cnn_model_batch_normalization_3_gamma:F
8assignvariableop_23_cnn_model_batch_normalization_3_beta:M
?assignvariableop_24_cnn_model_batch_normalization_3_moving_mean:Q
Cassignvariableop_25_cnn_model_batch_normalization_3_moving_variance:G
-assignvariableop_26_cnn_model_conv2d_5_kernel:9
+assignvariableop_27_cnn_model_conv2d_5_bias:=
*assignvariableop_28_cnn_model_dense_kernel:	?`6
(assignvariableop_29_cnn_model_dense_bias:'
assignvariableop_30_adam_iter:	 )
assignvariableop_31_adam_beta_1: )
assignvariableop_32_adam_beta_2: (
assignvariableop_33_adam_decay: 0
&assignvariableop_34_adam_learning_rate: #
assignvariableop_35_total: #
assignvariableop_36_count: %
assignvariableop_37_total_1: %
assignvariableop_38_count_1: L
2assignvariableop_39_adam_cnn_model_conv2d_kernel_m:>
0assignvariableop_40_adam_cnn_model_conv2d_bias_m:N
4assignvariableop_41_adam_cnn_model_conv2d_1_kernel_m:@
2assignvariableop_42_adam_cnn_model_conv2d_1_bias_m:L
>assignvariableop_43_adam_cnn_model_batch_normalization_gamma_m:K
=assignvariableop_44_adam_cnn_model_batch_normalization_beta_m:N
4assignvariableop_45_adam_cnn_model_conv2d_2_kernel_m:@
2assignvariableop_46_adam_cnn_model_conv2d_2_bias_m:N
@assignvariableop_47_adam_cnn_model_batch_normalization_1_gamma_m:M
?assignvariableop_48_adam_cnn_model_batch_normalization_1_beta_m:N
4assignvariableop_49_adam_cnn_model_conv2d_3_kernel_m:@
2assignvariableop_50_adam_cnn_model_conv2d_3_bias_m:N
@assignvariableop_51_adam_cnn_model_batch_normalization_2_gamma_m:M
?assignvariableop_52_adam_cnn_model_batch_normalization_2_beta_m:N
4assignvariableop_53_adam_cnn_model_conv2d_4_kernel_m:@
2assignvariableop_54_adam_cnn_model_conv2d_4_bias_m:N
@assignvariableop_55_adam_cnn_model_batch_normalization_3_gamma_m:M
?assignvariableop_56_adam_cnn_model_batch_normalization_3_beta_m:N
4assignvariableop_57_adam_cnn_model_conv2d_5_kernel_m:@
2assignvariableop_58_adam_cnn_model_conv2d_5_bias_m:D
1assignvariableop_59_adam_cnn_model_dense_kernel_m:	?`=
/assignvariableop_60_adam_cnn_model_dense_bias_m:L
2assignvariableop_61_adam_cnn_model_conv2d_kernel_v:>
0assignvariableop_62_adam_cnn_model_conv2d_bias_v:N
4assignvariableop_63_adam_cnn_model_conv2d_1_kernel_v:@
2assignvariableop_64_adam_cnn_model_conv2d_1_bias_v:L
>assignvariableop_65_adam_cnn_model_batch_normalization_gamma_v:K
=assignvariableop_66_adam_cnn_model_batch_normalization_beta_v:N
4assignvariableop_67_adam_cnn_model_conv2d_2_kernel_v:@
2assignvariableop_68_adam_cnn_model_conv2d_2_bias_v:N
@assignvariableop_69_adam_cnn_model_batch_normalization_1_gamma_v:M
?assignvariableop_70_adam_cnn_model_batch_normalization_1_beta_v:N
4assignvariableop_71_adam_cnn_model_conv2d_3_kernel_v:@
2assignvariableop_72_adam_cnn_model_conv2d_3_bias_v:N
@assignvariableop_73_adam_cnn_model_batch_normalization_2_gamma_v:M
?assignvariableop_74_adam_cnn_model_batch_normalization_2_beta_v:N
4assignvariableop_75_adam_cnn_model_conv2d_4_kernel_v:@
2assignvariableop_76_adam_cnn_model_conv2d_4_bias_v:N
@assignvariableop_77_adam_cnn_model_batch_normalization_3_gamma_v:M
?assignvariableop_78_adam_cnn_model_batch_normalization_3_beta_v:N
4assignvariableop_79_adam_cnn_model_conv2d_5_kernel_v:@
2assignvariableop_80_adam_cnn_model_conv2d_5_bias_v:D
1assignvariableop_81_adam_cnn_model_dense_kernel_v:	?`=
/assignvariableop_82_adam_cnn_model_dense_bias_v:
identity_84??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_9?'
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:T*
dtype0*?&
value?&B?&TB'conv1/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv1/bias/.ATTRIBUTES/VARIABLE_VALUEB)conv2_t/kernel/.ATTRIBUTES/VARIABLE_VALUEB'conv2_t/bias/.ATTRIBUTES/VARIABLE_VALUEB+batchnorm1/gamma/.ATTRIBUTES/VARIABLE_VALUEB*batchnorm1/beta/.ATTRIBUTES/VARIABLE_VALUEB1batchnorm1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB5batchnorm1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB'conv2/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv2/bias/.ATTRIBUTES/VARIABLE_VALUEB+batchnorm2/gamma/.ATTRIBUTES/VARIABLE_VALUEB*batchnorm2/beta/.ATTRIBUTES/VARIABLE_VALUEB1batchnorm2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB5batchnorm2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB'conv3/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv3/bias/.ATTRIBUTES/VARIABLE_VALUEB+batchnorm3/gamma/.ATTRIBUTES/VARIABLE_VALUEB*batchnorm3/beta/.ATTRIBUTES/VARIABLE_VALUEB1batchnorm3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB5batchnorm3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB'conv4/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv4/bias/.ATTRIBUTES/VARIABLE_VALUEB+batchnorm4/gamma/.ATTRIBUTES/VARIABLE_VALUEB*batchnorm4/beta/.ATTRIBUTES/VARIABLE_VALUEB1batchnorm4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB5batchnorm4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB+identity1/kernel/.ATTRIBUTES/VARIABLE_VALUEB)identity1/bias/.ATTRIBUTES/VARIABLE_VALUEB%fc1/kernel/.ATTRIBUTES/VARIABLE_VALUEB#fc1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBCconv1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAconv1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBEconv2_t/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCconv2_t/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGbatchnorm1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBFbatchnorm1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCconv2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAconv2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGbatchnorm2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBFbatchnorm2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCconv3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAconv3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGbatchnorm3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBFbatchnorm3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCconv4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAconv4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGbatchnorm4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBFbatchnorm4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGidentity1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBEidentity1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAfc1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB?fc1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCconv1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAconv1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBEconv2_t/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCconv2_t/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBGbatchnorm1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBFbatchnorm1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCconv2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAconv2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBGbatchnorm2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBFbatchnorm2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCconv3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAconv3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBGbatchnorm3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBFbatchnorm3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCconv4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAconv4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBGbatchnorm4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBFbatchnorm4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBGidentity1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBEidentity1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAfc1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB?fc1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:T*
dtype0*?
value?B?TB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*b
dtypesX
V2T	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp(assignvariableop_cnn_model_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp(assignvariableop_1_cnn_model_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp,assignvariableop_2_cnn_model_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp*assignvariableop_3_cnn_model_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp6assignvariableop_4_cnn_model_batch_normalization_gammaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp5assignvariableop_5_cnn_model_batch_normalization_betaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp<assignvariableop_6_cnn_model_batch_normalization_moving_meanIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp@assignvariableop_7_cnn_model_batch_normalization_moving_varianceIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp,assignvariableop_8_cnn_model_conv2d_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp*assignvariableop_9_cnn_model_conv2d_2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp9assignvariableop_10_cnn_model_batch_normalization_1_gammaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp8assignvariableop_11_cnn_model_batch_normalization_1_betaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp?assignvariableop_12_cnn_model_batch_normalization_1_moving_meanIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpCassignvariableop_13_cnn_model_batch_normalization_1_moving_varianceIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp-assignvariableop_14_cnn_model_conv2d_3_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp+assignvariableop_15_cnn_model_conv2d_3_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp9assignvariableop_16_cnn_model_batch_normalization_2_gammaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp8assignvariableop_17_cnn_model_batch_normalization_2_betaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp?assignvariableop_18_cnn_model_batch_normalization_2_moving_meanIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOpCassignvariableop_19_cnn_model_batch_normalization_2_moving_varianceIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp-assignvariableop_20_cnn_model_conv2d_4_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp+assignvariableop_21_cnn_model_conv2d_4_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp9assignvariableop_22_cnn_model_batch_normalization_3_gammaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_cnn_model_batch_normalization_3_betaIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp?assignvariableop_24_cnn_model_batch_normalization_3_moving_meanIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOpCassignvariableop_25_cnn_model_batch_normalization_3_moving_varianceIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp-assignvariableop_26_cnn_model_conv2d_5_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_cnn_model_conv2d_5_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp*assignvariableop_28_cnn_model_dense_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp(assignvariableop_29_cnn_model_dense_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_30AssignVariableOpassignvariableop_30_adam_iterIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOpassignvariableop_31_adam_beta_1Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpassignvariableop_32_adam_beta_2Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOpassignvariableop_33_adam_decayIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp&assignvariableop_34_adam_learning_rateIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpassignvariableop_35_totalIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOpassignvariableop_36_countIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOpassignvariableop_37_total_1Identity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpassignvariableop_38_count_1Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp2assignvariableop_39_adam_cnn_model_conv2d_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOp0assignvariableop_40_adam_cnn_model_conv2d_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp4assignvariableop_41_adam_cnn_model_conv2d_1_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp2assignvariableop_42_adam_cnn_model_conv2d_1_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOp>assignvariableop_43_adam_cnn_model_batch_normalization_gamma_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOp=assignvariableop_44_adam_cnn_model_batch_normalization_beta_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOp4assignvariableop_45_adam_cnn_model_conv2d_2_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOp2assignvariableop_46_adam_cnn_model_conv2d_2_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOp@assignvariableop_47_adam_cnn_model_batch_normalization_1_gamma_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOp?assignvariableop_48_adam_cnn_model_batch_normalization_1_beta_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOp4assignvariableop_49_adam_cnn_model_conv2d_3_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOp2assignvariableop_50_adam_cnn_model_conv2d_3_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOp@assignvariableop_51_adam_cnn_model_batch_normalization_2_gamma_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOp?assignvariableop_52_adam_cnn_model_batch_normalization_2_beta_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOp4assignvariableop_53_adam_cnn_model_conv2d_4_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOp2assignvariableop_54_adam_cnn_model_conv2d_4_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOp@assignvariableop_55_adam_cnn_model_batch_normalization_3_gamma_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOp?assignvariableop_56_adam_cnn_model_batch_normalization_3_beta_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_57AssignVariableOp4assignvariableop_57_adam_cnn_model_conv2d_5_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_58AssignVariableOp2assignvariableop_58_adam_cnn_model_conv2d_5_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_59AssignVariableOp1assignvariableop_59_adam_cnn_model_dense_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_60AssignVariableOp/assignvariableop_60_adam_cnn_model_dense_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_61AssignVariableOp2assignvariableop_61_adam_cnn_model_conv2d_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_62AssignVariableOp0assignvariableop_62_adam_cnn_model_conv2d_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_63AssignVariableOp4assignvariableop_63_adam_cnn_model_conv2d_1_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_64AssignVariableOp2assignvariableop_64_adam_cnn_model_conv2d_1_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_65AssignVariableOp>assignvariableop_65_adam_cnn_model_batch_normalization_gamma_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_66AssignVariableOp=assignvariableop_66_adam_cnn_model_batch_normalization_beta_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_67AssignVariableOp4assignvariableop_67_adam_cnn_model_conv2d_2_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_68AssignVariableOp2assignvariableop_68_adam_cnn_model_conv2d_2_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_69AssignVariableOp@assignvariableop_69_adam_cnn_model_batch_normalization_1_gamma_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_70AssignVariableOp?assignvariableop_70_adam_cnn_model_batch_normalization_1_beta_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_71AssignVariableOp4assignvariableop_71_adam_cnn_model_conv2d_3_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_72AssignVariableOp2assignvariableop_72_adam_cnn_model_conv2d_3_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_73AssignVariableOp@assignvariableop_73_adam_cnn_model_batch_normalization_2_gamma_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_74AssignVariableOp?assignvariableop_74_adam_cnn_model_batch_normalization_2_beta_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_75AssignVariableOp4assignvariableop_75_adam_cnn_model_conv2d_4_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_76AssignVariableOp2assignvariableop_76_adam_cnn_model_conv2d_4_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_77AssignVariableOp@assignvariableop_77_adam_cnn_model_batch_normalization_3_gamma_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_78AssignVariableOp?assignvariableop_78_adam_cnn_model_batch_normalization_3_beta_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_79AssignVariableOp4assignvariableop_79_adam_cnn_model_conv2d_5_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_80AssignVariableOp2assignvariableop_80_adam_cnn_model_conv2d_5_bias_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_81AssignVariableOp1assignvariableop_81_adam_cnn_model_dense_kernel_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_82AssignVariableOp/assignvariableop_82_adam_cnn_model_dense_bias_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_83Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_84IdentityIdentity_83:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_84Identity_84:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
l
@__inference_add_1_layer_call_and_return_conditional_losses_11605
inputs_0
inputs_1
identityZ
addAddV2inputs_0inputs_1*
T0*/
_output_shapes
:?????????  W
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:?????????  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????  :?????????  :Y U
/
_output_shapes
:?????????  
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????  
"
_user_specified_name
inputs/1
?
?
)__inference_cnn_model_layer_call_fn_10684
x!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:$

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:$

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:

unknown_24:$

unknown_25:

unknown_26:

unknown_27:	?`

unknown_28:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_cnn_model_layer_call_and_return_conditional_losses_10185o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
1
_output_shapes
:???????????

_user_specified_namex
?
?
M__inference_batch_normalization_layer_call_and_return_conditional_losses_9185

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?

?
B__inference_conv2d_4_layer_call_and_return_conditional_losses_9586

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????  w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_11057

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
^
B__inference_re_lu_3_layer_call_and_return_conditional_losses_11574

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????  b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  :W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_11210

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_9559

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????  ?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????  : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_9313

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
??
?
__inference__wrapped_model_9120
input_1I
/cnn_model_conv2d_conv2d_readvariableop_resource:>
0cnn_model_conv2d_biasadd_readvariableop_resource:K
1cnn_model_conv2d_1_conv2d_readvariableop_resource:@
2cnn_model_conv2d_1_biasadd_readvariableop_resource:C
5cnn_model_batch_normalization_readvariableop_resource:E
7cnn_model_batch_normalization_readvariableop_1_resource:T
Fcnn_model_batch_normalization_fusedbatchnormv3_readvariableop_resource:V
Hcnn_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource:K
1cnn_model_conv2d_2_conv2d_readvariableop_resource:@
2cnn_model_conv2d_2_biasadd_readvariableop_resource:E
7cnn_model_batch_normalization_1_readvariableop_resource:G
9cnn_model_batch_normalization_1_readvariableop_1_resource:V
Hcnn_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:X
Jcnn_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:K
1cnn_model_conv2d_3_conv2d_readvariableop_resource:@
2cnn_model_conv2d_3_biasadd_readvariableop_resource:E
7cnn_model_batch_normalization_2_readvariableop_resource:G
9cnn_model_batch_normalization_2_readvariableop_1_resource:V
Hcnn_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource:X
Jcnn_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:K
1cnn_model_conv2d_4_conv2d_readvariableop_resource:@
2cnn_model_conv2d_4_biasadd_readvariableop_resource:E
7cnn_model_batch_normalization_3_readvariableop_resource:G
9cnn_model_batch_normalization_3_readvariableop_1_resource:V
Hcnn_model_batch_normalization_3_fusedbatchnormv3_readvariableop_resource:X
Jcnn_model_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:K
1cnn_model_conv2d_5_conv2d_readvariableop_resource:@
2cnn_model_conv2d_5_biasadd_readvariableop_resource:A
.cnn_model_dense_matmul_readvariableop_resource:	?`=
/cnn_model_dense_biasadd_readvariableop_resource:
identity??=cnn_model/batch_normalization/FusedBatchNormV3/ReadVariableOp??cnn_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1?,cnn_model/batch_normalization/ReadVariableOp?.cnn_model/batch_normalization/ReadVariableOp_1??cnn_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp?Acnn_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?.cnn_model/batch_normalization_1/ReadVariableOp?0cnn_model/batch_normalization_1/ReadVariableOp_1??cnn_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?Acnn_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?.cnn_model/batch_normalization_2/ReadVariableOp?0cnn_model/batch_normalization_2/ReadVariableOp_1??cnn_model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp?Acnn_model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?.cnn_model/batch_normalization_3/ReadVariableOp?0cnn_model/batch_normalization_3/ReadVariableOp_1?'cnn_model/conv2d/BiasAdd/ReadVariableOp?&cnn_model/conv2d/Conv2D/ReadVariableOp?)cnn_model/conv2d_1/BiasAdd/ReadVariableOp?(cnn_model/conv2d_1/Conv2D/ReadVariableOp?)cnn_model/conv2d_2/BiasAdd/ReadVariableOp?(cnn_model/conv2d_2/Conv2D/ReadVariableOp?)cnn_model/conv2d_3/BiasAdd/ReadVariableOp?(cnn_model/conv2d_3/Conv2D/ReadVariableOp?)cnn_model/conv2d_4/BiasAdd/ReadVariableOp?(cnn_model/conv2d_4/Conv2D/ReadVariableOp?)cnn_model/conv2d_5/BiasAdd/ReadVariableOp?(cnn_model/conv2d_5/Conv2D/ReadVariableOp?&cnn_model/dense/BiasAdd/ReadVariableOp?%cnn_model/dense/MatMul/ReadVariableOp?
&cnn_model/conv2d/Conv2D/ReadVariableOpReadVariableOp/cnn_model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
cnn_model/conv2d/Conv2DConv2Dinput_1.cnn_model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
'cnn_model/conv2d/BiasAdd/ReadVariableOpReadVariableOp0cnn_model_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
cnn_model/conv2d/BiasAddBiasAdd cnn_model/conv2d/Conv2D:output:0/cnn_model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????|
cnn_model/conv2d/ReluRelu!cnn_model/conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
cnn_model/max_pooling2d/MaxPoolMaxPool#cnn_model/conv2d/Relu:activations:0*/
_output_shapes
:?????????@@*
ksize
*
paddingVALID*
strides
?
(cnn_model/conv2d_1/Conv2D/ReadVariableOpReadVariableOp1cnn_model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
cnn_model/conv2d_1/Conv2DConv2D(cnn_model/max_pooling2d/MaxPool:output:00cnn_model/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
?
)cnn_model/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp2cnn_model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
cnn_model/conv2d_1/BiasAddBiasAdd"cnn_model/conv2d_1/Conv2D:output:01cnn_model/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@?
,cnn_model/batch_normalization/ReadVariableOpReadVariableOp5cnn_model_batch_normalization_readvariableop_resource*
_output_shapes
:*
dtype0?
.cnn_model/batch_normalization/ReadVariableOp_1ReadVariableOp7cnn_model_batch_normalization_readvariableop_1_resource*
_output_shapes
:*
dtype0?
=cnn_model/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpFcnn_model_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
?cnn_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHcnn_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
.cnn_model/batch_normalization/FusedBatchNormV3FusedBatchNormV3#cnn_model/conv2d_1/BiasAdd:output:04cnn_model/batch_normalization/ReadVariableOp:value:06cnn_model/batch_normalization/ReadVariableOp_1:value:0Ecnn_model/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Gcnn_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@:::::*
epsilon%o?:*
is_training( ?
cnn_model/re_lu/ReluRelu2cnn_model/batch_normalization/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@@?
(cnn_model/conv2d_2/Conv2D/ReadVariableOpReadVariableOp1cnn_model_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
cnn_model/conv2d_2/Conv2DConv2D"cnn_model/re_lu/Relu:activations:00cnn_model/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
?
)cnn_model/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp2cnn_model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
cnn_model/conv2d_2/BiasAddBiasAdd"cnn_model/conv2d_2/Conv2D:output:01cnn_model/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@?
.cnn_model/batch_normalization_1/ReadVariableOpReadVariableOp7cnn_model_batch_normalization_1_readvariableop_resource*
_output_shapes
:*
dtype0?
0cnn_model/batch_normalization_1/ReadVariableOp_1ReadVariableOp9cnn_model_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:*
dtype0?
?cnn_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpHcnn_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
Acnn_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpJcnn_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
0cnn_model/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3#cnn_model/conv2d_2/BiasAdd:output:06cnn_model/batch_normalization_1/ReadVariableOp:value:08cnn_model/batch_normalization_1/ReadVariableOp_1:value:0Gcnn_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Icnn_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@:::::*
epsilon%o?:*
is_training( ?
cnn_model/re_lu_1/ReluRelu4cnn_model/batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@@?
cnn_model/add/addAddV2(cnn_model/max_pooling2d/MaxPool:output:0$cnn_model/re_lu_1/Relu:activations:0*
T0*/
_output_shapes
:?????????@@?
(cnn_model/conv2d_3/Conv2D/ReadVariableOpReadVariableOp1cnn_model_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
cnn_model/conv2d_3/Conv2DConv2Dcnn_model/add/add:z:00cnn_model/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
?
)cnn_model/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp2cnn_model_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
cnn_model/conv2d_3/BiasAddBiasAdd"cnn_model/conv2d_3/Conv2D:output:01cnn_model/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  ?
.cnn_model/batch_normalization_2/ReadVariableOpReadVariableOp7cnn_model_batch_normalization_2_readvariableop_resource*
_output_shapes
:*
dtype0?
0cnn_model/batch_normalization_2/ReadVariableOp_1ReadVariableOp9cnn_model_batch_normalization_2_readvariableop_1_resource*
_output_shapes
:*
dtype0?
?cnn_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpHcnn_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
Acnn_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpJcnn_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
0cnn_model/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3#cnn_model/conv2d_3/BiasAdd:output:06cnn_model/batch_normalization_2/ReadVariableOp:value:08cnn_model/batch_normalization_2/ReadVariableOp_1:value:0Gcnn_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Icnn_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
is_training( ?
cnn_model/re_lu_2/ReluRelu4cnn_model/batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????  ?
(cnn_model/conv2d_4/Conv2D/ReadVariableOpReadVariableOp1cnn_model_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
cnn_model/conv2d_4/Conv2DConv2D$cnn_model/re_lu_2/Relu:activations:00cnn_model/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
?
)cnn_model/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp2cnn_model_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
cnn_model/conv2d_4/BiasAddBiasAdd"cnn_model/conv2d_4/Conv2D:output:01cnn_model/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  ?
.cnn_model/batch_normalization_3/ReadVariableOpReadVariableOp7cnn_model_batch_normalization_3_readvariableop_resource*
_output_shapes
:*
dtype0?
0cnn_model/batch_normalization_3/ReadVariableOp_1ReadVariableOp9cnn_model_batch_normalization_3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
?cnn_model/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpHcnn_model_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
Acnn_model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpJcnn_model_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
0cnn_model/batch_normalization_3/FusedBatchNormV3FusedBatchNormV3#cnn_model/conv2d_4/BiasAdd:output:06cnn_model/batch_normalization_3/ReadVariableOp:value:08cnn_model/batch_normalization_3/ReadVariableOp_1:value:0Gcnn_model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Icnn_model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
is_training( ?
cnn_model/re_lu_3/ReluRelu4cnn_model/batch_normalization_3/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????  ?
(cnn_model/conv2d_5/Conv2D/ReadVariableOpReadVariableOp1cnn_model_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
cnn_model/conv2d_5/Conv2DConv2Dcnn_model/add/add:z:00cnn_model/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
?
)cnn_model/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp2cnn_model_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
cnn_model/conv2d_5/BiasAddBiasAdd"cnn_model/conv2d_5/Conv2D:output:01cnn_model/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  ?
cnn_model/add_1/addAddV2#cnn_model/conv2d_5/BiasAdd:output:0$cnn_model/re_lu_3/Relu:activations:0*
T0*/
_output_shapes
:?????????  h
cnn_model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 0  ?
cnn_model/flatten/ReshapeReshapecnn_model/add_1/add:z:0 cnn_model/flatten/Const:output:0*
T0*(
_output_shapes
:??????????`?
%cnn_model/dense/MatMul/ReadVariableOpReadVariableOp.cnn_model_dense_matmul_readvariableop_resource*
_output_shapes
:	?`*
dtype0?
cnn_model/dense/MatMulMatMul"cnn_model/flatten/Reshape:output:0-cnn_model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
&cnn_model/dense/BiasAdd/ReadVariableOpReadVariableOp/cnn_model_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
cnn_model/dense/BiasAddBiasAdd cnn_model/dense/MatMul:product:0.cnn_model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
cnn_model/SoftmaxSoftmax cnn_model/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????j
IdentityIdentitycnn_model/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp>^cnn_model/batch_normalization/FusedBatchNormV3/ReadVariableOp@^cnn_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1-^cnn_model/batch_normalization/ReadVariableOp/^cnn_model/batch_normalization/ReadVariableOp_1@^cnn_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpB^cnn_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1/^cnn_model/batch_normalization_1/ReadVariableOp1^cnn_model/batch_normalization_1/ReadVariableOp_1@^cnn_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpB^cnn_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1/^cnn_model/batch_normalization_2/ReadVariableOp1^cnn_model/batch_normalization_2/ReadVariableOp_1@^cnn_model/batch_normalization_3/FusedBatchNormV3/ReadVariableOpB^cnn_model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1/^cnn_model/batch_normalization_3/ReadVariableOp1^cnn_model/batch_normalization_3/ReadVariableOp_1(^cnn_model/conv2d/BiasAdd/ReadVariableOp'^cnn_model/conv2d/Conv2D/ReadVariableOp*^cnn_model/conv2d_1/BiasAdd/ReadVariableOp)^cnn_model/conv2d_1/Conv2D/ReadVariableOp*^cnn_model/conv2d_2/BiasAdd/ReadVariableOp)^cnn_model/conv2d_2/Conv2D/ReadVariableOp*^cnn_model/conv2d_3/BiasAdd/ReadVariableOp)^cnn_model/conv2d_3/Conv2D/ReadVariableOp*^cnn_model/conv2d_4/BiasAdd/ReadVariableOp)^cnn_model/conv2d_4/Conv2D/ReadVariableOp*^cnn_model/conv2d_5/BiasAdd/ReadVariableOp)^cnn_model/conv2d_5/Conv2D/ReadVariableOp'^cnn_model/dense/BiasAdd/ReadVariableOp&^cnn_model/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2~
=cnn_model/batch_normalization/FusedBatchNormV3/ReadVariableOp=cnn_model/batch_normalization/FusedBatchNormV3/ReadVariableOp2?
?cnn_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1?cnn_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_12\
,cnn_model/batch_normalization/ReadVariableOp,cnn_model/batch_normalization/ReadVariableOp2`
.cnn_model/batch_normalization/ReadVariableOp_1.cnn_model/batch_normalization/ReadVariableOp_12?
?cnn_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp?cnn_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2?
Acnn_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Acnn_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12`
.cnn_model/batch_normalization_1/ReadVariableOp.cnn_model/batch_normalization_1/ReadVariableOp2d
0cnn_model/batch_normalization_1/ReadVariableOp_10cnn_model/batch_normalization_1/ReadVariableOp_12?
?cnn_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?cnn_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2?
Acnn_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Acnn_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12`
.cnn_model/batch_normalization_2/ReadVariableOp.cnn_model/batch_normalization_2/ReadVariableOp2d
0cnn_model/batch_normalization_2/ReadVariableOp_10cnn_model/batch_normalization_2/ReadVariableOp_12?
?cnn_model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp?cnn_model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2?
Acnn_model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Acnn_model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12`
.cnn_model/batch_normalization_3/ReadVariableOp.cnn_model/batch_normalization_3/ReadVariableOp2d
0cnn_model/batch_normalization_3/ReadVariableOp_10cnn_model/batch_normalization_3/ReadVariableOp_12R
'cnn_model/conv2d/BiasAdd/ReadVariableOp'cnn_model/conv2d/BiasAdd/ReadVariableOp2P
&cnn_model/conv2d/Conv2D/ReadVariableOp&cnn_model/conv2d/Conv2D/ReadVariableOp2V
)cnn_model/conv2d_1/BiasAdd/ReadVariableOp)cnn_model/conv2d_1/BiasAdd/ReadVariableOp2T
(cnn_model/conv2d_1/Conv2D/ReadVariableOp(cnn_model/conv2d_1/Conv2D/ReadVariableOp2V
)cnn_model/conv2d_2/BiasAdd/ReadVariableOp)cnn_model/conv2d_2/BiasAdd/ReadVariableOp2T
(cnn_model/conv2d_2/Conv2D/ReadVariableOp(cnn_model/conv2d_2/Conv2D/ReadVariableOp2V
)cnn_model/conv2d_3/BiasAdd/ReadVariableOp)cnn_model/conv2d_3/BiasAdd/ReadVariableOp2T
(cnn_model/conv2d_3/Conv2D/ReadVariableOp(cnn_model/conv2d_3/Conv2D/ReadVariableOp2V
)cnn_model/conv2d_4/BiasAdd/ReadVariableOp)cnn_model/conv2d_4/BiasAdd/ReadVariableOp2T
(cnn_model/conv2d_4/Conv2D/ReadVariableOp(cnn_model/conv2d_4/Conv2D/ReadVariableOp2V
)cnn_model/conv2d_5/BiasAdd/ReadVariableOp)cnn_model/conv2d_5/BiasAdd/ReadVariableOp2T
(cnn_model/conv2d_5/Conv2D/ReadVariableOp(cnn_model/conv2d_5/Conv2D/ReadVariableOp2P
&cnn_model/dense/BiasAdd/ReadVariableOp&cnn_model/dense/BiasAdd/ReadVariableOp2N
%cnn_model/dense/MatMul/ReadVariableOp%cnn_model/dense/MatMul/ReadVariableOp:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?

?
C__inference_conv2d_3_layer_call_and_return_conditional_losses_11287

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????  w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
C
'__inference_re_lu_3_layer_call_fn_11569

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_re_lu_3_layer_call_and_return_conditional_losses_9624h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  :W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?	
?
5__inference_batch_normalization_1_layer_call_fn_11135

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_9218?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?

?
C__inference_conv2d_5_layer_call_and_return_conditional_losses_11593

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????  w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
M__inference_batch_normalization_layer_call_and_return_conditional_losses_9998

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@:::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????@@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_10945

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_11075

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@:::::*
epsilon%o?:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????@@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
O
#__inference_add_layer_call_fn_11262
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *F
fAR?
=__inference_add_layer_call_and_return_conditional_losses_9524h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????@@:?????????@@:Y U
/
_output_shapes
:?????????@@
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????@@
"
_user_specified_name
inputs/1
?
A
%__inference_re_lu_layer_call_fn_11098

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_re_lu_layer_call_and_return_conditional_losses_9466h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@@:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11393

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  :::::*
epsilon%o?:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????  ?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????  : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
(__inference_conv2d_1_layer_call_fn_10959

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_9428w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11375

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_9938

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@@:::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????@@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
I
-__inference_max_pooling2d_layer_call_fn_10935

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_9129?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
(__inference_conv2d_5_layer_call_fn_11583

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv2d_5_layer_call_and_return_conditional_losses_9636w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?

?
C__inference_conv2d_2_layer_call_and_return_conditional_losses_11122

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
I
-__inference_max_pooling2d_layer_call_fn_10940

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_9416h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
E
input_1:
serving_default_input_1:0???????????<
output_10
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
	conv1
	pool1
conv2_t

batchnorm1
	relu1
	conv2

batchnorm2
	relu2
	add1
	
conv3

batchnorm3
	relu3
	conv4

batchnorm4
	relu4
	identity1
add2
flat
fc1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_model
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
 	variables
!trainable_variables
"regularization_losses
#	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
*axis
	+gamma
,beta
-moving_mean
.moving_variance
/	variables
0trainable_variables
1regularization_losses
2	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
3	variables
4trainable_variables
5regularization_losses
6	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

7kernel
8bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
=axis
	>gamma
?beta
@moving_mean
Amoving_variance
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Nkernel
Obias
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Taxis
	Ugamma
Vbeta
Wmoving_mean
Xmoving_variance
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
]	variables
^trainable_variables
_regularization_losses
`	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

akernel
bbias
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
gaxis
	hgamma
ibeta
jmoving_mean
kmoving_variance
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

tkernel
ubias
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
z	variables
{trainable_variables
|regularization_losses
}	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
~	variables
trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?iter
?beta_1
?beta_2

?decay
?learning_ratem?m?$m?%m?+m?,m?7m?8m?>m??m?Nm?Om?Um?Vm?am?bm?hm?im?tm?um?	?m?	?m?v?v?$v?%v?+v?,v?7v?8v?>v??v?Nv?Ov?Uv?Vv?av?bv?hv?iv?tv?uv?	?v?	?v?"
	optimizer
?
0
1
$2
%3
+4
,5
-6
.7
78
89
>10
?11
@12
A13
N14
O15
U16
V17
W18
X19
a20
b21
h22
i23
j24
k25
t26
u27
?28
?29"
trackable_list_wrapper
?
0
1
$2
%3
+4
,5
76
87
>8
?9
N10
O11
U12
V13
a14
b15
h16
i17
t18
u19
?20
?21"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
1:/2cnn_model/conv2d/kernel
#:!2cnn_model/conv2d/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
 	variables
!trainable_variables
"regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
3:12cnn_model/conv2d_1/kernel
%:#2cnn_model/conv2d_1/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
&	variables
'trainable_variables
(regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
1:/2#cnn_model/batch_normalization/gamma
0:.2"cnn_model/batch_normalization/beta
9:7 (2)cnn_model/batch_normalization/moving_mean
=:; (2-cnn_model/batch_normalization/moving_variance
<
+0
,1
-2
.3"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
/	variables
0trainable_variables
1regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
3	variables
4trainable_variables
5regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
3:12cnn_model/conv2d_2/kernel
%:#2cnn_model/conv2d_2/bias
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
9	variables
:trainable_variables
;regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
3:12%cnn_model/batch_normalization_1/gamma
2:02$cnn_model/batch_normalization_1/beta
;:9 (2+cnn_model/batch_normalization_1/moving_mean
?:= (2/cnn_model/batch_normalization_1/moving_variance
<
>0
?1
@2
A3"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
3:12cnn_model/conv2d_3/kernel
%:#2cnn_model/conv2d_3/bias
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
3:12%cnn_model/batch_normalization_2/gamma
2:02$cnn_model/batch_normalization_2/beta
;:9 (2+cnn_model/batch_normalization_2/moving_mean
?:= (2/cnn_model/batch_normalization_2/moving_variance
<
U0
V1
W2
X3"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
]	variables
^trainable_variables
_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
3:12cnn_model/conv2d_4/kernel
%:#2cnn_model/conv2d_4/bias
.
a0
b1"
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
c	variables
dtrainable_variables
eregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
3:12%cnn_model/batch_normalization_3/gamma
2:02$cnn_model/batch_normalization_3/beta
;:9 (2+cnn_model/batch_normalization_3/moving_mean
?:= (2/cnn_model/batch_normalization_3/moving_variance
<
h0
i1
j2
k3"
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
l	variables
mtrainable_variables
nregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
p	variables
qtrainable_variables
rregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
3:12cnn_model/conv2d_5/kernel
%:#2cnn_model/conv2d_5/bias
.
t0
u1"
trackable_list_wrapper
.
t0
u1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
v	variables
wtrainable_variables
xregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
z	variables
{trainable_variables
|regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
~	variables
trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):'	?`2cnn_model/dense/kernel
": 2cnn_model/dense/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
X
-0
.1
@2
A3
W4
X5
j6
k7"
trackable_list_wrapper
?
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
16
17
18"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
.
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
6:42Adam/cnn_model/conv2d/kernel/m
(:&2Adam/cnn_model/conv2d/bias/m
8:62 Adam/cnn_model/conv2d_1/kernel/m
*:(2Adam/cnn_model/conv2d_1/bias/m
6:42*Adam/cnn_model/batch_normalization/gamma/m
5:32)Adam/cnn_model/batch_normalization/beta/m
8:62 Adam/cnn_model/conv2d_2/kernel/m
*:(2Adam/cnn_model/conv2d_2/bias/m
8:62,Adam/cnn_model/batch_normalization_1/gamma/m
7:52+Adam/cnn_model/batch_normalization_1/beta/m
8:62 Adam/cnn_model/conv2d_3/kernel/m
*:(2Adam/cnn_model/conv2d_3/bias/m
8:62,Adam/cnn_model/batch_normalization_2/gamma/m
7:52+Adam/cnn_model/batch_normalization_2/beta/m
8:62 Adam/cnn_model/conv2d_4/kernel/m
*:(2Adam/cnn_model/conv2d_4/bias/m
8:62,Adam/cnn_model/batch_normalization_3/gamma/m
7:52+Adam/cnn_model/batch_normalization_3/beta/m
8:62 Adam/cnn_model/conv2d_5/kernel/m
*:(2Adam/cnn_model/conv2d_5/bias/m
.:,	?`2Adam/cnn_model/dense/kernel/m
':%2Adam/cnn_model/dense/bias/m
6:42Adam/cnn_model/conv2d/kernel/v
(:&2Adam/cnn_model/conv2d/bias/v
8:62 Adam/cnn_model/conv2d_1/kernel/v
*:(2Adam/cnn_model/conv2d_1/bias/v
6:42*Adam/cnn_model/batch_normalization/gamma/v
5:32)Adam/cnn_model/batch_normalization/beta/v
8:62 Adam/cnn_model/conv2d_2/kernel/v
*:(2Adam/cnn_model/conv2d_2/bias/v
8:62,Adam/cnn_model/batch_normalization_1/gamma/v
7:52+Adam/cnn_model/batch_normalization_1/beta/v
8:62 Adam/cnn_model/conv2d_3/kernel/v
*:(2Adam/cnn_model/conv2d_3/bias/v
8:62,Adam/cnn_model/batch_normalization_2/gamma/v
7:52+Adam/cnn_model/batch_normalization_2/beta/v
8:62 Adam/cnn_model/conv2d_4/kernel/v
*:(2Adam/cnn_model/conv2d_4/bias/v
8:62,Adam/cnn_model/batch_normalization_3/gamma/v
7:52+Adam/cnn_model/batch_normalization_3/beta/v
8:62 Adam/cnn_model/conv2d_5/kernel/v
*:(2Adam/cnn_model/conv2d_5/bias/v
.:,	?`2Adam/cnn_model/dense/kernel/v
':%2Adam/cnn_model/dense/bias/v
?2?
(__inference_cnn_model_layer_call_fn_9739
)__inference_cnn_model_layer_call_fn_10619
)__inference_cnn_model_layer_call_fn_10684
)__inference_cnn_model_layer_call_fn_10313?
???
FullArgSpec$
args?
jself
jx

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_cnn_model_layer_call_and_return_conditional_losses_10797
D__inference_cnn_model_layer_call_and_return_conditional_losses_10910
D__inference_cnn_model_layer_call_and_return_conditional_losses_10397
D__inference_cnn_model_layer_call_and_return_conditional_losses_10481?
???
FullArgSpec$
args?
jself
jx

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
__inference__wrapped_model_9120input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_conv2d_layer_call_fn_10919?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_conv2d_layer_call_and_return_conditional_losses_10930?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_max_pooling2d_layer_call_fn_10935
-__inference_max_pooling2d_layer_call_fn_10940?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_10945
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_10950?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_conv2d_1_layer_call_fn_10959?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv2d_1_layer_call_and_return_conditional_losses_10969?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
3__inference_batch_normalization_layer_call_fn_10982
3__inference_batch_normalization_layer_call_fn_10995
3__inference_batch_normalization_layer_call_fn_11008
3__inference_batch_normalization_layer_call_fn_11021?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_11039
N__inference_batch_normalization_layer_call_and_return_conditional_losses_11057
N__inference_batch_normalization_layer_call_and_return_conditional_losses_11075
N__inference_batch_normalization_layer_call_and_return_conditional_losses_11093?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
%__inference_re_lu_layer_call_fn_11098?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_re_lu_layer_call_and_return_conditional_losses_11103?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_conv2d_2_layer_call_fn_11112?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv2d_2_layer_call_and_return_conditional_losses_11122?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
5__inference_batch_normalization_1_layer_call_fn_11135
5__inference_batch_normalization_1_layer_call_fn_11148
5__inference_batch_normalization_1_layer_call_fn_11161
5__inference_batch_normalization_1_layer_call_fn_11174?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_11192
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_11210
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_11228
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_11246?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_re_lu_1_layer_call_fn_11251?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_re_lu_1_layer_call_and_return_conditional_losses_11256?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
#__inference_add_layer_call_fn_11262?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
>__inference_add_layer_call_and_return_conditional_losses_11268?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_conv2d_3_layer_call_fn_11277?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv2d_3_layer_call_and_return_conditional_losses_11287?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
5__inference_batch_normalization_2_layer_call_fn_11300
5__inference_batch_normalization_2_layer_call_fn_11313
5__inference_batch_normalization_2_layer_call_fn_11326
5__inference_batch_normalization_2_layer_call_fn_11339?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11357
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11375
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11393
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11411?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_re_lu_2_layer_call_fn_11416?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_re_lu_2_layer_call_and_return_conditional_losses_11421?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_conv2d_4_layer_call_fn_11430?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv2d_4_layer_call_and_return_conditional_losses_11440?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
5__inference_batch_normalization_3_layer_call_fn_11453
5__inference_batch_normalization_3_layer_call_fn_11466
5__inference_batch_normalization_3_layer_call_fn_11479
5__inference_batch_normalization_3_layer_call_fn_11492?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11510
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11528
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11546
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11564?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_re_lu_3_layer_call_fn_11569?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_re_lu_3_layer_call_and_return_conditional_losses_11574?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_conv2d_5_layer_call_fn_11583?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv2d_5_layer_call_and_return_conditional_losses_11593?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_add_1_layer_call_fn_11599?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_add_1_layer_call_and_return_conditional_losses_11605?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_flatten_layer_call_fn_11610?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_flatten_layer_call_and_return_conditional_losses_11616?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_dense_layer_call_fn_11625?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_dense_layer_call_and_return_conditional_losses_11635?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_10554input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
__inference__wrapped_model_9120? $%+,-.78>?@ANOUVWXabhijktu??:?7
0?-
+?(
input_1???????????
? "3?0
.
output_1"?
output_1??????????
@__inference_add_1_layer_call_and_return_conditional_losses_11605?j?g
`?]
[?X
*?'
inputs/0?????????  
*?'
inputs/1?????????  
? "-?*
#? 
0?????????  
? ?
%__inference_add_1_layer_call_fn_11599?j?g
`?]
[?X
*?'
inputs/0?????????  
*?'
inputs/1?????????  
? " ??????????  ?
>__inference_add_layer_call_and_return_conditional_losses_11268?j?g
`?]
[?X
*?'
inputs/0?????????@@
*?'
inputs/1?????????@@
? "-?*
#? 
0?????????@@
? ?
#__inference_add_layer_call_fn_11262?j?g
`?]
[?X
*?'
inputs/0?????????@@
*?'
inputs/1?????????@@
? " ??????????@@?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_11192?>?@AM?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_11210?>?@AM?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_11228r>?@A;?8
1?.
(?%
inputs?????????@@
p 
? "-?*
#? 
0?????????@@
? ?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_11246r>?@A;?8
1?.
(?%
inputs?????????@@
p
? "-?*
#? 
0?????????@@
? ?
5__inference_batch_normalization_1_layer_call_fn_11135?>?@AM?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
5__inference_batch_normalization_1_layer_call_fn_11148?>?@AM?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
5__inference_batch_normalization_1_layer_call_fn_11161e>?@A;?8
1?.
(?%
inputs?????????@@
p 
? " ??????????@@?
5__inference_batch_normalization_1_layer_call_fn_11174e>?@A;?8
1?.
(?%
inputs?????????@@
p
? " ??????????@@?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11357?UVWXM?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11375?UVWXM?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11393rUVWX;?8
1?.
(?%
inputs?????????  
p 
? "-?*
#? 
0?????????  
? ?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11411rUVWX;?8
1?.
(?%
inputs?????????  
p
? "-?*
#? 
0?????????  
? ?
5__inference_batch_normalization_2_layer_call_fn_11300?UVWXM?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
5__inference_batch_normalization_2_layer_call_fn_11313?UVWXM?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
5__inference_batch_normalization_2_layer_call_fn_11326eUVWX;?8
1?.
(?%
inputs?????????  
p 
? " ??????????  ?
5__inference_batch_normalization_2_layer_call_fn_11339eUVWX;?8
1?.
(?%
inputs?????????  
p
? " ??????????  ?
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11510?hijkM?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11528?hijkM?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11546rhijk;?8
1?.
(?%
inputs?????????  
p 
? "-?*
#? 
0?????????  
? ?
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11564rhijk;?8
1?.
(?%
inputs?????????  
p
? "-?*
#? 
0?????????  
? ?
5__inference_batch_normalization_3_layer_call_fn_11453?hijkM?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
5__inference_batch_normalization_3_layer_call_fn_11466?hijkM?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
5__inference_batch_normalization_3_layer_call_fn_11479ehijk;?8
1?.
(?%
inputs?????????  
p 
? " ??????????  ?
5__inference_batch_normalization_3_layer_call_fn_11492ehijk;?8
1?.
(?%
inputs?????????  
p
? " ??????????  ?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_11039?+,-.M?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_11057?+,-.M?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_11075r+,-.;?8
1?.
(?%
inputs?????????@@
p 
? "-?*
#? 
0?????????@@
? ?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_11093r+,-.;?8
1?.
(?%
inputs?????????@@
p
? "-?*
#? 
0?????????@@
? ?
3__inference_batch_normalization_layer_call_fn_10982?+,-.M?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
3__inference_batch_normalization_layer_call_fn_10995?+,-.M?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
3__inference_batch_normalization_layer_call_fn_11008e+,-.;?8
1?.
(?%
inputs?????????@@
p 
? " ??????????@@?
3__inference_batch_normalization_layer_call_fn_11021e+,-.;?8
1?.
(?%
inputs?????????@@
p
? " ??????????@@?
D__inference_cnn_model_layer_call_and_return_conditional_losses_10397? $%+,-.78>?@ANOUVWXabhijktu??>?;
4?1
+?(
input_1???????????
p 
? "%?"
?
0?????????
? ?
D__inference_cnn_model_layer_call_and_return_conditional_losses_10481? $%+,-.78>?@ANOUVWXabhijktu??>?;
4?1
+?(
input_1???????????
p
? "%?"
?
0?????????
? ?
D__inference_cnn_model_layer_call_and_return_conditional_losses_10797? $%+,-.78>?@ANOUVWXabhijktu??8?5
.?+
%?"
x???????????
p 
? "%?"
?
0?????????
? ?
D__inference_cnn_model_layer_call_and_return_conditional_losses_10910? $%+,-.78>?@ANOUVWXabhijktu??8?5
.?+
%?"
x???????????
p
? "%?"
?
0?????????
? ?
)__inference_cnn_model_layer_call_fn_10313| $%+,-.78>?@ANOUVWXabhijktu??>?;
4?1
+?(
input_1???????????
p
? "???????????
)__inference_cnn_model_layer_call_fn_10619v $%+,-.78>?@ANOUVWXabhijktu??8?5
.?+
%?"
x???????????
p 
? "???????????
)__inference_cnn_model_layer_call_fn_10684v $%+,-.78>?@ANOUVWXabhijktu??8?5
.?+
%?"
x???????????
p
? "???????????
(__inference_cnn_model_layer_call_fn_9739| $%+,-.78>?@ANOUVWXabhijktu??>?;
4?1
+?(
input_1???????????
p 
? "???????????
C__inference_conv2d_1_layer_call_and_return_conditional_losses_10969l$%7?4
-?*
(?%
inputs?????????@@
? "-?*
#? 
0?????????@@
? ?
(__inference_conv2d_1_layer_call_fn_10959_$%7?4
-?*
(?%
inputs?????????@@
? " ??????????@@?
C__inference_conv2d_2_layer_call_and_return_conditional_losses_11122l787?4
-?*
(?%
inputs?????????@@
? "-?*
#? 
0?????????@@
? ?
(__inference_conv2d_2_layer_call_fn_11112_787?4
-?*
(?%
inputs?????????@@
? " ??????????@@?
C__inference_conv2d_3_layer_call_and_return_conditional_losses_11287lNO7?4
-?*
(?%
inputs?????????@@
? "-?*
#? 
0?????????  
? ?
(__inference_conv2d_3_layer_call_fn_11277_NO7?4
-?*
(?%
inputs?????????@@
? " ??????????  ?
C__inference_conv2d_4_layer_call_and_return_conditional_losses_11440lab7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????  
? ?
(__inference_conv2d_4_layer_call_fn_11430_ab7?4
-?*
(?%
inputs?????????  
? " ??????????  ?
C__inference_conv2d_5_layer_call_and_return_conditional_losses_11593ltu7?4
-?*
(?%
inputs?????????@@
? "-?*
#? 
0?????????  
? ?
(__inference_conv2d_5_layer_call_fn_11583_tu7?4
-?*
(?%
inputs?????????@@
? " ??????????  ?
A__inference_conv2d_layer_call_and_return_conditional_losses_10930p9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????
? ?
&__inference_conv2d_layer_call_fn_10919c9?6
/?,
*?'
inputs???????????
? ""?????????????
@__inference_dense_layer_call_and_return_conditional_losses_11635_??0?-
&?#
!?
inputs??????????`
? "%?"
?
0?????????
? {
%__inference_dense_layer_call_fn_11625R??0?-
&?#
!?
inputs??????????`
? "???????????
B__inference_flatten_layer_call_and_return_conditional_losses_11616a7?4
-?*
(?%
inputs?????????  
? "&?#
?
0??????????`
? 
'__inference_flatten_layer_call_fn_11610T7?4
-?*
(?%
inputs?????????  
? "???????????`?
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_10945?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_10950j9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????@@
? ?
-__inference_max_pooling2d_layer_call_fn_10935?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
-__inference_max_pooling2d_layer_call_fn_10940]9?6
/?,
*?'
inputs???????????
? " ??????????@@?
B__inference_re_lu_1_layer_call_and_return_conditional_losses_11256h7?4
-?*
(?%
inputs?????????@@
? "-?*
#? 
0?????????@@
? ?
'__inference_re_lu_1_layer_call_fn_11251[7?4
-?*
(?%
inputs?????????@@
? " ??????????@@?
B__inference_re_lu_2_layer_call_and_return_conditional_losses_11421h7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????  
? ?
'__inference_re_lu_2_layer_call_fn_11416[7?4
-?*
(?%
inputs?????????  
? " ??????????  ?
B__inference_re_lu_3_layer_call_and_return_conditional_losses_11574h7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????  
? ?
'__inference_re_lu_3_layer_call_fn_11569[7?4
-?*
(?%
inputs?????????  
? " ??????????  ?
@__inference_re_lu_layer_call_and_return_conditional_losses_11103h7?4
-?*
(?%
inputs?????????@@
? "-?*
#? 
0?????????@@
? ?
%__inference_re_lu_layer_call_fn_11098[7?4
-?*
(?%
inputs?????????@@
? " ??????????@@?
#__inference_signature_wrapper_10554? $%+,-.78>?@ANOUVWXabhijktu??E?B
? 
;?8
6
input_1+?(
input_1???????????"3?0
.
output_1"?
output_1?????????