оЄ-
╘и
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
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
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
└
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
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
.
Identity

input"T
output"T"	
Ttype
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
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
Щ
ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
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
ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.9.22v2.9.1-132-g18960c44ad38√Е&
К
Adam/column_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/column_output/bias/v
Г
-Adam/column_output/bias/v/Read/ReadVariableOpReadVariableOpAdam/column_output/bias/v*
_output_shapes
:*
dtype0
Ы
Adam/column_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А
*,
shared_nameAdam/column_output/kernel/v
Ф
/Adam/column_output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/column_output/kernel/v*'
_output_shapes
:А
*
dtype0
И
Adam/table_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/table_output/bias/v
Б
,Adam/table_output/bias/v/Read/ReadVariableOpReadVariableOpAdam/table_output/bias/v*
_output_shapes
:*
dtype0
Щ
Adam/table_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А
*+
shared_nameAdam/table_output/kernel/v
Т
.Adam/table_output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/table_output/kernel/v*'
_output_shapes
:А
*
dtype0
Ч
Adam/block8_conv1_column/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*0
shared_name!Adam/block8_conv1_column/bias/v
Р
3Adam/block8_conv1_column/bias/v/Read/ReadVariableOpReadVariableOpAdam/block8_conv1_column/bias/v*
_output_shapes	
:А*
dtype0
и
!Adam/block8_conv1_column/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*2
shared_name#!Adam/block8_conv1_column/kernel/v
б
5Adam/block8_conv1_column/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/block8_conv1_column/kernel/v*(
_output_shapes
:АА*
dtype0
З
Adam/conv7_table/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_nameAdam/conv7_table/bias/v
А
+Adam/conv7_table/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv7_table/bias/v*
_output_shapes	
:А*
dtype0
Ш
Adam/conv7_table/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА**
shared_nameAdam/conv7_table/kernel/v
С
-Adam/conv7_table/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv7_table/kernel/v*(
_output_shapes
:АА*
dtype0
Ч
Adam/block7_conv1_column/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*0
shared_name!Adam/block7_conv1_column/bias/v
Р
3Adam/block7_conv1_column/bias/v/Read/ReadVariableOpReadVariableOpAdam/block7_conv1_column/bias/v*
_output_shapes	
:А*
dtype0
и
!Adam/block7_conv1_column/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*2
shared_name#!Adam/block7_conv1_column/kernel/v
б
5Adam/block7_conv1_column/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/block7_conv1_column/kernel/v*(
_output_shapes
:АА*
dtype0
Й
Adam/block6_conv2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameAdam/block6_conv2/bias/v
В
,Adam/block6_conv2/bias/v/Read/ReadVariableOpReadVariableOpAdam/block6_conv2/bias/v*
_output_shapes	
:А*
dtype0
Ъ
Adam/block6_conv2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*+
shared_nameAdam/block6_conv2/kernel/v
У
.Adam/block6_conv2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/block6_conv2/kernel/v*(
_output_shapes
:АА*
dtype0
Й
Adam/block6_conv1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameAdam/block6_conv1/bias/v
В
,Adam/block6_conv1/bias/v/Read/ReadVariableOpReadVariableOpAdam/block6_conv1/bias/v*
_output_shapes	
:А*
dtype0
Ъ
Adam/block6_conv1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*+
shared_nameAdam/block6_conv1/kernel/v
У
.Adam/block6_conv1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/block6_conv1/kernel/v*(
_output_shapes
:АА*
dtype0
К
Adam/column_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/column_output/bias/m
Г
-Adam/column_output/bias/m/Read/ReadVariableOpReadVariableOpAdam/column_output/bias/m*
_output_shapes
:*
dtype0
Ы
Adam/column_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А
*,
shared_nameAdam/column_output/kernel/m
Ф
/Adam/column_output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/column_output/kernel/m*'
_output_shapes
:А
*
dtype0
И
Adam/table_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/table_output/bias/m
Б
,Adam/table_output/bias/m/Read/ReadVariableOpReadVariableOpAdam/table_output/bias/m*
_output_shapes
:*
dtype0
Щ
Adam/table_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А
*+
shared_nameAdam/table_output/kernel/m
Т
.Adam/table_output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/table_output/kernel/m*'
_output_shapes
:А
*
dtype0
Ч
Adam/block8_conv1_column/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*0
shared_name!Adam/block8_conv1_column/bias/m
Р
3Adam/block8_conv1_column/bias/m/Read/ReadVariableOpReadVariableOpAdam/block8_conv1_column/bias/m*
_output_shapes	
:А*
dtype0
и
!Adam/block8_conv1_column/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*2
shared_name#!Adam/block8_conv1_column/kernel/m
б
5Adam/block8_conv1_column/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/block8_conv1_column/kernel/m*(
_output_shapes
:АА*
dtype0
З
Adam/conv7_table/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_nameAdam/conv7_table/bias/m
А
+Adam/conv7_table/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv7_table/bias/m*
_output_shapes	
:А*
dtype0
Ш
Adam/conv7_table/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА**
shared_nameAdam/conv7_table/kernel/m
С
-Adam/conv7_table/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv7_table/kernel/m*(
_output_shapes
:АА*
dtype0
Ч
Adam/block7_conv1_column/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*0
shared_name!Adam/block7_conv1_column/bias/m
Р
3Adam/block7_conv1_column/bias/m/Read/ReadVariableOpReadVariableOpAdam/block7_conv1_column/bias/m*
_output_shapes	
:А*
dtype0
и
!Adam/block7_conv1_column/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*2
shared_name#!Adam/block7_conv1_column/kernel/m
б
5Adam/block7_conv1_column/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/block7_conv1_column/kernel/m*(
_output_shapes
:АА*
dtype0
Й
Adam/block6_conv2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameAdam/block6_conv2/bias/m
В
,Adam/block6_conv2/bias/m/Read/ReadVariableOpReadVariableOpAdam/block6_conv2/bias/m*
_output_shapes	
:А*
dtype0
Ъ
Adam/block6_conv2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*+
shared_nameAdam/block6_conv2/kernel/m
У
.Adam/block6_conv2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/block6_conv2/kernel/m*(
_output_shapes
:АА*
dtype0
Й
Adam/block6_conv1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameAdam/block6_conv1/bias/m
В
,Adam/block6_conv1/bias/m/Read/ReadVariableOpReadVariableOpAdam/block6_conv1/bias/m*
_output_shapes	
:А*
dtype0
Ъ
Adam/block6_conv1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*+
shared_nameAdam/block6_conv1/kernel/m
У
.Adam/block6_conv1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/block6_conv1/kernel/m*(
_output_shapes
:АА*
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
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_4
[
count_4/Read/ReadVariableOpReadVariableOpcount_4*
_output_shapes
: *
dtype0
b
total_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_4
[
total_4/Read/ReadVariableOpReadVariableOptotal_4*
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
{
block5_conv4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock5_conv4/bias
t
%block5_conv4/bias/Read/ReadVariableOpReadVariableOpblock5_conv4/bias*
_output_shapes	
:А*
dtype0
М
block5_conv4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock5_conv4/kernel
Е
'block5_conv4/kernel/Read/ReadVariableOpReadVariableOpblock5_conv4/kernel*(
_output_shapes
:АА*
dtype0
{
block5_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock5_conv3/bias
t
%block5_conv3/bias/Read/ReadVariableOpReadVariableOpblock5_conv3/bias*
_output_shapes	
:А*
dtype0
М
block5_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock5_conv3/kernel
Е
'block5_conv3/kernel/Read/ReadVariableOpReadVariableOpblock5_conv3/kernel*(
_output_shapes
:АА*
dtype0
{
block5_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock5_conv2/bias
t
%block5_conv2/bias/Read/ReadVariableOpReadVariableOpblock5_conv2/bias*
_output_shapes	
:А*
dtype0
М
block5_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock5_conv2/kernel
Е
'block5_conv2/kernel/Read/ReadVariableOpReadVariableOpblock5_conv2/kernel*(
_output_shapes
:АА*
dtype0
{
block5_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock5_conv1/bias
t
%block5_conv1/bias/Read/ReadVariableOpReadVariableOpblock5_conv1/bias*
_output_shapes	
:А*
dtype0
М
block5_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock5_conv1/kernel
Е
'block5_conv1/kernel/Read/ReadVariableOpReadVariableOpblock5_conv1/kernel*(
_output_shapes
:АА*
dtype0
{
block4_conv4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock4_conv4/bias
t
%block4_conv4/bias/Read/ReadVariableOpReadVariableOpblock4_conv4/bias*
_output_shapes	
:А*
dtype0
М
block4_conv4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock4_conv4/kernel
Е
'block4_conv4/kernel/Read/ReadVariableOpReadVariableOpblock4_conv4/kernel*(
_output_shapes
:АА*
dtype0
{
block4_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock4_conv3/bias
t
%block4_conv3/bias/Read/ReadVariableOpReadVariableOpblock4_conv3/bias*
_output_shapes	
:А*
dtype0
М
block4_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock4_conv3/kernel
Е
'block4_conv3/kernel/Read/ReadVariableOpReadVariableOpblock4_conv3/kernel*(
_output_shapes
:АА*
dtype0
{
block4_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock4_conv2/bias
t
%block4_conv2/bias/Read/ReadVariableOpReadVariableOpblock4_conv2/bias*
_output_shapes	
:А*
dtype0
М
block4_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock4_conv2/kernel
Е
'block4_conv2/kernel/Read/ReadVariableOpReadVariableOpblock4_conv2/kernel*(
_output_shapes
:АА*
dtype0
{
block4_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock4_conv1/bias
t
%block4_conv1/bias/Read/ReadVariableOpReadVariableOpblock4_conv1/bias*
_output_shapes	
:А*
dtype0
М
block4_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock4_conv1/kernel
Е
'block4_conv1/kernel/Read/ReadVariableOpReadVariableOpblock4_conv1/kernel*(
_output_shapes
:АА*
dtype0
{
block3_conv4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock3_conv4/bias
t
%block3_conv4/bias/Read/ReadVariableOpReadVariableOpblock3_conv4/bias*
_output_shapes	
:А*
dtype0
М
block3_conv4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock3_conv4/kernel
Е
'block3_conv4/kernel/Read/ReadVariableOpReadVariableOpblock3_conv4/kernel*(
_output_shapes
:АА*
dtype0
{
block3_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock3_conv3/bias
t
%block3_conv3/bias/Read/ReadVariableOpReadVariableOpblock3_conv3/bias*
_output_shapes	
:А*
dtype0
М
block3_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock3_conv3/kernel
Е
'block3_conv3/kernel/Read/ReadVariableOpReadVariableOpblock3_conv3/kernel*(
_output_shapes
:АА*
dtype0
{
block3_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock3_conv2/bias
t
%block3_conv2/bias/Read/ReadVariableOpReadVariableOpblock3_conv2/bias*
_output_shapes	
:А*
dtype0
М
block3_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock3_conv2/kernel
Е
'block3_conv2/kernel/Read/ReadVariableOpReadVariableOpblock3_conv2/kernel*(
_output_shapes
:АА*
dtype0
{
block3_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock3_conv1/bias
t
%block3_conv1/bias/Read/ReadVariableOpReadVariableOpblock3_conv1/bias*
_output_shapes	
:А*
dtype0
М
block3_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock3_conv1/kernel
Е
'block3_conv1/kernel/Read/ReadVariableOpReadVariableOpblock3_conv1/kernel*(
_output_shapes
:АА*
dtype0
{
block2_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock2_conv2/bias
t
%block2_conv2/bias/Read/ReadVariableOpReadVariableOpblock2_conv2/bias*
_output_shapes	
:А*
dtype0
М
block2_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock2_conv2/kernel
Е
'block2_conv2/kernel/Read/ReadVariableOpReadVariableOpblock2_conv2/kernel*(
_output_shapes
:АА*
dtype0
{
block2_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock2_conv1/bias
t
%block2_conv1/bias/Read/ReadVariableOpReadVariableOpblock2_conv1/bias*
_output_shapes	
:А*
dtype0
Л
block2_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*$
shared_nameblock2_conv1/kernel
Д
'block2_conv1/kernel/Read/ReadVariableOpReadVariableOpblock2_conv1/kernel*'
_output_shapes
:@А*
dtype0
z
block1_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv2/bias
s
%block1_conv2/bias/Read/ReadVariableOpReadVariableOpblock1_conv2/bias*
_output_shapes
:@*
dtype0
К
block1_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_nameblock1_conv2/kernel
Г
'block1_conv2/kernel/Read/ReadVariableOpReadVariableOpblock1_conv2/kernel*&
_output_shapes
:@@*
dtype0
z
block1_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv1/bias
s
%block1_conv1/bias/Read/ReadVariableOpReadVariableOpblock1_conv1/bias*
_output_shapes
:@*
dtype0
К
block1_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameblock1_conv1/kernel
Г
'block1_conv1/kernel/Read/ReadVariableOpReadVariableOpblock1_conv1/kernel*&
_output_shapes
:@*
dtype0
|
column_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namecolumn_output/bias
u
&column_output/bias/Read/ReadVariableOpReadVariableOpcolumn_output/bias*
_output_shapes
:*
dtype0
Н
column_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:А
*%
shared_namecolumn_output/kernel
Ж
(column_output/kernel/Read/ReadVariableOpReadVariableOpcolumn_output/kernel*'
_output_shapes
:А
*
dtype0
z
table_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nametable_output/bias
s
%table_output/bias/Read/ReadVariableOpReadVariableOptable_output/bias*
_output_shapes
:*
dtype0
Л
table_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:А
*$
shared_nametable_output/kernel
Д
'table_output/kernel/Read/ReadVariableOpReadVariableOptable_output/kernel*'
_output_shapes
:А
*
dtype0
Й
block8_conv1_column/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameblock8_conv1_column/bias
В
,block8_conv1_column/bias/Read/ReadVariableOpReadVariableOpblock8_conv1_column/bias*
_output_shapes	
:А*
dtype0
Ъ
block8_conv1_column/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*+
shared_nameblock8_conv1_column/kernel
У
.block8_conv1_column/kernel/Read/ReadVariableOpReadVariableOpblock8_conv1_column/kernel*(
_output_shapes
:АА*
dtype0
y
conv7_table/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*!
shared_nameconv7_table/bias
r
$conv7_table/bias/Read/ReadVariableOpReadVariableOpconv7_table/bias*
_output_shapes	
:А*
dtype0
К
conv7_table/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*#
shared_nameconv7_table/kernel
Г
&conv7_table/kernel/Read/ReadVariableOpReadVariableOpconv7_table/kernel*(
_output_shapes
:АА*
dtype0
Й
block7_conv1_column/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameblock7_conv1_column/bias
В
,block7_conv1_column/bias/Read/ReadVariableOpReadVariableOpblock7_conv1_column/bias*
_output_shapes	
:А*
dtype0
Ъ
block7_conv1_column/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*+
shared_nameblock7_conv1_column/kernel
У
.block7_conv1_column/kernel/Read/ReadVariableOpReadVariableOpblock7_conv1_column/kernel*(
_output_shapes
:АА*
dtype0
{
block6_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock6_conv2/bias
t
%block6_conv2/bias/Read/ReadVariableOpReadVariableOpblock6_conv2/bias*
_output_shapes	
:А*
dtype0
М
block6_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock6_conv2/kernel
Е
'block6_conv2/kernel/Read/ReadVariableOpReadVariableOpblock6_conv2/kernel*(
_output_shapes
:АА*
dtype0
{
block6_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock6_conv1/bias
t
%block6_conv1/bias/Read/ReadVariableOpReadVariableOpblock6_conv1/bias*
_output_shapes	
:А*
dtype0
М
block6_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock6_conv1/kernel
Е
'block6_conv1/kernel/Read/ReadVariableOpReadVariableOpblock6_conv1/kernel*(
_output_shapes
:АА*
dtype0

NoOpNoOp
▓▓
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ь▒
valueс▒B▌▒ B╒▒
ь
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer-16
layer-17
layer-18
layer-19
layer-20
layer-21
layer_with_weights-6
layer-22
layer_with_weights-7
layer-23
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
 	optimizer
!loss
"
signatures*
* 
р
#layer-0
$layer_with_weights-0
$layer-1
%layer_with_weights-1
%layer-2
&layer-3
'layer_with_weights-2
'layer-4
(layer_with_weights-3
(layer-5
)layer-6
*layer_with_weights-4
*layer-7
+layer_with_weights-5
+layer-8
,layer_with_weights-6
,layer-9
-layer_with_weights-7
-layer-10
.layer-11
/layer_with_weights-8
/layer-12
0layer_with_weights-9
0layer-13
1layer_with_weights-10
1layer-14
2layer_with_weights-11
2layer-15
3layer-16
4layer_with_weights-12
4layer-17
5layer_with_weights-13
5layer-18
6layer_with_weights-14
6layer-19
7layer_with_weights-15
7layer-20
8layer-21
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses*
╚
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses

Ekernel
Fbias
 G_jit_compiled_convolution_op*
е
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses
N_random_generator* 
╚
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

Ukernel
Vbias
 W_jit_compiled_convolution_op*
е
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses
^_random_generator* 
╚
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses

ekernel
fbias
 g_jit_compiled_convolution_op*
е
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses
n_random_generator* 
╚
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses

ukernel
vbias
 w_jit_compiled_convolution_op*
╔
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

~kernel
bias
!А_jit_compiled_convolution_op*
Ф
Б	variables
Вtrainable_variables
Гregularization_losses
Д	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses* 
Ф
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses* 
Ф
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses* 
Ф
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses* 
Ф
Щ	variables
Ъtrainable_variables
Ыregularization_losses
Ь	keras_api
Э__call__
+Ю&call_and_return_all_conditional_losses* 
Ф
Я	variables
аtrainable_variables
бregularization_losses
в	keras_api
г__call__
+д&call_and_return_all_conditional_losses* 
Ф
е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses* 
Ф
л	variables
мtrainable_variables
нregularization_losses
о	keras_api
п__call__
+░&call_and_return_all_conditional_losses* 
Ф
▒	variables
▓trainable_variables
│regularization_losses
┤	keras_api
╡__call__
+╢&call_and_return_all_conditional_losses* 
Ф
╖	variables
╕trainable_variables
╣regularization_losses
║	keras_api
╗__call__
+╝&call_and_return_all_conditional_losses* 
Ф
╜	variables
╛trainable_variables
┐regularization_losses
└	keras_api
┴__call__
+┬&call_and_return_all_conditional_losses* 
Ф
├	variables
─trainable_variables
┼regularization_losses
╞	keras_api
╟__call__
+╚&call_and_return_all_conditional_losses* 
╤
╔	variables
╩trainable_variables
╦regularization_losses
╠	keras_api
═__call__
+╬&call_and_return_all_conditional_losses
╧kernel
	╨bias
!╤_jit_compiled_convolution_op*
╤
╥	variables
╙trainable_variables
╘regularization_losses
╒	keras_api
╓__call__
+╫&call_and_return_all_conditional_losses
╪kernel
	┘bias
!┌_jit_compiled_convolution_op*
О
█0
▄1
▌2
▐3
▀4
р5
с6
т7
у8
ф9
х10
ц11
ч12
ш13
щ14
ъ15
ы16
ь17
э18
ю19
я20
Ё21
ё22
Є23
є24
Ї25
ї26
Ў27
ў28
°29
∙30
·31
E32
F33
U34
V35
e36
f37
u38
v39
~40
41
╧42
╨43
╪44
┘45*
n
E0
F1
U2
V3
e4
f5
u6
v7
~8
9
╧10
╨11
╪12
┘13*
* 
╡
√non_trainable_variables
№layers
¤metrics
 ■layer_regularization_losses
 layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
Аtrace_0
Бtrace_1
Вtrace_2
Гtrace_3* 
:
Дtrace_0
Еtrace_1
Жtrace_2
Зtrace_3* 
* 
щ
	Иiter
Йbeta_1
Кbeta_2

Лdecay
Мlearning_rateEm°Fm∙Um·Vm√em№fm¤um■vm ~mАmБ	╧mВ	╨mГ	╪mД	┘mЕEvЖFvЗUvИVvЙevКfvЛuvМvvН~vОvП	╧vР	╨vС	╪vТ	┘vУ*
* 

Нserving_default* 

О_init_input_shape* 
╤
П	variables
Рtrainable_variables
Сregularization_losses
Т	keras_api
У__call__
+Ф&call_and_return_all_conditional_losses
█kernel
	▄bias
!Х_jit_compiled_convolution_op*
╤
Ц	variables
Чtrainable_variables
Шregularization_losses
Щ	keras_api
Ъ__call__
+Ы&call_and_return_all_conditional_losses
▌kernel
	▐bias
!Ь_jit_compiled_convolution_op*
Ф
Э	variables
Юtrainable_variables
Яregularization_losses
а	keras_api
б__call__
+в&call_and_return_all_conditional_losses* 
╤
г	variables
дtrainable_variables
еregularization_losses
ж	keras_api
з__call__
+и&call_and_return_all_conditional_losses
▀kernel
	рbias
!й_jit_compiled_convolution_op*
╤
к	variables
лtrainable_variables
мregularization_losses
н	keras_api
о__call__
+п&call_and_return_all_conditional_losses
сkernel
	тbias
!░_jit_compiled_convolution_op*
Ф
▒	variables
▓trainable_variables
│regularization_losses
┤	keras_api
╡__call__
+╢&call_and_return_all_conditional_losses* 
╤
╖	variables
╕trainable_variables
╣regularization_losses
║	keras_api
╗__call__
+╝&call_and_return_all_conditional_losses
уkernel
	фbias
!╜_jit_compiled_convolution_op*
╤
╛	variables
┐trainable_variables
└regularization_losses
┴	keras_api
┬__call__
+├&call_and_return_all_conditional_losses
хkernel
	цbias
!─_jit_compiled_convolution_op*
╤
┼	variables
╞trainable_variables
╟regularization_losses
╚	keras_api
╔__call__
+╩&call_and_return_all_conditional_losses
чkernel
	шbias
!╦_jit_compiled_convolution_op*
╤
╠	variables
═trainable_variables
╬regularization_losses
╧	keras_api
╨__call__
+╤&call_and_return_all_conditional_losses
щkernel
	ъbias
!╥_jit_compiled_convolution_op*
Ф
╙	variables
╘trainable_variables
╒regularization_losses
╓	keras_api
╫__call__
+╪&call_and_return_all_conditional_losses* 
╤
┘	variables
┌trainable_variables
█regularization_losses
▄	keras_api
▌__call__
+▐&call_and_return_all_conditional_losses
ыkernel
	ьbias
!▀_jit_compiled_convolution_op*
╤
р	variables
сtrainable_variables
тregularization_losses
у	keras_api
ф__call__
+х&call_and_return_all_conditional_losses
эkernel
	юbias
!ц_jit_compiled_convolution_op*
╤
ч	variables
шtrainable_variables
щregularization_losses
ъ	keras_api
ы__call__
+ь&call_and_return_all_conditional_losses
яkernel
	Ёbias
!э_jit_compiled_convolution_op*
╤
ю	variables
яtrainable_variables
Ёregularization_losses
ё	keras_api
Є__call__
+є&call_and_return_all_conditional_losses
ёkernel
	Єbias
!Ї_jit_compiled_convolution_op*
Ф
ї	variables
Ўtrainable_variables
ўregularization_losses
°	keras_api
∙__call__
+·&call_and_return_all_conditional_losses* 
╤
√	variables
№trainable_variables
¤regularization_losses
■	keras_api
 __call__
+А&call_and_return_all_conditional_losses
єkernel
	Їbias
!Б_jit_compiled_convolution_op*
╤
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses
їkernel
	Ўbias
!И_jit_compiled_convolution_op*
╤
Й	variables
Кtrainable_variables
Лregularization_losses
М	keras_api
Н__call__
+О&call_and_return_all_conditional_losses
ўkernel
	°bias
!П_jit_compiled_convolution_op*
╤
Р	variables
Сtrainable_variables
Тregularization_losses
У	keras_api
Ф__call__
+Х&call_and_return_all_conditional_losses
∙kernel
	·bias
!Ц_jit_compiled_convolution_op*
Ф
Ч	variables
Шtrainable_variables
Щregularization_losses
Ъ	keras_api
Ы__call__
+Ь&call_and_return_all_conditional_losses* 
Ъ
█0
▄1
▌2
▐3
▀4
р5
с6
т7
у8
ф9
х10
ц11
ч12
ш13
щ14
ъ15
ы16
ь17
э18
ю19
я20
Ё21
ё22
Є23
є24
Ї25
ї26
Ў27
ў28
°29
∙30
·31*
* 
* 
Ш
Эnon_trainable_variables
Юlayers
Яmetrics
 аlayer_regularization_losses
бlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses*
:
вtrace_0
гtrace_1
дtrace_2
еtrace_3* 
:
жtrace_0
зtrace_1
иtrace_2
йtrace_3* 

E0
F1*

E0
F1*
* 
Ш
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*

пtrace_0* 

░trace_0* 
c]
VARIABLE_VALUEblock6_conv1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEblock6_conv1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
▒non_trainable_variables
▓layers
│metrics
 ┤layer_regularization_losses
╡layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses* 

╢trace_0
╖trace_1* 

╕trace_0
╣trace_1* 
* 

U0
V1*

U0
V1*
* 
Ш
║non_trainable_variables
╗layers
╝metrics
 ╜layer_regularization_losses
╛layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*

┐trace_0* 

└trace_0* 
c]
VARIABLE_VALUEblock6_conv2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEblock6_conv2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
┴non_trainable_variables
┬layers
├metrics
 ─layer_regularization_losses
┼layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses* 

╞trace_0
╟trace_1* 

╚trace_0
╔trace_1* 
* 

e0
f1*

e0
f1*
* 
Ш
╩non_trainable_variables
╦layers
╠metrics
 ═layer_regularization_losses
╬layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses*

╧trace_0* 

╨trace_0* 
jd
VARIABLE_VALUEblock7_conv1_column/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEblock7_conv1_column/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
╤non_trainable_variables
╥layers
╙metrics
 ╘layer_regularization_losses
╒layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses* 

╓trace_0
╫trace_1* 

╪trace_0
┘trace_1* 
* 

u0
v1*

u0
v1*
* 
Ш
┌non_trainable_variables
█layers
▄metrics
 ▌layer_regularization_losses
▐layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses*

▀trace_0* 

рtrace_0* 
b\
VARIABLE_VALUEconv7_table/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv7_table/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

~0
1*

~0
1*
* 
Ш
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses*

цtrace_0* 

чtrace_0* 
jd
VARIABLE_VALUEblock8_conv1_column/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEblock8_conv1_column/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ь
шnon_trainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses* 

эtrace_0* 

юtrace_0* 
* 
* 
* 
Ь
яnon_trainable_variables
Ёlayers
ёmetrics
 Єlayer_regularization_losses
єlayer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses* 

Їtrace_0* 

їtrace_0* 
* 
* 
* 
Ь
Ўnon_trainable_variables
ўlayers
°metrics
 ∙layer_regularization_losses
·layer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses* 

√trace_0* 

№trace_0* 
* 
* 
* 
Ь
¤non_trainable_variables
■layers
 metrics
 Аlayer_regularization_losses
Бlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses* 

Вtrace_0* 

Гtrace_0* 
* 
* 
* 
Ь
Дnon_trainable_variables
Еlayers
Жmetrics
 Зlayer_regularization_losses
Иlayer_metrics
Щ	variables
Ъtrainable_variables
Ыregularization_losses
Э__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses* 

Йtrace_0* 

Кtrace_0* 
* 
* 
* 
Ь
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
Я	variables
аtrainable_variables
бregularization_losses
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses* 

Рtrace_0* 

Сtrace_0* 
* 
* 
* 
Ь
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses* 

Чtrace_0* 

Шtrace_0* 
* 
* 
* 
Ь
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
л	variables
мtrainable_variables
нregularization_losses
п__call__
+░&call_and_return_all_conditional_losses
'░"call_and_return_conditional_losses* 

Юtrace_0* 

Яtrace_0* 
* 
* 
* 
Ь
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
▒	variables
▓trainable_variables
│regularization_losses
╡__call__
+╢&call_and_return_all_conditional_losses
'╢"call_and_return_conditional_losses* 

еtrace_0* 

жtrace_0* 
* 
* 
* 
Ь
зnon_trainable_variables
иlayers
йmetrics
 кlayer_regularization_losses
лlayer_metrics
╖	variables
╕trainable_variables
╣regularization_losses
╗__call__
+╝&call_and_return_all_conditional_losses
'╝"call_and_return_conditional_losses* 

мtrace_0* 

нtrace_0* 
* 
* 
* 
Ь
оnon_trainable_variables
пlayers
░metrics
 ▒layer_regularization_losses
▓layer_metrics
╜	variables
╛trainable_variables
┐regularization_losses
┴__call__
+┬&call_and_return_all_conditional_losses
'┬"call_and_return_conditional_losses* 

│trace_0* 

┤trace_0* 
* 
* 
* 
Ь
╡non_trainable_variables
╢layers
╖metrics
 ╕layer_regularization_losses
╣layer_metrics
├	variables
─trainable_variables
┼regularization_losses
╟__call__
+╚&call_and_return_all_conditional_losses
'╚"call_and_return_conditional_losses* 

║trace_0* 

╗trace_0* 

╧0
╨1*

╧0
╨1*
* 
Ю
╝non_trainable_variables
╜layers
╛metrics
 ┐layer_regularization_losses
└layer_metrics
╔	variables
╩trainable_variables
╦regularization_losses
═__call__
+╬&call_and_return_all_conditional_losses
'╬"call_and_return_conditional_losses*

┴trace_0* 

┬trace_0* 
c]
VARIABLE_VALUEtable_output/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEtable_output/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

╪0
┘1*

╪0
┘1*
* 
Ю
├non_trainable_variables
─layers
┼metrics
 ╞layer_regularization_losses
╟layer_metrics
╥	variables
╙trainable_variables
╘regularization_losses
╓__call__
+╫&call_and_return_all_conditional_losses
'╫"call_and_return_conditional_losses*

╚trace_0* 

╔trace_0* 
d^
VARIABLE_VALUEcolumn_output/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEcolumn_output/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
SM
VARIABLE_VALUEblock1_conv1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock1_conv1/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock1_conv2/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock1_conv2/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock2_conv1/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock2_conv1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock2_conv2/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock2_conv2/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock3_conv1/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock3_conv1/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock3_conv2/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock3_conv2/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock3_conv3/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock3_conv3/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock3_conv4/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock3_conv4/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock4_conv1/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock4_conv1/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock4_conv2/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock4_conv2/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock4_conv3/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock4_conv3/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock4_conv4/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock4_conv4/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock5_conv1/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock5_conv1/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock5_conv2/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock5_conv2/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock5_conv3/kernel'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock5_conv3/bias'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock5_conv4/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock5_conv4/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
Ъ
█0
▄1
▌2
▐3
▀4
р5
с6
т7
у8
ф9
х10
ц11
ч12
ш13
щ14
ъ15
ы16
ь17
э18
ю19
я20
Ё21
ё22
Є23
є24
Ї25
ї26
Ў27
ў28
°29
∙30
·31*
║
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
19
20
21
22
23*
,
╩0
╦1
╠2
═3
╬4*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

█0
▄1*
* 
* 
Ю
╧non_trainable_variables
╨layers
╤metrics
 ╥layer_regularization_losses
╙layer_metrics
П	variables
Рtrainable_variables
Сregularization_losses
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses*

╘trace_0* 

╒trace_0* 
* 

▌0
▐1*
* 
* 
Ю
╓non_trainable_variables
╫layers
╪metrics
 ┘layer_regularization_losses
┌layer_metrics
Ц	variables
Чtrainable_variables
Шregularization_losses
Ъ__call__
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses*

█trace_0* 

▄trace_0* 
* 
* 
* 
* 
Ь
▌non_trainable_variables
▐layers
▀metrics
 рlayer_regularization_losses
сlayer_metrics
Э	variables
Юtrainable_variables
Яregularization_losses
б__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses* 

тtrace_0* 

уtrace_0* 

▀0
р1*
* 
* 
Ю
фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
г	variables
дtrainable_variables
еregularization_losses
з__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses*

щtrace_0* 

ъtrace_0* 
* 

с0
т1*
* 
* 
Ю
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
яlayer_metrics
к	variables
лtrainable_variables
мregularization_losses
о__call__
+п&call_and_return_all_conditional_losses
'п"call_and_return_conditional_losses*

Ёtrace_0* 

ёtrace_0* 
* 
* 
* 
* 
Ь
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Ўlayer_metrics
▒	variables
▓trainable_variables
│regularization_losses
╡__call__
+╢&call_and_return_all_conditional_losses
'╢"call_and_return_conditional_losses* 

ўtrace_0* 

°trace_0* 

у0
ф1*
* 
* 
Ю
∙non_trainable_variables
·layers
√metrics
 №layer_regularization_losses
¤layer_metrics
╖	variables
╕trainable_variables
╣regularization_losses
╗__call__
+╝&call_and_return_all_conditional_losses
'╝"call_and_return_conditional_losses*

■trace_0* 

 trace_0* 
* 

х0
ц1*
* 
* 
Ю
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
╛	variables
┐trainable_variables
└regularization_losses
┬__call__
+├&call_and_return_all_conditional_losses
'├"call_and_return_conditional_losses*

Еtrace_0* 

Жtrace_0* 
* 

ч0
ш1*
* 
* 
Ю
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
┼	variables
╞trainable_variables
╟regularization_losses
╔__call__
+╩&call_and_return_all_conditional_losses
'╩"call_and_return_conditional_losses*

Мtrace_0* 

Нtrace_0* 
* 

щ0
ъ1*
* 
* 
Ю
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
╠	variables
═trainable_variables
╬regularization_losses
╨__call__
+╤&call_and_return_all_conditional_losses
'╤"call_and_return_conditional_losses*

Уtrace_0* 

Фtrace_0* 
* 
* 
* 
* 
Ь
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
╙	variables
╘trainable_variables
╒regularization_losses
╫__call__
+╪&call_and_return_all_conditional_losses
'╪"call_and_return_conditional_losses* 

Ъtrace_0* 

Ыtrace_0* 

ы0
ь1*
* 
* 
Ю
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
┘	variables
┌trainable_variables
█regularization_losses
▌__call__
+▐&call_and_return_all_conditional_losses
'▐"call_and_return_conditional_losses*

бtrace_0* 

вtrace_0* 
* 

э0
ю1*
* 
* 
Ю
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
р	variables
сtrainable_variables
тregularization_losses
ф__call__
+х&call_and_return_all_conditional_losses
'х"call_and_return_conditional_losses*

иtrace_0* 

йtrace_0* 
* 

я0
Ё1*
* 
* 
Ю
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
ч	variables
шtrainable_variables
щregularization_losses
ы__call__
+ь&call_and_return_all_conditional_losses
'ь"call_and_return_conditional_losses*

пtrace_0* 

░trace_0* 
* 

ё0
Є1*
* 
* 
Ю
▒non_trainable_variables
▓layers
│metrics
 ┤layer_regularization_losses
╡layer_metrics
ю	variables
яtrainable_variables
Ёregularization_losses
Є__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses*

╢trace_0* 

╖trace_0* 
* 
* 
* 
* 
Ь
╕non_trainable_variables
╣layers
║metrics
 ╗layer_regularization_losses
╝layer_metrics
ї	variables
Ўtrainable_variables
ўregularization_losses
∙__call__
+·&call_and_return_all_conditional_losses
'·"call_and_return_conditional_losses* 

╜trace_0* 

╛trace_0* 

є0
Ї1*
* 
* 
Ю
┐non_trainable_variables
└layers
┴metrics
 ┬layer_regularization_losses
├layer_metrics
√	variables
№trainable_variables
¤regularization_losses
 __call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses*

─trace_0* 

┼trace_0* 
* 

ї0
Ў1*
* 
* 
Ю
╞non_trainable_variables
╟layers
╚metrics
 ╔layer_regularization_losses
╩layer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses*

╦trace_0* 

╠trace_0* 
* 

ў0
°1*
* 
* 
Ю
═non_trainable_variables
╬layers
╧metrics
 ╨layer_regularization_losses
╤layer_metrics
Й	variables
Кtrainable_variables
Лregularization_losses
Н__call__
+О&call_and_return_all_conditional_losses
'О"call_and_return_conditional_losses*

╥trace_0* 

╙trace_0* 
* 

∙0
·1*
* 
* 
Ю
╘non_trainable_variables
╒layers
╓metrics
 ╫layer_regularization_losses
╪layer_metrics
Р	variables
Сtrainable_variables
Тregularization_losses
Ф__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses*

┘trace_0* 

┌trace_0* 
* 
* 
* 
* 
Ь
█non_trainable_variables
▄layers
▌metrics
 ▐layer_regularization_losses
▀layer_metrics
Ч	variables
Шtrainable_variables
Щregularization_losses
Ы__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses* 

рtrace_0* 

сtrace_0* 
Ъ
█0
▄1
▌2
▐3
▀4
р5
с6
т7
у8
ф9
х10
ц11
ч12
ш13
щ14
ъ15
ы16
ь17
э18
ю19
я20
Ё21
ё22
Є23
є24
Ї25
ї26
Ў27
ў28
°29
∙30
·31*
к
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
.11
/12
013
114
215
316
417
518
619
720
821*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
т	variables
у	keras_api

фtotal

хcount*
<
ц	variables
ч	keras_api

шtotal

щcount*
<
ъ	variables
ы	keras_api

ьtotal

эcount*
M
ю	variables
я	keras_api

Ёtotal

ёcount
Є
_fn_kwargs*
M
є	variables
Ї	keras_api

їtotal

Ўcount
ў
_fn_kwargs*

█0
▄1*
* 
* 
* 
* 
* 
* 

▌0
▐1*
* 
* 
* 
* 
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
▀0
р1*
* 
* 
* 
* 
* 
* 

с0
т1*
* 
* 
* 
* 
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
у0
ф1*
* 
* 
* 
* 
* 
* 

х0
ц1*
* 
* 
* 
* 
* 
* 

ч0
ш1*
* 
* 
* 
* 
* 
* 

щ0
ъ1*
* 
* 
* 
* 
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
ы0
ь1*
* 
* 
* 
* 
* 
* 

э0
ю1*
* 
* 
* 
* 
* 
* 

я0
Ё1*
* 
* 
* 
* 
* 
* 

ё0
Є1*
* 
* 
* 
* 
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
є0
Ї1*
* 
* 
* 
* 
* 
* 

ї0
Ў1*
* 
* 
* 
* 
* 
* 

ў0
°1*
* 
* 
* 
* 
* 
* 

∙0
·1*
* 
* 
* 
* 
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
ф0
х1*

т	variables*
UO
VARIABLE_VALUEtotal_44keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_44keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

ш0
щ1*

ц	variables*
UO
VARIABLE_VALUEtotal_34keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_34keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*

ь0
э1*

ъ	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*

Ё0
ё1*

ю	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

ї0
Ў1*

є	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
ЗА
VARIABLE_VALUEAdam/block6_conv1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/block6_conv1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЗА
VARIABLE_VALUEAdam/block6_conv2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/block6_conv2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ОЗ
VARIABLE_VALUE!Adam/block7_conv1_column/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
КГ
VARIABLE_VALUEAdam/block7_conv1_column/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Е
VARIABLE_VALUEAdam/conv7_table/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/conv7_table/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ОЗ
VARIABLE_VALUE!Adam/block8_conv1_column/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
КГ
VARIABLE_VALUEAdam/block8_conv1_column/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЗА
VARIABLE_VALUEAdam/table_output/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/table_output/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ИБ
VARIABLE_VALUEAdam/column_output/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/column_output/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЗА
VARIABLE_VALUEAdam/block6_conv1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/block6_conv1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ЗА
VARIABLE_VALUEAdam/block6_conv2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/block6_conv2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ОЗ
VARIABLE_VALUE!Adam/block7_conv1_column/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
КГ
VARIABLE_VALUEAdam/block7_conv1_column/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Е
VARIABLE_VALUEAdam/conv7_table/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/conv7_table/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ОЗ
VARIABLE_VALUE!Adam/block8_conv1_column/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
КГ
VARIABLE_VALUEAdam/block8_conv1_column/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ЗА
VARIABLE_VALUEAdam/table_output/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/table_output/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ИБ
VARIABLE_VALUEAdam/column_output/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/column_output/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
М
serving_default_inputPlaceholder*1
_output_shapes
:         АА*
dtype0*&
shape:         АА
ы

StatefulPartitionedCallStatefulPartitionedCallserving_default_inputblock1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock3_conv4/kernelblock3_conv4/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock4_conv4/kernelblock4_conv4/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biasblock5_conv4/kernelblock5_conv4/biasblock6_conv1/kernelblock6_conv1/biasblock6_conv2/kernelblock6_conv2/biasblock7_conv1_column/kernelblock7_conv1_column/biasblock8_conv1_column/kernelblock8_conv1_column/biasconv7_table/kernelconv7_table/biascolumn_output/kernelcolumn_output/biastable_output/kerneltable_output/bias*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::         АА:         АА*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_780705
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ц
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename'block6_conv1/kernel/Read/ReadVariableOp%block6_conv1/bias/Read/ReadVariableOp'block6_conv2/kernel/Read/ReadVariableOp%block6_conv2/bias/Read/ReadVariableOp.block7_conv1_column/kernel/Read/ReadVariableOp,block7_conv1_column/bias/Read/ReadVariableOp&conv7_table/kernel/Read/ReadVariableOp$conv7_table/bias/Read/ReadVariableOp.block8_conv1_column/kernel/Read/ReadVariableOp,block8_conv1_column/bias/Read/ReadVariableOp'table_output/kernel/Read/ReadVariableOp%table_output/bias/Read/ReadVariableOp(column_output/kernel/Read/ReadVariableOp&column_output/bias/Read/ReadVariableOp'block1_conv1/kernel/Read/ReadVariableOp%block1_conv1/bias/Read/ReadVariableOp'block1_conv2/kernel/Read/ReadVariableOp%block1_conv2/bias/Read/ReadVariableOp'block2_conv1/kernel/Read/ReadVariableOp%block2_conv1/bias/Read/ReadVariableOp'block2_conv2/kernel/Read/ReadVariableOp%block2_conv2/bias/Read/ReadVariableOp'block3_conv1/kernel/Read/ReadVariableOp%block3_conv1/bias/Read/ReadVariableOp'block3_conv2/kernel/Read/ReadVariableOp%block3_conv2/bias/Read/ReadVariableOp'block3_conv3/kernel/Read/ReadVariableOp%block3_conv3/bias/Read/ReadVariableOp'block3_conv4/kernel/Read/ReadVariableOp%block3_conv4/bias/Read/ReadVariableOp'block4_conv1/kernel/Read/ReadVariableOp%block4_conv1/bias/Read/ReadVariableOp'block4_conv2/kernel/Read/ReadVariableOp%block4_conv2/bias/Read/ReadVariableOp'block4_conv3/kernel/Read/ReadVariableOp%block4_conv3/bias/Read/ReadVariableOp'block4_conv4/kernel/Read/ReadVariableOp%block4_conv4/bias/Read/ReadVariableOp'block5_conv1/kernel/Read/ReadVariableOp%block5_conv1/bias/Read/ReadVariableOp'block5_conv2/kernel/Read/ReadVariableOp%block5_conv2/bias/Read/ReadVariableOp'block5_conv3/kernel/Read/ReadVariableOp%block5_conv3/bias/Read/ReadVariableOp'block5_conv4/kernel/Read/ReadVariableOp%block5_conv4/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp.Adam/block6_conv1/kernel/m/Read/ReadVariableOp,Adam/block6_conv1/bias/m/Read/ReadVariableOp.Adam/block6_conv2/kernel/m/Read/ReadVariableOp,Adam/block6_conv2/bias/m/Read/ReadVariableOp5Adam/block7_conv1_column/kernel/m/Read/ReadVariableOp3Adam/block7_conv1_column/bias/m/Read/ReadVariableOp-Adam/conv7_table/kernel/m/Read/ReadVariableOp+Adam/conv7_table/bias/m/Read/ReadVariableOp5Adam/block8_conv1_column/kernel/m/Read/ReadVariableOp3Adam/block8_conv1_column/bias/m/Read/ReadVariableOp.Adam/table_output/kernel/m/Read/ReadVariableOp,Adam/table_output/bias/m/Read/ReadVariableOp/Adam/column_output/kernel/m/Read/ReadVariableOp-Adam/column_output/bias/m/Read/ReadVariableOp.Adam/block6_conv1/kernel/v/Read/ReadVariableOp,Adam/block6_conv1/bias/v/Read/ReadVariableOp.Adam/block6_conv2/kernel/v/Read/ReadVariableOp,Adam/block6_conv2/bias/v/Read/ReadVariableOp5Adam/block7_conv1_column/kernel/v/Read/ReadVariableOp3Adam/block7_conv1_column/bias/v/Read/ReadVariableOp-Adam/conv7_table/kernel/v/Read/ReadVariableOp+Adam/conv7_table/bias/v/Read/ReadVariableOp5Adam/block8_conv1_column/kernel/v/Read/ReadVariableOp3Adam/block8_conv1_column/bias/v/Read/ReadVariableOp.Adam/table_output/kernel/v/Read/ReadVariableOp,Adam/table_output/bias/v/Read/ReadVariableOp/Adam/column_output/kernel/v/Read/ReadVariableOp-Adam/column_output/bias/v/Read/ReadVariableOpConst*f
Tin_
]2[	*
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
__inference__traced_save_782906
э
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameblock6_conv1/kernelblock6_conv1/biasblock6_conv2/kernelblock6_conv2/biasblock7_conv1_column/kernelblock7_conv1_column/biasconv7_table/kernelconv7_table/biasblock8_conv1_column/kernelblock8_conv1_column/biastable_output/kerneltable_output/biascolumn_output/kernelcolumn_output/biasblock1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock3_conv4/kernelblock3_conv4/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock4_conv4/kernelblock4_conv4/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biasblock5_conv4/kernelblock5_conv4/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_4count_4total_3count_3total_2count_2total_1count_1totalcountAdam/block6_conv1/kernel/mAdam/block6_conv1/bias/mAdam/block6_conv2/kernel/mAdam/block6_conv2/bias/m!Adam/block7_conv1_column/kernel/mAdam/block7_conv1_column/bias/mAdam/conv7_table/kernel/mAdam/conv7_table/bias/m!Adam/block8_conv1_column/kernel/mAdam/block8_conv1_column/bias/mAdam/table_output/kernel/mAdam/table_output/bias/mAdam/column_output/kernel/mAdam/column_output/bias/mAdam/block6_conv1/kernel/vAdam/block6_conv1/bias/vAdam/block6_conv2/kernel/vAdam/block6_conv2/bias/v!Adam/block7_conv1_column/kernel/vAdam/block7_conv1_column/bias/vAdam/conv7_table/kernel/vAdam/conv7_table/bias/v!Adam/block8_conv1_column/kernel/vAdam/block8_conv1_column/bias/vAdam/table_output/kernel/vAdam/table_output/bias/vAdam/column_output/kernel/vAdam/column_output/bias/v*e
Tin^
\2Z*
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
"__inference__traced_restore_783183Ъ▐!
У
Б
H__inference_block1_conv1_layer_call_and_return_conditional_losses_778223

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         АА@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
У
g
K__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_782050

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
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
№
е
-__inference_block3_conv2_layer_call_fn_782374

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block3_conv2_layer_call_and_return_conditional_losses_778310x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         @@А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         @@А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         @@А
 
_user_specified_nameinputs
№
е
-__inference_block4_conv1_layer_call_fn_782444

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block4_conv1_layer_call_and_return_conditional_losses_778362x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :           А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
Ь
Г
H__inference_block2_conv1_layer_call_and_return_conditional_losses_778258

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ь
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0А
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА[
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:         АААl
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:         АААw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА@
 
_user_specified_nameinputs
У
Д
H__inference_block4_conv1_layer_call_and_return_conditional_losses_782455

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:           Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:           Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
П
c
G__inference_block5_pool_layer_call_and_return_conditional_losses_782615

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
У
Д
H__inference_block5_conv1_layer_call_and_return_conditional_losses_778431

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
У
g
K__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_779250

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
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
Цr
л
D__inference_tablenet_layer_call_and_return_conditional_losses_780158

inputs'
vgg_19_780039:@
vgg_19_780041:@'
vgg_19_780043:@@
vgg_19_780045:@(
vgg_19_780047:@А
vgg_19_780049:	А)
vgg_19_780051:АА
vgg_19_780053:	А)
vgg_19_780055:АА
vgg_19_780057:	А)
vgg_19_780059:АА
vgg_19_780061:	А)
vgg_19_780063:АА
vgg_19_780065:	А)
vgg_19_780067:АА
vgg_19_780069:	А)
vgg_19_780071:АА
vgg_19_780073:	А)
vgg_19_780075:АА
vgg_19_780077:	А)
vgg_19_780079:АА
vgg_19_780081:	А)
vgg_19_780083:АА
vgg_19_780085:	А)
vgg_19_780087:АА
vgg_19_780089:	А)
vgg_19_780091:АА
vgg_19_780093:	А)
vgg_19_780095:АА
vgg_19_780097:	А)
vgg_19_780099:АА
vgg_19_780101:	А/
block6_conv1_780106:АА"
block6_conv1_780108:	А/
block6_conv2_780112:АА"
block6_conv2_780114:	А6
block7_conv1_column_780118:АА)
block7_conv1_column_780120:	А6
block8_conv1_column_780124:АА)
block8_conv1_column_780126:	А.
conv7_table_780129:АА!
conv7_table_780131:	А/
column_output_780146:А
"
column_output_780148:.
table_output_780151:А
!
table_output_780153:
identity

identity_1ИвVGG-19/StatefulPartitionedCallв$block6_conv1/StatefulPartitionedCallв$block6_conv2/StatefulPartitionedCallв'block6_dropout1/StatefulPartitionedCallв'block6_dropout2/StatefulPartitionedCallв+block7_conv1_column/StatefulPartitionedCallв-block7_dropout_column/StatefulPartitionedCallв+block8_conv1_column/StatefulPartitionedCallв%column_output/StatefulPartitionedCallв#conv7_table/StatefulPartitionedCallв$table_output/StatefulPartitionedCallм
VGG-19/StatefulPartitionedCallStatefulPartitionedCallinputsvgg_19_780039vgg_19_780041vgg_19_780043vgg_19_780045vgg_19_780047vgg_19_780049vgg_19_780051vgg_19_780053vgg_19_780055vgg_19_780057vgg_19_780059vgg_19_780061vgg_19_780063vgg_19_780065vgg_19_780067vgg_19_780069vgg_19_780071vgg_19_780073vgg_19_780075vgg_19_780077vgg_19_780079vgg_19_780081vgg_19_780083vgg_19_780085vgg_19_780087vgg_19_780089vgg_19_780091vgg_19_780093vgg_19_780095vgg_19_780097vgg_19_780099vgg_19_780101*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:           А:         А:         А*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_VGG-19_layer_call_and_return_conditional_losses_778889н
$block6_conv1/StatefulPartitionedCallStatefulPartitionedCall'VGG-19/StatefulPartitionedCall:output:2block6_conv1_780106block6_conv1_780108*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block6_conv1_layer_call_and_return_conditional_losses_779540Й
'block6_dropout1/StatefulPartitionedCallStatefulPartitionedCall-block6_conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_block6_dropout1_layer_call_and_return_conditional_losses_779922╢
$block6_conv2/StatefulPartitionedCallStatefulPartitionedCall0block6_dropout1/StatefulPartitionedCall:output:0block6_conv2_780112block6_conv2_780114*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block6_conv2_layer_call_and_return_conditional_losses_779564│
'block6_dropout2/StatefulPartitionedCallStatefulPartitionedCall-block6_conv2/StatefulPartitionedCall:output:0(^block6_dropout1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_block6_dropout2_layer_call_and_return_conditional_losses_779889╥
+block7_conv1_column/StatefulPartitionedCallStatefulPartitionedCall0block6_dropout2/StatefulPartitionedCall:output:0block7_conv1_column_780118block7_conv1_column_780120*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_block7_conv1_column_layer_call_and_return_conditional_losses_779588╞
-block7_dropout_column/StatefulPartitionedCallStatefulPartitionedCall4block7_conv1_column/StatefulPartitionedCall:output:0(^block6_dropout2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_block7_dropout_column_layer_call_and_return_conditional_losses_779856╪
+block8_conv1_column/StatefulPartitionedCallStatefulPartitionedCall6block7_dropout_column/StatefulPartitionedCall:output:0block8_conv1_column_780124block8_conv1_column_780126*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_block8_conv1_column_layer_call_and_return_conditional_losses_779612▓
#conv7_table/StatefulPartitionedCallStatefulPartitionedCall0block6_dropout2/StatefulPartitionedCall:output:0conv7_table_780129conv7_table_780131*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv7_table_layer_call_and_return_conditional_losses_779629Т
up_sampling2d_4/PartitionedCallPartitionedCall4block8_conv1_column/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_779250Ж
up_sampling2d/PartitionedCallPartitionedCall,conv7_table/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_layer_call_and_return_conditional_losses_779231Ъ
concatenate_2/PartitionedCallPartitionedCall(up_sampling2d_4/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_2_layer_call_and_return_conditional_losses_779644Ф
concatenate/PartitionedCallPartitionedCall&up_sampling2d/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_779653Д
up_sampling2d_5/PartitionedCallPartitionedCall&concatenate_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_779288В
up_sampling2d_1/PartitionedCallPartitionedCall$concatenate/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_779269Ъ
concatenate_3/PartitionedCallPartitionedCall(up_sampling2d_5/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_3_layer_call_and_return_conditional_losses_779664Ъ
concatenate_1/PartitionedCallPartitionedCall(up_sampling2d_1/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_779673Д
up_sampling2d_6/PartitionedCallPartitionedCall&concatenate_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_779326Д
up_sampling2d_2/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_779307Ж
up_sampling2d_7/PartitionedCallPartitionedCall(up_sampling2d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_779364Ж
up_sampling2d_3/PartitionedCallPartitionedCall(up_sampling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_779345├
%column_output/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_7/PartitionedCall:output:0column_output_780146column_output_780148*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_column_output_layer_call_and_return_conditional_losses_779448┐
$table_output/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0table_output_780151table_output_780153*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_table_output_layer_call_and_return_conditional_losses_779404Ц
IdentityIdentity-table_output/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Щ

Identity_1Identity.column_output/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           К
NoOpNoOp^VGG-19/StatefulPartitionedCall%^block6_conv1/StatefulPartitionedCall%^block6_conv2/StatefulPartitionedCall(^block6_dropout1/StatefulPartitionedCall(^block6_dropout2/StatefulPartitionedCall,^block7_conv1_column/StatefulPartitionedCall.^block7_dropout_column/StatefulPartitionedCall,^block8_conv1_column/StatefulPartitionedCall&^column_output/StatefulPartitionedCall$^conv7_table/StatefulPartitionedCall%^table_output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
VGG-19/StatefulPartitionedCallVGG-19/StatefulPartitionedCall2L
$block6_conv1/StatefulPartitionedCall$block6_conv1/StatefulPartitionedCall2L
$block6_conv2/StatefulPartitionedCall$block6_conv2/StatefulPartitionedCall2R
'block6_dropout1/StatefulPartitionedCall'block6_dropout1/StatefulPartitionedCall2R
'block6_dropout2/StatefulPartitionedCall'block6_dropout2/StatefulPartitionedCall2Z
+block7_conv1_column/StatefulPartitionedCall+block7_conv1_column/StatefulPartitionedCall2^
-block7_dropout_column/StatefulPartitionedCall-block7_dropout_column/StatefulPartitionedCall2Z
+block8_conv1_column/StatefulPartitionedCall+block8_conv1_column/StatefulPartitionedCall2N
%column_output/StatefulPartitionedCall%column_output/StatefulPartitionedCall2J
#conv7_table/StatefulPartitionedCall#conv7_table/StatefulPartitionedCall2L
$table_output/StatefulPartitionedCall$table_output/StatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
д
i
0__inference_block6_dropout2_layer_call_fn_781869

inputs
identityИвStatefulPartitionedCall╥
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_block6_dropout2_layer_call_and_return_conditional_losses_779889x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
У
g
K__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_782161

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
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
№
е
-__inference_block3_conv4_layer_call_fn_782414

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block3_conv4_layer_call_and_return_conditional_losses_778344x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         @@А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         @@А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         @@А
 
_user_specified_nameinputs
┴
Э	
'__inference_VGG-19_layer_call_fn_778563
input_1!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А&

unknown_25:АА

unknown_26:	А&

unknown_27:АА

unknown_28:	А&

unknown_29:АА

unknown_30:	А
identity

identity_1

identity_2ИвStatefulPartitionedCall╣
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
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:           А:         А:         А*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_VGG-19_layer_call_and_return_conditional_losses_778492x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:           Аz

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*0
_output_shapes
:         Аz

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         АА
!
_user_specified_name	input_1
К
м
4__inference_block7_conv1_column_layer_call_fn_781895

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_block7_conv1_column_layer_call_and_return_conditional_losses_779588x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╒ 
Ч
I__inference_column_output_layer_call_and_return_conditional_losses_779448

inputsC
(conv2d_transpose_readvariableop_resource:А
-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskС
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Б
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,                           А

 
_user_specified_nameinputs
┬═
╧*
D__inference_tablenet_layer_call_and_return_conditional_losses_781141

inputsL
2vgg_19_block1_conv1_conv2d_readvariableop_resource:@A
3vgg_19_block1_conv1_biasadd_readvariableop_resource:@L
2vgg_19_block1_conv2_conv2d_readvariableop_resource:@@A
3vgg_19_block1_conv2_biasadd_readvariableop_resource:@M
2vgg_19_block2_conv1_conv2d_readvariableop_resource:@АB
3vgg_19_block2_conv1_biasadd_readvariableop_resource:	АN
2vgg_19_block2_conv2_conv2d_readvariableop_resource:ААB
3vgg_19_block2_conv2_biasadd_readvariableop_resource:	АN
2vgg_19_block3_conv1_conv2d_readvariableop_resource:ААB
3vgg_19_block3_conv1_biasadd_readvariableop_resource:	АN
2vgg_19_block3_conv2_conv2d_readvariableop_resource:ААB
3vgg_19_block3_conv2_biasadd_readvariableop_resource:	АN
2vgg_19_block3_conv3_conv2d_readvariableop_resource:ААB
3vgg_19_block3_conv3_biasadd_readvariableop_resource:	АN
2vgg_19_block3_conv4_conv2d_readvariableop_resource:ААB
3vgg_19_block3_conv4_biasadd_readvariableop_resource:	АN
2vgg_19_block4_conv1_conv2d_readvariableop_resource:ААB
3vgg_19_block4_conv1_biasadd_readvariableop_resource:	АN
2vgg_19_block4_conv2_conv2d_readvariableop_resource:ААB
3vgg_19_block4_conv2_biasadd_readvariableop_resource:	АN
2vgg_19_block4_conv3_conv2d_readvariableop_resource:ААB
3vgg_19_block4_conv3_biasadd_readvariableop_resource:	АN
2vgg_19_block4_conv4_conv2d_readvariableop_resource:ААB
3vgg_19_block4_conv4_biasadd_readvariableop_resource:	АN
2vgg_19_block5_conv1_conv2d_readvariableop_resource:ААB
3vgg_19_block5_conv1_biasadd_readvariableop_resource:	АN
2vgg_19_block5_conv2_conv2d_readvariableop_resource:ААB
3vgg_19_block5_conv2_biasadd_readvariableop_resource:	АN
2vgg_19_block5_conv3_conv2d_readvariableop_resource:ААB
3vgg_19_block5_conv3_biasadd_readvariableop_resource:	АN
2vgg_19_block5_conv4_conv2d_readvariableop_resource:ААB
3vgg_19_block5_conv4_biasadd_readvariableop_resource:	АG
+block6_conv1_conv2d_readvariableop_resource:АА;
,block6_conv1_biasadd_readvariableop_resource:	АG
+block6_conv2_conv2d_readvariableop_resource:АА;
,block6_conv2_biasadd_readvariableop_resource:	АN
2block7_conv1_column_conv2d_readvariableop_resource:ААB
3block7_conv1_column_biasadd_readvariableop_resource:	АN
2block8_conv1_column_conv2d_readvariableop_resource:ААB
3block8_conv1_column_biasadd_readvariableop_resource:	АF
*conv7_table_conv2d_readvariableop_resource:АА:
+conv7_table_biasadd_readvariableop_resource:	АQ
6column_output_conv2d_transpose_readvariableop_resource:А
;
-column_output_biasadd_readvariableop_resource:P
5table_output_conv2d_transpose_readvariableop_resource:А
:
,table_output_biasadd_readvariableop_resource:
identity

identity_1Ив*VGG-19/block1_conv1/BiasAdd/ReadVariableOpв)VGG-19/block1_conv1/Conv2D/ReadVariableOpв*VGG-19/block1_conv2/BiasAdd/ReadVariableOpв)VGG-19/block1_conv2/Conv2D/ReadVariableOpв*VGG-19/block2_conv1/BiasAdd/ReadVariableOpв)VGG-19/block2_conv1/Conv2D/ReadVariableOpв*VGG-19/block2_conv2/BiasAdd/ReadVariableOpв)VGG-19/block2_conv2/Conv2D/ReadVariableOpв*VGG-19/block3_conv1/BiasAdd/ReadVariableOpв)VGG-19/block3_conv1/Conv2D/ReadVariableOpв*VGG-19/block3_conv2/BiasAdd/ReadVariableOpв)VGG-19/block3_conv2/Conv2D/ReadVariableOpв*VGG-19/block3_conv3/BiasAdd/ReadVariableOpв)VGG-19/block3_conv3/Conv2D/ReadVariableOpв*VGG-19/block3_conv4/BiasAdd/ReadVariableOpв)VGG-19/block3_conv4/Conv2D/ReadVariableOpв*VGG-19/block4_conv1/BiasAdd/ReadVariableOpв)VGG-19/block4_conv1/Conv2D/ReadVariableOpв*VGG-19/block4_conv2/BiasAdd/ReadVariableOpв)VGG-19/block4_conv2/Conv2D/ReadVariableOpв*VGG-19/block4_conv3/BiasAdd/ReadVariableOpв)VGG-19/block4_conv3/Conv2D/ReadVariableOpв*VGG-19/block4_conv4/BiasAdd/ReadVariableOpв)VGG-19/block4_conv4/Conv2D/ReadVariableOpв*VGG-19/block5_conv1/BiasAdd/ReadVariableOpв)VGG-19/block5_conv1/Conv2D/ReadVariableOpв*VGG-19/block5_conv2/BiasAdd/ReadVariableOpв)VGG-19/block5_conv2/Conv2D/ReadVariableOpв*VGG-19/block5_conv3/BiasAdd/ReadVariableOpв)VGG-19/block5_conv3/Conv2D/ReadVariableOpв*VGG-19/block5_conv4/BiasAdd/ReadVariableOpв)VGG-19/block5_conv4/Conv2D/ReadVariableOpв#block6_conv1/BiasAdd/ReadVariableOpв"block6_conv1/Conv2D/ReadVariableOpв#block6_conv2/BiasAdd/ReadVariableOpв"block6_conv2/Conv2D/ReadVariableOpв*block7_conv1_column/BiasAdd/ReadVariableOpв)block7_conv1_column/Conv2D/ReadVariableOpв*block8_conv1_column/BiasAdd/ReadVariableOpв)block8_conv1_column/Conv2D/ReadVariableOpв$column_output/BiasAdd/ReadVariableOpв-column_output/conv2d_transpose/ReadVariableOpв"conv7_table/BiasAdd/ReadVariableOpв!conv7_table/Conv2D/ReadVariableOpв#table_output/BiasAdd/ReadVariableOpв,table_output/conv2d_transpose/ReadVariableOpд
)VGG-19/block1_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0├
VGG-19/block1_conv1/Conv2DConv2Dinputs1VGG-19/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
Ъ
*VGG-19/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╗
VGG-19/block1_conv1/BiasAddBiasAdd#VGG-19/block1_conv1/Conv2D:output:02VGG-19/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@В
VGG-19/block1_conv1/ReluRelu$VGG-19/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:         АА@д
)VGG-19/block1_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0у
VGG-19/block1_conv2/Conv2DConv2D&VGG-19/block1_conv1/Relu:activations:01VGG-19/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
Ъ
*VGG-19/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╗
VGG-19/block1_conv2/BiasAddBiasAdd#VGG-19/block1_conv2/Conv2D:output:02VGG-19/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@В
VGG-19/block1_conv2/ReluRelu$VGG-19/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:         АА@╝
VGG-19/block1_pool/MaxPoolMaxPool&VGG-19/block1_conv2/Relu:activations:0*1
_output_shapes
:         АА@*
ksize
*
paddingVALID*
strides
е
)VGG-19/block2_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0с
VGG-19/block2_conv1/Conv2DConv2D#VGG-19/block1_pool/MaxPool:output:01VGG-19/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
Ы
*VGG-19/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╝
VGG-19/block2_conv1/BiasAddBiasAdd#VGG-19/block2_conv1/Conv2D:output:02VGG-19/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         АААГ
VGG-19/block2_conv1/ReluRelu$VGG-19/block2_conv1/BiasAdd:output:0*
T0*2
_output_shapes 
:         АААж
)VGG-19/block2_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ф
VGG-19/block2_conv2/Conv2DConv2D&VGG-19/block2_conv1/Relu:activations:01VGG-19/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
Ы
*VGG-19/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╝
VGG-19/block2_conv2/BiasAddBiasAdd#VGG-19/block2_conv2/Conv2D:output:02VGG-19/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         АААГ
VGG-19/block2_conv2/ReluRelu$VGG-19/block2_conv2/BiasAdd:output:0*
T0*2
_output_shapes 
:         ААА╗
VGG-19/block2_pool/MaxPoolMaxPool&VGG-19/block2_conv2/Relu:activations:0*0
_output_shapes
:         @@А*
ksize
*
paddingVALID*
strides
ж
)VGG-19/block3_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▀
VGG-19/block3_conv1/Conv2DConv2D#VGG-19/block2_pool/MaxPool:output:01VGG-19/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Ы
*VGG-19/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block3_conv1/BiasAddBiasAdd#VGG-19/block3_conv1/Conv2D:output:02VGG-19/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АБ
VGG-19/block3_conv1/ReluRelu$VGG-19/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         @@Аж
)VGG-19/block3_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block3_conv2/Conv2DConv2D&VGG-19/block3_conv1/Relu:activations:01VGG-19/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Ы
*VGG-19/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block3_conv2/BiasAddBiasAdd#VGG-19/block3_conv2/Conv2D:output:02VGG-19/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АБ
VGG-19/block3_conv2/ReluRelu$VGG-19/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         @@Аж
)VGG-19/block3_conv3/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block3_conv3/Conv2DConv2D&VGG-19/block3_conv2/Relu:activations:01VGG-19/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Ы
*VGG-19/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block3_conv3/BiasAddBiasAdd#VGG-19/block3_conv3/Conv2D:output:02VGG-19/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АБ
VGG-19/block3_conv3/ReluRelu$VGG-19/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         @@Аж
)VGG-19/block3_conv4/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block3_conv4/Conv2DConv2D&VGG-19/block3_conv3/Relu:activations:01VGG-19/block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Ы
*VGG-19/block3_conv4/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block3_conv4/BiasAddBiasAdd#VGG-19/block3_conv4/Conv2D:output:02VGG-19/block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АБ
VGG-19/block3_conv4/ReluRelu$VGG-19/block3_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:         @@А╗
VGG-19/block3_pool/MaxPoolMaxPool&VGG-19/block3_conv4/Relu:activations:0*0
_output_shapes
:           А*
ksize
*
paddingVALID*
strides
ж
)VGG-19/block4_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▀
VGG-19/block4_conv1/Conv2DConv2D#VGG-19/block3_pool/MaxPool:output:01VGG-19/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Ы
*VGG-19/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block4_conv1/BiasAddBiasAdd#VGG-19/block4_conv1/Conv2D:output:02VGG-19/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АБ
VGG-19/block4_conv1/ReluRelu$VGG-19/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:           Аж
)VGG-19/block4_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block4_conv2/Conv2DConv2D&VGG-19/block4_conv1/Relu:activations:01VGG-19/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Ы
*VGG-19/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block4_conv2/BiasAddBiasAdd#VGG-19/block4_conv2/Conv2D:output:02VGG-19/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АБ
VGG-19/block4_conv2/ReluRelu$VGG-19/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:           Аж
)VGG-19/block4_conv3/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block4_conv3/Conv2DConv2D&VGG-19/block4_conv2/Relu:activations:01VGG-19/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Ы
*VGG-19/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block4_conv3/BiasAddBiasAdd#VGG-19/block4_conv3/Conv2D:output:02VGG-19/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АБ
VGG-19/block4_conv3/ReluRelu$VGG-19/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:           Аж
)VGG-19/block4_conv4/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block4_conv4/Conv2DConv2D&VGG-19/block4_conv3/Relu:activations:01VGG-19/block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Ы
*VGG-19/block4_conv4/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block4_conv4/BiasAddBiasAdd#VGG-19/block4_conv4/Conv2D:output:02VGG-19/block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АБ
VGG-19/block4_conv4/ReluRelu$VGG-19/block4_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:           А╗
VGG-19/block4_pool/MaxPoolMaxPool&VGG-19/block4_conv4/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
ж
)VGG-19/block5_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▀
VGG-19/block5_conv1/Conv2DConv2D#VGG-19/block4_pool/MaxPool:output:01VGG-19/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Ы
*VGG-19/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block5_conv1/BiasAddBiasAdd#VGG-19/block5_conv1/Conv2D:output:02VGG-19/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АБ
VGG-19/block5_conv1/ReluRelu$VGG-19/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         Аж
)VGG-19/block5_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block5_conv2/Conv2DConv2D&VGG-19/block5_conv1/Relu:activations:01VGG-19/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Ы
*VGG-19/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block5_conv2/BiasAddBiasAdd#VGG-19/block5_conv2/Conv2D:output:02VGG-19/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АБ
VGG-19/block5_conv2/ReluRelu$VGG-19/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         Аж
)VGG-19/block5_conv3/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block5_conv3/Conv2DConv2D&VGG-19/block5_conv2/Relu:activations:01VGG-19/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Ы
*VGG-19/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block5_conv3/BiasAddBiasAdd#VGG-19/block5_conv3/Conv2D:output:02VGG-19/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АБ
VGG-19/block5_conv3/ReluRelu$VGG-19/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         Аж
)VGG-19/block5_conv4/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block5_conv4/Conv2DConv2D&VGG-19/block5_conv3/Relu:activations:01VGG-19/block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Ы
*VGG-19/block5_conv4/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block5_conv4/BiasAddBiasAdd#VGG-19/block5_conv4/Conv2D:output:02VGG-19/block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АБ
VGG-19/block5_conv4/ReluRelu$VGG-19/block5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:         А╗
VGG-19/block5_pool/MaxPoolMaxPool&VGG-19/block5_conv4/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Ш
"block6_conv1/Conv2D/ReadVariableOpReadVariableOp+block6_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╥
block6_conv1/Conv2DConv2D#VGG-19/block5_pool/MaxPool:output:0*block6_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Н
#block6_conv1/BiasAdd/ReadVariableOpReadVariableOp,block6_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block6_conv1/BiasAddBiasAddblock6_conv1/Conv2D:output:0+block6_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block6_conv1/ReluRelublock6_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         АА
block6_dropout1/IdentityIdentityblock6_conv1/Relu:activations:0*
T0*0
_output_shapes
:         АШ
"block6_conv2/Conv2D/ReadVariableOpReadVariableOp+block6_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╨
block6_conv2/Conv2DConv2D!block6_dropout1/Identity:output:0*block6_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Н
#block6_conv2/BiasAdd/ReadVariableOpReadVariableOp,block6_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block6_conv2/BiasAddBiasAddblock6_conv2/Conv2D:output:0+block6_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block6_conv2/ReluRelublock6_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         АА
block6_dropout2/IdentityIdentityblock6_conv2/Relu:activations:0*
T0*0
_output_shapes
:         Аж
)block7_conv1_column/Conv2D/ReadVariableOpReadVariableOp2block7_conv1_column_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▐
block7_conv1_column/Conv2DConv2D!block6_dropout2/Identity:output:01block7_conv1_column/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Ы
*block7_conv1_column/BiasAdd/ReadVariableOpReadVariableOp3block7_conv1_column_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
block7_conv1_column/BiasAddBiasAdd#block7_conv1_column/Conv2D:output:02block7_conv1_column/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АБ
block7_conv1_column/ReluRelu$block7_conv1_column/BiasAdd:output:0*
T0*0
_output_shapes
:         АН
block7_dropout_column/IdentityIdentity&block7_conv1_column/Relu:activations:0*
T0*0
_output_shapes
:         Аж
)block8_conv1_column/Conv2D/ReadVariableOpReadVariableOp2block8_conv1_column_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ф
block8_conv1_column/Conv2DConv2D'block7_dropout_column/Identity:output:01block8_conv1_column/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Ы
*block8_conv1_column/BiasAdd/ReadVariableOpReadVariableOp3block8_conv1_column_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
block8_conv1_column/BiasAddBiasAdd#block8_conv1_column/Conv2D:output:02block8_conv1_column/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АБ
block8_conv1_column/ReluRelu$block8_conv1_column/BiasAdd:output:0*
T0*0
_output_shapes
:         АЦ
!conv7_table/Conv2D/ReadVariableOpReadVariableOp*conv7_table_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╬
conv7_table/Conv2DConv2D!block6_dropout2/Identity:output:0)conv7_table/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Л
"conv7_table/BiasAdd/ReadVariableOpReadVariableOp+conv7_table_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0в
conv7_table/BiasAddBiasAddconv7_table/Conv2D:output:0*conv7_table/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аq
conv7_table/ReluReluconv7_table/BiasAdd:output:0*
T0*0
_output_shapes
:         Аf
up_sampling2d_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_4/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_4/mulMulup_sampling2d_4/Const:output:0 up_sampling2d_4/Const_1:output:0*
T0*
_output_shapes
:█
,up_sampling2d_4/resize/ResizeNearestNeighborResizeNearestNeighbor&block8_conv1_column/Relu:activations:0up_sampling2d_4/mul:z:0*
T0*0
_output_shapes
:         А*
half_pixel_centers(d
up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      f
up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      {
up_sampling2d/mulMulup_sampling2d/Const:output:0up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:╧
*up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighborconv7_table/Relu:activations:0up_sampling2d/mul:z:0*
T0*0
_output_shapes
:         А*
half_pixel_centers([
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ь
concatenate_2/concatConcatV2=up_sampling2d_4/resize/ResizeNearestNeighbor:resized_images:0#VGG-19/block4_pool/MaxPool:output:0"concatenate_2/concat/axis:output:0*
N*
T0*0
_output_shapes
:         АY
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ц
concatenate/concatConcatV2;up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0#VGG-19/block4_pool/MaxPool:output:0 concatenate/concat/axis:output:0*
N*
T0*0
_output_shapes
:         Аf
up_sampling2d_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_5/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_5/mulMulup_sampling2d_5/Const:output:0 up_sampling2d_5/Const_1:output:0*
T0*
_output_shapes
:╥
,up_sampling2d_5/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_2/concat:output:0up_sampling2d_5/mul:z:0*
T0*0
_output_shapes
:           А*
half_pixel_centers(f
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_1/mulMulup_sampling2d_1/Const:output:0 up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:╨
,up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate/concat:output:0up_sampling2d_1/mul:z:0*
T0*0
_output_shapes
:           А*
half_pixel_centers([
concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ь
concatenate_3/concatConcatV2=up_sampling2d_5/resize/ResizeNearestNeighbor:resized_images:0#VGG-19/block3_pool/MaxPool:output:0"concatenate_3/concat/axis:output:0*
N*
T0*0
_output_shapes
:           А
[
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ь
concatenate_1/concatConcatV2=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0#VGG-19/block3_pool/MaxPool:output:0"concatenate_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:           А
f
up_sampling2d_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"        h
up_sampling2d_6/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_6/mulMulup_sampling2d_6/Const:output:0 up_sampling2d_6/Const_1:output:0*
T0*
_output_shapes
:╥
,up_sampling2d_6/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_3/concat:output:0up_sampling2d_6/mul:z:0*
T0*0
_output_shapes
:         @@А
*
half_pixel_centers(f
up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"        h
up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_2/mulMulup_sampling2d_2/Const:output:0 up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:╥
,up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_1/concat:output:0up_sampling2d_2/mul:z:0*
T0*0
_output_shapes
:         @@А
*
half_pixel_centers(f
up_sampling2d_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   h
up_sampling2d_7/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_7/mulMulup_sampling2d_7/Const:output:0 up_sampling2d_7/Const_1:output:0*
T0*
_output_shapes
:Ї
,up_sampling2d_7/resize/ResizeNearestNeighborResizeNearestNeighbor=up_sampling2d_6/resize/ResizeNearestNeighbor:resized_images:0up_sampling2d_7/mul:z:0*
T0*2
_output_shapes 
:         ААА
*
half_pixel_centers(f
up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   h
up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_3/mulMulup_sampling2d_3/Const:output:0 up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:Ї
,up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighbor=up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0up_sampling2d_3/mul:z:0*
T0*2
_output_shapes 
:         ААА
*
half_pixel_centers(А
column_output/ShapeShape=up_sampling2d_7/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:k
!column_output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#column_output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#column_output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ч
column_output/strided_sliceStridedSlicecolumn_output/Shape:output:0*column_output/strided_slice/stack:output:0,column_output/strided_slice/stack_1:output:0,column_output/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
column_output/stack/1Const*
_output_shapes
: *
dtype0*
value
B :АX
column_output/stack/2Const*
_output_shapes
: *
dtype0*
value
B :АW
column_output/stack/3Const*
_output_shapes
: *
dtype0*
value	B :╧
column_output/stackPack$column_output/strided_slice:output:0column_output/stack/1:output:0column_output/stack/2:output:0column_output/stack/3:output:0*
N*
T0*
_output_shapes
:m
#column_output/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%column_output/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%column_output/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Я
column_output/strided_slice_1StridedSlicecolumn_output/stack:output:0,column_output/strided_slice_1/stack:output:0.column_output/strided_slice_1/stack_1:output:0.column_output/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskн
-column_output/conv2d_transpose/ReadVariableOpReadVariableOp6column_output_conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype0н
column_output/conv2d_transposeConv2DBackpropInputcolumn_output/stack:output:05column_output/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_7/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
О
$column_output/BiasAdd/ReadVariableOpReadVariableOp-column_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0│
column_output/BiasAddBiasAdd'column_output/conv2d_transpose:output:0,column_output/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА
table_output/ShapeShape=up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:j
 table_output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"table_output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"table_output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Т
table_output/strided_sliceStridedSlicetable_output/Shape:output:0)table_output/strided_slice/stack:output:0+table_output/strided_slice/stack_1:output:0+table_output/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
table_output/stack/1Const*
_output_shapes
: *
dtype0*
value
B :АW
table_output/stack/2Const*
_output_shapes
: *
dtype0*
value
B :АV
table_output/stack/3Const*
_output_shapes
: *
dtype0*
value	B :╩
table_output/stackPack#table_output/strided_slice:output:0table_output/stack/1:output:0table_output/stack/2:output:0table_output/stack/3:output:0*
N*
T0*
_output_shapes
:l
"table_output/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$table_output/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$table_output/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ъ
table_output/strided_slice_1StridedSlicetable_output/stack:output:0+table_output/strided_slice_1/stack:output:0-table_output/strided_slice_1/stack_1:output:0-table_output/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskл
,table_output/conv2d_transpose/ReadVariableOpReadVariableOp5table_output_conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype0к
table_output/conv2d_transposeConv2DBackpropInputtable_output/stack:output:04table_output/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
М
#table_output/BiasAdd/ReadVariableOpReadVariableOp,table_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0░
table_output/BiasAddBiasAdd&table_output/conv2d_transpose:output:0+table_output/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ААv
IdentityIdentitytable_output/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:         ААy

Identity_1Identitycolumn_output/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:         ААУ
NoOpNoOp+^VGG-19/block1_conv1/BiasAdd/ReadVariableOp*^VGG-19/block1_conv1/Conv2D/ReadVariableOp+^VGG-19/block1_conv2/BiasAdd/ReadVariableOp*^VGG-19/block1_conv2/Conv2D/ReadVariableOp+^VGG-19/block2_conv1/BiasAdd/ReadVariableOp*^VGG-19/block2_conv1/Conv2D/ReadVariableOp+^VGG-19/block2_conv2/BiasAdd/ReadVariableOp*^VGG-19/block2_conv2/Conv2D/ReadVariableOp+^VGG-19/block3_conv1/BiasAdd/ReadVariableOp*^VGG-19/block3_conv1/Conv2D/ReadVariableOp+^VGG-19/block3_conv2/BiasAdd/ReadVariableOp*^VGG-19/block3_conv2/Conv2D/ReadVariableOp+^VGG-19/block3_conv3/BiasAdd/ReadVariableOp*^VGG-19/block3_conv3/Conv2D/ReadVariableOp+^VGG-19/block3_conv4/BiasAdd/ReadVariableOp*^VGG-19/block3_conv4/Conv2D/ReadVariableOp+^VGG-19/block4_conv1/BiasAdd/ReadVariableOp*^VGG-19/block4_conv1/Conv2D/ReadVariableOp+^VGG-19/block4_conv2/BiasAdd/ReadVariableOp*^VGG-19/block4_conv2/Conv2D/ReadVariableOp+^VGG-19/block4_conv3/BiasAdd/ReadVariableOp*^VGG-19/block4_conv3/Conv2D/ReadVariableOp+^VGG-19/block4_conv4/BiasAdd/ReadVariableOp*^VGG-19/block4_conv4/Conv2D/ReadVariableOp+^VGG-19/block5_conv1/BiasAdd/ReadVariableOp*^VGG-19/block5_conv1/Conv2D/ReadVariableOp+^VGG-19/block5_conv2/BiasAdd/ReadVariableOp*^VGG-19/block5_conv2/Conv2D/ReadVariableOp+^VGG-19/block5_conv3/BiasAdd/ReadVariableOp*^VGG-19/block5_conv3/Conv2D/ReadVariableOp+^VGG-19/block5_conv4/BiasAdd/ReadVariableOp*^VGG-19/block5_conv4/Conv2D/ReadVariableOp$^block6_conv1/BiasAdd/ReadVariableOp#^block6_conv1/Conv2D/ReadVariableOp$^block6_conv2/BiasAdd/ReadVariableOp#^block6_conv2/Conv2D/ReadVariableOp+^block7_conv1_column/BiasAdd/ReadVariableOp*^block7_conv1_column/Conv2D/ReadVariableOp+^block8_conv1_column/BiasAdd/ReadVariableOp*^block8_conv1_column/Conv2D/ReadVariableOp%^column_output/BiasAdd/ReadVariableOp.^column_output/conv2d_transpose/ReadVariableOp#^conv7_table/BiasAdd/ReadVariableOp"^conv7_table/Conv2D/ReadVariableOp$^table_output/BiasAdd/ReadVariableOp-^table_output/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2X
*VGG-19/block1_conv1/BiasAdd/ReadVariableOp*VGG-19/block1_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block1_conv1/Conv2D/ReadVariableOp)VGG-19/block1_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block1_conv2/BiasAdd/ReadVariableOp*VGG-19/block1_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block1_conv2/Conv2D/ReadVariableOp)VGG-19/block1_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block2_conv1/BiasAdd/ReadVariableOp*VGG-19/block2_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block2_conv1/Conv2D/ReadVariableOp)VGG-19/block2_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block2_conv2/BiasAdd/ReadVariableOp*VGG-19/block2_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block2_conv2/Conv2D/ReadVariableOp)VGG-19/block2_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block3_conv1/BiasAdd/ReadVariableOp*VGG-19/block3_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block3_conv1/Conv2D/ReadVariableOp)VGG-19/block3_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block3_conv2/BiasAdd/ReadVariableOp*VGG-19/block3_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block3_conv2/Conv2D/ReadVariableOp)VGG-19/block3_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block3_conv3/BiasAdd/ReadVariableOp*VGG-19/block3_conv3/BiasAdd/ReadVariableOp2V
)VGG-19/block3_conv3/Conv2D/ReadVariableOp)VGG-19/block3_conv3/Conv2D/ReadVariableOp2X
*VGG-19/block3_conv4/BiasAdd/ReadVariableOp*VGG-19/block3_conv4/BiasAdd/ReadVariableOp2V
)VGG-19/block3_conv4/Conv2D/ReadVariableOp)VGG-19/block3_conv4/Conv2D/ReadVariableOp2X
*VGG-19/block4_conv1/BiasAdd/ReadVariableOp*VGG-19/block4_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block4_conv1/Conv2D/ReadVariableOp)VGG-19/block4_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block4_conv2/BiasAdd/ReadVariableOp*VGG-19/block4_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block4_conv2/Conv2D/ReadVariableOp)VGG-19/block4_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block4_conv3/BiasAdd/ReadVariableOp*VGG-19/block4_conv3/BiasAdd/ReadVariableOp2V
)VGG-19/block4_conv3/Conv2D/ReadVariableOp)VGG-19/block4_conv3/Conv2D/ReadVariableOp2X
*VGG-19/block4_conv4/BiasAdd/ReadVariableOp*VGG-19/block4_conv4/BiasAdd/ReadVariableOp2V
)VGG-19/block4_conv4/Conv2D/ReadVariableOp)VGG-19/block4_conv4/Conv2D/ReadVariableOp2X
*VGG-19/block5_conv1/BiasAdd/ReadVariableOp*VGG-19/block5_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block5_conv1/Conv2D/ReadVariableOp)VGG-19/block5_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block5_conv2/BiasAdd/ReadVariableOp*VGG-19/block5_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block5_conv2/Conv2D/ReadVariableOp)VGG-19/block5_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block5_conv3/BiasAdd/ReadVariableOp*VGG-19/block5_conv3/BiasAdd/ReadVariableOp2V
)VGG-19/block5_conv3/Conv2D/ReadVariableOp)VGG-19/block5_conv3/Conv2D/ReadVariableOp2X
*VGG-19/block5_conv4/BiasAdd/ReadVariableOp*VGG-19/block5_conv4/BiasAdd/ReadVariableOp2V
)VGG-19/block5_conv4/Conv2D/ReadVariableOp)VGG-19/block5_conv4/Conv2D/ReadVariableOp2J
#block6_conv1/BiasAdd/ReadVariableOp#block6_conv1/BiasAdd/ReadVariableOp2H
"block6_conv1/Conv2D/ReadVariableOp"block6_conv1/Conv2D/ReadVariableOp2J
#block6_conv2/BiasAdd/ReadVariableOp#block6_conv2/BiasAdd/ReadVariableOp2H
"block6_conv2/Conv2D/ReadVariableOp"block6_conv2/Conv2D/ReadVariableOp2X
*block7_conv1_column/BiasAdd/ReadVariableOp*block7_conv1_column/BiasAdd/ReadVariableOp2V
)block7_conv1_column/Conv2D/ReadVariableOp)block7_conv1_column/Conv2D/ReadVariableOp2X
*block8_conv1_column/BiasAdd/ReadVariableOp*block8_conv1_column/BiasAdd/ReadVariableOp2V
)block8_conv1_column/Conv2D/ReadVariableOp)block8_conv1_column/Conv2D/ReadVariableOp2L
$column_output/BiasAdd/ReadVariableOp$column_output/BiasAdd/ReadVariableOp2^
-column_output/conv2d_transpose/ReadVariableOp-column_output/conv2d_transpose/ReadVariableOp2H
"conv7_table/BiasAdd/ReadVariableOp"conv7_table/BiasAdd/ReadVariableOp2F
!conv7_table/Conv2D/ReadVariableOp!conv7_table/Conv2D/ReadVariableOp2J
#table_output/BiasAdd/ReadVariableOp#table_output/BiasAdd/ReadVariableOp2\
,table_output/conv2d_transpose/ReadVariableOp,table_output/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Ф
Д
H__inference_block6_conv2_layer_call_and_return_conditional_losses_779564

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
д
i
0__inference_block6_dropout1_layer_call_fn_781822

inputs
identityИвStatefulPartitionedCall╥
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_block6_dropout1_layer_call_and_return_conditional_losses_779922x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
У
Д
H__inference_block3_conv1_layer_call_and_return_conditional_losses_778293

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         @@Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         @@Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         @@А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         @@А
 
_user_specified_nameinputs
К
м
4__inference_block8_conv1_column_layer_call_fn_781962

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_block8_conv1_column_layer_call_and_return_conditional_losses_779612x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
У
g
K__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_782144

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
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
С
e
I__inference_up_sampling2d_layer_call_and_return_conditional_losses_781990

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
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
Ы
s
G__inference_concatenate_layer_call_and_return_conditional_losses_782020
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :А
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:         А`
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,                           А:         А:l h
B
_output_shapes0
.:,                           А
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:         А
"
_user_specified_name
inputs/1
№
е
-__inference_block6_conv1_layer_call_fn_781801

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block6_conv1_layer_call_and_return_conditional_losses_779540x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
№
е
-__inference_block5_conv4_layer_call_fn_782594

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block5_conv4_layer_call_and_return_conditional_losses_778482x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Е
X
,__inference_concatenate_layer_call_fn_782013
inputs_0
inputs_1
identity╦
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_779653i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,                           А:         А:l h
B
_output_shapes0
.:,                           А
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:         А
"
_user_specified_name
inputs/1
У
Б
H__inference_block1_conv1_layer_call_and_return_conditional_losses_782265

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         АА@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
┴
г
-__inference_table_output_layer_call_fn_782170

inputs"
unknown:А

	unknown_0:
identityИвStatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_table_output_layer_call_and_return_conditional_losses_779404Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А
: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А

 
_user_specified_nameinputs
Ф
s
I__inference_concatenate_2_layer_call_and_return_conditional_losses_779644

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :~
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:         А`
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,                           А:         А:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:XT
0
_output_shapes
:         А
 
_user_specified_nameinputs
▐
R
6__inference_block7_dropout_column_layer_call_fn_781911

inputs
identity╚
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_block7_dropout_column_layer_call_and_return_conditional_losses_779599i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Й
Z
.__inference_concatenate_1_layer_call_fn_782073
inputs_0
inputs_1
identity═
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_779673i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:           А
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,                           А:           А:l h
B
_output_shapes0
.:,                           А
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:           А
"
_user_specified_name
inputs/1
П
c
G__inference_block1_pool_layer_call_and_return_conditional_losses_778154

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
╖
J
.__inference_up_sampling2d_layer_call_fn_781978

inputs
identity┌
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
GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_layer_call_and_return_conditional_losses_779231Г
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
╛
Ь	
'__inference_VGG-19_layer_call_fn_781473

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А&

unknown_25:АА

unknown_26:	А&

unknown_27:АА

unknown_28:	А&

unknown_29:АА

unknown_30:	А
identity

identity_1

identity_2ИвStatefulPartitionedCall╕
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
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:           А:         А:         А*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_VGG-19_layer_call_and_return_conditional_losses_778492x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:           Аz

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*0
_output_shapes
:         Аz

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╥
L
0__inference_block6_dropout2_layer_call_fn_781864

inputs
identity┬
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_block6_dropout2_layer_call_and_return_conditional_losses_779575i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
П
c
G__inference_block4_pool_layer_call_and_return_conditional_losses_782525

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
У
Д
H__inference_block3_conv4_layer_call_and_return_conditional_losses_782425

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         @@Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         @@Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         @@А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         @@А
 
_user_specified_nameinputs
У
g
K__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_779307

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
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
Д
H__inference_block3_conv3_layer_call_and_return_conditional_losses_778327

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         @@Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         @@Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         @@А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         @@А
 
_user_specified_nameinputs
Й
Z
.__inference_concatenate_3_layer_call_fn_782086
inputs_0
inputs_1
identity═
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_3_layer_call_and_return_conditional_losses_779664i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:           А
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,                           А:           А:l h
B
_output_shapes0
.:,                           А
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:           А
"
_user_specified_name
inputs/1
│
H
,__inference_block2_pool_layer_call_fn_782340

inputs
identity╪
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
GPU2*0J 8В *P
fKRI
G__inference_block2_pool_layer_call_and_return_conditional_losses_778166Г
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
│
H
,__inference_block1_pool_layer_call_fn_782290

inputs
identity╪
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
GPU2*0J 8В *P
fKRI
G__inference_block1_pool_layer_call_and_return_conditional_losses_778154Г
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
№
е
-__inference_block5_conv1_layer_call_fn_782534

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block5_conv1_layer_call_and_return_conditional_losses_778431x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
У
Д
H__inference_block4_conv4_layer_call_and_return_conditional_losses_778413

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:           Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:           Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
╘ 
Ц
H__inference_table_output_layer_call_and_return_conditional_losses_779404

inputsC
(conv2d_transpose_readvariableop_resource:А
-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskС
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Б
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,                           А

 
_user_specified_nameinputs
┴
Э	
'__inference_VGG-19_layer_call_fn_779033
input_1!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А&

unknown_25:АА

unknown_26:	А&

unknown_27:АА

unknown_28:	А&

unknown_29:АА

unknown_30:	А
identity

identity_1

identity_2ИвStatefulPartitionedCall╣
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
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:           А:         А:         А*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_VGG-19_layer_call_and_return_conditional_losses_778889x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:           Аz

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*0
_output_shapes
:         Аz

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         АА
!
_user_specified_name	input_1
У
Д
H__inference_block4_conv4_layer_call_and_return_conditional_losses_782515

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:           Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:           Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
Т
q
G__inference_concatenate_layer_call_and_return_conditional_losses_779653

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :~
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:         А`
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,                           А:         А:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:XT
0
_output_shapes
:         А
 
_user_specified_nameinputs
·
д
,__inference_conv7_table_layer_call_fn_781942

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv7_table_layer_call_and_return_conditional_losses_779629x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ы
▐
)__inference_tablenet_layer_call_fn_780354	
input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А&

unknown_25:АА

unknown_26:	А&

unknown_27:АА

unknown_28:	А&

unknown_29:АА

unknown_30:	А&

unknown_31:АА

unknown_32:	А&

unknown_33:АА

unknown_34:	А&

unknown_35:АА

unknown_36:	А&

unknown_37:АА

unknown_38:	А&

unknown_39:АА

unknown_40:	А%

unknown_41:А


unknown_42:%

unknown_43:А


unknown_44:
identity

identity_1ИвStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *n
_output_shapes\
Z:+                           :+                           *P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_tablenet_layer_call_and_return_conditional_losses_780158Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Л

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
1
_output_shapes
:         АА

_user_specified_nameinput
У
Д
H__inference_block3_conv2_layer_call_and_return_conditional_losses_778310

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         @@Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         @@Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         @@А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         @@А
 
_user_specified_nameinputs
Ф
s
I__inference_concatenate_3_layer_call_and_return_conditional_losses_779664

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :~
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:           А
`
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:           А
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,                           А:           А:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:XT
0
_output_shapes
:           А
 
_user_specified_nameinputs
У
g
K__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_779326

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
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
Рj
║
B__inference_VGG-19_layer_call_and_return_conditional_losses_778889

inputs-
block1_conv1_778801:@!
block1_conv1_778803:@-
block1_conv2_778806:@@!
block1_conv2_778808:@.
block2_conv1_778812:@А"
block2_conv1_778814:	А/
block2_conv2_778817:АА"
block2_conv2_778819:	А/
block3_conv1_778823:АА"
block3_conv1_778825:	А/
block3_conv2_778828:АА"
block3_conv2_778830:	А/
block3_conv3_778833:АА"
block3_conv3_778835:	А/
block3_conv4_778838:АА"
block3_conv4_778840:	А/
block4_conv1_778844:АА"
block4_conv1_778846:	А/
block4_conv2_778849:АА"
block4_conv2_778851:	А/
block4_conv3_778854:АА"
block4_conv3_778856:	А/
block4_conv4_778859:АА"
block4_conv4_778861:	А/
block5_conv1_778865:АА"
block5_conv1_778867:	А/
block5_conv2_778870:АА"
block5_conv2_778872:	А/
block5_conv3_778875:АА"
block5_conv3_778877:	А/
block5_conv4_778880:АА"
block5_conv4_778882:	А
identity

identity_1

identity_2Ив$block1_conv1/StatefulPartitionedCallв$block1_conv2/StatefulPartitionedCallв$block2_conv1/StatefulPartitionedCallв$block2_conv2/StatefulPartitionedCallв$block3_conv1/StatefulPartitionedCallв$block3_conv2/StatefulPartitionedCallв$block3_conv3/StatefulPartitionedCallв$block3_conv4/StatefulPartitionedCallв$block4_conv1/StatefulPartitionedCallв$block4_conv2/StatefulPartitionedCallв$block4_conv3/StatefulPartitionedCallв$block4_conv4/StatefulPartitionedCallв$block5_conv1/StatefulPartitionedCallв$block5_conv2/StatefulPartitionedCallв$block5_conv3/StatefulPartitionedCallв$block5_conv4/StatefulPartitionedCallН
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_778801block1_conv1_778803*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block1_conv1_layer_call_and_return_conditional_losses_778223┤
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_778806block1_conv2_778808*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block1_conv2_layer_call_and_return_conditional_losses_778240Є
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block1_pool_layer_call_and_return_conditional_losses_778154м
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_778812block2_conv1_778814*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ААА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block2_conv1_layer_call_and_return_conditional_losses_778258╡
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_778817block2_conv2_778819*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ААА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block2_conv2_layer_call_and_return_conditional_losses_778275ё
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block2_pool_layer_call_and_return_conditional_losses_778166к
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_778823block3_conv1_778825*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block3_conv1_layer_call_and_return_conditional_losses_778293│
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_778828block3_conv2_778830*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block3_conv2_layer_call_and_return_conditional_losses_778310│
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_778833block3_conv3_778835*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block3_conv3_layer_call_and_return_conditional_losses_778327│
$block3_conv4/StatefulPartitionedCallStatefulPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0block3_conv4_778838block3_conv4_778840*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block3_conv4_layer_call_and_return_conditional_losses_778344ё
block3_pool/PartitionedCallPartitionedCall-block3_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block3_pool_layer_call_and_return_conditional_losses_778178к
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_778844block4_conv1_778846*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block4_conv1_layer_call_and_return_conditional_losses_778362│
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_778849block4_conv2_778851*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block4_conv2_layer_call_and_return_conditional_losses_778379│
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_778854block4_conv3_778856*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block4_conv3_layer_call_and_return_conditional_losses_778396│
$block4_conv4/StatefulPartitionedCallStatefulPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0block4_conv4_778859block4_conv4_778861*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block4_conv4_layer_call_and_return_conditional_losses_778413ё
block4_pool/PartitionedCallPartitionedCall-block4_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block4_pool_layer_call_and_return_conditional_losses_778190к
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_778865block5_conv1_778867*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block5_conv1_layer_call_and_return_conditional_losses_778431│
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_778870block5_conv2_778872*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block5_conv2_layer_call_and_return_conditional_losses_778448│
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_778875block5_conv3_778877*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block5_conv3_layer_call_and_return_conditional_losses_778465│
$block5_conv4/StatefulPartitionedCallStatefulPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0block5_conv4_778880block5_conv4_778882*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block5_conv4_layer_call_and_return_conditional_losses_778482ё
block5_pool/PartitionedCallPartitionedCall-block5_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block5_pool_layer_call_and_return_conditional_losses_778202|
IdentityIdentity$block3_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:           А~

Identity_1Identity$block4_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А~

Identity_2Identity$block5_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А╢
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block3_conv4/StatefulPartitionedCall$block3_conv4/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block4_conv4/StatefulPartitionedCall$block4_conv4/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block5_conv4/StatefulPartitionedCall$block5_conv4/StatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╗
L
0__inference_up_sampling2d_5_layer_call_fn_782055

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
K__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_779288Г
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
Д
H__inference_block4_conv2_layer_call_and_return_conditional_losses_782475

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:           Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:           Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
Э
u
I__inference_concatenate_3_layer_call_and_return_conditional_losses_782093
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :А
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:           А
`
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:           А
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,                           А:           А:l h
B
_output_shapes0
.:,                           А
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:           А
"
_user_specified_name
inputs/1
Ы
Л
O__inference_block8_conv1_column_layer_call_and_return_conditional_losses_779612

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╟

p
Q__inference_block7_dropout_column_layer_call_and_return_conditional_losses_781933

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а@m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L?п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         Аx
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         Аr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         Аb
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
░
o
6__inference_block7_dropout_column_layer_call_fn_781916

inputs
identityИвStatefulPartitionedCall╪
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_block7_dropout_column_layer_call_and_return_conditional_losses_779856x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
У
Д
H__inference_block5_conv3_layer_call_and_return_conditional_losses_782585

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╒ 
Ч
I__inference_column_output_layer_call_and_return_conditional_losses_782245

inputsC
(conv2d_transpose_readvariableop_resource:А
-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskС
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Б
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,                           А

 
_user_specified_nameinputs
П
c
G__inference_block3_pool_layer_call_and_return_conditional_losses_782435

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
У
Г
G__inference_conv7_table_layer_call_and_return_conditional_losses_779629

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╗
L
0__inference_up_sampling2d_1_layer_call_fn_782038

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
K__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_779269Г
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
П
c
G__inference_block5_pool_layer_call_and_return_conditional_losses_778202

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
ю
▀
)__inference_tablenet_layer_call_fn_780804

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А&

unknown_25:АА

unknown_26:	А&

unknown_27:АА

unknown_28:	А&

unknown_29:АА

unknown_30:	А&

unknown_31:АА

unknown_32:	А&

unknown_33:АА

unknown_34:	А&

unknown_35:АА

unknown_36:	А&

unknown_37:АА

unknown_38:	А&

unknown_39:АА

unknown_40:	А%

unknown_41:А


unknown_42:%

unknown_43:А


unknown_44:
identity

identity_1ИвStatefulPartitionedCallГ
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
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *n
_output_shapes\
Z:+                           :+                           *P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_tablenet_layer_call_and_return_conditional_losses_779691Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Л

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
П
c
G__inference_block2_pool_layer_call_and_return_conditional_losses_778166

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
ы
▐
)__inference_tablenet_layer_call_fn_779788	
input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А&

unknown_25:АА

unknown_26:	А&

unknown_27:АА

unknown_28:	А&

unknown_29:АА

unknown_30:	А&

unknown_31:АА

unknown_32:	А&

unknown_33:АА

unknown_34:	А&

unknown_35:АА

unknown_36:	А&

unknown_37:АА

unknown_38:	А&

unknown_39:АА

unknown_40:	А%

unknown_41:А


unknown_42:%

unknown_43:А


unknown_44:
identity

identity_1ИвStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *n
_output_shapes\
Z:+                           :+                           *P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_tablenet_layer_call_and_return_conditional_losses_779691Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Л

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
1
_output_shapes
:         АА

_user_specified_nameinput
¤
в
-__inference_block1_conv2_layer_call_fn_782274

inputs!
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block1_conv2_layer_call_and_return_conditional_losses_778240y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         АА@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА@
 
_user_specified_nameinputs
 ж
К
B__inference_VGG-19_layer_call_and_return_conditional_losses_781792

inputsE
+block1_conv1_conv2d_readvariableop_resource:@:
,block1_conv1_biasadd_readvariableop_resource:@E
+block1_conv2_conv2d_readvariableop_resource:@@:
,block1_conv2_biasadd_readvariableop_resource:@F
+block2_conv1_conv2d_readvariableop_resource:@А;
,block2_conv1_biasadd_readvariableop_resource:	АG
+block2_conv2_conv2d_readvariableop_resource:АА;
,block2_conv2_biasadd_readvariableop_resource:	АG
+block3_conv1_conv2d_readvariableop_resource:АА;
,block3_conv1_biasadd_readvariableop_resource:	АG
+block3_conv2_conv2d_readvariableop_resource:АА;
,block3_conv2_biasadd_readvariableop_resource:	АG
+block3_conv3_conv2d_readvariableop_resource:АА;
,block3_conv3_biasadd_readvariableop_resource:	АG
+block3_conv4_conv2d_readvariableop_resource:АА;
,block3_conv4_biasadd_readvariableop_resource:	АG
+block4_conv1_conv2d_readvariableop_resource:АА;
,block4_conv1_biasadd_readvariableop_resource:	АG
+block4_conv2_conv2d_readvariableop_resource:АА;
,block4_conv2_biasadd_readvariableop_resource:	АG
+block4_conv3_conv2d_readvariableop_resource:АА;
,block4_conv3_biasadd_readvariableop_resource:	АG
+block4_conv4_conv2d_readvariableop_resource:АА;
,block4_conv4_biasadd_readvariableop_resource:	АG
+block5_conv1_conv2d_readvariableop_resource:АА;
,block5_conv1_biasadd_readvariableop_resource:	АG
+block5_conv2_conv2d_readvariableop_resource:АА;
,block5_conv2_biasadd_readvariableop_resource:	АG
+block5_conv3_conv2d_readvariableop_resource:АА;
,block5_conv3_biasadd_readvariableop_resource:	АG
+block5_conv4_conv2d_readvariableop_resource:АА;
,block5_conv4_biasadd_readvariableop_resource:	А
identity

identity_1

identity_2Ив#block1_conv1/BiasAdd/ReadVariableOpв"block1_conv1/Conv2D/ReadVariableOpв#block1_conv2/BiasAdd/ReadVariableOpв"block1_conv2/Conv2D/ReadVariableOpв#block2_conv1/BiasAdd/ReadVariableOpв"block2_conv1/Conv2D/ReadVariableOpв#block2_conv2/BiasAdd/ReadVariableOpв"block2_conv2/Conv2D/ReadVariableOpв#block3_conv1/BiasAdd/ReadVariableOpв"block3_conv1/Conv2D/ReadVariableOpв#block3_conv2/BiasAdd/ReadVariableOpв"block3_conv2/Conv2D/ReadVariableOpв#block3_conv3/BiasAdd/ReadVariableOpв"block3_conv3/Conv2D/ReadVariableOpв#block3_conv4/BiasAdd/ReadVariableOpв"block3_conv4/Conv2D/ReadVariableOpв#block4_conv1/BiasAdd/ReadVariableOpв"block4_conv1/Conv2D/ReadVariableOpв#block4_conv2/BiasAdd/ReadVariableOpв"block4_conv2/Conv2D/ReadVariableOpв#block4_conv3/BiasAdd/ReadVariableOpв"block4_conv3/Conv2D/ReadVariableOpв#block4_conv4/BiasAdd/ReadVariableOpв"block4_conv4/Conv2D/ReadVariableOpв#block5_conv1/BiasAdd/ReadVariableOpв"block5_conv1/Conv2D/ReadVariableOpв#block5_conv2/BiasAdd/ReadVariableOpв"block5_conv2/Conv2D/ReadVariableOpв#block5_conv3/BiasAdd/ReadVariableOpв"block5_conv3/Conv2D/ReadVariableOpв#block5_conv4/BiasAdd/ReadVariableOpв"block5_conv4/Conv2D/ReadVariableOpЦ
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0╡
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
М
#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ж
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@t
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:         АА@Ц
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╬
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
М
#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ж
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@t
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:         АА@о
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*1
_output_shapes
:         АА@*
ksize
*
paddingVALID*
strides
Ч
"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0╠
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
Н
#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0з
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         АААu
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*2
_output_shapes 
:         АААШ
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╧
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
Н
#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0з
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         АААu
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*2
_output_shapes 
:         АААн
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:         @@А*
ksize
*
paddingVALID*
strides
Ш
"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╩
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Н
#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@Аs
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         @@АШ
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Н
#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@Аs
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         @@АШ
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Н
#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@Аs
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         @@АШ
"block3_conv4/Conv2D/ReadVariableOpReadVariableOp+block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block3_conv4/Conv2DConv2Dblock3_conv3/Relu:activations:0*block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Н
#block3_conv4/BiasAdd/ReadVariableOpReadVariableOp,block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block3_conv4/BiasAddBiasAddblock3_conv4/Conv2D:output:0+block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@Аs
block3_conv4/ReluRelublock3_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:         @@Ан
block3_pool/MaxPoolMaxPoolblock3_conv4/Relu:activations:0*0
_output_shapes
:           А*
ksize
*
paddingVALID*
strides
Ш
"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╩
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Н
#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           Аs
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:           АШ
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Н
#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           Аs
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:           АШ
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Н
#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           Аs
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:           АШ
"block4_conv4/Conv2D/ReadVariableOpReadVariableOp+block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block4_conv4/Conv2DConv2Dblock4_conv3/Relu:activations:0*block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Н
#block4_conv4/BiasAdd/ReadVariableOpReadVariableOp,block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block4_conv4/BiasAddBiasAddblock4_conv4/Conv2D:output:0+block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           Аs
block4_conv4/ReluRelublock4_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:           Ан
block4_pool/MaxPoolMaxPoolblock4_conv4/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Ш
"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╩
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         АШ
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         АШ
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         АШ
"block5_conv4/Conv2D/ReadVariableOpReadVariableOp+block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block5_conv4/Conv2DConv2Dblock5_conv3/Relu:activations:0*block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block5_conv4/BiasAdd/ReadVariableOpReadVariableOp,block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block5_conv4/BiasAddBiasAddblock5_conv4/Conv2D:output:0+block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block5_conv4/ReluRelublock5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:         Ан
block5_pool/MaxPoolMaxPoolblock5_conv4/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
t
IdentityIdentityblock3_pool/MaxPool:output:0^NoOp*
T0*0
_output_shapes
:           Аv

Identity_1Identityblock4_pool/MaxPool:output:0^NoOp*
T0*0
_output_shapes
:         Аv

Identity_2Identityblock5_pool/MaxPool:output:0^NoOp*
T0*0
_output_shapes
:         АЎ	
NoOpNoOp$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block3_conv4/BiasAdd/ReadVariableOp#^block3_conv4/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block4_conv4/BiasAdd/ReadVariableOp#^block4_conv4/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp$^block5_conv4/BiasAdd/ReadVariableOp#^block5_conv4/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block3_conv4/BiasAdd/ReadVariableOp#block3_conv4/BiasAdd/ReadVariableOp2H
"block3_conv4/Conv2D/ReadVariableOp"block3_conv4/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block4_conv4/BiasAdd/ReadVariableOp#block4_conv4/BiasAdd/ReadVariableOp2H
"block4_conv4/Conv2D/ReadVariableOp"block4_conv4/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp2J
#block5_conv4/BiasAdd/ReadVariableOp#block5_conv4/BiasAdd/ReadVariableOp2H
"block5_conv4/Conv2D/ReadVariableOp"block5_conv4/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╛
Ь	
'__inference_VGG-19_layer_call_fn_781546

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А&

unknown_25:АА

unknown_26:	А&

unknown_27:АА

unknown_28:	А&

unknown_29:АА

unknown_30:	А
identity

identity_1

identity_2ИвStatefulPartitionedCall╕
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
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:           А:         А:         А*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_VGG-19_layer_call_and_return_conditional_losses_778889x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:           Аz

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*0
_output_shapes
:         Аz

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
№
е
-__inference_block4_conv3_layer_call_fn_782484

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block4_conv3_layer_call_and_return_conditional_losses_778396x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :           А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
У
Д
H__inference_block4_conv3_layer_call_and_return_conditional_losses_782495

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:           Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:           Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
У
Д
H__inference_block3_conv2_layer_call_and_return_conditional_losses_782385

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         @@Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         @@Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         @@А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         @@А
 
_user_specified_nameinputs
╘ 
Ц
H__inference_table_output_layer_call_and_return_conditional_losses_782203

inputsC
(conv2d_transpose_readvariableop_resource:А
-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskС
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Б
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,                           А

 
_user_specified_nameinputs
Ь
Г
H__inference_block2_conv1_layer_call_and_return_conditional_losses_782315

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ь
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0А
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА[
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:         АААl
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:         АААw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА@
 
_user_specified_nameinputs
У
g
K__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_782007

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
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
П
c
G__inference_block4_pool_layer_call_and_return_conditional_losses_778190

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
П
c
G__inference_block2_pool_layer_call_and_return_conditional_losses_782345

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
┴

j
K__inference_block6_dropout2_layer_call_and_return_conditional_losses_781886

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а@m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L?п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         Аx
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         Аr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         Аb
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
У
Д
H__inference_block4_conv3_layer_call_and_return_conditional_losses_778396

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:           Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:           Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
┴

j
K__inference_block6_dropout2_layer_call_and_return_conditional_losses_779889

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а@m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L?п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         Аx
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         Аr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         Аb
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
│█
А:
"__inference__traced_restore_783183
file_prefix@
$assignvariableop_block6_conv1_kernel:АА3
$assignvariableop_1_block6_conv1_bias:	АB
&assignvariableop_2_block6_conv2_kernel:АА3
$assignvariableop_3_block6_conv2_bias:	АI
-assignvariableop_4_block7_conv1_column_kernel:АА:
+assignvariableop_5_block7_conv1_column_bias:	АA
%assignvariableop_6_conv7_table_kernel:АА2
#assignvariableop_7_conv7_table_bias:	АI
-assignvariableop_8_block8_conv1_column_kernel:АА:
+assignvariableop_9_block8_conv1_column_bias:	АB
'assignvariableop_10_table_output_kernel:А
3
%assignvariableop_11_table_output_bias:C
(assignvariableop_12_column_output_kernel:А
4
&assignvariableop_13_column_output_bias:A
'assignvariableop_14_block1_conv1_kernel:@3
%assignvariableop_15_block1_conv1_bias:@A
'assignvariableop_16_block1_conv2_kernel:@@3
%assignvariableop_17_block1_conv2_bias:@B
'assignvariableop_18_block2_conv1_kernel:@А4
%assignvariableop_19_block2_conv1_bias:	АC
'assignvariableop_20_block2_conv2_kernel:АА4
%assignvariableop_21_block2_conv2_bias:	АC
'assignvariableop_22_block3_conv1_kernel:АА4
%assignvariableop_23_block3_conv1_bias:	АC
'assignvariableop_24_block3_conv2_kernel:АА4
%assignvariableop_25_block3_conv2_bias:	АC
'assignvariableop_26_block3_conv3_kernel:АА4
%assignvariableop_27_block3_conv3_bias:	АC
'assignvariableop_28_block3_conv4_kernel:АА4
%assignvariableop_29_block3_conv4_bias:	АC
'assignvariableop_30_block4_conv1_kernel:АА4
%assignvariableop_31_block4_conv1_bias:	АC
'assignvariableop_32_block4_conv2_kernel:АА4
%assignvariableop_33_block4_conv2_bias:	АC
'assignvariableop_34_block4_conv3_kernel:АА4
%assignvariableop_35_block4_conv3_bias:	АC
'assignvariableop_36_block4_conv4_kernel:АА4
%assignvariableop_37_block4_conv4_bias:	АC
'assignvariableop_38_block5_conv1_kernel:АА4
%assignvariableop_39_block5_conv1_bias:	АC
'assignvariableop_40_block5_conv2_kernel:АА4
%assignvariableop_41_block5_conv2_bias:	АC
'assignvariableop_42_block5_conv3_kernel:АА4
%assignvariableop_43_block5_conv3_bias:	АC
'assignvariableop_44_block5_conv4_kernel:АА4
%assignvariableop_45_block5_conv4_bias:	А'
assignvariableop_46_adam_iter:	 )
assignvariableop_47_adam_beta_1: )
assignvariableop_48_adam_beta_2: (
assignvariableop_49_adam_decay: 0
&assignvariableop_50_adam_learning_rate: %
assignvariableop_51_total_4: %
assignvariableop_52_count_4: %
assignvariableop_53_total_3: %
assignvariableop_54_count_3: %
assignvariableop_55_total_2: %
assignvariableop_56_count_2: %
assignvariableop_57_total_1: %
assignvariableop_58_count_1: #
assignvariableop_59_total: #
assignvariableop_60_count: J
.assignvariableop_61_adam_block6_conv1_kernel_m:АА;
,assignvariableop_62_adam_block6_conv1_bias_m:	АJ
.assignvariableop_63_adam_block6_conv2_kernel_m:АА;
,assignvariableop_64_adam_block6_conv2_bias_m:	АQ
5assignvariableop_65_adam_block7_conv1_column_kernel_m:ААB
3assignvariableop_66_adam_block7_conv1_column_bias_m:	АI
-assignvariableop_67_adam_conv7_table_kernel_m:АА:
+assignvariableop_68_adam_conv7_table_bias_m:	АQ
5assignvariableop_69_adam_block8_conv1_column_kernel_m:ААB
3assignvariableop_70_adam_block8_conv1_column_bias_m:	АI
.assignvariableop_71_adam_table_output_kernel_m:А
:
,assignvariableop_72_adam_table_output_bias_m:J
/assignvariableop_73_adam_column_output_kernel_m:А
;
-assignvariableop_74_adam_column_output_bias_m:J
.assignvariableop_75_adam_block6_conv1_kernel_v:АА;
,assignvariableop_76_adam_block6_conv1_bias_v:	АJ
.assignvariableop_77_adam_block6_conv2_kernel_v:АА;
,assignvariableop_78_adam_block6_conv2_bias_v:	АQ
5assignvariableop_79_adam_block7_conv1_column_kernel_v:ААB
3assignvariableop_80_adam_block7_conv1_column_bias_v:	АI
-assignvariableop_81_adam_conv7_table_kernel_v:АА:
+assignvariableop_82_adam_conv7_table_bias_v:	АQ
5assignvariableop_83_adam_block8_conv1_column_kernel_v:ААB
3assignvariableop_84_adam_block8_conv1_column_bias_v:	АI
.assignvariableop_85_adam_table_output_kernel_v:А
:
,assignvariableop_86_adam_table_output_bias_v:J
/assignvariableop_87_adam_column_output_kernel_v:А
;
-assignvariableop_88_adam_column_output_bias_v:
identity_90ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_56вAssignVariableOp_57вAssignVariableOp_58вAssignVariableOp_59вAssignVariableOp_6вAssignVariableOp_60вAssignVariableOp_61вAssignVariableOp_62вAssignVariableOp_63вAssignVariableOp_64вAssignVariableOp_65вAssignVariableOp_66вAssignVariableOp_67вAssignVariableOp_68вAssignVariableOp_69вAssignVariableOp_7вAssignVariableOp_70вAssignVariableOp_71вAssignVariableOp_72вAssignVariableOp_73вAssignVariableOp_74вAssignVariableOp_75вAssignVariableOp_76вAssignVariableOp_77вAssignVariableOp_78вAssignVariableOp_79вAssignVariableOp_8вAssignVariableOp_80вAssignVariableOp_81вAssignVariableOp_82вAssignVariableOp_83вAssignVariableOp_84вAssignVariableOp_85вAssignVariableOp_86вAssignVariableOp_87вAssignVariableOp_88вAssignVariableOp_9║)
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:Z*
dtype0*р(
value╓(B╙(ZB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHз
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:Z*
dtype0*╔
value┐B╝ZB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B у
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*■
_output_shapesы
ш::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*h
dtypes^
\2Z	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOpAssignVariableOp$assignvariableop_block6_conv1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_1AssignVariableOp$assignvariableop_1_block6_conv1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_2AssignVariableOp&assignvariableop_2_block6_conv2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_3AssignVariableOp$assignvariableop_3_block6_conv2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_4AssignVariableOp-assignvariableop_4_block7_conv1_column_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_5AssignVariableOp+assignvariableop_5_block7_conv1_column_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_6AssignVariableOp%assignvariableop_6_conv7_table_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_7AssignVariableOp#assignvariableop_7_conv7_table_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_8AssignVariableOp-assignvariableop_8_block8_conv1_column_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_9AssignVariableOp+assignvariableop_9_block8_conv1_column_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_10AssignVariableOp'assignvariableop_10_table_output_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_11AssignVariableOp%assignvariableop_11_table_output_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_12AssignVariableOp(assignvariableop_12_column_output_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_13AssignVariableOp&assignvariableop_13_column_output_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_14AssignVariableOp'assignvariableop_14_block1_conv1_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_15AssignVariableOp%assignvariableop_15_block1_conv1_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_16AssignVariableOp'assignvariableop_16_block1_conv2_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_17AssignVariableOp%assignvariableop_17_block1_conv2_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_18AssignVariableOp'assignvariableop_18_block2_conv1_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_19AssignVariableOp%assignvariableop_19_block2_conv1_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_20AssignVariableOp'assignvariableop_20_block2_conv2_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_21AssignVariableOp%assignvariableop_21_block2_conv2_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_22AssignVariableOp'assignvariableop_22_block3_conv1_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_23AssignVariableOp%assignvariableop_23_block3_conv1_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_24AssignVariableOp'assignvariableop_24_block3_conv2_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_25AssignVariableOp%assignvariableop_25_block3_conv2_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_26AssignVariableOp'assignvariableop_26_block3_conv3_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_27AssignVariableOp%assignvariableop_27_block3_conv3_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_28AssignVariableOp'assignvariableop_28_block3_conv4_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_29AssignVariableOp%assignvariableop_29_block3_conv4_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_30AssignVariableOp'assignvariableop_30_block4_conv1_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_31AssignVariableOp%assignvariableop_31_block4_conv1_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_32AssignVariableOp'assignvariableop_32_block4_conv2_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_33AssignVariableOp%assignvariableop_33_block4_conv2_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_34AssignVariableOp'assignvariableop_34_block4_conv3_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_35AssignVariableOp%assignvariableop_35_block4_conv3_biasIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_36AssignVariableOp'assignvariableop_36_block4_conv4_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_37AssignVariableOp%assignvariableop_37_block4_conv4_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_38AssignVariableOp'assignvariableop_38_block5_conv1_kernelIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_39AssignVariableOp%assignvariableop_39_block5_conv1_biasIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_40AssignVariableOp'assignvariableop_40_block5_conv2_kernelIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_41AssignVariableOp%assignvariableop_41_block5_conv2_biasIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_42AssignVariableOp'assignvariableop_42_block5_conv3_kernelIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_43AssignVariableOp%assignvariableop_43_block5_conv3_biasIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_44AssignVariableOp'assignvariableop_44_block5_conv4_kernelIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_45AssignVariableOp%assignvariableop_45_block5_conv4_biasIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0	*
_output_shapes
:О
AssignVariableOp_46AssignVariableOpassignvariableop_46_adam_iterIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_47AssignVariableOpassignvariableop_47_adam_beta_1Identity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_48AssignVariableOpassignvariableop_48_adam_beta_2Identity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_49AssignVariableOpassignvariableop_49_adam_decayIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_50AssignVariableOp&assignvariableop_50_adam_learning_rateIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_51AssignVariableOpassignvariableop_51_total_4Identity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_52AssignVariableOpassignvariableop_52_count_4Identity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_53AssignVariableOpassignvariableop_53_total_3Identity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_54AssignVariableOpassignvariableop_54_count_3Identity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_55AssignVariableOpassignvariableop_55_total_2Identity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_56AssignVariableOpassignvariableop_56_count_2Identity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_57AssignVariableOpassignvariableop_57_total_1Identity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_58AssignVariableOpassignvariableop_58_count_1Identity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_59AssignVariableOpassignvariableop_59_totalIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_60AssignVariableOpassignvariableop_60_countIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_61AssignVariableOp.assignvariableop_61_adam_block6_conv1_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_62AssignVariableOp,assignvariableop_62_adam_block6_conv1_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_63AssignVariableOp.assignvariableop_63_adam_block6_conv2_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_64AssignVariableOp,assignvariableop_64_adam_block6_conv2_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_65AssignVariableOp5assignvariableop_65_adam_block7_conv1_column_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_66AssignVariableOp3assignvariableop_66_adam_block7_conv1_column_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_67AssignVariableOp-assignvariableop_67_adam_conv7_table_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_68AssignVariableOp+assignvariableop_68_adam_conv7_table_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_69AssignVariableOp5assignvariableop_69_adam_block8_conv1_column_kernel_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_70AssignVariableOp3assignvariableop_70_adam_block8_conv1_column_bias_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_71AssignVariableOp.assignvariableop_71_adam_table_output_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_72AssignVariableOp,assignvariableop_72_adam_table_output_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_73AssignVariableOp/assignvariableop_73_adam_column_output_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_74AssignVariableOp-assignvariableop_74_adam_column_output_bias_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_75AssignVariableOp.assignvariableop_75_adam_block6_conv1_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_76AssignVariableOp,assignvariableop_76_adam_block6_conv1_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_77AssignVariableOp.assignvariableop_77_adam_block6_conv2_kernel_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_78AssignVariableOp,assignvariableop_78_adam_block6_conv2_bias_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_79AssignVariableOp5assignvariableop_79_adam_block7_conv1_column_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_80AssignVariableOp3assignvariableop_80_adam_block7_conv1_column_bias_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_81AssignVariableOp-assignvariableop_81_adam_conv7_table_kernel_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_82AssignVariableOp+assignvariableop_82_adam_conv7_table_bias_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_83AssignVariableOp5assignvariableop_83_adam_block8_conv1_column_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_84AssignVariableOp3assignvariableop_84_adam_block8_conv1_column_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_85AssignVariableOp.assignvariableop_85_adam_table_output_kernel_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_86AssignVariableOp,assignvariableop_86_adam_table_output_bias_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_87AssignVariableOp/assignvariableop_87_adam_column_output_kernel_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_88AssignVariableOp-assignvariableop_88_adam_column_output_bias_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ї
Identity_89Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_90IdentityIdentity_89:output:0^NoOp_1*
T0*
_output_shapes
: т
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_90Identity_90:output:0*╔
_input_shapes╖
┤: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
С
e
I__inference_up_sampling2d_layer_call_and_return_conditional_losses_779231

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
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
П
c
G__inference_block3_pool_layer_call_and_return_conditional_losses_778178

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
а
Д
H__inference_block2_conv2_layer_call_and_return_conditional_losses_778275

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ь
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0А
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА[
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:         АААl
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:         АААw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         ААА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:         ААА
 
_user_specified_nameinputs
У
g
K__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_779345

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
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
Ф
Д
H__inference_block6_conv2_layer_call_and_return_conditional_losses_781859

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ы
Л
O__inference_block7_conv1_column_layer_call_and_return_conditional_losses_781906

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Й
Z
.__inference_concatenate_2_layer_call_fn_782026
inputs_0
inputs_1
identity═
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_2_layer_call_and_return_conditional_losses_779644i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,                           А:         А:l h
B
_output_shapes0
.:,                           А
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:         А
"
_user_specified_name
inputs/1
┴

j
K__inference_block6_dropout1_layer_call_and_return_conditional_losses_781839

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а@m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L?п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         Аx
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         Аr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         Аb
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Э
u
I__inference_concatenate_2_layer_call_and_return_conditional_losses_782033
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :А
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:         А`
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,                           А:         А:l h
B
_output_shapes0
.:,                           А
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:         А
"
_user_specified_name
inputs/1
В
i
K__inference_block6_dropout2_layer_call_and_return_conditional_losses_779575

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
У
Д
H__inference_block5_conv4_layer_call_and_return_conditional_losses_782605

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
У
Г
G__inference_conv7_table_layer_call_and_return_conditional_losses_781953

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╝√
ч0
!__inference__wrapped_model_778145	
inputU
;tablenet_vgg_19_block1_conv1_conv2d_readvariableop_resource:@J
<tablenet_vgg_19_block1_conv1_biasadd_readvariableop_resource:@U
;tablenet_vgg_19_block1_conv2_conv2d_readvariableop_resource:@@J
<tablenet_vgg_19_block1_conv2_biasadd_readvariableop_resource:@V
;tablenet_vgg_19_block2_conv1_conv2d_readvariableop_resource:@АK
<tablenet_vgg_19_block2_conv1_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block2_conv2_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block2_conv2_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block3_conv1_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block3_conv1_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block3_conv2_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block3_conv2_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block3_conv3_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block3_conv3_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block3_conv4_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block3_conv4_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block4_conv1_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block4_conv1_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block4_conv2_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block4_conv2_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block4_conv3_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block4_conv3_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block4_conv4_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block4_conv4_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block5_conv1_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block5_conv1_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block5_conv2_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block5_conv2_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block5_conv3_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block5_conv3_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block5_conv4_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block5_conv4_biasadd_readvariableop_resource:	АP
4tablenet_block6_conv1_conv2d_readvariableop_resource:ААD
5tablenet_block6_conv1_biasadd_readvariableop_resource:	АP
4tablenet_block6_conv2_conv2d_readvariableop_resource:ААD
5tablenet_block6_conv2_biasadd_readvariableop_resource:	АW
;tablenet_block7_conv1_column_conv2d_readvariableop_resource:ААK
<tablenet_block7_conv1_column_biasadd_readvariableop_resource:	АW
;tablenet_block8_conv1_column_conv2d_readvariableop_resource:ААK
<tablenet_block8_conv1_column_biasadd_readvariableop_resource:	АO
3tablenet_conv7_table_conv2d_readvariableop_resource:ААC
4tablenet_conv7_table_biasadd_readvariableop_resource:	АZ
?tablenet_column_output_conv2d_transpose_readvariableop_resource:А
D
6tablenet_column_output_biasadd_readvariableop_resource:Y
>tablenet_table_output_conv2d_transpose_readvariableop_resource:А
C
5tablenet_table_output_biasadd_readvariableop_resource:
identity

identity_1Ив3tablenet/VGG-19/block1_conv1/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block1_conv1/Conv2D/ReadVariableOpв3tablenet/VGG-19/block1_conv2/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block1_conv2/Conv2D/ReadVariableOpв3tablenet/VGG-19/block2_conv1/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block2_conv1/Conv2D/ReadVariableOpв3tablenet/VGG-19/block2_conv2/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block2_conv2/Conv2D/ReadVariableOpв3tablenet/VGG-19/block3_conv1/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block3_conv1/Conv2D/ReadVariableOpв3tablenet/VGG-19/block3_conv2/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block3_conv2/Conv2D/ReadVariableOpв3tablenet/VGG-19/block3_conv3/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block3_conv3/Conv2D/ReadVariableOpв3tablenet/VGG-19/block3_conv4/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block3_conv4/Conv2D/ReadVariableOpв3tablenet/VGG-19/block4_conv1/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block4_conv1/Conv2D/ReadVariableOpв3tablenet/VGG-19/block4_conv2/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block4_conv2/Conv2D/ReadVariableOpв3tablenet/VGG-19/block4_conv3/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block4_conv3/Conv2D/ReadVariableOpв3tablenet/VGG-19/block4_conv4/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block4_conv4/Conv2D/ReadVariableOpв3tablenet/VGG-19/block5_conv1/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block5_conv1/Conv2D/ReadVariableOpв3tablenet/VGG-19/block5_conv2/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block5_conv2/Conv2D/ReadVariableOpв3tablenet/VGG-19/block5_conv3/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block5_conv3/Conv2D/ReadVariableOpв3tablenet/VGG-19/block5_conv4/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block5_conv4/Conv2D/ReadVariableOpв,tablenet/block6_conv1/BiasAdd/ReadVariableOpв+tablenet/block6_conv1/Conv2D/ReadVariableOpв,tablenet/block6_conv2/BiasAdd/ReadVariableOpв+tablenet/block6_conv2/Conv2D/ReadVariableOpв3tablenet/block7_conv1_column/BiasAdd/ReadVariableOpв2tablenet/block7_conv1_column/Conv2D/ReadVariableOpв3tablenet/block8_conv1_column/BiasAdd/ReadVariableOpв2tablenet/block8_conv1_column/Conv2D/ReadVariableOpв-tablenet/column_output/BiasAdd/ReadVariableOpв6tablenet/column_output/conv2d_transpose/ReadVariableOpв+tablenet/conv7_table/BiasAdd/ReadVariableOpв*tablenet/conv7_table/Conv2D/ReadVariableOpв,tablenet/table_output/BiasAdd/ReadVariableOpв5tablenet/table_output/conv2d_transpose/ReadVariableOp╢
2tablenet/VGG-19/block1_conv1/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0╘
#tablenet/VGG-19/block1_conv1/Conv2DConv2Dinput:tablenet/VGG-19/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
м
3tablenet/VGG-19/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╓
$tablenet/VGG-19/block1_conv1/BiasAddBiasAdd,tablenet/VGG-19/block1_conv1/Conv2D:output:0;tablenet/VGG-19/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@Ф
!tablenet/VGG-19/block1_conv1/ReluRelu-tablenet/VGG-19/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:         АА@╢
2tablenet/VGG-19/block1_conv2/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0■
#tablenet/VGG-19/block1_conv2/Conv2DConv2D/tablenet/VGG-19/block1_conv1/Relu:activations:0:tablenet/VGG-19/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
м
3tablenet/VGG-19/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╓
$tablenet/VGG-19/block1_conv2/BiasAddBiasAdd,tablenet/VGG-19/block1_conv2/Conv2D:output:0;tablenet/VGG-19/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@Ф
!tablenet/VGG-19/block1_conv2/ReluRelu-tablenet/VGG-19/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:         АА@╬
#tablenet/VGG-19/block1_pool/MaxPoolMaxPool/tablenet/VGG-19/block1_conv2/Relu:activations:0*1
_output_shapes
:         АА@*
ksize
*
paddingVALID*
strides
╖
2tablenet/VGG-19/block2_conv1/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0№
#tablenet/VGG-19/block2_conv1/Conv2DConv2D,tablenet/VGG-19/block1_pool/MaxPool:output:0:tablenet/VGG-19/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
н
3tablenet/VGG-19/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╫
$tablenet/VGG-19/block2_conv1/BiasAddBiasAdd,tablenet/VGG-19/block2_conv1/Conv2D:output:0;tablenet/VGG-19/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         АААХ
!tablenet/VGG-19/block2_conv1/ReluRelu-tablenet/VGG-19/block2_conv1/BiasAdd:output:0*
T0*2
_output_shapes 
:         ААА╕
2tablenet/VGG-19/block2_conv2/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0 
#tablenet/VGG-19/block2_conv2/Conv2DConv2D/tablenet/VGG-19/block2_conv1/Relu:activations:0:tablenet/VGG-19/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
н
3tablenet/VGG-19/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╫
$tablenet/VGG-19/block2_conv2/BiasAddBiasAdd,tablenet/VGG-19/block2_conv2/Conv2D:output:0;tablenet/VGG-19/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         АААХ
!tablenet/VGG-19/block2_conv2/ReluRelu-tablenet/VGG-19/block2_conv2/BiasAdd:output:0*
T0*2
_output_shapes 
:         ААА═
#tablenet/VGG-19/block2_pool/MaxPoolMaxPool/tablenet/VGG-19/block2_conv2/Relu:activations:0*0
_output_shapes
:         @@А*
ksize
*
paddingVALID*
strides
╕
2tablenet/VGG-19/block3_conv1/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0·
#tablenet/VGG-19/block3_conv1/Conv2DConv2D,tablenet/VGG-19/block2_pool/MaxPool:output:0:tablenet/VGG-19/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
н
3tablenet/VGG-19/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/VGG-19/block3_conv1/BiasAddBiasAdd,tablenet/VGG-19/block3_conv1/Conv2D:output:0;tablenet/VGG-19/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АУ
!tablenet/VGG-19/block3_conv1/ReluRelu-tablenet/VGG-19/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         @@А╕
2tablenet/VGG-19/block3_conv2/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0¤
#tablenet/VGG-19/block3_conv2/Conv2DConv2D/tablenet/VGG-19/block3_conv1/Relu:activations:0:tablenet/VGG-19/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
н
3tablenet/VGG-19/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/VGG-19/block3_conv2/BiasAddBiasAdd,tablenet/VGG-19/block3_conv2/Conv2D:output:0;tablenet/VGG-19/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АУ
!tablenet/VGG-19/block3_conv2/ReluRelu-tablenet/VGG-19/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         @@А╕
2tablenet/VGG-19/block3_conv3/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0¤
#tablenet/VGG-19/block3_conv3/Conv2DConv2D/tablenet/VGG-19/block3_conv2/Relu:activations:0:tablenet/VGG-19/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
н
3tablenet/VGG-19/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/VGG-19/block3_conv3/BiasAddBiasAdd,tablenet/VGG-19/block3_conv3/Conv2D:output:0;tablenet/VGG-19/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АУ
!tablenet/VGG-19/block3_conv3/ReluRelu-tablenet/VGG-19/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         @@А╕
2tablenet/VGG-19/block3_conv4/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0¤
#tablenet/VGG-19/block3_conv4/Conv2DConv2D/tablenet/VGG-19/block3_conv3/Relu:activations:0:tablenet/VGG-19/block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
н
3tablenet/VGG-19/block3_conv4/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/VGG-19/block3_conv4/BiasAddBiasAdd,tablenet/VGG-19/block3_conv4/Conv2D:output:0;tablenet/VGG-19/block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АУ
!tablenet/VGG-19/block3_conv4/ReluRelu-tablenet/VGG-19/block3_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:         @@А═
#tablenet/VGG-19/block3_pool/MaxPoolMaxPool/tablenet/VGG-19/block3_conv4/Relu:activations:0*0
_output_shapes
:           А*
ksize
*
paddingVALID*
strides
╕
2tablenet/VGG-19/block4_conv1/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0·
#tablenet/VGG-19/block4_conv1/Conv2DConv2D,tablenet/VGG-19/block3_pool/MaxPool:output:0:tablenet/VGG-19/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
н
3tablenet/VGG-19/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/VGG-19/block4_conv1/BiasAddBiasAdd,tablenet/VGG-19/block4_conv1/Conv2D:output:0;tablenet/VGG-19/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АУ
!tablenet/VGG-19/block4_conv1/ReluRelu-tablenet/VGG-19/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:           А╕
2tablenet/VGG-19/block4_conv2/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0¤
#tablenet/VGG-19/block4_conv2/Conv2DConv2D/tablenet/VGG-19/block4_conv1/Relu:activations:0:tablenet/VGG-19/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
н
3tablenet/VGG-19/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/VGG-19/block4_conv2/BiasAddBiasAdd,tablenet/VGG-19/block4_conv2/Conv2D:output:0;tablenet/VGG-19/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АУ
!tablenet/VGG-19/block4_conv2/ReluRelu-tablenet/VGG-19/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:           А╕
2tablenet/VGG-19/block4_conv3/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0¤
#tablenet/VGG-19/block4_conv3/Conv2DConv2D/tablenet/VGG-19/block4_conv2/Relu:activations:0:tablenet/VGG-19/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
н
3tablenet/VGG-19/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/VGG-19/block4_conv3/BiasAddBiasAdd,tablenet/VGG-19/block4_conv3/Conv2D:output:0;tablenet/VGG-19/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АУ
!tablenet/VGG-19/block4_conv3/ReluRelu-tablenet/VGG-19/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:           А╕
2tablenet/VGG-19/block4_conv4/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0¤
#tablenet/VGG-19/block4_conv4/Conv2DConv2D/tablenet/VGG-19/block4_conv3/Relu:activations:0:tablenet/VGG-19/block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
н
3tablenet/VGG-19/block4_conv4/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/VGG-19/block4_conv4/BiasAddBiasAdd,tablenet/VGG-19/block4_conv4/Conv2D:output:0;tablenet/VGG-19/block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АУ
!tablenet/VGG-19/block4_conv4/ReluRelu-tablenet/VGG-19/block4_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:           А═
#tablenet/VGG-19/block4_pool/MaxPoolMaxPool/tablenet/VGG-19/block4_conv4/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
╕
2tablenet/VGG-19/block5_conv1/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0·
#tablenet/VGG-19/block5_conv1/Conv2DConv2D,tablenet/VGG-19/block4_pool/MaxPool:output:0:tablenet/VGG-19/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
н
3tablenet/VGG-19/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/VGG-19/block5_conv1/BiasAddBiasAdd,tablenet/VGG-19/block5_conv1/Conv2D:output:0;tablenet/VGG-19/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АУ
!tablenet/VGG-19/block5_conv1/ReluRelu-tablenet/VGG-19/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         А╕
2tablenet/VGG-19/block5_conv2/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0¤
#tablenet/VGG-19/block5_conv2/Conv2DConv2D/tablenet/VGG-19/block5_conv1/Relu:activations:0:tablenet/VGG-19/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
н
3tablenet/VGG-19/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/VGG-19/block5_conv2/BiasAddBiasAdd,tablenet/VGG-19/block5_conv2/Conv2D:output:0;tablenet/VGG-19/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АУ
!tablenet/VGG-19/block5_conv2/ReluRelu-tablenet/VGG-19/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         А╕
2tablenet/VGG-19/block5_conv3/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0¤
#tablenet/VGG-19/block5_conv3/Conv2DConv2D/tablenet/VGG-19/block5_conv2/Relu:activations:0:tablenet/VGG-19/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
н
3tablenet/VGG-19/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/VGG-19/block5_conv3/BiasAddBiasAdd,tablenet/VGG-19/block5_conv3/Conv2D:output:0;tablenet/VGG-19/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АУ
!tablenet/VGG-19/block5_conv3/ReluRelu-tablenet/VGG-19/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         А╕
2tablenet/VGG-19/block5_conv4/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0¤
#tablenet/VGG-19/block5_conv4/Conv2DConv2D/tablenet/VGG-19/block5_conv3/Relu:activations:0:tablenet/VGG-19/block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
н
3tablenet/VGG-19/block5_conv4/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/VGG-19/block5_conv4/BiasAddBiasAdd,tablenet/VGG-19/block5_conv4/Conv2D:output:0;tablenet/VGG-19/block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АУ
!tablenet/VGG-19/block5_conv4/ReluRelu-tablenet/VGG-19/block5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:         А═
#tablenet/VGG-19/block5_pool/MaxPoolMaxPool/tablenet/VGG-19/block5_conv4/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
к
+tablenet/block6_conv1/Conv2D/ReadVariableOpReadVariableOp4tablenet_block6_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0э
tablenet/block6_conv1/Conv2DConv2D,tablenet/VGG-19/block5_pool/MaxPool:output:03tablenet/block6_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Я
,tablenet/block6_conv1/BiasAdd/ReadVariableOpReadVariableOp5tablenet_block6_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0└
tablenet/block6_conv1/BiasAddBiasAdd%tablenet/block6_conv1/Conv2D:output:04tablenet/block6_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЕ
tablenet/block6_conv1/ReluRelu&tablenet/block6_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         АТ
!tablenet/block6_dropout1/IdentityIdentity(tablenet/block6_conv1/Relu:activations:0*
T0*0
_output_shapes
:         Ак
+tablenet/block6_conv2/Conv2D/ReadVariableOpReadVariableOp4tablenet_block6_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ы
tablenet/block6_conv2/Conv2DConv2D*tablenet/block6_dropout1/Identity:output:03tablenet/block6_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Я
,tablenet/block6_conv2/BiasAdd/ReadVariableOpReadVariableOp5tablenet_block6_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0└
tablenet/block6_conv2/BiasAddBiasAdd%tablenet/block6_conv2/Conv2D:output:04tablenet/block6_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЕ
tablenet/block6_conv2/ReluRelu&tablenet/block6_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         АТ
!tablenet/block6_dropout2/IdentityIdentity(tablenet/block6_conv2/Relu:activations:0*
T0*0
_output_shapes
:         А╕
2tablenet/block7_conv1_column/Conv2D/ReadVariableOpReadVariableOp;tablenet_block7_conv1_column_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0∙
#tablenet/block7_conv1_column/Conv2DConv2D*tablenet/block6_dropout2/Identity:output:0:tablenet/block7_conv1_column/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
н
3tablenet/block7_conv1_column/BiasAdd/ReadVariableOpReadVariableOp<tablenet_block7_conv1_column_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/block7_conv1_column/BiasAddBiasAdd,tablenet/block7_conv1_column/Conv2D:output:0;tablenet/block7_conv1_column/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АУ
!tablenet/block7_conv1_column/ReluRelu-tablenet/block7_conv1_column/BiasAdd:output:0*
T0*0
_output_shapes
:         АЯ
'tablenet/block7_dropout_column/IdentityIdentity/tablenet/block7_conv1_column/Relu:activations:0*
T0*0
_output_shapes
:         А╕
2tablenet/block8_conv1_column/Conv2D/ReadVariableOpReadVariableOp;tablenet_block8_conv1_column_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0 
#tablenet/block8_conv1_column/Conv2DConv2D0tablenet/block7_dropout_column/Identity:output:0:tablenet/block8_conv1_column/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
н
3tablenet/block8_conv1_column/BiasAdd/ReadVariableOpReadVariableOp<tablenet_block8_conv1_column_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/block8_conv1_column/BiasAddBiasAdd,tablenet/block8_conv1_column/Conv2D:output:0;tablenet/block8_conv1_column/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АУ
!tablenet/block8_conv1_column/ReluRelu-tablenet/block8_conv1_column/BiasAdd:output:0*
T0*0
_output_shapes
:         Аи
*tablenet/conv7_table/Conv2D/ReadVariableOpReadVariableOp3tablenet_conv7_table_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0щ
tablenet/conv7_table/Conv2DConv2D*tablenet/block6_dropout2/Identity:output:02tablenet/conv7_table/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Э
+tablenet/conv7_table/BiasAdd/ReadVariableOpReadVariableOp4tablenet_conv7_table_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╜
tablenet/conv7_table/BiasAddBiasAdd$tablenet/conv7_table/Conv2D:output:03tablenet/conv7_table/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АГ
tablenet/conv7_table/ReluRelu%tablenet/conv7_table/BiasAdd:output:0*
T0*0
_output_shapes
:         Аo
tablenet/up_sampling2d_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"      q
 tablenet/up_sampling2d_4/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ь
tablenet/up_sampling2d_4/mulMul'tablenet/up_sampling2d_4/Const:output:0)tablenet/up_sampling2d_4/Const_1:output:0*
T0*
_output_shapes
:Ў
5tablenet/up_sampling2d_4/resize/ResizeNearestNeighborResizeNearestNeighbor/tablenet/block8_conv1_column/Relu:activations:0 tablenet/up_sampling2d_4/mul:z:0*
T0*0
_output_shapes
:         А*
half_pixel_centers(m
tablenet/up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      o
tablenet/up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ц
tablenet/up_sampling2d/mulMul%tablenet/up_sampling2d/Const:output:0'tablenet/up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:ъ
3tablenet/up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighbor'tablenet/conv7_table/Relu:activations:0tablenet/up_sampling2d/mul:z:0*
T0*0
_output_shapes
:         А*
half_pixel_centers(d
"tablenet/concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Р
tablenet/concatenate_2/concatConcatV2Ftablenet/up_sampling2d_4/resize/ResizeNearestNeighbor:resized_images:0,tablenet/VGG-19/block4_pool/MaxPool:output:0+tablenet/concatenate_2/concat/axis:output:0*
N*
T0*0
_output_shapes
:         Аb
 tablenet/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :К
tablenet/concatenate/concatConcatV2Dtablenet/up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0,tablenet/VGG-19/block4_pool/MaxPool:output:0)tablenet/concatenate/concat/axis:output:0*
N*
T0*0
_output_shapes
:         Аo
tablenet/up_sampling2d_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"      q
 tablenet/up_sampling2d_5/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ь
tablenet/up_sampling2d_5/mulMul'tablenet/up_sampling2d_5/Const:output:0)tablenet/up_sampling2d_5/Const_1:output:0*
T0*
_output_shapes
:э
5tablenet/up_sampling2d_5/resize/ResizeNearestNeighborResizeNearestNeighbor&tablenet/concatenate_2/concat:output:0 tablenet/up_sampling2d_5/mul:z:0*
T0*0
_output_shapes
:           А*
half_pixel_centers(o
tablenet/up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      q
 tablenet/up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ь
tablenet/up_sampling2d_1/mulMul'tablenet/up_sampling2d_1/Const:output:0)tablenet/up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:ы
5tablenet/up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighbor$tablenet/concatenate/concat:output:0 tablenet/up_sampling2d_1/mul:z:0*
T0*0
_output_shapes
:           А*
half_pixel_centers(d
"tablenet/concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Р
tablenet/concatenate_3/concatConcatV2Ftablenet/up_sampling2d_5/resize/ResizeNearestNeighbor:resized_images:0,tablenet/VGG-19/block3_pool/MaxPool:output:0+tablenet/concatenate_3/concat/axis:output:0*
N*
T0*0
_output_shapes
:           А
d
"tablenet/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Р
tablenet/concatenate_1/concatConcatV2Ftablenet/up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0,tablenet/VGG-19/block3_pool/MaxPool:output:0+tablenet/concatenate_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:           А
o
tablenet/up_sampling2d_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"        q
 tablenet/up_sampling2d_6/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ь
tablenet/up_sampling2d_6/mulMul'tablenet/up_sampling2d_6/Const:output:0)tablenet/up_sampling2d_6/Const_1:output:0*
T0*
_output_shapes
:э
5tablenet/up_sampling2d_6/resize/ResizeNearestNeighborResizeNearestNeighbor&tablenet/concatenate_3/concat:output:0 tablenet/up_sampling2d_6/mul:z:0*
T0*0
_output_shapes
:         @@А
*
half_pixel_centers(o
tablenet/up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"        q
 tablenet/up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ь
tablenet/up_sampling2d_2/mulMul'tablenet/up_sampling2d_2/Const:output:0)tablenet/up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:э
5tablenet/up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighbor&tablenet/concatenate_1/concat:output:0 tablenet/up_sampling2d_2/mul:z:0*
T0*0
_output_shapes
:         @@А
*
half_pixel_centers(o
tablenet/up_sampling2d_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   q
 tablenet/up_sampling2d_7/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ь
tablenet/up_sampling2d_7/mulMul'tablenet/up_sampling2d_7/Const:output:0)tablenet/up_sampling2d_7/Const_1:output:0*
T0*
_output_shapes
:П
5tablenet/up_sampling2d_7/resize/ResizeNearestNeighborResizeNearestNeighborFtablenet/up_sampling2d_6/resize/ResizeNearestNeighbor:resized_images:0 tablenet/up_sampling2d_7/mul:z:0*
T0*2
_output_shapes 
:         ААА
*
half_pixel_centers(o
tablenet/up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   q
 tablenet/up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ь
tablenet/up_sampling2d_3/mulMul'tablenet/up_sampling2d_3/Const:output:0)tablenet/up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:П
5tablenet/up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighborFtablenet/up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0 tablenet/up_sampling2d_3/mul:z:0*
T0*2
_output_shapes 
:         ААА
*
half_pixel_centers(Т
tablenet/column_output/ShapeShapeFtablenet/up_sampling2d_7/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:t
*tablenet/column_output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,tablenet/column_output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,tablenet/column_output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:─
$tablenet/column_output/strided_sliceStridedSlice%tablenet/column_output/Shape:output:03tablenet/column_output/strided_slice/stack:output:05tablenet/column_output/strided_slice/stack_1:output:05tablenet/column_output/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
tablenet/column_output/stack/1Const*
_output_shapes
: *
dtype0*
value
B :Аa
tablenet/column_output/stack/2Const*
_output_shapes
: *
dtype0*
value
B :А`
tablenet/column_output/stack/3Const*
_output_shapes
: *
dtype0*
value	B :№
tablenet/column_output/stackPack-tablenet/column_output/strided_slice:output:0'tablenet/column_output/stack/1:output:0'tablenet/column_output/stack/2:output:0'tablenet/column_output/stack/3:output:0*
N*
T0*
_output_shapes
:v
,tablenet/column_output/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.tablenet/column_output/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.tablenet/column_output/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╠
&tablenet/column_output/strided_slice_1StridedSlice%tablenet/column_output/stack:output:05tablenet/column_output/strided_slice_1/stack:output:07tablenet/column_output/strided_slice_1/stack_1:output:07tablenet/column_output/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask┐
6tablenet/column_output/conv2d_transpose/ReadVariableOpReadVariableOp?tablenet_column_output_conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype0╤
'tablenet/column_output/conv2d_transposeConv2DBackpropInput%tablenet/column_output/stack:output:0>tablenet/column_output/conv2d_transpose/ReadVariableOp:value:0Ftablenet/up_sampling2d_7/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
а
-tablenet/column_output/BiasAdd/ReadVariableOpReadVariableOp6tablenet_column_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╬
tablenet/column_output/BiasAddBiasAdd0tablenet/column_output/conv2d_transpose:output:05tablenet/column_output/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ААС
tablenet/table_output/ShapeShapeFtablenet/up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:s
)tablenet/table_output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+tablenet/table_output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+tablenet/table_output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
#tablenet/table_output/strided_sliceStridedSlice$tablenet/table_output/Shape:output:02tablenet/table_output/strided_slice/stack:output:04tablenet/table_output/strided_slice/stack_1:output:04tablenet/table_output/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
tablenet/table_output/stack/1Const*
_output_shapes
: *
dtype0*
value
B :А`
tablenet/table_output/stack/2Const*
_output_shapes
: *
dtype0*
value
B :А_
tablenet/table_output/stack/3Const*
_output_shapes
: *
dtype0*
value	B :ў
tablenet/table_output/stackPack,tablenet/table_output/strided_slice:output:0&tablenet/table_output/stack/1:output:0&tablenet/table_output/stack/2:output:0&tablenet/table_output/stack/3:output:0*
N*
T0*
_output_shapes
:u
+tablenet/table_output/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-tablenet/table_output/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-tablenet/table_output/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╟
%tablenet/table_output/strided_slice_1StridedSlice$tablenet/table_output/stack:output:04tablenet/table_output/strided_slice_1/stack:output:06tablenet/table_output/strided_slice_1/stack_1:output:06tablenet/table_output/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╜
5tablenet/table_output/conv2d_transpose/ReadVariableOpReadVariableOp>tablenet_table_output_conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype0╬
&tablenet/table_output/conv2d_transposeConv2DBackpropInput$tablenet/table_output/stack:output:0=tablenet/table_output/conv2d_transpose/ReadVariableOp:value:0Ftablenet/up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
Ю
,tablenet/table_output/BiasAdd/ReadVariableOpReadVariableOp5tablenet_table_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╦
tablenet/table_output/BiasAddBiasAdd/tablenet/table_output/conv2d_transpose:output:04tablenet/table_output/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ААА
IdentityIdentity'tablenet/column_output/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:         ААБ

Identity_1Identity&tablenet/table_output/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:         АА▒
NoOpNoOp4^tablenet/VGG-19/block1_conv1/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block1_conv1/Conv2D/ReadVariableOp4^tablenet/VGG-19/block1_conv2/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block1_conv2/Conv2D/ReadVariableOp4^tablenet/VGG-19/block2_conv1/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block2_conv1/Conv2D/ReadVariableOp4^tablenet/VGG-19/block2_conv2/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block2_conv2/Conv2D/ReadVariableOp4^tablenet/VGG-19/block3_conv1/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block3_conv1/Conv2D/ReadVariableOp4^tablenet/VGG-19/block3_conv2/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block3_conv2/Conv2D/ReadVariableOp4^tablenet/VGG-19/block3_conv3/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block3_conv3/Conv2D/ReadVariableOp4^tablenet/VGG-19/block3_conv4/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block3_conv4/Conv2D/ReadVariableOp4^tablenet/VGG-19/block4_conv1/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block4_conv1/Conv2D/ReadVariableOp4^tablenet/VGG-19/block4_conv2/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block4_conv2/Conv2D/ReadVariableOp4^tablenet/VGG-19/block4_conv3/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block4_conv3/Conv2D/ReadVariableOp4^tablenet/VGG-19/block4_conv4/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block4_conv4/Conv2D/ReadVariableOp4^tablenet/VGG-19/block5_conv1/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block5_conv1/Conv2D/ReadVariableOp4^tablenet/VGG-19/block5_conv2/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block5_conv2/Conv2D/ReadVariableOp4^tablenet/VGG-19/block5_conv3/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block5_conv3/Conv2D/ReadVariableOp4^tablenet/VGG-19/block5_conv4/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block5_conv4/Conv2D/ReadVariableOp-^tablenet/block6_conv1/BiasAdd/ReadVariableOp,^tablenet/block6_conv1/Conv2D/ReadVariableOp-^tablenet/block6_conv2/BiasAdd/ReadVariableOp,^tablenet/block6_conv2/Conv2D/ReadVariableOp4^tablenet/block7_conv1_column/BiasAdd/ReadVariableOp3^tablenet/block7_conv1_column/Conv2D/ReadVariableOp4^tablenet/block8_conv1_column/BiasAdd/ReadVariableOp3^tablenet/block8_conv1_column/Conv2D/ReadVariableOp.^tablenet/column_output/BiasAdd/ReadVariableOp7^tablenet/column_output/conv2d_transpose/ReadVariableOp,^tablenet/conv7_table/BiasAdd/ReadVariableOp+^tablenet/conv7_table/Conv2D/ReadVariableOp-^tablenet/table_output/BiasAdd/ReadVariableOp6^tablenet/table_output/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2j
3tablenet/VGG-19/block1_conv1/BiasAdd/ReadVariableOp3tablenet/VGG-19/block1_conv1/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block1_conv1/Conv2D/ReadVariableOp2tablenet/VGG-19/block1_conv1/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block1_conv2/BiasAdd/ReadVariableOp3tablenet/VGG-19/block1_conv2/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block1_conv2/Conv2D/ReadVariableOp2tablenet/VGG-19/block1_conv2/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block2_conv1/BiasAdd/ReadVariableOp3tablenet/VGG-19/block2_conv1/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block2_conv1/Conv2D/ReadVariableOp2tablenet/VGG-19/block2_conv1/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block2_conv2/BiasAdd/ReadVariableOp3tablenet/VGG-19/block2_conv2/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block2_conv2/Conv2D/ReadVariableOp2tablenet/VGG-19/block2_conv2/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block3_conv1/BiasAdd/ReadVariableOp3tablenet/VGG-19/block3_conv1/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block3_conv1/Conv2D/ReadVariableOp2tablenet/VGG-19/block3_conv1/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block3_conv2/BiasAdd/ReadVariableOp3tablenet/VGG-19/block3_conv2/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block3_conv2/Conv2D/ReadVariableOp2tablenet/VGG-19/block3_conv2/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block3_conv3/BiasAdd/ReadVariableOp3tablenet/VGG-19/block3_conv3/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block3_conv3/Conv2D/ReadVariableOp2tablenet/VGG-19/block3_conv3/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block3_conv4/BiasAdd/ReadVariableOp3tablenet/VGG-19/block3_conv4/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block3_conv4/Conv2D/ReadVariableOp2tablenet/VGG-19/block3_conv4/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block4_conv1/BiasAdd/ReadVariableOp3tablenet/VGG-19/block4_conv1/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block4_conv1/Conv2D/ReadVariableOp2tablenet/VGG-19/block4_conv1/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block4_conv2/BiasAdd/ReadVariableOp3tablenet/VGG-19/block4_conv2/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block4_conv2/Conv2D/ReadVariableOp2tablenet/VGG-19/block4_conv2/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block4_conv3/BiasAdd/ReadVariableOp3tablenet/VGG-19/block4_conv3/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block4_conv3/Conv2D/ReadVariableOp2tablenet/VGG-19/block4_conv3/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block4_conv4/BiasAdd/ReadVariableOp3tablenet/VGG-19/block4_conv4/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block4_conv4/Conv2D/ReadVariableOp2tablenet/VGG-19/block4_conv4/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block5_conv1/BiasAdd/ReadVariableOp3tablenet/VGG-19/block5_conv1/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block5_conv1/Conv2D/ReadVariableOp2tablenet/VGG-19/block5_conv1/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block5_conv2/BiasAdd/ReadVariableOp3tablenet/VGG-19/block5_conv2/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block5_conv2/Conv2D/ReadVariableOp2tablenet/VGG-19/block5_conv2/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block5_conv3/BiasAdd/ReadVariableOp3tablenet/VGG-19/block5_conv3/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block5_conv3/Conv2D/ReadVariableOp2tablenet/VGG-19/block5_conv3/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block5_conv4/BiasAdd/ReadVariableOp3tablenet/VGG-19/block5_conv4/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block5_conv4/Conv2D/ReadVariableOp2tablenet/VGG-19/block5_conv4/Conv2D/ReadVariableOp2\
,tablenet/block6_conv1/BiasAdd/ReadVariableOp,tablenet/block6_conv1/BiasAdd/ReadVariableOp2Z
+tablenet/block6_conv1/Conv2D/ReadVariableOp+tablenet/block6_conv1/Conv2D/ReadVariableOp2\
,tablenet/block6_conv2/BiasAdd/ReadVariableOp,tablenet/block6_conv2/BiasAdd/ReadVariableOp2Z
+tablenet/block6_conv2/Conv2D/ReadVariableOp+tablenet/block6_conv2/Conv2D/ReadVariableOp2j
3tablenet/block7_conv1_column/BiasAdd/ReadVariableOp3tablenet/block7_conv1_column/BiasAdd/ReadVariableOp2h
2tablenet/block7_conv1_column/Conv2D/ReadVariableOp2tablenet/block7_conv1_column/Conv2D/ReadVariableOp2j
3tablenet/block8_conv1_column/BiasAdd/ReadVariableOp3tablenet/block8_conv1_column/BiasAdd/ReadVariableOp2h
2tablenet/block8_conv1_column/Conv2D/ReadVariableOp2tablenet/block8_conv1_column/Conv2D/ReadVariableOp2^
-tablenet/column_output/BiasAdd/ReadVariableOp-tablenet/column_output/BiasAdd/ReadVariableOp2p
6tablenet/column_output/conv2d_transpose/ReadVariableOp6tablenet/column_output/conv2d_transpose/ReadVariableOp2Z
+tablenet/conv7_table/BiasAdd/ReadVariableOp+tablenet/conv7_table/BiasAdd/ReadVariableOp2X
*tablenet/conv7_table/Conv2D/ReadVariableOp*tablenet/conv7_table/Conv2D/ReadVariableOp2\
,tablenet/table_output/BiasAdd/ReadVariableOp,tablenet/table_output/BiasAdd/ReadVariableOp2n
5tablenet/table_output/conv2d_transpose/ReadVariableOp5tablenet/table_output/conv2d_transpose/ReadVariableOp:X T
1
_output_shapes
:         АА

_user_specified_nameinput
№
е
-__inference_block4_conv2_layer_call_fn_782464

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block4_conv2_layer_call_and_return_conditional_losses_778379x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :           А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
¤
в
-__inference_block1_conv1_layer_call_fn_782254

inputs!
unknown:@
	unknown_0:@
identityИвStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block1_conv1_layer_call_and_return_conditional_losses_778223y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         АА@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
├
д
.__inference_column_output_layer_call_fn_782212

inputs"
unknown:А

	unknown_0:
identityИвStatefulPartitionedCall√
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_column_output_layer_call_and_return_conditional_losses_779448Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А
: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А

 
_user_specified_nameinputs
У
Д
H__inference_block3_conv1_layer_call_and_return_conditional_losses_782365

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         @@Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         @@Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         @@А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         @@А
 
_user_specified_nameinputs
Б
┘
$__inference_signature_wrapper_780705	
input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А&

unknown_25:АА

unknown_26:	А&

unknown_27:АА

unknown_28:	А&

unknown_29:АА

unknown_30:	А&

unknown_31:АА

unknown_32:	А&

unknown_33:АА

unknown_34:	А&

unknown_35:АА

unknown_36:	А&

unknown_37:АА

unknown_38:	А&

unknown_39:АА

unknown_40:	А%

unknown_41:А


unknown_42:%

unknown_43:А


unknown_44:
identity

identity_1ИвStatefulPartitionedCall┐
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::         АА:         АА*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_778145y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         АА{

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:         АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
1
_output_shapes
:         АА

_user_specified_nameinput
Б
д
-__inference_block2_conv1_layer_call_fn_782304

inputs"
unknown:@А
	unknown_0:	А
identityИвStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ААА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block2_conv1_layer_call_and_return_conditional_losses_778258z
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*2
_output_shapes 
:         ААА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА@
 
_user_specified_nameinputs
╟

p
Q__inference_block7_dropout_column_layer_call_and_return_conditional_losses_779856

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а@m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L?п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         Аx
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         Аr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         Аb
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ф
s
I__inference_concatenate_1_layer_call_and_return_conditional_losses_779673

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :~
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:           А
`
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:           А
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,                           А:           А:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:XT
0
_output_shapes
:           А
 
_user_specified_nameinputs
Ф
Д
H__inference_block6_conv1_layer_call_and_return_conditional_losses_781812

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╗
L
0__inference_up_sampling2d_2_layer_call_fn_782098

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
K__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_779307Г
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
тl
з
D__inference_tablenet_layer_call_and_return_conditional_losses_779691

inputs'
vgg_19_779462:@
vgg_19_779464:@'
vgg_19_779466:@@
vgg_19_779468:@(
vgg_19_779470:@А
vgg_19_779472:	А)
vgg_19_779474:АА
vgg_19_779476:	А)
vgg_19_779478:АА
vgg_19_779480:	А)
vgg_19_779482:АА
vgg_19_779484:	А)
vgg_19_779486:АА
vgg_19_779488:	А)
vgg_19_779490:АА
vgg_19_779492:	А)
vgg_19_779494:АА
vgg_19_779496:	А)
vgg_19_779498:АА
vgg_19_779500:	А)
vgg_19_779502:АА
vgg_19_779504:	А)
vgg_19_779506:АА
vgg_19_779508:	А)
vgg_19_779510:АА
vgg_19_779512:	А)
vgg_19_779514:АА
vgg_19_779516:	А)
vgg_19_779518:АА
vgg_19_779520:	А)
vgg_19_779522:АА
vgg_19_779524:	А/
block6_conv1_779541:АА"
block6_conv1_779543:	А/
block6_conv2_779565:АА"
block6_conv2_779567:	А6
block7_conv1_column_779589:АА)
block7_conv1_column_779591:	А6
block8_conv1_column_779613:АА)
block8_conv1_column_779615:	А.
conv7_table_779630:АА!
conv7_table_779632:	А/
column_output_779679:А
"
column_output_779681:.
table_output_779684:А
!
table_output_779686:
identity

identity_1ИвVGG-19/StatefulPartitionedCallв$block6_conv1/StatefulPartitionedCallв$block6_conv2/StatefulPartitionedCallв+block7_conv1_column/StatefulPartitionedCallв+block8_conv1_column/StatefulPartitionedCallв%column_output/StatefulPartitionedCallв#conv7_table/StatefulPartitionedCallв$table_output/StatefulPartitionedCallм
VGG-19/StatefulPartitionedCallStatefulPartitionedCallinputsvgg_19_779462vgg_19_779464vgg_19_779466vgg_19_779468vgg_19_779470vgg_19_779472vgg_19_779474vgg_19_779476vgg_19_779478vgg_19_779480vgg_19_779482vgg_19_779484vgg_19_779486vgg_19_779488vgg_19_779490vgg_19_779492vgg_19_779494vgg_19_779496vgg_19_779498vgg_19_779500vgg_19_779502vgg_19_779504vgg_19_779506vgg_19_779508vgg_19_779510vgg_19_779512vgg_19_779514vgg_19_779516vgg_19_779518vgg_19_779520vgg_19_779522vgg_19_779524*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:           А:         А:         А*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_VGG-19_layer_call_and_return_conditional_losses_778492н
$block6_conv1/StatefulPartitionedCallStatefulPartitionedCall'VGG-19/StatefulPartitionedCall:output:2block6_conv1_779541block6_conv1_779543*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block6_conv1_layer_call_and_return_conditional_losses_779540∙
block6_dropout1/PartitionedCallPartitionedCall-block6_conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_block6_dropout1_layer_call_and_return_conditional_losses_779551о
$block6_conv2/StatefulPartitionedCallStatefulPartitionedCall(block6_dropout1/PartitionedCall:output:0block6_conv2_779565block6_conv2_779567*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block6_conv2_layer_call_and_return_conditional_losses_779564∙
block6_dropout2/PartitionedCallPartitionedCall-block6_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_block6_dropout2_layer_call_and_return_conditional_losses_779575╩
+block7_conv1_column/StatefulPartitionedCallStatefulPartitionedCall(block6_dropout2/PartitionedCall:output:0block7_conv1_column_779589block7_conv1_column_779591*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_block7_conv1_column_layer_call_and_return_conditional_losses_779588М
%block7_dropout_column/PartitionedCallPartitionedCall4block7_conv1_column/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_block7_dropout_column_layer_call_and_return_conditional_losses_779599╨
+block8_conv1_column/StatefulPartitionedCallStatefulPartitionedCall.block7_dropout_column/PartitionedCall:output:0block8_conv1_column_779613block8_conv1_column_779615*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_block8_conv1_column_layer_call_and_return_conditional_losses_779612к
#conv7_table/StatefulPartitionedCallStatefulPartitionedCall(block6_dropout2/PartitionedCall:output:0conv7_table_779630conv7_table_779632*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv7_table_layer_call_and_return_conditional_losses_779629Т
up_sampling2d_4/PartitionedCallPartitionedCall4block8_conv1_column/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_779250Ж
up_sampling2d/PartitionedCallPartitionedCall,conv7_table/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_layer_call_and_return_conditional_losses_779231Ъ
concatenate_2/PartitionedCallPartitionedCall(up_sampling2d_4/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_2_layer_call_and_return_conditional_losses_779644Ф
concatenate/PartitionedCallPartitionedCall&up_sampling2d/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_779653Д
up_sampling2d_5/PartitionedCallPartitionedCall&concatenate_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_779288В
up_sampling2d_1/PartitionedCallPartitionedCall$concatenate/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_779269Ъ
concatenate_3/PartitionedCallPartitionedCall(up_sampling2d_5/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_3_layer_call_and_return_conditional_losses_779664Ъ
concatenate_1/PartitionedCallPartitionedCall(up_sampling2d_1/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_779673Д
up_sampling2d_6/PartitionedCallPartitionedCall&concatenate_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_779326Д
up_sampling2d_2/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_779307Ж
up_sampling2d_7/PartitionedCallPartitionedCall(up_sampling2d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_779364Ж
up_sampling2d_3/PartitionedCallPartitionedCall(up_sampling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_779345├
%column_output/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_7/PartitionedCall:output:0column_output_779679column_output_779681*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_column_output_layer_call_and_return_conditional_losses_779448┐
$table_output/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0table_output_779684table_output_779686*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_table_output_layer_call_and_return_conditional_losses_779404Ц
IdentityIdentity-table_output/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Щ

Identity_1Identity.column_output/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Ж
NoOpNoOp^VGG-19/StatefulPartitionedCall%^block6_conv1/StatefulPartitionedCall%^block6_conv2/StatefulPartitionedCall,^block7_conv1_column/StatefulPartitionedCall,^block8_conv1_column/StatefulPartitionedCall&^column_output/StatefulPartitionedCall$^conv7_table/StatefulPartitionedCall%^table_output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
VGG-19/StatefulPartitionedCallVGG-19/StatefulPartitionedCall2L
$block6_conv1/StatefulPartitionedCall$block6_conv1/StatefulPartitionedCall2L
$block6_conv2/StatefulPartitionedCall$block6_conv2/StatefulPartitionedCall2Z
+block7_conv1_column/StatefulPartitionedCall+block7_conv1_column/StatefulPartitionedCall2Z
+block8_conv1_column/StatefulPartitionedCall+block8_conv1_column/StatefulPartitionedCall2N
%column_output/StatefulPartitionedCall%column_output/StatefulPartitionedCall2J
#conv7_table/StatefulPartitionedCall#conv7_table/StatefulPartitionedCall2L
$table_output/StatefulPartitionedCall$table_output/StatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
П
c
G__inference_block1_pool_layer_call_and_return_conditional_losses_782295

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
а
Д
H__inference_block2_conv2_layer_call_and_return_conditional_losses_782335

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ь
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0А
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА[
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:         АААl
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:         АААw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         ААА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:         ААА
 
_user_specified_nameinputs
И
o
Q__inference_block7_dropout_column_layer_call_and_return_conditional_losses_781921

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
У
Д
H__inference_block3_conv4_layer_call_and_return_conditional_losses_778344

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         @@Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         @@Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         @@А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         @@А
 
_user_specified_nameinputs
У
g
K__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_779288

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
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
В
i
K__inference_block6_dropout2_layer_call_and_return_conditional_losses_781874

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
У
Д
H__inference_block5_conv1_layer_call_and_return_conditional_losses_782545

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╗
L
0__inference_up_sampling2d_7_layer_call_fn_782149

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
K__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_779364Г
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
│
H
,__inference_block5_pool_layer_call_fn_782610

inputs
identity╪
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
GPU2*0J 8В *P
fKRI
G__inference_block5_pool_layer_call_and_return_conditional_losses_778202Г
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
╗
L
0__inference_up_sampling2d_4_layer_call_fn_781995

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
K__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_779250Г
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
№
е
-__inference_block4_conv4_layer_call_fn_782504

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block4_conv4_layer_call_and_return_conditional_losses_778413x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :           А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
│
H
,__inference_block4_pool_layer_call_fn_782520

inputs
identity╪
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
GPU2*0J 8В *P
fKRI
G__inference_block4_pool_layer_call_and_return_conditional_losses_778190Г
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
┌ч
╧*
D__inference_tablenet_layer_call_and_return_conditional_losses_781400

inputsL
2vgg_19_block1_conv1_conv2d_readvariableop_resource:@A
3vgg_19_block1_conv1_biasadd_readvariableop_resource:@L
2vgg_19_block1_conv2_conv2d_readvariableop_resource:@@A
3vgg_19_block1_conv2_biasadd_readvariableop_resource:@M
2vgg_19_block2_conv1_conv2d_readvariableop_resource:@АB
3vgg_19_block2_conv1_biasadd_readvariableop_resource:	АN
2vgg_19_block2_conv2_conv2d_readvariableop_resource:ААB
3vgg_19_block2_conv2_biasadd_readvariableop_resource:	АN
2vgg_19_block3_conv1_conv2d_readvariableop_resource:ААB
3vgg_19_block3_conv1_biasadd_readvariableop_resource:	АN
2vgg_19_block3_conv2_conv2d_readvariableop_resource:ААB
3vgg_19_block3_conv2_biasadd_readvariableop_resource:	АN
2vgg_19_block3_conv3_conv2d_readvariableop_resource:ААB
3vgg_19_block3_conv3_biasadd_readvariableop_resource:	АN
2vgg_19_block3_conv4_conv2d_readvariableop_resource:ААB
3vgg_19_block3_conv4_biasadd_readvariableop_resource:	АN
2vgg_19_block4_conv1_conv2d_readvariableop_resource:ААB
3vgg_19_block4_conv1_biasadd_readvariableop_resource:	АN
2vgg_19_block4_conv2_conv2d_readvariableop_resource:ААB
3vgg_19_block4_conv2_biasadd_readvariableop_resource:	АN
2vgg_19_block4_conv3_conv2d_readvariableop_resource:ААB
3vgg_19_block4_conv3_biasadd_readvariableop_resource:	АN
2vgg_19_block4_conv4_conv2d_readvariableop_resource:ААB
3vgg_19_block4_conv4_biasadd_readvariableop_resource:	АN
2vgg_19_block5_conv1_conv2d_readvariableop_resource:ААB
3vgg_19_block5_conv1_biasadd_readvariableop_resource:	АN
2vgg_19_block5_conv2_conv2d_readvariableop_resource:ААB
3vgg_19_block5_conv2_biasadd_readvariableop_resource:	АN
2vgg_19_block5_conv3_conv2d_readvariableop_resource:ААB
3vgg_19_block5_conv3_biasadd_readvariableop_resource:	АN
2vgg_19_block5_conv4_conv2d_readvariableop_resource:ААB
3vgg_19_block5_conv4_biasadd_readvariableop_resource:	АG
+block6_conv1_conv2d_readvariableop_resource:АА;
,block6_conv1_biasadd_readvariableop_resource:	АG
+block6_conv2_conv2d_readvariableop_resource:АА;
,block6_conv2_biasadd_readvariableop_resource:	АN
2block7_conv1_column_conv2d_readvariableop_resource:ААB
3block7_conv1_column_biasadd_readvariableop_resource:	АN
2block8_conv1_column_conv2d_readvariableop_resource:ААB
3block8_conv1_column_biasadd_readvariableop_resource:	АF
*conv7_table_conv2d_readvariableop_resource:АА:
+conv7_table_biasadd_readvariableop_resource:	АQ
6column_output_conv2d_transpose_readvariableop_resource:А
;
-column_output_biasadd_readvariableop_resource:P
5table_output_conv2d_transpose_readvariableop_resource:А
:
,table_output_biasadd_readvariableop_resource:
identity

identity_1Ив*VGG-19/block1_conv1/BiasAdd/ReadVariableOpв)VGG-19/block1_conv1/Conv2D/ReadVariableOpв*VGG-19/block1_conv2/BiasAdd/ReadVariableOpв)VGG-19/block1_conv2/Conv2D/ReadVariableOpв*VGG-19/block2_conv1/BiasAdd/ReadVariableOpв)VGG-19/block2_conv1/Conv2D/ReadVariableOpв*VGG-19/block2_conv2/BiasAdd/ReadVariableOpв)VGG-19/block2_conv2/Conv2D/ReadVariableOpв*VGG-19/block3_conv1/BiasAdd/ReadVariableOpв)VGG-19/block3_conv1/Conv2D/ReadVariableOpв*VGG-19/block3_conv2/BiasAdd/ReadVariableOpв)VGG-19/block3_conv2/Conv2D/ReadVariableOpв*VGG-19/block3_conv3/BiasAdd/ReadVariableOpв)VGG-19/block3_conv3/Conv2D/ReadVariableOpв*VGG-19/block3_conv4/BiasAdd/ReadVariableOpв)VGG-19/block3_conv4/Conv2D/ReadVariableOpв*VGG-19/block4_conv1/BiasAdd/ReadVariableOpв)VGG-19/block4_conv1/Conv2D/ReadVariableOpв*VGG-19/block4_conv2/BiasAdd/ReadVariableOpв)VGG-19/block4_conv2/Conv2D/ReadVariableOpв*VGG-19/block4_conv3/BiasAdd/ReadVariableOpв)VGG-19/block4_conv3/Conv2D/ReadVariableOpв*VGG-19/block4_conv4/BiasAdd/ReadVariableOpв)VGG-19/block4_conv4/Conv2D/ReadVariableOpв*VGG-19/block5_conv1/BiasAdd/ReadVariableOpв)VGG-19/block5_conv1/Conv2D/ReadVariableOpв*VGG-19/block5_conv2/BiasAdd/ReadVariableOpв)VGG-19/block5_conv2/Conv2D/ReadVariableOpв*VGG-19/block5_conv3/BiasAdd/ReadVariableOpв)VGG-19/block5_conv3/Conv2D/ReadVariableOpв*VGG-19/block5_conv4/BiasAdd/ReadVariableOpв)VGG-19/block5_conv4/Conv2D/ReadVariableOpв#block6_conv1/BiasAdd/ReadVariableOpв"block6_conv1/Conv2D/ReadVariableOpв#block6_conv2/BiasAdd/ReadVariableOpв"block6_conv2/Conv2D/ReadVariableOpв*block7_conv1_column/BiasAdd/ReadVariableOpв)block7_conv1_column/Conv2D/ReadVariableOpв*block8_conv1_column/BiasAdd/ReadVariableOpв)block8_conv1_column/Conv2D/ReadVariableOpв$column_output/BiasAdd/ReadVariableOpв-column_output/conv2d_transpose/ReadVariableOpв"conv7_table/BiasAdd/ReadVariableOpв!conv7_table/Conv2D/ReadVariableOpв#table_output/BiasAdd/ReadVariableOpв,table_output/conv2d_transpose/ReadVariableOpд
)VGG-19/block1_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0├
VGG-19/block1_conv1/Conv2DConv2Dinputs1VGG-19/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
Ъ
*VGG-19/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╗
VGG-19/block1_conv1/BiasAddBiasAdd#VGG-19/block1_conv1/Conv2D:output:02VGG-19/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@В
VGG-19/block1_conv1/ReluRelu$VGG-19/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:         АА@д
)VGG-19/block1_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0у
VGG-19/block1_conv2/Conv2DConv2D&VGG-19/block1_conv1/Relu:activations:01VGG-19/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
Ъ
*VGG-19/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╗
VGG-19/block1_conv2/BiasAddBiasAdd#VGG-19/block1_conv2/Conv2D:output:02VGG-19/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@В
VGG-19/block1_conv2/ReluRelu$VGG-19/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:         АА@╝
VGG-19/block1_pool/MaxPoolMaxPool&VGG-19/block1_conv2/Relu:activations:0*1
_output_shapes
:         АА@*
ksize
*
paddingVALID*
strides
е
)VGG-19/block2_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0с
VGG-19/block2_conv1/Conv2DConv2D#VGG-19/block1_pool/MaxPool:output:01VGG-19/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
Ы
*VGG-19/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╝
VGG-19/block2_conv1/BiasAddBiasAdd#VGG-19/block2_conv1/Conv2D:output:02VGG-19/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         АААГ
VGG-19/block2_conv1/ReluRelu$VGG-19/block2_conv1/BiasAdd:output:0*
T0*2
_output_shapes 
:         АААж
)VGG-19/block2_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ф
VGG-19/block2_conv2/Conv2DConv2D&VGG-19/block2_conv1/Relu:activations:01VGG-19/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
Ы
*VGG-19/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╝
VGG-19/block2_conv2/BiasAddBiasAdd#VGG-19/block2_conv2/Conv2D:output:02VGG-19/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         АААГ
VGG-19/block2_conv2/ReluRelu$VGG-19/block2_conv2/BiasAdd:output:0*
T0*2
_output_shapes 
:         ААА╗
VGG-19/block2_pool/MaxPoolMaxPool&VGG-19/block2_conv2/Relu:activations:0*0
_output_shapes
:         @@А*
ksize
*
paddingVALID*
strides
ж
)VGG-19/block3_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▀
VGG-19/block3_conv1/Conv2DConv2D#VGG-19/block2_pool/MaxPool:output:01VGG-19/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Ы
*VGG-19/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block3_conv1/BiasAddBiasAdd#VGG-19/block3_conv1/Conv2D:output:02VGG-19/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АБ
VGG-19/block3_conv1/ReluRelu$VGG-19/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         @@Аж
)VGG-19/block3_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block3_conv2/Conv2DConv2D&VGG-19/block3_conv1/Relu:activations:01VGG-19/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Ы
*VGG-19/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block3_conv2/BiasAddBiasAdd#VGG-19/block3_conv2/Conv2D:output:02VGG-19/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АБ
VGG-19/block3_conv2/ReluRelu$VGG-19/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         @@Аж
)VGG-19/block3_conv3/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block3_conv3/Conv2DConv2D&VGG-19/block3_conv2/Relu:activations:01VGG-19/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Ы
*VGG-19/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block3_conv3/BiasAddBiasAdd#VGG-19/block3_conv3/Conv2D:output:02VGG-19/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АБ
VGG-19/block3_conv3/ReluRelu$VGG-19/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         @@Аж
)VGG-19/block3_conv4/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block3_conv4/Conv2DConv2D&VGG-19/block3_conv3/Relu:activations:01VGG-19/block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Ы
*VGG-19/block3_conv4/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block3_conv4/BiasAddBiasAdd#VGG-19/block3_conv4/Conv2D:output:02VGG-19/block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АБ
VGG-19/block3_conv4/ReluRelu$VGG-19/block3_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:         @@А╗
VGG-19/block3_pool/MaxPoolMaxPool&VGG-19/block3_conv4/Relu:activations:0*0
_output_shapes
:           А*
ksize
*
paddingVALID*
strides
ж
)VGG-19/block4_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▀
VGG-19/block4_conv1/Conv2DConv2D#VGG-19/block3_pool/MaxPool:output:01VGG-19/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Ы
*VGG-19/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block4_conv1/BiasAddBiasAdd#VGG-19/block4_conv1/Conv2D:output:02VGG-19/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АБ
VGG-19/block4_conv1/ReluRelu$VGG-19/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:           Аж
)VGG-19/block4_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block4_conv2/Conv2DConv2D&VGG-19/block4_conv1/Relu:activations:01VGG-19/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Ы
*VGG-19/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block4_conv2/BiasAddBiasAdd#VGG-19/block4_conv2/Conv2D:output:02VGG-19/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АБ
VGG-19/block4_conv2/ReluRelu$VGG-19/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:           Аж
)VGG-19/block4_conv3/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block4_conv3/Conv2DConv2D&VGG-19/block4_conv2/Relu:activations:01VGG-19/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Ы
*VGG-19/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block4_conv3/BiasAddBiasAdd#VGG-19/block4_conv3/Conv2D:output:02VGG-19/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АБ
VGG-19/block4_conv3/ReluRelu$VGG-19/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:           Аж
)VGG-19/block4_conv4/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block4_conv4/Conv2DConv2D&VGG-19/block4_conv3/Relu:activations:01VGG-19/block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Ы
*VGG-19/block4_conv4/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block4_conv4/BiasAddBiasAdd#VGG-19/block4_conv4/Conv2D:output:02VGG-19/block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АБ
VGG-19/block4_conv4/ReluRelu$VGG-19/block4_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:           А╗
VGG-19/block4_pool/MaxPoolMaxPool&VGG-19/block4_conv4/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
ж
)VGG-19/block5_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▀
VGG-19/block5_conv1/Conv2DConv2D#VGG-19/block4_pool/MaxPool:output:01VGG-19/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Ы
*VGG-19/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block5_conv1/BiasAddBiasAdd#VGG-19/block5_conv1/Conv2D:output:02VGG-19/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АБ
VGG-19/block5_conv1/ReluRelu$VGG-19/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         Аж
)VGG-19/block5_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block5_conv2/Conv2DConv2D&VGG-19/block5_conv1/Relu:activations:01VGG-19/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Ы
*VGG-19/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block5_conv2/BiasAddBiasAdd#VGG-19/block5_conv2/Conv2D:output:02VGG-19/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АБ
VGG-19/block5_conv2/ReluRelu$VGG-19/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         Аж
)VGG-19/block5_conv3/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block5_conv3/Conv2DConv2D&VGG-19/block5_conv2/Relu:activations:01VGG-19/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Ы
*VGG-19/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block5_conv3/BiasAddBiasAdd#VGG-19/block5_conv3/Conv2D:output:02VGG-19/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АБ
VGG-19/block5_conv3/ReluRelu$VGG-19/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         Аж
)VGG-19/block5_conv4/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block5_conv4/Conv2DConv2D&VGG-19/block5_conv3/Relu:activations:01VGG-19/block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Ы
*VGG-19/block5_conv4/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block5_conv4/BiasAddBiasAdd#VGG-19/block5_conv4/Conv2D:output:02VGG-19/block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АБ
VGG-19/block5_conv4/ReluRelu$VGG-19/block5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:         А╗
VGG-19/block5_pool/MaxPoolMaxPool&VGG-19/block5_conv4/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Ш
"block6_conv1/Conv2D/ReadVariableOpReadVariableOp+block6_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╥
block6_conv1/Conv2DConv2D#VGG-19/block5_pool/MaxPool:output:0*block6_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Н
#block6_conv1/BiasAdd/ReadVariableOpReadVariableOp,block6_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block6_conv1/BiasAddBiasAddblock6_conv1/Conv2D:output:0+block6_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block6_conv1/ReluRelublock6_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         Аb
block6_dropout1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а@ж
block6_dropout1/dropout/MulMulblock6_conv1/Relu:activations:0&block6_dropout1/dropout/Const:output:0*
T0*0
_output_shapes
:         Аl
block6_dropout1/dropout/ShapeShapeblock6_conv1/Relu:activations:0*
T0*
_output_shapes
:╡
4block6_dropout1/dropout/random_uniform/RandomUniformRandomUniform&block6_dropout1/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0k
&block6_dropout1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L?▀
$block6_dropout1/dropout/GreaterEqualGreaterEqual=block6_dropout1/dropout/random_uniform/RandomUniform:output:0/block6_dropout1/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         АШ
block6_dropout1/dropout/CastCast(block6_dropout1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         Ав
block6_dropout1/dropout/Mul_1Mulblock6_dropout1/dropout/Mul:z:0 block6_dropout1/dropout/Cast:y:0*
T0*0
_output_shapes
:         АШ
"block6_conv2/Conv2D/ReadVariableOpReadVariableOp+block6_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╨
block6_conv2/Conv2DConv2D!block6_dropout1/dropout/Mul_1:z:0*block6_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Н
#block6_conv2/BiasAdd/ReadVariableOpReadVariableOp,block6_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block6_conv2/BiasAddBiasAddblock6_conv2/Conv2D:output:0+block6_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block6_conv2/ReluRelublock6_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         Аb
block6_dropout2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а@ж
block6_dropout2/dropout/MulMulblock6_conv2/Relu:activations:0&block6_dropout2/dropout/Const:output:0*
T0*0
_output_shapes
:         Аl
block6_dropout2/dropout/ShapeShapeblock6_conv2/Relu:activations:0*
T0*
_output_shapes
:╡
4block6_dropout2/dropout/random_uniform/RandomUniformRandomUniform&block6_dropout2/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0k
&block6_dropout2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L?▀
$block6_dropout2/dropout/GreaterEqualGreaterEqual=block6_dropout2/dropout/random_uniform/RandomUniform:output:0/block6_dropout2/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         АШ
block6_dropout2/dropout/CastCast(block6_dropout2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         Ав
block6_dropout2/dropout/Mul_1Mulblock6_dropout2/dropout/Mul:z:0 block6_dropout2/dropout/Cast:y:0*
T0*0
_output_shapes
:         Аж
)block7_conv1_column/Conv2D/ReadVariableOpReadVariableOp2block7_conv1_column_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▐
block7_conv1_column/Conv2DConv2D!block6_dropout2/dropout/Mul_1:z:01block7_conv1_column/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Ы
*block7_conv1_column/BiasAdd/ReadVariableOpReadVariableOp3block7_conv1_column_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
block7_conv1_column/BiasAddBiasAdd#block7_conv1_column/Conv2D:output:02block7_conv1_column/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АБ
block7_conv1_column/ReluRelu$block7_conv1_column/BiasAdd:output:0*
T0*0
_output_shapes
:         Аh
#block7_dropout_column/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а@╣
!block7_dropout_column/dropout/MulMul&block7_conv1_column/Relu:activations:0,block7_dropout_column/dropout/Const:output:0*
T0*0
_output_shapes
:         Аy
#block7_dropout_column/dropout/ShapeShape&block7_conv1_column/Relu:activations:0*
T0*
_output_shapes
:┴
:block7_dropout_column/dropout/random_uniform/RandomUniformRandomUniform,block7_dropout_column/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0q
,block7_dropout_column/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L?ё
*block7_dropout_column/dropout/GreaterEqualGreaterEqualCblock7_dropout_column/dropout/random_uniform/RandomUniform:output:05block7_dropout_column/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         Ад
"block7_dropout_column/dropout/CastCast.block7_dropout_column/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А┤
#block7_dropout_column/dropout/Mul_1Mul%block7_dropout_column/dropout/Mul:z:0&block7_dropout_column/dropout/Cast:y:0*
T0*0
_output_shapes
:         Аж
)block8_conv1_column/Conv2D/ReadVariableOpReadVariableOp2block8_conv1_column_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ф
block8_conv1_column/Conv2DConv2D'block7_dropout_column/dropout/Mul_1:z:01block8_conv1_column/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Ы
*block8_conv1_column/BiasAdd/ReadVariableOpReadVariableOp3block8_conv1_column_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
block8_conv1_column/BiasAddBiasAdd#block8_conv1_column/Conv2D:output:02block8_conv1_column/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АБ
block8_conv1_column/ReluRelu$block8_conv1_column/BiasAdd:output:0*
T0*0
_output_shapes
:         АЦ
!conv7_table/Conv2D/ReadVariableOpReadVariableOp*conv7_table_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╬
conv7_table/Conv2DConv2D!block6_dropout2/dropout/Mul_1:z:0)conv7_table/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Л
"conv7_table/BiasAdd/ReadVariableOpReadVariableOp+conv7_table_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0в
conv7_table/BiasAddBiasAddconv7_table/Conv2D:output:0*conv7_table/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аq
conv7_table/ReluReluconv7_table/BiasAdd:output:0*
T0*0
_output_shapes
:         Аf
up_sampling2d_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_4/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_4/mulMulup_sampling2d_4/Const:output:0 up_sampling2d_4/Const_1:output:0*
T0*
_output_shapes
:█
,up_sampling2d_4/resize/ResizeNearestNeighborResizeNearestNeighbor&block8_conv1_column/Relu:activations:0up_sampling2d_4/mul:z:0*
T0*0
_output_shapes
:         А*
half_pixel_centers(d
up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      f
up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      {
up_sampling2d/mulMulup_sampling2d/Const:output:0up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:╧
*up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighborconv7_table/Relu:activations:0up_sampling2d/mul:z:0*
T0*0
_output_shapes
:         А*
half_pixel_centers([
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ь
concatenate_2/concatConcatV2=up_sampling2d_4/resize/ResizeNearestNeighbor:resized_images:0#VGG-19/block4_pool/MaxPool:output:0"concatenate_2/concat/axis:output:0*
N*
T0*0
_output_shapes
:         АY
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ц
concatenate/concatConcatV2;up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0#VGG-19/block4_pool/MaxPool:output:0 concatenate/concat/axis:output:0*
N*
T0*0
_output_shapes
:         Аf
up_sampling2d_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_5/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_5/mulMulup_sampling2d_5/Const:output:0 up_sampling2d_5/Const_1:output:0*
T0*
_output_shapes
:╥
,up_sampling2d_5/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_2/concat:output:0up_sampling2d_5/mul:z:0*
T0*0
_output_shapes
:           А*
half_pixel_centers(f
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_1/mulMulup_sampling2d_1/Const:output:0 up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:╨
,up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate/concat:output:0up_sampling2d_1/mul:z:0*
T0*0
_output_shapes
:           А*
half_pixel_centers([
concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ь
concatenate_3/concatConcatV2=up_sampling2d_5/resize/ResizeNearestNeighbor:resized_images:0#VGG-19/block3_pool/MaxPool:output:0"concatenate_3/concat/axis:output:0*
N*
T0*0
_output_shapes
:           А
[
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ь
concatenate_1/concatConcatV2=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0#VGG-19/block3_pool/MaxPool:output:0"concatenate_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:           А
f
up_sampling2d_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"        h
up_sampling2d_6/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_6/mulMulup_sampling2d_6/Const:output:0 up_sampling2d_6/Const_1:output:0*
T0*
_output_shapes
:╥
,up_sampling2d_6/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_3/concat:output:0up_sampling2d_6/mul:z:0*
T0*0
_output_shapes
:         @@А
*
half_pixel_centers(f
up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"        h
up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_2/mulMulup_sampling2d_2/Const:output:0 up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:╥
,up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_1/concat:output:0up_sampling2d_2/mul:z:0*
T0*0
_output_shapes
:         @@А
*
half_pixel_centers(f
up_sampling2d_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   h
up_sampling2d_7/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_7/mulMulup_sampling2d_7/Const:output:0 up_sampling2d_7/Const_1:output:0*
T0*
_output_shapes
:Ї
,up_sampling2d_7/resize/ResizeNearestNeighborResizeNearestNeighbor=up_sampling2d_6/resize/ResizeNearestNeighbor:resized_images:0up_sampling2d_7/mul:z:0*
T0*2
_output_shapes 
:         ААА
*
half_pixel_centers(f
up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   h
up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_3/mulMulup_sampling2d_3/Const:output:0 up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:Ї
,up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighbor=up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0up_sampling2d_3/mul:z:0*
T0*2
_output_shapes 
:         ААА
*
half_pixel_centers(А
column_output/ShapeShape=up_sampling2d_7/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:k
!column_output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#column_output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#column_output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ч
column_output/strided_sliceStridedSlicecolumn_output/Shape:output:0*column_output/strided_slice/stack:output:0,column_output/strided_slice/stack_1:output:0,column_output/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
column_output/stack/1Const*
_output_shapes
: *
dtype0*
value
B :АX
column_output/stack/2Const*
_output_shapes
: *
dtype0*
value
B :АW
column_output/stack/3Const*
_output_shapes
: *
dtype0*
value	B :╧
column_output/stackPack$column_output/strided_slice:output:0column_output/stack/1:output:0column_output/stack/2:output:0column_output/stack/3:output:0*
N*
T0*
_output_shapes
:m
#column_output/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%column_output/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%column_output/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Я
column_output/strided_slice_1StridedSlicecolumn_output/stack:output:0,column_output/strided_slice_1/stack:output:0.column_output/strided_slice_1/stack_1:output:0.column_output/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskн
-column_output/conv2d_transpose/ReadVariableOpReadVariableOp6column_output_conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype0н
column_output/conv2d_transposeConv2DBackpropInputcolumn_output/stack:output:05column_output/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_7/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
О
$column_output/BiasAdd/ReadVariableOpReadVariableOp-column_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0│
column_output/BiasAddBiasAdd'column_output/conv2d_transpose:output:0,column_output/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА
table_output/ShapeShape=up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:j
 table_output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"table_output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"table_output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Т
table_output/strided_sliceStridedSlicetable_output/Shape:output:0)table_output/strided_slice/stack:output:0+table_output/strided_slice/stack_1:output:0+table_output/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
table_output/stack/1Const*
_output_shapes
: *
dtype0*
value
B :АW
table_output/stack/2Const*
_output_shapes
: *
dtype0*
value
B :АV
table_output/stack/3Const*
_output_shapes
: *
dtype0*
value	B :╩
table_output/stackPack#table_output/strided_slice:output:0table_output/stack/1:output:0table_output/stack/2:output:0table_output/stack/3:output:0*
N*
T0*
_output_shapes
:l
"table_output/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$table_output/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$table_output/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ъ
table_output/strided_slice_1StridedSlicetable_output/stack:output:0+table_output/strided_slice_1/stack:output:0-table_output/strided_slice_1/stack_1:output:0-table_output/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskл
,table_output/conv2d_transpose/ReadVariableOpReadVariableOp5table_output_conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype0к
table_output/conv2d_transposeConv2DBackpropInputtable_output/stack:output:04table_output/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
М
#table_output/BiasAdd/ReadVariableOpReadVariableOp,table_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0░
table_output/BiasAddBiasAdd&table_output/conv2d_transpose:output:0+table_output/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ААv
IdentityIdentitytable_output/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:         ААy

Identity_1Identitycolumn_output/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:         ААУ
NoOpNoOp+^VGG-19/block1_conv1/BiasAdd/ReadVariableOp*^VGG-19/block1_conv1/Conv2D/ReadVariableOp+^VGG-19/block1_conv2/BiasAdd/ReadVariableOp*^VGG-19/block1_conv2/Conv2D/ReadVariableOp+^VGG-19/block2_conv1/BiasAdd/ReadVariableOp*^VGG-19/block2_conv1/Conv2D/ReadVariableOp+^VGG-19/block2_conv2/BiasAdd/ReadVariableOp*^VGG-19/block2_conv2/Conv2D/ReadVariableOp+^VGG-19/block3_conv1/BiasAdd/ReadVariableOp*^VGG-19/block3_conv1/Conv2D/ReadVariableOp+^VGG-19/block3_conv2/BiasAdd/ReadVariableOp*^VGG-19/block3_conv2/Conv2D/ReadVariableOp+^VGG-19/block3_conv3/BiasAdd/ReadVariableOp*^VGG-19/block3_conv3/Conv2D/ReadVariableOp+^VGG-19/block3_conv4/BiasAdd/ReadVariableOp*^VGG-19/block3_conv4/Conv2D/ReadVariableOp+^VGG-19/block4_conv1/BiasAdd/ReadVariableOp*^VGG-19/block4_conv1/Conv2D/ReadVariableOp+^VGG-19/block4_conv2/BiasAdd/ReadVariableOp*^VGG-19/block4_conv2/Conv2D/ReadVariableOp+^VGG-19/block4_conv3/BiasAdd/ReadVariableOp*^VGG-19/block4_conv3/Conv2D/ReadVariableOp+^VGG-19/block4_conv4/BiasAdd/ReadVariableOp*^VGG-19/block4_conv4/Conv2D/ReadVariableOp+^VGG-19/block5_conv1/BiasAdd/ReadVariableOp*^VGG-19/block5_conv1/Conv2D/ReadVariableOp+^VGG-19/block5_conv2/BiasAdd/ReadVariableOp*^VGG-19/block5_conv2/Conv2D/ReadVariableOp+^VGG-19/block5_conv3/BiasAdd/ReadVariableOp*^VGG-19/block5_conv3/Conv2D/ReadVariableOp+^VGG-19/block5_conv4/BiasAdd/ReadVariableOp*^VGG-19/block5_conv4/Conv2D/ReadVariableOp$^block6_conv1/BiasAdd/ReadVariableOp#^block6_conv1/Conv2D/ReadVariableOp$^block6_conv2/BiasAdd/ReadVariableOp#^block6_conv2/Conv2D/ReadVariableOp+^block7_conv1_column/BiasAdd/ReadVariableOp*^block7_conv1_column/Conv2D/ReadVariableOp+^block8_conv1_column/BiasAdd/ReadVariableOp*^block8_conv1_column/Conv2D/ReadVariableOp%^column_output/BiasAdd/ReadVariableOp.^column_output/conv2d_transpose/ReadVariableOp#^conv7_table/BiasAdd/ReadVariableOp"^conv7_table/Conv2D/ReadVariableOp$^table_output/BiasAdd/ReadVariableOp-^table_output/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2X
*VGG-19/block1_conv1/BiasAdd/ReadVariableOp*VGG-19/block1_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block1_conv1/Conv2D/ReadVariableOp)VGG-19/block1_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block1_conv2/BiasAdd/ReadVariableOp*VGG-19/block1_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block1_conv2/Conv2D/ReadVariableOp)VGG-19/block1_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block2_conv1/BiasAdd/ReadVariableOp*VGG-19/block2_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block2_conv1/Conv2D/ReadVariableOp)VGG-19/block2_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block2_conv2/BiasAdd/ReadVariableOp*VGG-19/block2_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block2_conv2/Conv2D/ReadVariableOp)VGG-19/block2_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block3_conv1/BiasAdd/ReadVariableOp*VGG-19/block3_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block3_conv1/Conv2D/ReadVariableOp)VGG-19/block3_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block3_conv2/BiasAdd/ReadVariableOp*VGG-19/block3_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block3_conv2/Conv2D/ReadVariableOp)VGG-19/block3_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block3_conv3/BiasAdd/ReadVariableOp*VGG-19/block3_conv3/BiasAdd/ReadVariableOp2V
)VGG-19/block3_conv3/Conv2D/ReadVariableOp)VGG-19/block3_conv3/Conv2D/ReadVariableOp2X
*VGG-19/block3_conv4/BiasAdd/ReadVariableOp*VGG-19/block3_conv4/BiasAdd/ReadVariableOp2V
)VGG-19/block3_conv4/Conv2D/ReadVariableOp)VGG-19/block3_conv4/Conv2D/ReadVariableOp2X
*VGG-19/block4_conv1/BiasAdd/ReadVariableOp*VGG-19/block4_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block4_conv1/Conv2D/ReadVariableOp)VGG-19/block4_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block4_conv2/BiasAdd/ReadVariableOp*VGG-19/block4_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block4_conv2/Conv2D/ReadVariableOp)VGG-19/block4_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block4_conv3/BiasAdd/ReadVariableOp*VGG-19/block4_conv3/BiasAdd/ReadVariableOp2V
)VGG-19/block4_conv3/Conv2D/ReadVariableOp)VGG-19/block4_conv3/Conv2D/ReadVariableOp2X
*VGG-19/block4_conv4/BiasAdd/ReadVariableOp*VGG-19/block4_conv4/BiasAdd/ReadVariableOp2V
)VGG-19/block4_conv4/Conv2D/ReadVariableOp)VGG-19/block4_conv4/Conv2D/ReadVariableOp2X
*VGG-19/block5_conv1/BiasAdd/ReadVariableOp*VGG-19/block5_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block5_conv1/Conv2D/ReadVariableOp)VGG-19/block5_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block5_conv2/BiasAdd/ReadVariableOp*VGG-19/block5_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block5_conv2/Conv2D/ReadVariableOp)VGG-19/block5_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block5_conv3/BiasAdd/ReadVariableOp*VGG-19/block5_conv3/BiasAdd/ReadVariableOp2V
)VGG-19/block5_conv3/Conv2D/ReadVariableOp)VGG-19/block5_conv3/Conv2D/ReadVariableOp2X
*VGG-19/block5_conv4/BiasAdd/ReadVariableOp*VGG-19/block5_conv4/BiasAdd/ReadVariableOp2V
)VGG-19/block5_conv4/Conv2D/ReadVariableOp)VGG-19/block5_conv4/Conv2D/ReadVariableOp2J
#block6_conv1/BiasAdd/ReadVariableOp#block6_conv1/BiasAdd/ReadVariableOp2H
"block6_conv1/Conv2D/ReadVariableOp"block6_conv1/Conv2D/ReadVariableOp2J
#block6_conv2/BiasAdd/ReadVariableOp#block6_conv2/BiasAdd/ReadVariableOp2H
"block6_conv2/Conv2D/ReadVariableOp"block6_conv2/Conv2D/ReadVariableOp2X
*block7_conv1_column/BiasAdd/ReadVariableOp*block7_conv1_column/BiasAdd/ReadVariableOp2V
)block7_conv1_column/Conv2D/ReadVariableOp)block7_conv1_column/Conv2D/ReadVariableOp2X
*block8_conv1_column/BiasAdd/ReadVariableOp*block8_conv1_column/BiasAdd/ReadVariableOp2V
)block8_conv1_column/Conv2D/ReadVariableOp)block8_conv1_column/Conv2D/ReadVariableOp2L
$column_output/BiasAdd/ReadVariableOp$column_output/BiasAdd/ReadVariableOp2^
-column_output/conv2d_transpose/ReadVariableOp-column_output/conv2d_transpose/ReadVariableOp2H
"conv7_table/BiasAdd/ReadVariableOp"conv7_table/BiasAdd/ReadVariableOp2F
!conv7_table/Conv2D/ReadVariableOp!conv7_table/Conv2D/ReadVariableOp2J
#table_output/BiasAdd/ReadVariableOp#table_output/BiasAdd/ReadVariableOp2\
,table_output/conv2d_transpose/ReadVariableOp,table_output/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
│
H
,__inference_block3_pool_layer_call_fn_782430

inputs
identity╪
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
GPU2*0J 8В *P
fKRI
G__inference_block3_pool_layer_call_and_return_conditional_losses_778178Г
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
№
е
-__inference_block3_conv3_layer_call_fn_782394

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block3_conv3_layer_call_and_return_conditional_losses_778327x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         @@А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         @@А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         @@А
 
_user_specified_nameinputs
У
Д
H__inference_block5_conv2_layer_call_and_return_conditional_losses_778448

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
▀l
ж
D__inference_tablenet_layer_call_and_return_conditional_losses_780476	
input'
vgg_19_780357:@
vgg_19_780359:@'
vgg_19_780361:@@
vgg_19_780363:@(
vgg_19_780365:@А
vgg_19_780367:	А)
vgg_19_780369:АА
vgg_19_780371:	А)
vgg_19_780373:АА
vgg_19_780375:	А)
vgg_19_780377:АА
vgg_19_780379:	А)
vgg_19_780381:АА
vgg_19_780383:	А)
vgg_19_780385:АА
vgg_19_780387:	А)
vgg_19_780389:АА
vgg_19_780391:	А)
vgg_19_780393:АА
vgg_19_780395:	А)
vgg_19_780397:АА
vgg_19_780399:	А)
vgg_19_780401:АА
vgg_19_780403:	А)
vgg_19_780405:АА
vgg_19_780407:	А)
vgg_19_780409:АА
vgg_19_780411:	А)
vgg_19_780413:АА
vgg_19_780415:	А)
vgg_19_780417:АА
vgg_19_780419:	А/
block6_conv1_780424:АА"
block6_conv1_780426:	А/
block6_conv2_780430:АА"
block6_conv2_780432:	А6
block7_conv1_column_780436:АА)
block7_conv1_column_780438:	А6
block8_conv1_column_780442:АА)
block8_conv1_column_780444:	А.
conv7_table_780447:АА!
conv7_table_780449:	А/
column_output_780464:А
"
column_output_780466:.
table_output_780469:А
!
table_output_780471:
identity

identity_1ИвVGG-19/StatefulPartitionedCallв$block6_conv1/StatefulPartitionedCallв$block6_conv2/StatefulPartitionedCallв+block7_conv1_column/StatefulPartitionedCallв+block8_conv1_column/StatefulPartitionedCallв%column_output/StatefulPartitionedCallв#conv7_table/StatefulPartitionedCallв$table_output/StatefulPartitionedCallл
VGG-19/StatefulPartitionedCallStatefulPartitionedCallinputvgg_19_780357vgg_19_780359vgg_19_780361vgg_19_780363vgg_19_780365vgg_19_780367vgg_19_780369vgg_19_780371vgg_19_780373vgg_19_780375vgg_19_780377vgg_19_780379vgg_19_780381vgg_19_780383vgg_19_780385vgg_19_780387vgg_19_780389vgg_19_780391vgg_19_780393vgg_19_780395vgg_19_780397vgg_19_780399vgg_19_780401vgg_19_780403vgg_19_780405vgg_19_780407vgg_19_780409vgg_19_780411vgg_19_780413vgg_19_780415vgg_19_780417vgg_19_780419*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:           А:         А:         А*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_VGG-19_layer_call_and_return_conditional_losses_778492н
$block6_conv1/StatefulPartitionedCallStatefulPartitionedCall'VGG-19/StatefulPartitionedCall:output:2block6_conv1_780424block6_conv1_780426*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block6_conv1_layer_call_and_return_conditional_losses_779540∙
block6_dropout1/PartitionedCallPartitionedCall-block6_conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_block6_dropout1_layer_call_and_return_conditional_losses_779551о
$block6_conv2/StatefulPartitionedCallStatefulPartitionedCall(block6_dropout1/PartitionedCall:output:0block6_conv2_780430block6_conv2_780432*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block6_conv2_layer_call_and_return_conditional_losses_779564∙
block6_dropout2/PartitionedCallPartitionedCall-block6_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_block6_dropout2_layer_call_and_return_conditional_losses_779575╩
+block7_conv1_column/StatefulPartitionedCallStatefulPartitionedCall(block6_dropout2/PartitionedCall:output:0block7_conv1_column_780436block7_conv1_column_780438*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_block7_conv1_column_layer_call_and_return_conditional_losses_779588М
%block7_dropout_column/PartitionedCallPartitionedCall4block7_conv1_column/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_block7_dropout_column_layer_call_and_return_conditional_losses_779599╨
+block8_conv1_column/StatefulPartitionedCallStatefulPartitionedCall.block7_dropout_column/PartitionedCall:output:0block8_conv1_column_780442block8_conv1_column_780444*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_block8_conv1_column_layer_call_and_return_conditional_losses_779612к
#conv7_table/StatefulPartitionedCallStatefulPartitionedCall(block6_dropout2/PartitionedCall:output:0conv7_table_780447conv7_table_780449*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv7_table_layer_call_and_return_conditional_losses_779629Т
up_sampling2d_4/PartitionedCallPartitionedCall4block8_conv1_column/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_779250Ж
up_sampling2d/PartitionedCallPartitionedCall,conv7_table/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_layer_call_and_return_conditional_losses_779231Ъ
concatenate_2/PartitionedCallPartitionedCall(up_sampling2d_4/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_2_layer_call_and_return_conditional_losses_779644Ф
concatenate/PartitionedCallPartitionedCall&up_sampling2d/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_779653Д
up_sampling2d_5/PartitionedCallPartitionedCall&concatenate_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_779288В
up_sampling2d_1/PartitionedCallPartitionedCall$concatenate/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_779269Ъ
concatenate_3/PartitionedCallPartitionedCall(up_sampling2d_5/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_3_layer_call_and_return_conditional_losses_779664Ъ
concatenate_1/PartitionedCallPartitionedCall(up_sampling2d_1/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_779673Д
up_sampling2d_6/PartitionedCallPartitionedCall&concatenate_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_779326Д
up_sampling2d_2/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_779307Ж
up_sampling2d_7/PartitionedCallPartitionedCall(up_sampling2d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_779364Ж
up_sampling2d_3/PartitionedCallPartitionedCall(up_sampling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_779345├
%column_output/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_7/PartitionedCall:output:0column_output_780464column_output_780466*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_column_output_layer_call_and_return_conditional_losses_779448┐
$table_output/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0table_output_780469table_output_780471*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_table_output_layer_call_and_return_conditional_losses_779404Ц
IdentityIdentity-table_output/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Щ

Identity_1Identity.column_output/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Ж
NoOpNoOp^VGG-19/StatefulPartitionedCall%^block6_conv1/StatefulPartitionedCall%^block6_conv2/StatefulPartitionedCall,^block7_conv1_column/StatefulPartitionedCall,^block8_conv1_column/StatefulPartitionedCall&^column_output/StatefulPartitionedCall$^conv7_table/StatefulPartitionedCall%^table_output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
VGG-19/StatefulPartitionedCallVGG-19/StatefulPartitionedCall2L
$block6_conv1/StatefulPartitionedCall$block6_conv1/StatefulPartitionedCall2L
$block6_conv2/StatefulPartitionedCall$block6_conv2/StatefulPartitionedCall2Z
+block7_conv1_column/StatefulPartitionedCall+block7_conv1_column/StatefulPartitionedCall2Z
+block8_conv1_column/StatefulPartitionedCall+block8_conv1_column/StatefulPartitionedCall2N
%column_output/StatefulPartitionedCall%column_output/StatefulPartitionedCall2J
#conv7_table/StatefulPartitionedCall#conv7_table/StatefulPartitionedCall2L
$table_output/StatefulPartitionedCall$table_output/StatefulPartitionedCall:X T
1
_output_shapes
:         АА

_user_specified_nameinput
У
g
K__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_782110

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
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
Ы
Л
O__inference_block7_conv1_column_layer_call_and_return_conditional_losses_779588

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╗
L
0__inference_up_sampling2d_6_layer_call_fn_782115

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
K__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_779326Г
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
И
o
Q__inference_block7_dropout_column_layer_call_and_return_conditional_losses_779599

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
У
g
K__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_782127

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
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
№
е
-__inference_block5_conv3_layer_call_fn_782574

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block5_conv3_layer_call_and_return_conditional_losses_778465x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╗
L
0__inference_up_sampling2d_3_layer_call_fn_782132

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
K__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_779345Г
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
Се
о%
__inference__traced_save_782906
file_prefix2
.savev2_block6_conv1_kernel_read_readvariableop0
,savev2_block6_conv1_bias_read_readvariableop2
.savev2_block6_conv2_kernel_read_readvariableop0
,savev2_block6_conv2_bias_read_readvariableop9
5savev2_block7_conv1_column_kernel_read_readvariableop7
3savev2_block7_conv1_column_bias_read_readvariableop1
-savev2_conv7_table_kernel_read_readvariableop/
+savev2_conv7_table_bias_read_readvariableop9
5savev2_block8_conv1_column_kernel_read_readvariableop7
3savev2_block8_conv1_column_bias_read_readvariableop2
.savev2_table_output_kernel_read_readvariableop0
,savev2_table_output_bias_read_readvariableop3
/savev2_column_output_kernel_read_readvariableop1
-savev2_column_output_bias_read_readvariableop2
.savev2_block1_conv1_kernel_read_readvariableop0
,savev2_block1_conv1_bias_read_readvariableop2
.savev2_block1_conv2_kernel_read_readvariableop0
,savev2_block1_conv2_bias_read_readvariableop2
.savev2_block2_conv1_kernel_read_readvariableop0
,savev2_block2_conv1_bias_read_readvariableop2
.savev2_block2_conv2_kernel_read_readvariableop0
,savev2_block2_conv2_bias_read_readvariableop2
.savev2_block3_conv1_kernel_read_readvariableop0
,savev2_block3_conv1_bias_read_readvariableop2
.savev2_block3_conv2_kernel_read_readvariableop0
,savev2_block3_conv2_bias_read_readvariableop2
.savev2_block3_conv3_kernel_read_readvariableop0
,savev2_block3_conv3_bias_read_readvariableop2
.savev2_block3_conv4_kernel_read_readvariableop0
,savev2_block3_conv4_bias_read_readvariableop2
.savev2_block4_conv1_kernel_read_readvariableop0
,savev2_block4_conv1_bias_read_readvariableop2
.savev2_block4_conv2_kernel_read_readvariableop0
,savev2_block4_conv2_bias_read_readvariableop2
.savev2_block4_conv3_kernel_read_readvariableop0
,savev2_block4_conv3_bias_read_readvariableop2
.savev2_block4_conv4_kernel_read_readvariableop0
,savev2_block4_conv4_bias_read_readvariableop2
.savev2_block5_conv1_kernel_read_readvariableop0
,savev2_block5_conv1_bias_read_readvariableop2
.savev2_block5_conv2_kernel_read_readvariableop0
,savev2_block5_conv2_bias_read_readvariableop2
.savev2_block5_conv3_kernel_read_readvariableop0
,savev2_block5_conv3_bias_read_readvariableop2
.savev2_block5_conv4_kernel_read_readvariableop0
,savev2_block5_conv4_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_4_read_readvariableop&
"savev2_count_4_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop9
5savev2_adam_block6_conv1_kernel_m_read_readvariableop7
3savev2_adam_block6_conv1_bias_m_read_readvariableop9
5savev2_adam_block6_conv2_kernel_m_read_readvariableop7
3savev2_adam_block6_conv2_bias_m_read_readvariableop@
<savev2_adam_block7_conv1_column_kernel_m_read_readvariableop>
:savev2_adam_block7_conv1_column_bias_m_read_readvariableop8
4savev2_adam_conv7_table_kernel_m_read_readvariableop6
2savev2_adam_conv7_table_bias_m_read_readvariableop@
<savev2_adam_block8_conv1_column_kernel_m_read_readvariableop>
:savev2_adam_block8_conv1_column_bias_m_read_readvariableop9
5savev2_adam_table_output_kernel_m_read_readvariableop7
3savev2_adam_table_output_bias_m_read_readvariableop:
6savev2_adam_column_output_kernel_m_read_readvariableop8
4savev2_adam_column_output_bias_m_read_readvariableop9
5savev2_adam_block6_conv1_kernel_v_read_readvariableop7
3savev2_adam_block6_conv1_bias_v_read_readvariableop9
5savev2_adam_block6_conv2_kernel_v_read_readvariableop7
3savev2_adam_block6_conv2_bias_v_read_readvariableop@
<savev2_adam_block7_conv1_column_kernel_v_read_readvariableop>
:savev2_adam_block7_conv1_column_bias_v_read_readvariableop8
4savev2_adam_conv7_table_kernel_v_read_readvariableop6
2savev2_adam_conv7_table_bias_v_read_readvariableop@
<savev2_adam_block8_conv1_column_kernel_v_read_readvariableop>
:savev2_adam_block8_conv1_column_bias_v_read_readvariableop9
5savev2_adam_table_output_kernel_v_read_readvariableop7
3savev2_adam_table_output_bias_v_read_readvariableop:
6savev2_adam_column_output_kernel_v_read_readvariableop8
4savev2_adam_column_output_bias_v_read_readvariableop
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
: ╖)
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:Z*
dtype0*р(
value╓(B╙(ZB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHд
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:Z*
dtype0*╔
value┐B╝ZB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ч#
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0.savev2_block6_conv1_kernel_read_readvariableop,savev2_block6_conv1_bias_read_readvariableop.savev2_block6_conv2_kernel_read_readvariableop,savev2_block6_conv2_bias_read_readvariableop5savev2_block7_conv1_column_kernel_read_readvariableop3savev2_block7_conv1_column_bias_read_readvariableop-savev2_conv7_table_kernel_read_readvariableop+savev2_conv7_table_bias_read_readvariableop5savev2_block8_conv1_column_kernel_read_readvariableop3savev2_block8_conv1_column_bias_read_readvariableop.savev2_table_output_kernel_read_readvariableop,savev2_table_output_bias_read_readvariableop/savev2_column_output_kernel_read_readvariableop-savev2_column_output_bias_read_readvariableop.savev2_block1_conv1_kernel_read_readvariableop,savev2_block1_conv1_bias_read_readvariableop.savev2_block1_conv2_kernel_read_readvariableop,savev2_block1_conv2_bias_read_readvariableop.savev2_block2_conv1_kernel_read_readvariableop,savev2_block2_conv1_bias_read_readvariableop.savev2_block2_conv2_kernel_read_readvariableop,savev2_block2_conv2_bias_read_readvariableop.savev2_block3_conv1_kernel_read_readvariableop,savev2_block3_conv1_bias_read_readvariableop.savev2_block3_conv2_kernel_read_readvariableop,savev2_block3_conv2_bias_read_readvariableop.savev2_block3_conv3_kernel_read_readvariableop,savev2_block3_conv3_bias_read_readvariableop.savev2_block3_conv4_kernel_read_readvariableop,savev2_block3_conv4_bias_read_readvariableop.savev2_block4_conv1_kernel_read_readvariableop,savev2_block4_conv1_bias_read_readvariableop.savev2_block4_conv2_kernel_read_readvariableop,savev2_block4_conv2_bias_read_readvariableop.savev2_block4_conv3_kernel_read_readvariableop,savev2_block4_conv3_bias_read_readvariableop.savev2_block4_conv4_kernel_read_readvariableop,savev2_block4_conv4_bias_read_readvariableop.savev2_block5_conv1_kernel_read_readvariableop,savev2_block5_conv1_bias_read_readvariableop.savev2_block5_conv2_kernel_read_readvariableop,savev2_block5_conv2_bias_read_readvariableop.savev2_block5_conv3_kernel_read_readvariableop,savev2_block5_conv3_bias_read_readvariableop.savev2_block5_conv4_kernel_read_readvariableop,savev2_block5_conv4_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop5savev2_adam_block6_conv1_kernel_m_read_readvariableop3savev2_adam_block6_conv1_bias_m_read_readvariableop5savev2_adam_block6_conv2_kernel_m_read_readvariableop3savev2_adam_block6_conv2_bias_m_read_readvariableop<savev2_adam_block7_conv1_column_kernel_m_read_readvariableop:savev2_adam_block7_conv1_column_bias_m_read_readvariableop4savev2_adam_conv7_table_kernel_m_read_readvariableop2savev2_adam_conv7_table_bias_m_read_readvariableop<savev2_adam_block8_conv1_column_kernel_m_read_readvariableop:savev2_adam_block8_conv1_column_bias_m_read_readvariableop5savev2_adam_table_output_kernel_m_read_readvariableop3savev2_adam_table_output_bias_m_read_readvariableop6savev2_adam_column_output_kernel_m_read_readvariableop4savev2_adam_column_output_bias_m_read_readvariableop5savev2_adam_block6_conv1_kernel_v_read_readvariableop3savev2_adam_block6_conv1_bias_v_read_readvariableop5savev2_adam_block6_conv2_kernel_v_read_readvariableop3savev2_adam_block6_conv2_bias_v_read_readvariableop<savev2_adam_block7_conv1_column_kernel_v_read_readvariableop:savev2_adam_block7_conv1_column_bias_v_read_readvariableop4savev2_adam_conv7_table_kernel_v_read_readvariableop2savev2_adam_conv7_table_bias_v_read_readvariableop<savev2_adam_block8_conv1_column_kernel_v_read_readvariableop:savev2_adam_block8_conv1_column_bias_v_read_readvariableop5savev2_adam_table_output_kernel_v_read_readvariableop3savev2_adam_table_output_bias_v_read_readvariableop6savev2_adam_column_output_kernel_v_read_readvariableop4savev2_adam_column_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *h
dtypes^
\2Z	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
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

identity_1Identity_1:output:0*Л
_input_shapes∙
Ў: :АА:А:АА:А:АА:А:АА:А:АА:А:А
::А
::@:@:@@:@:@А:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А: : : : : : : : : : : : : : : :АА:А:АА:А:АА:А:АА:А:АА:А:А
::А
::АА:А:АА:А:АА:А:АА:А:АА:А:А
::А
:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.	*
(
_output_shapes
:АА:!


_output_shapes	
:А:-)
'
_output_shapes
:А
: 

_output_shapes
::-)
'
_output_shapes
:А
: 

_output_shapes
::,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:! 

_output_shapes	
:А:.!*
(
_output_shapes
:АА:!"

_output_shapes	
:А:.#*
(
_output_shapes
:АА:!$

_output_shapes	
:А:.%*
(
_output_shapes
:АА:!&

_output_shapes	
:А:.'*
(
_output_shapes
:АА:!(

_output_shapes	
:А:.)*
(
_output_shapes
:АА:!*

_output_shapes	
:А:.+*
(
_output_shapes
:АА:!,

_output_shapes	
:А:.-*
(
_output_shapes
:АА:!.

_output_shapes	
:А:/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: :7

_output_shapes
: :8

_output_shapes
: :9

_output_shapes
: ::

_output_shapes
: :;

_output_shapes
: :<

_output_shapes
: :=

_output_shapes
: :.>*
(
_output_shapes
:АА:!?

_output_shapes	
:А:.@*
(
_output_shapes
:АА:!A

_output_shapes	
:А:.B*
(
_output_shapes
:АА:!C

_output_shapes	
:А:.D*
(
_output_shapes
:АА:!E

_output_shapes	
:А:.F*
(
_output_shapes
:АА:!G

_output_shapes	
:А:-H)
'
_output_shapes
:А
: I

_output_shapes
::-J)
'
_output_shapes
:А
: K

_output_shapes
::.L*
(
_output_shapes
:АА:!M

_output_shapes	
:А:.N*
(
_output_shapes
:АА:!O

_output_shapes	
:А:.P*
(
_output_shapes
:АА:!Q

_output_shapes	
:А:.R*
(
_output_shapes
:АА:!S

_output_shapes	
:А:.T*
(
_output_shapes
:АА:!U

_output_shapes	
:А:-V)
'
_output_shapes
:А
: W

_output_shapes
::-X)
'
_output_shapes
:А
: Y

_output_shapes
::Z

_output_shapes
: 
У
Б
H__inference_block1_conv2_layer_call_and_return_conditional_losses_782285

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         АА@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА@
 
_user_specified_nameinputs
Рj
║
B__inference_VGG-19_layer_call_and_return_conditional_losses_778492

inputs-
block1_conv1_778224:@!
block1_conv1_778226:@-
block1_conv2_778241:@@!
block1_conv2_778243:@.
block2_conv1_778259:@А"
block2_conv1_778261:	А/
block2_conv2_778276:АА"
block2_conv2_778278:	А/
block3_conv1_778294:АА"
block3_conv1_778296:	А/
block3_conv2_778311:АА"
block3_conv2_778313:	А/
block3_conv3_778328:АА"
block3_conv3_778330:	А/
block3_conv4_778345:АА"
block3_conv4_778347:	А/
block4_conv1_778363:АА"
block4_conv1_778365:	А/
block4_conv2_778380:АА"
block4_conv2_778382:	А/
block4_conv3_778397:АА"
block4_conv3_778399:	А/
block4_conv4_778414:АА"
block4_conv4_778416:	А/
block5_conv1_778432:АА"
block5_conv1_778434:	А/
block5_conv2_778449:АА"
block5_conv2_778451:	А/
block5_conv3_778466:АА"
block5_conv3_778468:	А/
block5_conv4_778483:АА"
block5_conv4_778485:	А
identity

identity_1

identity_2Ив$block1_conv1/StatefulPartitionedCallв$block1_conv2/StatefulPartitionedCallв$block2_conv1/StatefulPartitionedCallв$block2_conv2/StatefulPartitionedCallв$block3_conv1/StatefulPartitionedCallв$block3_conv2/StatefulPartitionedCallв$block3_conv3/StatefulPartitionedCallв$block3_conv4/StatefulPartitionedCallв$block4_conv1/StatefulPartitionedCallв$block4_conv2/StatefulPartitionedCallв$block4_conv3/StatefulPartitionedCallв$block4_conv4/StatefulPartitionedCallв$block5_conv1/StatefulPartitionedCallв$block5_conv2/StatefulPartitionedCallв$block5_conv3/StatefulPartitionedCallв$block5_conv4/StatefulPartitionedCallН
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_778224block1_conv1_778226*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block1_conv1_layer_call_and_return_conditional_losses_778223┤
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_778241block1_conv2_778243*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block1_conv2_layer_call_and_return_conditional_losses_778240Є
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block1_pool_layer_call_and_return_conditional_losses_778154м
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_778259block2_conv1_778261*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ААА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block2_conv1_layer_call_and_return_conditional_losses_778258╡
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_778276block2_conv2_778278*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ААА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block2_conv2_layer_call_and_return_conditional_losses_778275ё
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block2_pool_layer_call_and_return_conditional_losses_778166к
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_778294block3_conv1_778296*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block3_conv1_layer_call_and_return_conditional_losses_778293│
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_778311block3_conv2_778313*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block3_conv2_layer_call_and_return_conditional_losses_778310│
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_778328block3_conv3_778330*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block3_conv3_layer_call_and_return_conditional_losses_778327│
$block3_conv4/StatefulPartitionedCallStatefulPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0block3_conv4_778345block3_conv4_778347*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block3_conv4_layer_call_and_return_conditional_losses_778344ё
block3_pool/PartitionedCallPartitionedCall-block3_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block3_pool_layer_call_and_return_conditional_losses_778178к
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_778363block4_conv1_778365*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block4_conv1_layer_call_and_return_conditional_losses_778362│
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_778380block4_conv2_778382*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block4_conv2_layer_call_and_return_conditional_losses_778379│
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_778397block4_conv3_778399*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block4_conv3_layer_call_and_return_conditional_losses_778396│
$block4_conv4/StatefulPartitionedCallStatefulPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0block4_conv4_778414block4_conv4_778416*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block4_conv4_layer_call_and_return_conditional_losses_778413ё
block4_pool/PartitionedCallPartitionedCall-block4_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block4_pool_layer_call_and_return_conditional_losses_778190к
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_778432block5_conv1_778434*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block5_conv1_layer_call_and_return_conditional_losses_778431│
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_778449block5_conv2_778451*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block5_conv2_layer_call_and_return_conditional_losses_778448│
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_778466block5_conv3_778468*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block5_conv3_layer_call_and_return_conditional_losses_778465│
$block5_conv4/StatefulPartitionedCallStatefulPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0block5_conv4_778483block5_conv4_778485*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block5_conv4_layer_call_and_return_conditional_losses_778482ё
block5_pool/PartitionedCallPartitionedCall-block5_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block5_pool_layer_call_and_return_conditional_losses_778202|
IdentityIdentity$block3_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:           А~

Identity_1Identity$block4_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А~

Identity_2Identity$block5_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А╢
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block3_conv4/StatefulPartitionedCall$block3_conv4/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block4_conv4/StatefulPartitionedCall$block4_conv4/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block5_conv4/StatefulPartitionedCall$block5_conv4/StatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
У
g
K__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_779364

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
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
Уj
╗
B__inference_VGG-19_layer_call_and_return_conditional_losses_779124
input_1-
block1_conv1_779036:@!
block1_conv1_779038:@-
block1_conv2_779041:@@!
block1_conv2_779043:@.
block2_conv1_779047:@А"
block2_conv1_779049:	А/
block2_conv2_779052:АА"
block2_conv2_779054:	А/
block3_conv1_779058:АА"
block3_conv1_779060:	А/
block3_conv2_779063:АА"
block3_conv2_779065:	А/
block3_conv3_779068:АА"
block3_conv3_779070:	А/
block3_conv4_779073:АА"
block3_conv4_779075:	А/
block4_conv1_779079:АА"
block4_conv1_779081:	А/
block4_conv2_779084:АА"
block4_conv2_779086:	А/
block4_conv3_779089:АА"
block4_conv3_779091:	А/
block4_conv4_779094:АА"
block4_conv4_779096:	А/
block5_conv1_779100:АА"
block5_conv1_779102:	А/
block5_conv2_779105:АА"
block5_conv2_779107:	А/
block5_conv3_779110:АА"
block5_conv3_779112:	А/
block5_conv4_779115:АА"
block5_conv4_779117:	А
identity

identity_1

identity_2Ив$block1_conv1/StatefulPartitionedCallв$block1_conv2/StatefulPartitionedCallв$block2_conv1/StatefulPartitionedCallв$block2_conv2/StatefulPartitionedCallв$block3_conv1/StatefulPartitionedCallв$block3_conv2/StatefulPartitionedCallв$block3_conv3/StatefulPartitionedCallв$block3_conv4/StatefulPartitionedCallв$block4_conv1/StatefulPartitionedCallв$block4_conv2/StatefulPartitionedCallв$block4_conv3/StatefulPartitionedCallв$block4_conv4/StatefulPartitionedCallв$block5_conv1/StatefulPartitionedCallв$block5_conv2/StatefulPartitionedCallв$block5_conv3/StatefulPartitionedCallв$block5_conv4/StatefulPartitionedCallО
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_1block1_conv1_779036block1_conv1_779038*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block1_conv1_layer_call_and_return_conditional_losses_778223┤
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_779041block1_conv2_779043*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block1_conv2_layer_call_and_return_conditional_losses_778240Є
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block1_pool_layer_call_and_return_conditional_losses_778154м
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_779047block2_conv1_779049*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ААА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block2_conv1_layer_call_and_return_conditional_losses_778258╡
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_779052block2_conv2_779054*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ААА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block2_conv2_layer_call_and_return_conditional_losses_778275ё
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block2_pool_layer_call_and_return_conditional_losses_778166к
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_779058block3_conv1_779060*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block3_conv1_layer_call_and_return_conditional_losses_778293│
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_779063block3_conv2_779065*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block3_conv2_layer_call_and_return_conditional_losses_778310│
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_779068block3_conv3_779070*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block3_conv3_layer_call_and_return_conditional_losses_778327│
$block3_conv4/StatefulPartitionedCallStatefulPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0block3_conv4_779073block3_conv4_779075*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block3_conv4_layer_call_and_return_conditional_losses_778344ё
block3_pool/PartitionedCallPartitionedCall-block3_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block3_pool_layer_call_and_return_conditional_losses_778178к
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_779079block4_conv1_779081*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block4_conv1_layer_call_and_return_conditional_losses_778362│
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_779084block4_conv2_779086*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block4_conv2_layer_call_and_return_conditional_losses_778379│
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_779089block4_conv3_779091*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block4_conv3_layer_call_and_return_conditional_losses_778396│
$block4_conv4/StatefulPartitionedCallStatefulPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0block4_conv4_779094block4_conv4_779096*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block4_conv4_layer_call_and_return_conditional_losses_778413ё
block4_pool/PartitionedCallPartitionedCall-block4_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block4_pool_layer_call_and_return_conditional_losses_778190к
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_779100block5_conv1_779102*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block5_conv1_layer_call_and_return_conditional_losses_778431│
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_779105block5_conv2_779107*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block5_conv2_layer_call_and_return_conditional_losses_778448│
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_779110block5_conv3_779112*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block5_conv3_layer_call_and_return_conditional_losses_778465│
$block5_conv4/StatefulPartitionedCallStatefulPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0block5_conv4_779115block5_conv4_779117*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block5_conv4_layer_call_and_return_conditional_losses_778482ё
block5_pool/PartitionedCallPartitionedCall-block5_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block5_pool_layer_call_and_return_conditional_losses_778202|
IdentityIdentity$block3_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:           А~

Identity_1Identity$block4_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А~

Identity_2Identity$block5_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А╢
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block3_conv4/StatefulPartitionedCall$block3_conv4/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block4_conv4/StatefulPartitionedCall$block4_conv4/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block5_conv4/StatefulPartitionedCall$block5_conv4/StatefulPartitionedCall:Z V
1
_output_shapes
:         АА
!
_user_specified_name	input_1
№
е
-__inference_block3_conv1_layer_call_fn_782354

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block3_conv1_layer_call_and_return_conditional_losses_778293x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         @@А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         @@А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         @@А
 
_user_specified_nameinputs
У
Д
H__inference_block3_conv3_layer_call_and_return_conditional_losses_782405

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         @@Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         @@Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         @@А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         @@А
 
_user_specified_nameinputs
У
Д
H__inference_block5_conv4_layer_call_and_return_conditional_losses_778482

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ю
▀
)__inference_tablenet_layer_call_fn_780903

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А&

unknown_25:АА

unknown_26:	А&

unknown_27:АА

unknown_28:	А&

unknown_29:АА

unknown_30:	А&

unknown_31:АА

unknown_32:	А&

unknown_33:АА

unknown_34:	А&

unknown_35:АА

unknown_36:	А&

unknown_37:АА

unknown_38:	А&

unknown_39:АА

unknown_40:	А%

unknown_41:А


unknown_42:%

unknown_43:А


unknown_44:
identity

identity_1ИвStatefulPartitionedCallГ
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
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *n
_output_shapes\
Z:+                           :+                           *P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_tablenet_layer_call_and_return_conditional_losses_780158Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Л

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
У
g
K__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_779269

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
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
В
i
K__inference_block6_dropout1_layer_call_and_return_conditional_losses_781827

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
У
Б
H__inference_block1_conv2_layer_call_and_return_conditional_losses_778240

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         АА@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА@
 
_user_specified_nameinputs
Д
е
-__inference_block2_conv2_layer_call_fn_782324

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ААА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block2_conv2_layer_call_and_return_conditional_losses_778275z
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*2
_output_shapes 
:         ААА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         ААА: : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:         ААА
 
_user_specified_nameinputs
№
е
-__inference_block6_conv2_layer_call_fn_781848

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block6_conv2_layer_call_and_return_conditional_losses_779564x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
У
g
K__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_782067

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
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
╥
L
0__inference_block6_dropout1_layer_call_fn_781817

inputs
identity┬
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_block6_dropout1_layer_call_and_return_conditional_losses_779551i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
У
Д
H__inference_block5_conv3_layer_call_and_return_conditional_losses_778465

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ы
Л
O__inference_block8_conv1_column_layer_call_and_return_conditional_losses_781973

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
В
i
K__inference_block6_dropout1_layer_call_and_return_conditional_losses_779551

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ф
Д
H__inference_block6_conv1_layer_call_and_return_conditional_losses_779540

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Уr
к
D__inference_tablenet_layer_call_and_return_conditional_losses_780598	
input'
vgg_19_780479:@
vgg_19_780481:@'
vgg_19_780483:@@
vgg_19_780485:@(
vgg_19_780487:@А
vgg_19_780489:	А)
vgg_19_780491:АА
vgg_19_780493:	А)
vgg_19_780495:АА
vgg_19_780497:	А)
vgg_19_780499:АА
vgg_19_780501:	А)
vgg_19_780503:АА
vgg_19_780505:	А)
vgg_19_780507:АА
vgg_19_780509:	А)
vgg_19_780511:АА
vgg_19_780513:	А)
vgg_19_780515:АА
vgg_19_780517:	А)
vgg_19_780519:АА
vgg_19_780521:	А)
vgg_19_780523:АА
vgg_19_780525:	А)
vgg_19_780527:АА
vgg_19_780529:	А)
vgg_19_780531:АА
vgg_19_780533:	А)
vgg_19_780535:АА
vgg_19_780537:	А)
vgg_19_780539:АА
vgg_19_780541:	А/
block6_conv1_780546:АА"
block6_conv1_780548:	А/
block6_conv2_780552:АА"
block6_conv2_780554:	А6
block7_conv1_column_780558:АА)
block7_conv1_column_780560:	А6
block8_conv1_column_780564:АА)
block8_conv1_column_780566:	А.
conv7_table_780569:АА!
conv7_table_780571:	А/
column_output_780586:А
"
column_output_780588:.
table_output_780591:А
!
table_output_780593:
identity

identity_1ИвVGG-19/StatefulPartitionedCallв$block6_conv1/StatefulPartitionedCallв$block6_conv2/StatefulPartitionedCallв'block6_dropout1/StatefulPartitionedCallв'block6_dropout2/StatefulPartitionedCallв+block7_conv1_column/StatefulPartitionedCallв-block7_dropout_column/StatefulPartitionedCallв+block8_conv1_column/StatefulPartitionedCallв%column_output/StatefulPartitionedCallв#conv7_table/StatefulPartitionedCallв$table_output/StatefulPartitionedCallл
VGG-19/StatefulPartitionedCallStatefulPartitionedCallinputvgg_19_780479vgg_19_780481vgg_19_780483vgg_19_780485vgg_19_780487vgg_19_780489vgg_19_780491vgg_19_780493vgg_19_780495vgg_19_780497vgg_19_780499vgg_19_780501vgg_19_780503vgg_19_780505vgg_19_780507vgg_19_780509vgg_19_780511vgg_19_780513vgg_19_780515vgg_19_780517vgg_19_780519vgg_19_780521vgg_19_780523vgg_19_780525vgg_19_780527vgg_19_780529vgg_19_780531vgg_19_780533vgg_19_780535vgg_19_780537vgg_19_780539vgg_19_780541*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:           А:         А:         А*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_VGG-19_layer_call_and_return_conditional_losses_778889н
$block6_conv1/StatefulPartitionedCallStatefulPartitionedCall'VGG-19/StatefulPartitionedCall:output:2block6_conv1_780546block6_conv1_780548*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block6_conv1_layer_call_and_return_conditional_losses_779540Й
'block6_dropout1/StatefulPartitionedCallStatefulPartitionedCall-block6_conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_block6_dropout1_layer_call_and_return_conditional_losses_779922╢
$block6_conv2/StatefulPartitionedCallStatefulPartitionedCall0block6_dropout1/StatefulPartitionedCall:output:0block6_conv2_780552block6_conv2_780554*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block6_conv2_layer_call_and_return_conditional_losses_779564│
'block6_dropout2/StatefulPartitionedCallStatefulPartitionedCall-block6_conv2/StatefulPartitionedCall:output:0(^block6_dropout1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_block6_dropout2_layer_call_and_return_conditional_losses_779889╥
+block7_conv1_column/StatefulPartitionedCallStatefulPartitionedCall0block6_dropout2/StatefulPartitionedCall:output:0block7_conv1_column_780558block7_conv1_column_780560*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_block7_conv1_column_layer_call_and_return_conditional_losses_779588╞
-block7_dropout_column/StatefulPartitionedCallStatefulPartitionedCall4block7_conv1_column/StatefulPartitionedCall:output:0(^block6_dropout2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_block7_dropout_column_layer_call_and_return_conditional_losses_779856╪
+block8_conv1_column/StatefulPartitionedCallStatefulPartitionedCall6block7_dropout_column/StatefulPartitionedCall:output:0block8_conv1_column_780564block8_conv1_column_780566*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *X
fSRQ
O__inference_block8_conv1_column_layer_call_and_return_conditional_losses_779612▓
#conv7_table/StatefulPartitionedCallStatefulPartitionedCall0block6_dropout2/StatefulPartitionedCall:output:0conv7_table_780569conv7_table_780571*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_conv7_table_layer_call_and_return_conditional_losses_779629Т
up_sampling2d_4/PartitionedCallPartitionedCall4block8_conv1_column/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_779250Ж
up_sampling2d/PartitionedCallPartitionedCall,conv7_table/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_up_sampling2d_layer_call_and_return_conditional_losses_779231Ъ
concatenate_2/PartitionedCallPartitionedCall(up_sampling2d_4/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_2_layer_call_and_return_conditional_losses_779644Ф
concatenate/PartitionedCallPartitionedCall&up_sampling2d/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_779653Д
up_sampling2d_5/PartitionedCallPartitionedCall&concatenate_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_779288В
up_sampling2d_1/PartitionedCallPartitionedCall$concatenate/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_779269Ъ
concatenate_3/PartitionedCallPartitionedCall(up_sampling2d_5/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_3_layer_call_and_return_conditional_losses_779664Ъ
concatenate_1/PartitionedCallPartitionedCall(up_sampling2d_1/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_779673Д
up_sampling2d_6/PartitionedCallPartitionedCall&concatenate_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_779326Д
up_sampling2d_2/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_779307Ж
up_sampling2d_7/PartitionedCallPartitionedCall(up_sampling2d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_779364Ж
up_sampling2d_3/PartitionedCallPartitionedCall(up_sampling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_779345├
%column_output/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_7/PartitionedCall:output:0column_output_780586column_output_780588*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_column_output_layer_call_and_return_conditional_losses_779448┐
$table_output/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0table_output_780591table_output_780593*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_table_output_layer_call_and_return_conditional_losses_779404Ц
IdentityIdentity-table_output/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Щ

Identity_1Identity.column_output/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           К
NoOpNoOp^VGG-19/StatefulPartitionedCall%^block6_conv1/StatefulPartitionedCall%^block6_conv2/StatefulPartitionedCall(^block6_dropout1/StatefulPartitionedCall(^block6_dropout2/StatefulPartitionedCall,^block7_conv1_column/StatefulPartitionedCall.^block7_dropout_column/StatefulPartitionedCall,^block8_conv1_column/StatefulPartitionedCall&^column_output/StatefulPartitionedCall$^conv7_table/StatefulPartitionedCall%^table_output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
VGG-19/StatefulPartitionedCallVGG-19/StatefulPartitionedCall2L
$block6_conv1/StatefulPartitionedCall$block6_conv1/StatefulPartitionedCall2L
$block6_conv2/StatefulPartitionedCall$block6_conv2/StatefulPartitionedCall2R
'block6_dropout1/StatefulPartitionedCall'block6_dropout1/StatefulPartitionedCall2R
'block6_dropout2/StatefulPartitionedCall'block6_dropout2/StatefulPartitionedCall2Z
+block7_conv1_column/StatefulPartitionedCall+block7_conv1_column/StatefulPartitionedCall2^
-block7_dropout_column/StatefulPartitionedCall-block7_dropout_column/StatefulPartitionedCall2Z
+block8_conv1_column/StatefulPartitionedCall+block8_conv1_column/StatefulPartitionedCall2N
%column_output/StatefulPartitionedCall%column_output/StatefulPartitionedCall2J
#conv7_table/StatefulPartitionedCall#conv7_table/StatefulPartitionedCall2L
$table_output/StatefulPartitionedCall$table_output/StatefulPartitionedCall:X T
1
_output_shapes
:         АА

_user_specified_nameinput
№
е
-__inference_block5_conv2_layer_call_fn_782554

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block5_conv2_layer_call_and_return_conditional_losses_778448x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Э
u
I__inference_concatenate_1_layer_call_and_return_conditional_losses_782080
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :А
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:           А
`
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:           А
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,                           А:           А:l h
B
_output_shapes0
.:,                           А
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:           А
"
_user_specified_name
inputs/1
У
Д
H__inference_block4_conv1_layer_call_and_return_conditional_losses_778362

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:           Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:           Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
 ж
К
B__inference_VGG-19_layer_call_and_return_conditional_losses_781669

inputsE
+block1_conv1_conv2d_readvariableop_resource:@:
,block1_conv1_biasadd_readvariableop_resource:@E
+block1_conv2_conv2d_readvariableop_resource:@@:
,block1_conv2_biasadd_readvariableop_resource:@F
+block2_conv1_conv2d_readvariableop_resource:@А;
,block2_conv1_biasadd_readvariableop_resource:	АG
+block2_conv2_conv2d_readvariableop_resource:АА;
,block2_conv2_biasadd_readvariableop_resource:	АG
+block3_conv1_conv2d_readvariableop_resource:АА;
,block3_conv1_biasadd_readvariableop_resource:	АG
+block3_conv2_conv2d_readvariableop_resource:АА;
,block3_conv2_biasadd_readvariableop_resource:	АG
+block3_conv3_conv2d_readvariableop_resource:АА;
,block3_conv3_biasadd_readvariableop_resource:	АG
+block3_conv4_conv2d_readvariableop_resource:АА;
,block3_conv4_biasadd_readvariableop_resource:	АG
+block4_conv1_conv2d_readvariableop_resource:АА;
,block4_conv1_biasadd_readvariableop_resource:	АG
+block4_conv2_conv2d_readvariableop_resource:АА;
,block4_conv2_biasadd_readvariableop_resource:	АG
+block4_conv3_conv2d_readvariableop_resource:АА;
,block4_conv3_biasadd_readvariableop_resource:	АG
+block4_conv4_conv2d_readvariableop_resource:АА;
,block4_conv4_biasadd_readvariableop_resource:	АG
+block5_conv1_conv2d_readvariableop_resource:АА;
,block5_conv1_biasadd_readvariableop_resource:	АG
+block5_conv2_conv2d_readvariableop_resource:АА;
,block5_conv2_biasadd_readvariableop_resource:	АG
+block5_conv3_conv2d_readvariableop_resource:АА;
,block5_conv3_biasadd_readvariableop_resource:	АG
+block5_conv4_conv2d_readvariableop_resource:АА;
,block5_conv4_biasadd_readvariableop_resource:	А
identity

identity_1

identity_2Ив#block1_conv1/BiasAdd/ReadVariableOpв"block1_conv1/Conv2D/ReadVariableOpв#block1_conv2/BiasAdd/ReadVariableOpв"block1_conv2/Conv2D/ReadVariableOpв#block2_conv1/BiasAdd/ReadVariableOpв"block2_conv1/Conv2D/ReadVariableOpв#block2_conv2/BiasAdd/ReadVariableOpв"block2_conv2/Conv2D/ReadVariableOpв#block3_conv1/BiasAdd/ReadVariableOpв"block3_conv1/Conv2D/ReadVariableOpв#block3_conv2/BiasAdd/ReadVariableOpв"block3_conv2/Conv2D/ReadVariableOpв#block3_conv3/BiasAdd/ReadVariableOpв"block3_conv3/Conv2D/ReadVariableOpв#block3_conv4/BiasAdd/ReadVariableOpв"block3_conv4/Conv2D/ReadVariableOpв#block4_conv1/BiasAdd/ReadVariableOpв"block4_conv1/Conv2D/ReadVariableOpв#block4_conv2/BiasAdd/ReadVariableOpв"block4_conv2/Conv2D/ReadVariableOpв#block4_conv3/BiasAdd/ReadVariableOpв"block4_conv3/Conv2D/ReadVariableOpв#block4_conv4/BiasAdd/ReadVariableOpв"block4_conv4/Conv2D/ReadVariableOpв#block5_conv1/BiasAdd/ReadVariableOpв"block5_conv1/Conv2D/ReadVariableOpв#block5_conv2/BiasAdd/ReadVariableOpв"block5_conv2/Conv2D/ReadVariableOpв#block5_conv3/BiasAdd/ReadVariableOpв"block5_conv3/Conv2D/ReadVariableOpв#block5_conv4/BiasAdd/ReadVariableOpв"block5_conv4/Conv2D/ReadVariableOpЦ
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0╡
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
М
#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ж
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@t
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:         АА@Ц
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╬
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
М
#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ж
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@t
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:         АА@о
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*1
_output_shapes
:         АА@*
ksize
*
paddingVALID*
strides
Ч
"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0╠
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
Н
#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0з
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         АААu
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*2
_output_shapes 
:         АААШ
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╧
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
Н
#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0з
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         АААu
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*2
_output_shapes 
:         АААн
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:         @@А*
ksize
*
paddingVALID*
strides
Ш
"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╩
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Н
#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@Аs
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         @@АШ
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Н
#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@Аs
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         @@АШ
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Н
#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@Аs
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         @@АШ
"block3_conv4/Conv2D/ReadVariableOpReadVariableOp+block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block3_conv4/Conv2DConv2Dblock3_conv3/Relu:activations:0*block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Н
#block3_conv4/BiasAdd/ReadVariableOpReadVariableOp,block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block3_conv4/BiasAddBiasAddblock3_conv4/Conv2D:output:0+block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@Аs
block3_conv4/ReluRelublock3_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:         @@Ан
block3_pool/MaxPoolMaxPoolblock3_conv4/Relu:activations:0*0
_output_shapes
:           А*
ksize
*
paddingVALID*
strides
Ш
"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╩
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Н
#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           Аs
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:           АШ
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Н
#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           Аs
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:           АШ
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Н
#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           Аs
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:           АШ
"block4_conv4/Conv2D/ReadVariableOpReadVariableOp+block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block4_conv4/Conv2DConv2Dblock4_conv3/Relu:activations:0*block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Н
#block4_conv4/BiasAdd/ReadVariableOpReadVariableOp,block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block4_conv4/BiasAddBiasAddblock4_conv4/Conv2D:output:0+block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           Аs
block4_conv4/ReluRelublock4_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:           Ан
block4_pool/MaxPoolMaxPoolblock4_conv4/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Ш
"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╩
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         АШ
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         АШ
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         АШ
"block5_conv4/Conv2D/ReadVariableOpReadVariableOp+block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block5_conv4/Conv2DConv2Dblock5_conv3/Relu:activations:0*block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block5_conv4/BiasAdd/ReadVariableOpReadVariableOp,block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block5_conv4/BiasAddBiasAddblock5_conv4/Conv2D:output:0+block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block5_conv4/ReluRelublock5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:         Ан
block5_pool/MaxPoolMaxPoolblock5_conv4/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
t
IdentityIdentityblock3_pool/MaxPool:output:0^NoOp*
T0*0
_output_shapes
:           Аv

Identity_1Identityblock4_pool/MaxPool:output:0^NoOp*
T0*0
_output_shapes
:         Аv

Identity_2Identityblock5_pool/MaxPool:output:0^NoOp*
T0*0
_output_shapes
:         АЎ	
NoOpNoOp$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block3_conv4/BiasAdd/ReadVariableOp#^block3_conv4/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block4_conv4/BiasAdd/ReadVariableOp#^block4_conv4/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp$^block5_conv4/BiasAdd/ReadVariableOp#^block5_conv4/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block3_conv4/BiasAdd/ReadVariableOp#block3_conv4/BiasAdd/ReadVariableOp2H
"block3_conv4/Conv2D/ReadVariableOp"block3_conv4/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block4_conv4/BiasAdd/ReadVariableOp#block4_conv4/BiasAdd/ReadVariableOp2H
"block4_conv4/Conv2D/ReadVariableOp"block4_conv4/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp2J
#block5_conv4/BiasAdd/ReadVariableOp#block5_conv4/BiasAdd/ReadVariableOp2H
"block5_conv4/Conv2D/ReadVariableOp"block5_conv4/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
У
Д
H__inference_block5_conv2_layer_call_and_return_conditional_losses_782565

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
┴

j
K__inference_block6_dropout1_layer_call_and_return_conditional_losses_779922

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а@m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L?п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         Аx
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         Аr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         Аb
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
У
Д
H__inference_block4_conv2_layer_call_and_return_conditional_losses_778379

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:           Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:           Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
Уj
╗
B__inference_VGG-19_layer_call_and_return_conditional_losses_779215
input_1-
block1_conv1_779127:@!
block1_conv1_779129:@-
block1_conv2_779132:@@!
block1_conv2_779134:@.
block2_conv1_779138:@А"
block2_conv1_779140:	А/
block2_conv2_779143:АА"
block2_conv2_779145:	А/
block3_conv1_779149:АА"
block3_conv1_779151:	А/
block3_conv2_779154:АА"
block3_conv2_779156:	А/
block3_conv3_779159:АА"
block3_conv3_779161:	А/
block3_conv4_779164:АА"
block3_conv4_779166:	А/
block4_conv1_779170:АА"
block4_conv1_779172:	А/
block4_conv2_779175:АА"
block4_conv2_779177:	А/
block4_conv3_779180:АА"
block4_conv3_779182:	А/
block4_conv4_779185:АА"
block4_conv4_779187:	А/
block5_conv1_779191:АА"
block5_conv1_779193:	А/
block5_conv2_779196:АА"
block5_conv2_779198:	А/
block5_conv3_779201:АА"
block5_conv3_779203:	А/
block5_conv4_779206:АА"
block5_conv4_779208:	А
identity

identity_1

identity_2Ив$block1_conv1/StatefulPartitionedCallв$block1_conv2/StatefulPartitionedCallв$block2_conv1/StatefulPartitionedCallв$block2_conv2/StatefulPartitionedCallв$block3_conv1/StatefulPartitionedCallв$block3_conv2/StatefulPartitionedCallв$block3_conv3/StatefulPartitionedCallв$block3_conv4/StatefulPartitionedCallв$block4_conv1/StatefulPartitionedCallв$block4_conv2/StatefulPartitionedCallв$block4_conv3/StatefulPartitionedCallв$block4_conv4/StatefulPartitionedCallв$block5_conv1/StatefulPartitionedCallв$block5_conv2/StatefulPartitionedCallв$block5_conv3/StatefulPartitionedCallв$block5_conv4/StatefulPartitionedCallО
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_1block1_conv1_779127block1_conv1_779129*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block1_conv1_layer_call_and_return_conditional_losses_778223┤
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_779132block1_conv2_779134*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block1_conv2_layer_call_and_return_conditional_losses_778240Є
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block1_pool_layer_call_and_return_conditional_losses_778154м
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_779138block2_conv1_779140*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ААА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block2_conv1_layer_call_and_return_conditional_losses_778258╡
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_779143block2_conv2_779145*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ААА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block2_conv2_layer_call_and_return_conditional_losses_778275ё
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block2_pool_layer_call_and_return_conditional_losses_778166к
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_779149block3_conv1_779151*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block3_conv1_layer_call_and_return_conditional_losses_778293│
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_779154block3_conv2_779156*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block3_conv2_layer_call_and_return_conditional_losses_778310│
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_779159block3_conv3_779161*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block3_conv3_layer_call_and_return_conditional_losses_778327│
$block3_conv4/StatefulPartitionedCallStatefulPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0block3_conv4_779164block3_conv4_779166*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block3_conv4_layer_call_and_return_conditional_losses_778344ё
block3_pool/PartitionedCallPartitionedCall-block3_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block3_pool_layer_call_and_return_conditional_losses_778178к
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_779170block4_conv1_779172*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block4_conv1_layer_call_and_return_conditional_losses_778362│
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_779175block4_conv2_779177*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block4_conv2_layer_call_and_return_conditional_losses_778379│
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_779180block4_conv3_779182*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block4_conv3_layer_call_and_return_conditional_losses_778396│
$block4_conv4/StatefulPartitionedCallStatefulPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0block4_conv4_779185block4_conv4_779187*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block4_conv4_layer_call_and_return_conditional_losses_778413ё
block4_pool/PartitionedCallPartitionedCall-block4_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block4_pool_layer_call_and_return_conditional_losses_778190к
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_779191block5_conv1_779193*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block5_conv1_layer_call_and_return_conditional_losses_778431│
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_779196block5_conv2_779198*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block5_conv2_layer_call_and_return_conditional_losses_778448│
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_779201block5_conv3_779203*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block5_conv3_layer_call_and_return_conditional_losses_778465│
$block5_conv4/StatefulPartitionedCallStatefulPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0block5_conv4_779206block5_conv4_779208*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_block5_conv4_layer_call_and_return_conditional_losses_778482ё
block5_pool/PartitionedCallPartitionedCall-block5_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block5_pool_layer_call_and_return_conditional_losses_778202|
IdentityIdentity$block3_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:           А~

Identity_1Identity$block4_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А~

Identity_2Identity$block5_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А╢
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block3_conv4/StatefulPartitionedCall$block3_conv4/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block4_conv4/StatefulPartitionedCall$block4_conv4/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block5_conv4/StatefulPartitionedCall$block5_conv4/StatefulPartitionedCall:Z V
1
_output_shapes
:         АА
!
_user_specified_name	input_1"┐L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*М
serving_default°
A
input8
serving_default_input:0         ААK
column_output:
StatefulPartitionedCall:0         ААJ
table_output:
StatefulPartitionedCall:1         ААtensorflow/serving/predict:Ц╨
Г
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer-16
layer-17
layer-18
layer-19
layer-20
layer-21
layer_with_weights-6
layer-22
layer_with_weights-7
layer-23
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
 	optimizer
!loss
"
signatures"
_tf_keras_network
"
_tf_keras_input_layer
ў
#layer-0
$layer_with_weights-0
$layer-1
%layer_with_weights-1
%layer-2
&layer-3
'layer_with_weights-2
'layer-4
(layer_with_weights-3
(layer-5
)layer-6
*layer_with_weights-4
*layer-7
+layer_with_weights-5
+layer-8
,layer_with_weights-6
,layer-9
-layer_with_weights-7
-layer-10
.layer-11
/layer_with_weights-8
/layer-12
0layer_with_weights-9
0layer-13
1layer_with_weights-10
1layer-14
2layer_with_weights-11
2layer-15
3layer-16
4layer_with_weights-12
4layer-17
5layer_with_weights-13
5layer-18
6layer_with_weights-14
6layer-19
7layer_with_weights-15
7layer-20
8layer-21
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses"
_tf_keras_network
▌
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses

Ekernel
Fbias
 G_jit_compiled_convolution_op"
_tf_keras_layer
╝
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses
N_random_generator"
_tf_keras_layer
▌
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

Ukernel
Vbias
 W_jit_compiled_convolution_op"
_tf_keras_layer
╝
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses
^_random_generator"
_tf_keras_layer
▌
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses

ekernel
fbias
 g_jit_compiled_convolution_op"
_tf_keras_layer
╝
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses
n_random_generator"
_tf_keras_layer
▌
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses

ukernel
vbias
 w_jit_compiled_convolution_op"
_tf_keras_layer
▐
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

~kernel
bias
!А_jit_compiled_convolution_op"
_tf_keras_layer
л
Б	variables
Вtrainable_variables
Гregularization_losses
Д	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses"
_tf_keras_layer
л
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses"
_tf_keras_layer
л
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Щ	variables
Ъtrainable_variables
Ыregularization_losses
Ь	keras_api
Э__call__
+Ю&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Я	variables
аtrainable_variables
бregularization_losses
в	keras_api
г__call__
+д&call_and_return_all_conditional_losses"
_tf_keras_layer
л
е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses"
_tf_keras_layer
л
л	variables
мtrainable_variables
нregularization_losses
о	keras_api
п__call__
+░&call_and_return_all_conditional_losses"
_tf_keras_layer
л
▒	variables
▓trainable_variables
│regularization_losses
┤	keras_api
╡__call__
+╢&call_and_return_all_conditional_losses"
_tf_keras_layer
л
╖	variables
╕trainable_variables
╣regularization_losses
║	keras_api
╗__call__
+╝&call_and_return_all_conditional_losses"
_tf_keras_layer
л
╜	variables
╛trainable_variables
┐regularization_losses
└	keras_api
┴__call__
+┬&call_and_return_all_conditional_losses"
_tf_keras_layer
л
├	variables
─trainable_variables
┼regularization_losses
╞	keras_api
╟__call__
+╚&call_and_return_all_conditional_losses"
_tf_keras_layer
ц
╔	variables
╩trainable_variables
╦regularization_losses
╠	keras_api
═__call__
+╬&call_and_return_all_conditional_losses
╧kernel
	╨bias
!╤_jit_compiled_convolution_op"
_tf_keras_layer
ц
╥	variables
╙trainable_variables
╘regularization_losses
╒	keras_api
╓__call__
+╫&call_and_return_all_conditional_losses
╪kernel
	┘bias
!┌_jit_compiled_convolution_op"
_tf_keras_layer
к
█0
▄1
▌2
▐3
▀4
р5
с6
т7
у8
ф9
х10
ц11
ч12
ш13
щ14
ъ15
ы16
ь17
э18
ю19
я20
Ё21
ё22
Є23
є24
Ї25
ї26
Ў27
ў28
°29
∙30
·31
E32
F33
U34
V35
e36
f37
u38
v39
~40
41
╧42
╨43
╪44
┘45"
trackable_list_wrapper
К
E0
F1
U2
V3
e4
f5
u6
v7
~8
9
╧10
╨11
╪12
┘13"
trackable_list_wrapper
 "
trackable_list_wrapper
╧
√non_trainable_variables
№layers
¤metrics
 ■layer_regularization_losses
 layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
т
Аtrace_0
Бtrace_1
Вtrace_2
Гtrace_32я
)__inference_tablenet_layer_call_fn_779788
)__inference_tablenet_layer_call_fn_780804
)__inference_tablenet_layer_call_fn_780903
)__inference_tablenet_layer_call_fn_780354└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zАtrace_0zБtrace_1zВtrace_2zГtrace_3
╬
Дtrace_0
Еtrace_1
Жtrace_2
Зtrace_32█
D__inference_tablenet_layer_call_and_return_conditional_losses_781141
D__inference_tablenet_layer_call_and_return_conditional_losses_781400
D__inference_tablenet_layer_call_and_return_conditional_losses_780476
D__inference_tablenet_layer_call_and_return_conditional_losses_780598└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zДtrace_0zЕtrace_1zЖtrace_2zЗtrace_3
╩B╟
!__inference__wrapped_model_778145input"Ш
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
°
	Иiter
Йbeta_1
Кbeta_2

Лdecay
Мlearning_rateEm°Fm∙Um·Vm√em№fm¤um■vm ~mАmБ	╧mВ	╨mГ	╪mД	┘mЕEvЖFvЗUvИVvЙevКfvЛuvМvvН~vОvП	╧vР	╨vС	╪vТ	┘vУ"
	optimizer
 "
trackable_dict_wrapper
-
Нserving_default"
signature_map
7
О_init_input_shape"
_tf_keras_input_layer
ц
П	variables
Рtrainable_variables
Сregularization_losses
Т	keras_api
У__call__
+Ф&call_and_return_all_conditional_losses
█kernel
	▄bias
!Х_jit_compiled_convolution_op"
_tf_keras_layer
ц
Ц	variables
Чtrainable_variables
Шregularization_losses
Щ	keras_api
Ъ__call__
+Ы&call_and_return_all_conditional_losses
▌kernel
	▐bias
!Ь_jit_compiled_convolution_op"
_tf_keras_layer
л
Э	variables
Юtrainable_variables
Яregularization_losses
а	keras_api
б__call__
+в&call_and_return_all_conditional_losses"
_tf_keras_layer
ц
г	variables
дtrainable_variables
еregularization_losses
ж	keras_api
з__call__
+и&call_and_return_all_conditional_losses
▀kernel
	рbias
!й_jit_compiled_convolution_op"
_tf_keras_layer
ц
к	variables
лtrainable_variables
мregularization_losses
н	keras_api
о__call__
+п&call_and_return_all_conditional_losses
сkernel
	тbias
!░_jit_compiled_convolution_op"
_tf_keras_layer
л
▒	variables
▓trainable_variables
│regularization_losses
┤	keras_api
╡__call__
+╢&call_and_return_all_conditional_losses"
_tf_keras_layer
ц
╖	variables
╕trainable_variables
╣regularization_losses
║	keras_api
╗__call__
+╝&call_and_return_all_conditional_losses
уkernel
	фbias
!╜_jit_compiled_convolution_op"
_tf_keras_layer
ц
╛	variables
┐trainable_variables
└regularization_losses
┴	keras_api
┬__call__
+├&call_and_return_all_conditional_losses
хkernel
	цbias
!─_jit_compiled_convolution_op"
_tf_keras_layer
ц
┼	variables
╞trainable_variables
╟regularization_losses
╚	keras_api
╔__call__
+╩&call_and_return_all_conditional_losses
чkernel
	шbias
!╦_jit_compiled_convolution_op"
_tf_keras_layer
ц
╠	variables
═trainable_variables
╬regularization_losses
╧	keras_api
╨__call__
+╤&call_and_return_all_conditional_losses
щkernel
	ъbias
!╥_jit_compiled_convolution_op"
_tf_keras_layer
л
╙	variables
╘trainable_variables
╒regularization_losses
╓	keras_api
╫__call__
+╪&call_and_return_all_conditional_losses"
_tf_keras_layer
ц
┘	variables
┌trainable_variables
█regularization_losses
▄	keras_api
▌__call__
+▐&call_and_return_all_conditional_losses
ыkernel
	ьbias
!▀_jit_compiled_convolution_op"
_tf_keras_layer
ц
р	variables
сtrainable_variables
тregularization_losses
у	keras_api
ф__call__
+х&call_and_return_all_conditional_losses
эkernel
	юbias
!ц_jit_compiled_convolution_op"
_tf_keras_layer
ц
ч	variables
шtrainable_variables
щregularization_losses
ъ	keras_api
ы__call__
+ь&call_and_return_all_conditional_losses
яkernel
	Ёbias
!э_jit_compiled_convolution_op"
_tf_keras_layer
ц
ю	variables
яtrainable_variables
Ёregularization_losses
ё	keras_api
Є__call__
+є&call_and_return_all_conditional_losses
ёkernel
	Єbias
!Ї_jit_compiled_convolution_op"
_tf_keras_layer
л
ї	variables
Ўtrainable_variables
ўregularization_losses
°	keras_api
∙__call__
+·&call_and_return_all_conditional_losses"
_tf_keras_layer
ц
√	variables
№trainable_variables
¤regularization_losses
■	keras_api
 __call__
+А&call_and_return_all_conditional_losses
єkernel
	Їbias
!Б_jit_compiled_convolution_op"
_tf_keras_layer
ц
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses
їkernel
	Ўbias
!И_jit_compiled_convolution_op"
_tf_keras_layer
ц
Й	variables
Кtrainable_variables
Лregularization_losses
М	keras_api
Н__call__
+О&call_and_return_all_conditional_losses
ўkernel
	°bias
!П_jit_compiled_convolution_op"
_tf_keras_layer
ц
Р	variables
Сtrainable_variables
Тregularization_losses
У	keras_api
Ф__call__
+Х&call_and_return_all_conditional_losses
∙kernel
	·bias
!Ц_jit_compiled_convolution_op"
_tf_keras_layer
л
Ч	variables
Шtrainable_variables
Щregularization_losses
Ъ	keras_api
Ы__call__
+Ь&call_and_return_all_conditional_losses"
_tf_keras_layer
╢
█0
▄1
▌2
▐3
▀4
р5
с6
т7
у8
ф9
х10
ц11
ч12
ш13
щ14
ъ15
ы16
ь17
э18
ю19
я20
Ё21
ё22
Є23
є24
Ї25
ї26
Ў27
ў28
°29
∙30
·31"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Эnon_trainable_variables
Юlayers
Яmetrics
 аlayer_regularization_losses
бlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
┌
вtrace_0
гtrace_1
дtrace_2
еtrace_32ч
'__inference_VGG-19_layer_call_fn_778563
'__inference_VGG-19_layer_call_fn_781473
'__inference_VGG-19_layer_call_fn_781546
'__inference_VGG-19_layer_call_fn_779033└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zвtrace_0zгtrace_1zдtrace_2zеtrace_3
╞
жtrace_0
зtrace_1
иtrace_2
йtrace_32╙
B__inference_VGG-19_layer_call_and_return_conditional_losses_781669
B__inference_VGG-19_layer_call_and_return_conditional_losses_781792
B__inference_VGG-19_layer_call_and_return_conditional_losses_779124
B__inference_VGG-19_layer_call_and_return_conditional_losses_779215└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zжtrace_0zзtrace_1zиtrace_2zйtrace_3
.
E0
F1"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
є
пtrace_02╘
-__inference_block6_conv1_layer_call_fn_781801в
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
 zпtrace_0
О
░trace_02я
H__inference_block6_conv1_layer_call_and_return_conditional_losses_781812в
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
 z░trace_0
/:-АА2block6_conv1/kernel
 :А2block6_conv1/bias
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
▒non_trainable_variables
▓layers
│metrics
 ┤layer_regularization_losses
╡layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
╓
╢trace_0
╖trace_12Ы
0__inference_block6_dropout1_layer_call_fn_781817
0__inference_block6_dropout1_layer_call_fn_781822┤
л▓з
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z╢trace_0z╖trace_1
М
╕trace_0
╣trace_12╤
K__inference_block6_dropout1_layer_call_and_return_conditional_losses_781827
K__inference_block6_dropout1_layer_call_and_return_conditional_losses_781839┤
л▓з
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z╕trace_0z╣trace_1
"
_generic_user_object
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
║non_trainable_variables
╗layers
╝metrics
 ╜layer_regularization_losses
╛layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
є
┐trace_02╘
-__inference_block6_conv2_layer_call_fn_781848в
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
 z┐trace_0
О
└trace_02я
H__inference_block6_conv2_layer_call_and_return_conditional_losses_781859в
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
 z└trace_0
/:-АА2block6_conv2/kernel
 :А2block6_conv2/bias
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
┴non_trainable_variables
┬layers
├metrics
 ─layer_regularization_losses
┼layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
╓
╞trace_0
╟trace_12Ы
0__inference_block6_dropout2_layer_call_fn_781864
0__inference_block6_dropout2_layer_call_fn_781869┤
л▓з
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z╞trace_0z╟trace_1
М
╚trace_0
╔trace_12╤
K__inference_block6_dropout2_layer_call_and_return_conditional_losses_781874
K__inference_block6_dropout2_layer_call_and_return_conditional_losses_781886┤
л▓з
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z╚trace_0z╔trace_1
"
_generic_user_object
.
e0
f1"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╩non_trainable_variables
╦layers
╠metrics
 ═layer_regularization_losses
╬layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
·
╧trace_02█
4__inference_block7_conv1_column_layer_call_fn_781895в
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
 z╧trace_0
Х
╨trace_02Ў
O__inference_block7_conv1_column_layer_call_and_return_conditional_losses_781906в
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
 z╨trace_0
6:4АА2block7_conv1_column/kernel
':%А2block7_conv1_column/bias
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
╤non_trainable_variables
╥layers
╙metrics
 ╘layer_regularization_losses
╒layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
т
╓trace_0
╫trace_12з
6__inference_block7_dropout_column_layer_call_fn_781911
6__inference_block7_dropout_column_layer_call_fn_781916┤
л▓з
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z╓trace_0z╫trace_1
Ш
╪trace_0
┘trace_12▌
Q__inference_block7_dropout_column_layer_call_and_return_conditional_losses_781921
Q__inference_block7_dropout_column_layer_call_and_return_conditional_losses_781933┤
л▓з
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z╪trace_0z┘trace_1
"
_generic_user_object
.
u0
v1"
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
┌non_trainable_variables
█layers
▄metrics
 ▌layer_regularization_losses
▐layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
Є
▀trace_02╙
,__inference_conv7_table_layer_call_fn_781942в
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
 z▀trace_0
Н
рtrace_02ю
G__inference_conv7_table_layer_call_and_return_conditional_losses_781953в
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
 zрtrace_0
.:,АА2conv7_table/kernel
:А2conv7_table/bias
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
.
~0
1"
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
·
цtrace_02█
4__inference_block8_conv1_column_layer_call_fn_781962в
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
 zцtrace_0
Х
чtrace_02Ў
O__inference_block8_conv1_column_layer_call_and_return_conditional_losses_781973в
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
 zчtrace_0
6:4АА2block8_conv1_column/kernel
':%А2block8_conv1_column/bias
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
╕
шnon_trainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses"
_generic_user_object
Ї
эtrace_02╒
.__inference_up_sampling2d_layer_call_fn_781978в
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
 zэtrace_0
П
юtrace_02Ё
I__inference_up_sampling2d_layer_call_and_return_conditional_losses_781990в
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
 zюtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
яnon_trainable_variables
Ёlayers
ёmetrics
 Єlayer_regularization_losses
єlayer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses"
_generic_user_object
Ў
Їtrace_02╫
0__inference_up_sampling2d_4_layer_call_fn_781995в
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
 zЇtrace_0
С
їtrace_02Є
K__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_782007в
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
 zїtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Ўnon_trainable_variables
ўlayers
°metrics
 ∙layer_regularization_losses
·layer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
Є
√trace_02╙
,__inference_concatenate_layer_call_fn_782013в
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
 z√trace_0
Н
№trace_02ю
G__inference_concatenate_layer_call_and_return_conditional_losses_782020в
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
 z№trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
¤non_trainable_variables
■layers
 metrics
 Аlayer_regularization_losses
Бlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
Ї
Вtrace_02╒
.__inference_concatenate_2_layer_call_fn_782026в
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
 zВtrace_0
П
Гtrace_02Ё
I__inference_concatenate_2_layer_call_and_return_conditional_losses_782033в
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
 zГtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Дnon_trainable_variables
Еlayers
Жmetrics
 Зlayer_regularization_losses
Иlayer_metrics
Щ	variables
Ъtrainable_variables
Ыregularization_losses
Э__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
Ў
Йtrace_02╫
0__inference_up_sampling2d_1_layer_call_fn_782038в
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
 zЙtrace_0
С
Кtrace_02Є
K__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_782050в
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
 zКtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
Я	variables
аtrainable_variables
бregularization_losses
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
Ў
Рtrace_02╫
0__inference_up_sampling2d_5_layer_call_fn_782055в
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
 zРtrace_0
С
Сtrace_02Є
K__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_782067в
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
 zСtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
Ї
Чtrace_02╒
.__inference_concatenate_1_layer_call_fn_782073в
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
 zЧtrace_0
П
Шtrace_02Ё
I__inference_concatenate_1_layer_call_and_return_conditional_losses_782080в
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
 zШtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
л	variables
мtrainable_variables
нregularization_losses
п__call__
+░&call_and_return_all_conditional_losses
'░"call_and_return_conditional_losses"
_generic_user_object
Ї
Юtrace_02╒
.__inference_concatenate_3_layer_call_fn_782086в
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
 zЮtrace_0
П
Яtrace_02Ё
I__inference_concatenate_3_layer_call_and_return_conditional_losses_782093в
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
 zЯtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
▒	variables
▓trainable_variables
│regularization_losses
╡__call__
+╢&call_and_return_all_conditional_losses
'╢"call_and_return_conditional_losses"
_generic_user_object
Ў
еtrace_02╫
0__inference_up_sampling2d_2_layer_call_fn_782098в
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
 zеtrace_0
С
жtrace_02Є
K__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_782110в
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
 zжtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
зnon_trainable_variables
иlayers
йmetrics
 кlayer_regularization_losses
лlayer_metrics
╖	variables
╕trainable_variables
╣regularization_losses
╗__call__
+╝&call_and_return_all_conditional_losses
'╝"call_and_return_conditional_losses"
_generic_user_object
Ў
мtrace_02╫
0__inference_up_sampling2d_6_layer_call_fn_782115в
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
 zмtrace_0
С
нtrace_02Є
K__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_782127в
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
 zнtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
оnon_trainable_variables
пlayers
░metrics
 ▒layer_regularization_losses
▓layer_metrics
╜	variables
╛trainable_variables
┐regularization_losses
┴__call__
+┬&call_and_return_all_conditional_losses
'┬"call_and_return_conditional_losses"
_generic_user_object
Ў
│trace_02╫
0__inference_up_sampling2d_3_layer_call_fn_782132в
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
 z│trace_0
С
┤trace_02Є
K__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_782144в
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
 z┤trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╡non_trainable_variables
╢layers
╖metrics
 ╕layer_regularization_losses
╣layer_metrics
├	variables
─trainable_variables
┼regularization_losses
╟__call__
+╚&call_and_return_all_conditional_losses
'╚"call_and_return_conditional_losses"
_generic_user_object
Ў
║trace_02╫
0__inference_up_sampling2d_7_layer_call_fn_782149в
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
 z║trace_0
С
╗trace_02Є
K__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_782161в
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
 z╗trace_0
0
╧0
╨1"
trackable_list_wrapper
0
╧0
╨1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╝non_trainable_variables
╜layers
╛metrics
 ┐layer_regularization_losses
└layer_metrics
╔	variables
╩trainable_variables
╦regularization_losses
═__call__
+╬&call_and_return_all_conditional_losses
'╬"call_and_return_conditional_losses"
_generic_user_object
є
┴trace_02╘
-__inference_table_output_layer_call_fn_782170в
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
 z┴trace_0
О
┬trace_02я
H__inference_table_output_layer_call_and_return_conditional_losses_782203в
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
 z┬trace_0
.:,А
2table_output/kernel
:2table_output/bias
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
0
╪0
┘1"
trackable_list_wrapper
0
╪0
┘1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
├non_trainable_variables
─layers
┼metrics
 ╞layer_regularization_losses
╟layer_metrics
╥	variables
╙trainable_variables
╘regularization_losses
╓__call__
+╫&call_and_return_all_conditional_losses
'╫"call_and_return_conditional_losses"
_generic_user_object
Ї
╚trace_02╒
.__inference_column_output_layer_call_fn_782212в
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
 z╚trace_0
П
╔trace_02Ё
I__inference_column_output_layer_call_and_return_conditional_losses_782245в
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
 z╔trace_0
/:-А
2column_output/kernel
 :2column_output/bias
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
-:+@2block1_conv1/kernel
:@2block1_conv1/bias
-:+@@2block1_conv2/kernel
:@2block1_conv2/bias
.:,@А2block2_conv1/kernel
 :А2block2_conv1/bias
/:-АА2block2_conv2/kernel
 :А2block2_conv2/bias
/:-АА2block3_conv1/kernel
 :А2block3_conv1/bias
/:-АА2block3_conv2/kernel
 :А2block3_conv2/bias
/:-АА2block3_conv3/kernel
 :А2block3_conv3/bias
/:-АА2block3_conv4/kernel
 :А2block3_conv4/bias
/:-АА2block4_conv1/kernel
 :А2block4_conv1/bias
/:-АА2block4_conv2/kernel
 :А2block4_conv2/bias
/:-АА2block4_conv3/kernel
 :А2block4_conv3/bias
/:-АА2block4_conv4/kernel
 :А2block4_conv4/bias
/:-АА2block5_conv1/kernel
 :А2block5_conv1/bias
/:-АА2block5_conv2/kernel
 :А2block5_conv2/bias
/:-АА2block5_conv3/kernel
 :А2block5_conv3/bias
/:-АА2block5_conv4/kernel
 :А2block5_conv4/bias
╢
█0
▄1
▌2
▐3
▀4
р5
с6
т7
у8
ф9
х10
ц11
ч12
ш13
щ14
ъ15
ы16
ь17
э18
ю19
я20
Ё21
ё22
Є23
є24
Ї25
ї26
Ў27
ў28
°29
∙30
·31"
trackable_list_wrapper
╓
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
19
20
21
22
23"
trackable_list_wrapper
H
╩0
╦1
╠2
═3
╬4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
·Bў
)__inference_tablenet_layer_call_fn_779788input"└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
√B°
)__inference_tablenet_layer_call_fn_780804inputs"└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
√B°
)__inference_tablenet_layer_call_fn_780903inputs"└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
·Bў
)__inference_tablenet_layer_call_fn_780354input"└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЦBУ
D__inference_tablenet_layer_call_and_return_conditional_losses_781141inputs"└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЦBУ
D__inference_tablenet_layer_call_and_return_conditional_losses_781400inputs"└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ХBТ
D__inference_tablenet_layer_call_and_return_conditional_losses_780476input"└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ХBТ
D__inference_tablenet_layer_call_and_return_conditional_losses_780598input"└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
╔B╞
$__inference_signature_wrapper_780705input"Ф
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
0
█0
▄1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╧non_trainable_variables
╨layers
╤metrics
 ╥layer_regularization_losses
╙layer_metrics
П	variables
Рtrainable_variables
Сregularization_losses
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
є
╘trace_02╘
-__inference_block1_conv1_layer_call_fn_782254в
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
 z╘trace_0
О
╒trace_02я
H__inference_block1_conv1_layer_call_and_return_conditional_losses_782265в
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
 z╒trace_0
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
0
▌0
▐1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╓non_trainable_variables
╫layers
╪metrics
 ┘layer_regularization_losses
┌layer_metrics
Ц	variables
Чtrainable_variables
Шregularization_losses
Ъ__call__
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses"
_generic_user_object
є
█trace_02╘
-__inference_block1_conv2_layer_call_fn_782274в
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
 z█trace_0
О
▄trace_02я
H__inference_block1_conv2_layer_call_and_return_conditional_losses_782285в
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
 z▄trace_0
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
╕
▌non_trainable_variables
▐layers
▀metrics
 рlayer_regularization_losses
сlayer_metrics
Э	variables
Юtrainable_variables
Яregularization_losses
б__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses"
_generic_user_object
Є
тtrace_02╙
,__inference_block1_pool_layer_call_fn_782290в
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
 zтtrace_0
Н
уtrace_02ю
G__inference_block1_pool_layer_call_and_return_conditional_losses_782295в
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
 zуtrace_0
0
▀0
р1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
г	variables
дtrainable_variables
еregularization_losses
з__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses"
_generic_user_object
є
щtrace_02╘
-__inference_block2_conv1_layer_call_fn_782304в
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
 zщtrace_0
О
ъtrace_02я
H__inference_block2_conv1_layer_call_and_return_conditional_losses_782315в
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
 zъtrace_0
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
0
с0
т1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
яlayer_metrics
к	variables
лtrainable_variables
мregularization_losses
о__call__
+п&call_and_return_all_conditional_losses
'п"call_and_return_conditional_losses"
_generic_user_object
є
Ёtrace_02╘
-__inference_block2_conv2_layer_call_fn_782324в
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
 zЁtrace_0
О
ёtrace_02я
H__inference_block2_conv2_layer_call_and_return_conditional_losses_782335в
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
 zёtrace_0
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
╕
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Ўlayer_metrics
▒	variables
▓trainable_variables
│regularization_losses
╡__call__
+╢&call_and_return_all_conditional_losses
'╢"call_and_return_conditional_losses"
_generic_user_object
Є
ўtrace_02╙
,__inference_block2_pool_layer_call_fn_782340в
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
 zўtrace_0
Н
°trace_02ю
G__inference_block2_pool_layer_call_and_return_conditional_losses_782345в
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
 z°trace_0
0
у0
ф1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
∙non_trainable_variables
·layers
√metrics
 №layer_regularization_losses
¤layer_metrics
╖	variables
╕trainable_variables
╣regularization_losses
╗__call__
+╝&call_and_return_all_conditional_losses
'╝"call_and_return_conditional_losses"
_generic_user_object
є
■trace_02╘
-__inference_block3_conv1_layer_call_fn_782354в
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
 z■trace_0
О
 trace_02я
H__inference_block3_conv1_layer_call_and_return_conditional_losses_782365в
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
 z trace_0
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
0
х0
ц1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
╛	variables
┐trainable_variables
└regularization_losses
┬__call__
+├&call_and_return_all_conditional_losses
'├"call_and_return_conditional_losses"
_generic_user_object
є
Еtrace_02╘
-__inference_block3_conv2_layer_call_fn_782374в
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
 zЕtrace_0
О
Жtrace_02я
H__inference_block3_conv2_layer_call_and_return_conditional_losses_782385в
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
 zЖtrace_0
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
0
ч0
ш1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
┼	variables
╞trainable_variables
╟regularization_losses
╔__call__
+╩&call_and_return_all_conditional_losses
'╩"call_and_return_conditional_losses"
_generic_user_object
є
Мtrace_02╘
-__inference_block3_conv3_layer_call_fn_782394в
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
 zМtrace_0
О
Нtrace_02я
H__inference_block3_conv3_layer_call_and_return_conditional_losses_782405в
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
 zНtrace_0
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
0
щ0
ъ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
╠	variables
═trainable_variables
╬regularization_losses
╨__call__
+╤&call_and_return_all_conditional_losses
'╤"call_and_return_conditional_losses"
_generic_user_object
є
Уtrace_02╘
-__inference_block3_conv4_layer_call_fn_782414в
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
 zУtrace_0
О
Фtrace_02я
H__inference_block3_conv4_layer_call_and_return_conditional_losses_782425в
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
 zФtrace_0
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
╕
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
╙	variables
╘trainable_variables
╒regularization_losses
╫__call__
+╪&call_and_return_all_conditional_losses
'╪"call_and_return_conditional_losses"
_generic_user_object
Є
Ъtrace_02╙
,__inference_block3_pool_layer_call_fn_782430в
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
 zЪtrace_0
Н
Ыtrace_02ю
G__inference_block3_pool_layer_call_and_return_conditional_losses_782435в
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
 zЫtrace_0
0
ы0
ь1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
┘	variables
┌trainable_variables
█regularization_losses
▌__call__
+▐&call_and_return_all_conditional_losses
'▐"call_and_return_conditional_losses"
_generic_user_object
є
бtrace_02╘
-__inference_block4_conv1_layer_call_fn_782444в
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
 zбtrace_0
О
вtrace_02я
H__inference_block4_conv1_layer_call_and_return_conditional_losses_782455в
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
 zвtrace_0
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
0
э0
ю1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
р	variables
сtrainable_variables
тregularization_losses
ф__call__
+х&call_and_return_all_conditional_losses
'х"call_and_return_conditional_losses"
_generic_user_object
є
иtrace_02╘
-__inference_block4_conv2_layer_call_fn_782464в
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
 zиtrace_0
О
йtrace_02я
H__inference_block4_conv2_layer_call_and_return_conditional_losses_782475в
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
 zйtrace_0
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
0
я0
Ё1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
ч	variables
шtrainable_variables
щregularization_losses
ы__call__
+ь&call_and_return_all_conditional_losses
'ь"call_and_return_conditional_losses"
_generic_user_object
є
пtrace_02╘
-__inference_block4_conv3_layer_call_fn_782484в
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
 zпtrace_0
О
░trace_02я
H__inference_block4_conv3_layer_call_and_return_conditional_losses_782495в
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
 z░trace_0
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
0
ё0
Є1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
▒non_trainable_variables
▓layers
│metrics
 ┤layer_regularization_losses
╡layer_metrics
ю	variables
яtrainable_variables
Ёregularization_losses
Є__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
є
╢trace_02╘
-__inference_block4_conv4_layer_call_fn_782504в
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
 z╢trace_0
О
╖trace_02я
H__inference_block4_conv4_layer_call_and_return_conditional_losses_782515в
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
 z╖trace_0
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
╕
╕non_trainable_variables
╣layers
║metrics
 ╗layer_regularization_losses
╝layer_metrics
ї	variables
Ўtrainable_variables
ўregularization_losses
∙__call__
+·&call_and_return_all_conditional_losses
'·"call_and_return_conditional_losses"
_generic_user_object
Є
╜trace_02╙
,__inference_block4_pool_layer_call_fn_782520в
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
 z╜trace_0
Н
╛trace_02ю
G__inference_block4_pool_layer_call_and_return_conditional_losses_782525в
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
 z╛trace_0
0
є0
Ї1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
┐non_trainable_variables
└layers
┴metrics
 ┬layer_regularization_losses
├layer_metrics
√	variables
№trainable_variables
¤regularization_losses
 __call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
є
─trace_02╘
-__inference_block5_conv1_layer_call_fn_782534в
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
 z─trace_0
О
┼trace_02я
H__inference_block5_conv1_layer_call_and_return_conditional_losses_782545в
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
 z┼trace_0
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
0
ї0
Ў1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╞non_trainable_variables
╟layers
╚metrics
 ╔layer_regularization_losses
╩layer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
є
╦trace_02╘
-__inference_block5_conv2_layer_call_fn_782554в
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
 z╦trace_0
О
╠trace_02я
H__inference_block5_conv2_layer_call_and_return_conditional_losses_782565в
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
 z╠trace_0
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
0
ў0
°1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
═non_trainable_variables
╬layers
╧metrics
 ╨layer_regularization_losses
╤layer_metrics
Й	variables
Кtrainable_variables
Лregularization_losses
Н__call__
+О&call_and_return_all_conditional_losses
'О"call_and_return_conditional_losses"
_generic_user_object
є
╥trace_02╘
-__inference_block5_conv3_layer_call_fn_782574в
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
 z╥trace_0
О
╙trace_02я
H__inference_block5_conv3_layer_call_and_return_conditional_losses_782585в
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
 z╙trace_0
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
0
∙0
·1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╘non_trainable_variables
╒layers
╓metrics
 ╫layer_regularization_losses
╪layer_metrics
Р	variables
Сtrainable_variables
Тregularization_losses
Ф__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses"
_generic_user_object
є
┘trace_02╘
-__inference_block5_conv4_layer_call_fn_782594в
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
 z┘trace_0
О
┌trace_02я
H__inference_block5_conv4_layer_call_and_return_conditional_losses_782605в
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
 z┌trace_0
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
╕
█non_trainable_variables
▄layers
▌metrics
 ▐layer_regularization_losses
▀layer_metrics
Ч	variables
Шtrainable_variables
Щregularization_losses
Ы__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses"
_generic_user_object
Є
рtrace_02╙
,__inference_block5_pool_layer_call_fn_782610в
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
 zрtrace_0
Н
сtrace_02ю
G__inference_block5_pool_layer_call_and_return_conditional_losses_782615в
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
 zсtrace_0
╢
█0
▄1
▌2
▐3
▀4
р5
с6
т7
у8
ф9
х10
ц11
ч12
ш13
щ14
ъ15
ы16
ь17
э18
ю19
я20
Ё21
ё22
Є23
є24
Ї25
ї26
Ў27
ў28
°29
∙30
·31"
trackable_list_wrapper
╞
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
.11
/12
013
114
215
316
417
518
619
720
821"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
·Bў
'__inference_VGG-19_layer_call_fn_778563input_1"└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
∙BЎ
'__inference_VGG-19_layer_call_fn_781473inputs"└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
∙BЎ
'__inference_VGG-19_layer_call_fn_781546inputs"└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
·Bў
'__inference_VGG-19_layer_call_fn_779033input_1"└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ФBС
B__inference_VGG-19_layer_call_and_return_conditional_losses_781669inputs"└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ФBС
B__inference_VGG-19_layer_call_and_return_conditional_losses_781792inputs"└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ХBТ
B__inference_VGG-19_layer_call_and_return_conditional_losses_779124input_1"└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ХBТ
B__inference_VGG-19_layer_call_and_return_conditional_losses_779215input_1"└
╖▓│
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

kwonlyargsЪ 
kwonlydefaultsк 
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
сB▐
-__inference_block6_conv1_layer_call_fn_781801inputs"в
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
№B∙
H__inference_block6_conv1_layer_call_and_return_conditional_losses_781812inputs"в
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
ЎBє
0__inference_block6_dropout1_layer_call_fn_781817inputs"┤
л▓з
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЎBє
0__inference_block6_dropout1_layer_call_fn_781822inputs"┤
л▓з
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
СBО
K__inference_block6_dropout1_layer_call_and_return_conditional_losses_781827inputs"┤
л▓з
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
СBО
K__inference_block6_dropout1_layer_call_and_return_conditional_losses_781839inputs"┤
л▓з
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

kwonlyargsЪ 
kwonlydefaultsк 
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
сB▐
-__inference_block6_conv2_layer_call_fn_781848inputs"в
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
№B∙
H__inference_block6_conv2_layer_call_and_return_conditional_losses_781859inputs"в
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
ЎBє
0__inference_block6_dropout2_layer_call_fn_781864inputs"┤
л▓з
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЎBє
0__inference_block6_dropout2_layer_call_fn_781869inputs"┤
л▓з
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
СBО
K__inference_block6_dropout2_layer_call_and_return_conditional_losses_781874inputs"┤
л▓з
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
СBО
K__inference_block6_dropout2_layer_call_and_return_conditional_losses_781886inputs"┤
л▓з
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

kwonlyargsЪ 
kwonlydefaultsк 
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
шBх
4__inference_block7_conv1_column_layer_call_fn_781895inputs"в
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
ГBА
O__inference_block7_conv1_column_layer_call_and_return_conditional_losses_781906inputs"в
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
№B∙
6__inference_block7_dropout_column_layer_call_fn_781911inputs"┤
л▓з
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
№B∙
6__inference_block7_dropout_column_layer_call_fn_781916inputs"┤
л▓з
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЧBФ
Q__inference_block7_dropout_column_layer_call_and_return_conditional_losses_781921inputs"┤
л▓з
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

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЧBФ
Q__inference_block7_dropout_column_layer_call_and_return_conditional_losses_781933inputs"┤
л▓з
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

kwonlyargsЪ 
kwonlydefaultsк 
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
рB▌
,__inference_conv7_table_layer_call_fn_781942inputs"в
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
√B°
G__inference_conv7_table_layer_call_and_return_conditional_losses_781953inputs"в
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
шBх
4__inference_block8_conv1_column_layer_call_fn_781962inputs"в
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
ГBА
O__inference_block8_conv1_column_layer_call_and_return_conditional_losses_781973inputs"в
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
тB▀
.__inference_up_sampling2d_layer_call_fn_781978inputs"в
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
¤B·
I__inference_up_sampling2d_layer_call_and_return_conditional_losses_781990inputs"в
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
0__inference_up_sampling2d_4_layer_call_fn_781995inputs"в
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
K__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_782007inputs"в
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
ьBщ
,__inference_concatenate_layer_call_fn_782013inputs/0inputs/1"в
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
ЗBД
G__inference_concatenate_layer_call_and_return_conditional_losses_782020inputs/0inputs/1"в
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
юBы
.__inference_concatenate_2_layer_call_fn_782026inputs/0inputs/1"в
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
ЙBЖ
I__inference_concatenate_2_layer_call_and_return_conditional_losses_782033inputs/0inputs/1"в
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
0__inference_up_sampling2d_1_layer_call_fn_782038inputs"в
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
K__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_782050inputs"в
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
0__inference_up_sampling2d_5_layer_call_fn_782055inputs"в
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
K__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_782067inputs"в
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
юBы
.__inference_concatenate_1_layer_call_fn_782073inputs/0inputs/1"в
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
ЙBЖ
I__inference_concatenate_1_layer_call_and_return_conditional_losses_782080inputs/0inputs/1"в
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
юBы
.__inference_concatenate_3_layer_call_fn_782086inputs/0inputs/1"в
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
ЙBЖ
I__inference_concatenate_3_layer_call_and_return_conditional_losses_782093inputs/0inputs/1"в
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
0__inference_up_sampling2d_2_layer_call_fn_782098inputs"в
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
K__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_782110inputs"в
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
0__inference_up_sampling2d_6_layer_call_fn_782115inputs"в
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
K__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_782127inputs"в
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
0__inference_up_sampling2d_3_layer_call_fn_782132inputs"в
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
K__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_782144inputs"в
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
0__inference_up_sampling2d_7_layer_call_fn_782149inputs"в
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
K__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_782161inputs"в
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
сB▐
-__inference_table_output_layer_call_fn_782170inputs"в
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
№B∙
H__inference_table_output_layer_call_and_return_conditional_losses_782203inputs"в
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
тB▀
.__inference_column_output_layer_call_fn_782212inputs"в
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
¤B·
I__inference_column_output_layer_call_and_return_conditional_losses_782245inputs"в
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
т	variables
у	keras_api

фtotal

хcount"
_tf_keras_metric
R
ц	variables
ч	keras_api

шtotal

щcount"
_tf_keras_metric
R
ъ	variables
ы	keras_api

ьtotal

эcount"
_tf_keras_metric
c
ю	variables
я	keras_api

Ёtotal

ёcount
Є
_fn_kwargs"
_tf_keras_metric
c
є	variables
Ї	keras_api

їtotal

Ўcount
ў
_fn_kwargs"
_tf_keras_metric
0
█0
▄1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
сB▐
-__inference_block1_conv1_layer_call_fn_782254inputs"в
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
№B∙
H__inference_block1_conv1_layer_call_and_return_conditional_losses_782265inputs"в
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
▌0
▐1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
сB▐
-__inference_block1_conv2_layer_call_fn_782274inputs"в
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
№B∙
H__inference_block1_conv2_layer_call_and_return_conditional_losses_782285inputs"в
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
рB▌
,__inference_block1_pool_layer_call_fn_782290inputs"в
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
√B°
G__inference_block1_pool_layer_call_and_return_conditional_losses_782295inputs"в
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
▀0
р1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
сB▐
-__inference_block2_conv1_layer_call_fn_782304inputs"в
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
№B∙
H__inference_block2_conv1_layer_call_and_return_conditional_losses_782315inputs"в
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
с0
т1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
сB▐
-__inference_block2_conv2_layer_call_fn_782324inputs"в
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
№B∙
H__inference_block2_conv2_layer_call_and_return_conditional_losses_782335inputs"в
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
рB▌
,__inference_block2_pool_layer_call_fn_782340inputs"в
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
√B°
G__inference_block2_pool_layer_call_and_return_conditional_losses_782345inputs"в
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
у0
ф1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
сB▐
-__inference_block3_conv1_layer_call_fn_782354inputs"в
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
№B∙
H__inference_block3_conv1_layer_call_and_return_conditional_losses_782365inputs"в
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
х0
ц1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
сB▐
-__inference_block3_conv2_layer_call_fn_782374inputs"в
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
№B∙
H__inference_block3_conv2_layer_call_and_return_conditional_losses_782385inputs"в
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
ч0
ш1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
сB▐
-__inference_block3_conv3_layer_call_fn_782394inputs"в
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
№B∙
H__inference_block3_conv3_layer_call_and_return_conditional_losses_782405inputs"в
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
щ0
ъ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
сB▐
-__inference_block3_conv4_layer_call_fn_782414inputs"в
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
№B∙
H__inference_block3_conv4_layer_call_and_return_conditional_losses_782425inputs"в
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
рB▌
,__inference_block3_pool_layer_call_fn_782430inputs"в
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
√B°
G__inference_block3_pool_layer_call_and_return_conditional_losses_782435inputs"в
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
ы0
ь1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
сB▐
-__inference_block4_conv1_layer_call_fn_782444inputs"в
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
№B∙
H__inference_block4_conv1_layer_call_and_return_conditional_losses_782455inputs"в
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
э0
ю1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
сB▐
-__inference_block4_conv2_layer_call_fn_782464inputs"в
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
№B∙
H__inference_block4_conv2_layer_call_and_return_conditional_losses_782475inputs"в
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
я0
Ё1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
сB▐
-__inference_block4_conv3_layer_call_fn_782484inputs"в
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
№B∙
H__inference_block4_conv3_layer_call_and_return_conditional_losses_782495inputs"в
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
ё0
Є1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
сB▐
-__inference_block4_conv4_layer_call_fn_782504inputs"в
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
№B∙
H__inference_block4_conv4_layer_call_and_return_conditional_losses_782515inputs"в
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
рB▌
,__inference_block4_pool_layer_call_fn_782520inputs"в
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
√B°
G__inference_block4_pool_layer_call_and_return_conditional_losses_782525inputs"в
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
є0
Ї1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
сB▐
-__inference_block5_conv1_layer_call_fn_782534inputs"в
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
№B∙
H__inference_block5_conv1_layer_call_and_return_conditional_losses_782545inputs"в
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
ї0
Ў1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
сB▐
-__inference_block5_conv2_layer_call_fn_782554inputs"в
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
№B∙
H__inference_block5_conv2_layer_call_and_return_conditional_losses_782565inputs"в
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
ў0
°1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
сB▐
-__inference_block5_conv3_layer_call_fn_782574inputs"в
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
№B∙
H__inference_block5_conv3_layer_call_and_return_conditional_losses_782585inputs"в
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
∙0
·1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
сB▐
-__inference_block5_conv4_layer_call_fn_782594inputs"в
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
№B∙
H__inference_block5_conv4_layer_call_and_return_conditional_losses_782605inputs"в
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
рB▌
,__inference_block5_pool_layer_call_fn_782610inputs"в
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
√B°
G__inference_block5_pool_layer_call_and_return_conditional_losses_782615inputs"в
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
ф0
х1"
trackable_list_wrapper
.
т	variables"
_generic_user_object
:  (2total
:  (2count
0
ш0
щ1"
trackable_list_wrapper
.
ц	variables"
_generic_user_object
:  (2total
:  (2count
0
ь0
э1"
trackable_list_wrapper
.
ъ	variables"
_generic_user_object
:  (2total
:  (2count
0
Ё0
ё1"
trackable_list_wrapper
.
ю	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
ї0
Ў1"
trackable_list_wrapper
.
є	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
4:2АА2Adam/block6_conv1/kernel/m
%:#А2Adam/block6_conv1/bias/m
4:2АА2Adam/block6_conv2/kernel/m
%:#А2Adam/block6_conv2/bias/m
;:9АА2!Adam/block7_conv1_column/kernel/m
,:*А2Adam/block7_conv1_column/bias/m
3:1АА2Adam/conv7_table/kernel/m
$:"А2Adam/conv7_table/bias/m
;:9АА2!Adam/block8_conv1_column/kernel/m
,:*А2Adam/block8_conv1_column/bias/m
3:1А
2Adam/table_output/kernel/m
$:"2Adam/table_output/bias/m
4:2А
2Adam/column_output/kernel/m
%:#2Adam/column_output/bias/m
4:2АА2Adam/block6_conv1/kernel/v
%:#А2Adam/block6_conv1/bias/v
4:2АА2Adam/block6_conv2/kernel/v
%:#А2Adam/block6_conv2/bias/v
;:9АА2!Adam/block7_conv1_column/kernel/v
,:*А2Adam/block7_conv1_column/bias/v
3:1АА2Adam/conv7_table/kernel/v
$:"А2Adam/conv7_table/bias/v
;:9АА2!Adam/block8_conv1_column/kernel/v
,:*А2Adam/block8_conv1_column/bias/v
3:1А
2Adam/table_output/kernel/v
$:"2Adam/table_output/bias/v
4:2А
2Adam/column_output/kernel/v
%:#2Adam/column_output/bias/v╓
B__inference_VGG-19_layer_call_and_return_conditional_losses_779124П@█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·Bв?
8в5
+К(
input_1         АА
p 

 
к "ЖвВ
{Ъx
&К#
0/0           А
&К#
0/1         А
&К#
0/2         А
Ъ ╓
B__inference_VGG-19_layer_call_and_return_conditional_losses_779215П@█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·Bв?
8в5
+К(
input_1         АА
p

 
к "ЖвВ
{Ъx
&К#
0/0           А
&К#
0/1         А
&К#
0/2         А
Ъ ╒
B__inference_VGG-19_layer_call_and_return_conditional_losses_781669О@█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·Aв>
7в4
*К'
inputs         АА
p 

 
к "ЖвВ
{Ъx
&К#
0/0           А
&К#
0/1         А
&К#
0/2         А
Ъ ╒
B__inference_VGG-19_layer_call_and_return_conditional_losses_781792О@█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·Aв>
7в4
*К'
inputs         АА
p

 
к "ЖвВ
{Ъx
&К#
0/0           А
&К#
0/1         А
&К#
0/2         А
Ъ й
'__inference_VGG-19_layer_call_fn_778563¤@█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·Bв?
8в5
+К(
input_1         АА
p 

 
к "uЪr
$К!
0           А
$К!
1         А
$К!
2         Ай
'__inference_VGG-19_layer_call_fn_779033¤@█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·Bв?
8в5
+К(
input_1         АА
p

 
к "uЪr
$К!
0           А
$К!
1         А
$К!
2         Аи
'__inference_VGG-19_layer_call_fn_781473№@█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·Aв>
7в4
*К'
inputs         АА
p 

 
к "uЪr
$К!
0           А
$К!
1         А
$К!
2         Аи
'__inference_VGG-19_layer_call_fn_781546№@█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·Aв>
7в4
*К'
inputs         АА
p

 
к "uЪr
$К!
0           А
$К!
1         А
$К!
2         А┴
!__inference__wrapped_model_778145ЫR█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·EFUVef~uv╪┘╧╨8в5
.в+
)К&
input         АА
к "КкЖ
B
column_output1К.
column_output         АА
@
table_output0К-
table_output         АА╛
H__inference_block1_conv1_layer_call_and_return_conditional_losses_782265r█▄9в6
/в,
*К'
inputs         АА
к "/в,
%К"
0         АА@
Ъ Ц
-__inference_block1_conv1_layer_call_fn_782254e█▄9в6
/в,
*К'
inputs         АА
к ""К         АА@╛
H__inference_block1_conv2_layer_call_and_return_conditional_losses_782285r▌▐9в6
/в,
*К'
inputs         АА@
к "/в,
%К"
0         АА@
Ъ Ц
-__inference_block1_conv2_layer_call_fn_782274e▌▐9в6
/в,
*К'
inputs         АА@
к ""К         АА@ъ
G__inference_block1_pool_layer_call_and_return_conditional_losses_782295ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ┬
,__inference_block1_pool_layer_call_fn_782290СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ┐
H__inference_block2_conv1_layer_call_and_return_conditional_losses_782315s▀р9в6
/в,
*К'
inputs         АА@
к "0в-
&К#
0         ААА
Ъ Ч
-__inference_block2_conv1_layer_call_fn_782304f▀р9в6
/в,
*К'
inputs         АА@
к "#К          ААА└
H__inference_block2_conv2_layer_call_and_return_conditional_losses_782335tст:в7
0в-
+К(
inputs         ААА
к "0в-
&К#
0         ААА
Ъ Ш
-__inference_block2_conv2_layer_call_fn_782324gст:в7
0в-
+К(
inputs         ААА
к "#К          АААъ
G__inference_block2_pool_layer_call_and_return_conditional_losses_782345ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ┬
,__inference_block2_pool_layer_call_fn_782340СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ╝
H__inference_block3_conv1_layer_call_and_return_conditional_losses_782365pуф8в5
.в+
)К&
inputs         @@А
к ".в+
$К!
0         @@А
Ъ Ф
-__inference_block3_conv1_layer_call_fn_782354cуф8в5
.в+
)К&
inputs         @@А
к "!К         @@А╝
H__inference_block3_conv2_layer_call_and_return_conditional_losses_782385pхц8в5
.в+
)К&
inputs         @@А
к ".в+
$К!
0         @@А
Ъ Ф
-__inference_block3_conv2_layer_call_fn_782374cхц8в5
.в+
)К&
inputs         @@А
к "!К         @@А╝
H__inference_block3_conv3_layer_call_and_return_conditional_losses_782405pчш8в5
.в+
)К&
inputs         @@А
к ".в+
$К!
0         @@А
Ъ Ф
-__inference_block3_conv3_layer_call_fn_782394cчш8в5
.в+
)К&
inputs         @@А
к "!К         @@А╝
H__inference_block3_conv4_layer_call_and_return_conditional_losses_782425pщъ8в5
.в+
)К&
inputs         @@А
к ".в+
$К!
0         @@А
Ъ Ф
-__inference_block3_conv4_layer_call_fn_782414cщъ8в5
.в+
)К&
inputs         @@А
к "!К         @@Аъ
G__inference_block3_pool_layer_call_and_return_conditional_losses_782435ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ┬
,__inference_block3_pool_layer_call_fn_782430СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ╝
H__inference_block4_conv1_layer_call_and_return_conditional_losses_782455pыь8в5
.в+
)К&
inputs           А
к ".в+
$К!
0           А
Ъ Ф
-__inference_block4_conv1_layer_call_fn_782444cыь8в5
.в+
)К&
inputs           А
к "!К           А╝
H__inference_block4_conv2_layer_call_and_return_conditional_losses_782475pэю8в5
.в+
)К&
inputs           А
к ".в+
$К!
0           А
Ъ Ф
-__inference_block4_conv2_layer_call_fn_782464cэю8в5
.в+
)К&
inputs           А
к "!К           А╝
H__inference_block4_conv3_layer_call_and_return_conditional_losses_782495pяЁ8в5
.в+
)К&
inputs           А
к ".в+
$К!
0           А
Ъ Ф
-__inference_block4_conv3_layer_call_fn_782484cяЁ8в5
.в+
)К&
inputs           А
к "!К           А╝
H__inference_block4_conv4_layer_call_and_return_conditional_losses_782515pёЄ8в5
.в+
)К&
inputs           А
к ".в+
$К!
0           А
Ъ Ф
-__inference_block4_conv4_layer_call_fn_782504cёЄ8в5
.в+
)К&
inputs           А
к "!К           Аъ
G__inference_block4_pool_layer_call_and_return_conditional_losses_782525ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ┬
,__inference_block4_pool_layer_call_fn_782520СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ╝
H__inference_block5_conv1_layer_call_and_return_conditional_losses_782545pєЇ8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Ф
-__inference_block5_conv1_layer_call_fn_782534cєЇ8в5
.в+
)К&
inputs         А
к "!К         А╝
H__inference_block5_conv2_layer_call_and_return_conditional_losses_782565pїЎ8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Ф
-__inference_block5_conv2_layer_call_fn_782554cїЎ8в5
.в+
)К&
inputs         А
к "!К         А╝
H__inference_block5_conv3_layer_call_and_return_conditional_losses_782585pў°8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Ф
-__inference_block5_conv3_layer_call_fn_782574cў°8в5
.в+
)К&
inputs         А
к "!К         А╝
H__inference_block5_conv4_layer_call_and_return_conditional_losses_782605p∙·8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Ф
-__inference_block5_conv4_layer_call_fn_782594c∙·8в5
.в+
)К&
inputs         А
к "!К         Аъ
G__inference_block5_pool_layer_call_and_return_conditional_losses_782615ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ┬
,__inference_block5_pool_layer_call_fn_782610СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ║
H__inference_block6_conv1_layer_call_and_return_conditional_losses_781812nEF8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Т
-__inference_block6_conv1_layer_call_fn_781801aEF8в5
.в+
)К&
inputs         А
к "!К         А║
H__inference_block6_conv2_layer_call_and_return_conditional_losses_781859nUV8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Т
-__inference_block6_conv2_layer_call_fn_781848aUV8в5
.в+
)К&
inputs         А
к "!К         А╜
K__inference_block6_dropout1_layer_call_and_return_conditional_losses_781827n<в9
2в/
)К&
inputs         А
p 
к ".в+
$К!
0         А
Ъ ╜
K__inference_block6_dropout1_layer_call_and_return_conditional_losses_781839n<в9
2в/
)К&
inputs         А
p
к ".в+
$К!
0         А
Ъ Х
0__inference_block6_dropout1_layer_call_fn_781817a<в9
2в/
)К&
inputs         А
p 
к "!К         АХ
0__inference_block6_dropout1_layer_call_fn_781822a<в9
2в/
)К&
inputs         А
p
к "!К         А╜
K__inference_block6_dropout2_layer_call_and_return_conditional_losses_781874n<в9
2в/
)К&
inputs         А
p 
к ".в+
$К!
0         А
Ъ ╜
K__inference_block6_dropout2_layer_call_and_return_conditional_losses_781886n<в9
2в/
)К&
inputs         А
p
к ".в+
$К!
0         А
Ъ Х
0__inference_block6_dropout2_layer_call_fn_781864a<в9
2в/
)К&
inputs         А
p 
к "!К         АХ
0__inference_block6_dropout2_layer_call_fn_781869a<в9
2в/
)К&
inputs         А
p
к "!К         А┴
O__inference_block7_conv1_column_layer_call_and_return_conditional_losses_781906nef8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Щ
4__inference_block7_conv1_column_layer_call_fn_781895aef8в5
.в+
)К&
inputs         А
к "!К         А├
Q__inference_block7_dropout_column_layer_call_and_return_conditional_losses_781921n<в9
2в/
)К&
inputs         А
p 
к ".в+
$К!
0         А
Ъ ├
Q__inference_block7_dropout_column_layer_call_and_return_conditional_losses_781933n<в9
2в/
)К&
inputs         А
p
к ".в+
$К!
0         А
Ъ Ы
6__inference_block7_dropout_column_layer_call_fn_781911a<в9
2в/
)К&
inputs         А
p 
к "!К         АЫ
6__inference_block7_dropout_column_layer_call_fn_781916a<в9
2в/
)К&
inputs         А
p
к "!К         А┴
O__inference_block8_conv1_column_layer_call_and_return_conditional_losses_781973n~8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Щ
4__inference_block8_conv1_column_layer_call_fn_781962a~8в5
.в+
)К&
inputs         А
к "!К         Ас
I__inference_column_output_layer_call_and_return_conditional_losses_782245У╪┘JвG
@в=
;К8
inputs,                           А

к "?в<
5К2
0+                           
Ъ ╣
.__inference_column_output_layer_call_fn_782212Ж╪┘JвG
@в=
;К8
inputs,                           А

к "2К/+                           ■
I__inference_concatenate_1_layer_call_and_return_conditional_losses_782080░~в{
tвq
oЪl
=К:
inputs/0,                           А
+К(
inputs/1           А
к ".в+
$К!
0           А

Ъ ╓
.__inference_concatenate_1_layer_call_fn_782073г~в{
tвq
oЪl
=К:
inputs/0,                           А
+К(
inputs/1           А
к "!К           А
■
I__inference_concatenate_2_layer_call_and_return_conditional_losses_782033░~в{
tвq
oЪl
=К:
inputs/0,                           А
+К(
inputs/1         А
к ".в+
$К!
0         А
Ъ ╓
.__inference_concatenate_2_layer_call_fn_782026г~в{
tвq
oЪl
=К:
inputs/0,                           А
+К(
inputs/1         А
к "!К         А■
I__inference_concatenate_3_layer_call_and_return_conditional_losses_782093░~в{
tвq
oЪl
=К:
inputs/0,                           А
+К(
inputs/1           А
к ".в+
$К!
0           А

Ъ ╓
.__inference_concatenate_3_layer_call_fn_782086г~в{
tвq
oЪl
=К:
inputs/0,                           А
+К(
inputs/1           А
к "!К           А
№
G__inference_concatenate_layer_call_and_return_conditional_losses_782020░~в{
tвq
oЪl
=К:
inputs/0,                           А
+К(
inputs/1         А
к ".в+
$К!
0         А
Ъ ╘
,__inference_concatenate_layer_call_fn_782013г~в{
tвq
oЪl
=К:
inputs/0,                           А
+К(
inputs/1         А
к "!К         А╣
G__inference_conv7_table_layer_call_and_return_conditional_losses_781953nuv8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ С
,__inference_conv7_table_layer_call_fn_781942auv8в5
.в+
)К&
inputs         А
к "!К         А═
$__inference_signature_wrapper_780705дR█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·EFUVef~uv╪┘╧╨Aв>
в 
7к4
2
input)К&
input         АА"КкЖ
B
column_output1К.
column_output         АА
@
table_output0К-
table_output         ААр
H__inference_table_output_layer_call_and_return_conditional_losses_782203У╧╨JвG
@в=
;К8
inputs,                           А

к "?в<
5К2
0+                           
Ъ ╕
-__inference_table_output_layer_call_fn_782170Ж╧╨JвG
@в=
;К8
inputs,                           А

к "2К/+                           р
D__inference_tablenet_layer_call_and_return_conditional_losses_780476ЧR█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·EFUVef~uv╪┘╧╨@в=
6в3
)К&
input         АА
p 

 
к "в|
uЪr
7К4
0/0+                           
7К4
0/1+                           
Ъ р
D__inference_tablenet_layer_call_and_return_conditional_losses_780598ЧR█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·EFUVef~uv╪┘╧╨@в=
6в3
)К&
input         АА
p

 
к "в|
uЪr
7К4
0/0+                           
7К4
0/1+                           
Ъ ┴
D__inference_tablenet_layer_call_and_return_conditional_losses_781141°R█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·EFUVef~uv╪┘╧╨Aв>
7в4
*К'
inputs         АА
p 

 
к "_в\
UЪR
'К$
0/0         АА
'К$
0/1         АА
Ъ ┴
D__inference_tablenet_layer_call_and_return_conditional_losses_781400°R█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·EFUVef~uv╪┘╧╨Aв>
7в4
*К'
inputs         АА
p

 
к "_в\
UЪR
'К$
0/0         АА
'К$
0/1         АА
Ъ ╖
)__inference_tablenet_layer_call_fn_779788ЙR█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·EFUVef~uv╪┘╧╨@в=
6в3
)К&
input         АА
p 

 
к "qЪn
5К2
0+                           
5К2
1+                           ╖
)__inference_tablenet_layer_call_fn_780354ЙR█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·EFUVef~uv╪┘╧╨@в=
6в3
)К&
input         АА
p

 
к "qЪn
5К2
0+                           
5К2
1+                           ╕
)__inference_tablenet_layer_call_fn_780804КR█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·EFUVef~uv╪┘╧╨Aв>
7в4
*К'
inputs         АА
p 

 
к "qЪn
5К2
0+                           
5К2
1+                           ╕
)__inference_tablenet_layer_call_fn_780903КR█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·EFUVef~uv╪┘╧╨Aв>
7в4
*К'
inputs         АА
p

 
к "qЪn
5К2
0+                           
5К2
1+                           ю
K__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_782050ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_up_sampling2d_1_layer_call_fn_782038СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_782110ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_up_sampling2d_2_layer_call_fn_782098СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_782144ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_up_sampling2d_3_layer_call_fn_782132СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_782007ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_up_sampling2d_4_layer_call_fn_781995СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_782067ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_up_sampling2d_5_layer_call_fn_782055СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_782127ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_up_sampling2d_6_layer_call_fn_782115СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_782161ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_up_sampling2d_7_layer_call_fn_782149СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ь
I__inference_up_sampling2d_layer_call_and_return_conditional_losses_781990ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ─
.__inference_up_sampling2d_layer_call_fn_781978СRвO
HвE
CК@
inputs4                                    
к ";К84                                    