
E
PlaceholderPlaceholder*
shape:���������?*
dtype0
8
Placeholder_1Placeholder*
dtype0*
shape:
/
zerosConst*
value	B : *
dtype0
Q
count
VariableV2*
dtype0*
	container *
shape: *
shared_name 
p
count/AssignAssigncountzeros*
use_locking(*
T0*
_class

loc:@count*
validate_shape(
@

count/readIdentitycount*
T0*
_class

loc:@count
=
one_hot/on_valueConst*
valueB
 *  �?*
dtype0
>
one_hot/off_valueConst*
valueB
 *    *
dtype0
7
one_hot/depthConst*
value	B :*
dtype0
|
one_hotOneHotPlaceholder_1one_hot/depthone_hot/on_valueone_hot/off_value*
T0*
TI0*
axis���������
R
Layer1/truncated_normal/shapeConst*
valueB"?      *
dtype0
I
Layer1/truncated_normal/meanConst*
valueB
 *    *
dtype0
K
Layer1/truncated_normal/stddevConst*
dtype0*
valueB
 *���=
�
'Layer1/truncated_normal/TruncatedNormalTruncatedNormalLayer1/truncated_normal/shape*

seed *
T0*
dtype0*
seed2 
t
Layer1/truncated_normal/mulMul'Layer1/truncated_normal/TruncatedNormalLayer1/truncated_normal/stddev*
T0
b
Layer1/truncated_normalAddLayer1/truncated_normal/mulLayer1/truncated_normal/mean*
T0
b
Layer1/weight1
VariableV2*
shared_name *
dtype0*
	container *
shape
:?
�
Layer1/weight1/AssignAssignLayer1/weight1Layer1/truncated_normal*!
_class
loc:@Layer1/weight1*
validate_shape(*
use_locking(*
T0
[
Layer1/weight1/readIdentityLayer1/weight1*
T0*!
_class
loc:@Layer1/weight1
<
Layer1/onesConst*
valueB*  �?*
dtype0
\
Layer1/bias1
VariableV2*
shape:*
shared_name *
dtype0*
	container 
�
Layer1/bias1/AssignAssignLayer1/bias1Layer1/ones*
validate_shape(*
use_locking(*
T0*
_class
loc:@Layer1/bias1
U
Layer1/bias1/readIdentityLayer1/bias1*
T0*
_class
loc:@Layer1/bias1
r
Layer1/xw_plus_b/MatMulMatMulPlaceholderLayer1/weight1/read*
T0*
transpose_a( *
transpose_b( 
g
Layer1/xw_plus_bBiasAddLayer1/xw_plus_b/MatMulLayer1/bias1/read*
T0*
data_formatNHWC
.
Layer1/ReluReluLayer1/xw_plus_b*
T0
R
Layer2/truncated_normal/shapeConst*
valueB"      *
dtype0
I
Layer2/truncated_normal/meanConst*
valueB
 *    *
dtype0
K
Layer2/truncated_normal/stddevConst*
valueB
 *���=*
dtype0
�
'Layer2/truncated_normal/TruncatedNormalTruncatedNormalLayer2/truncated_normal/shape*
T0*
dtype0*
seed2 *

seed 
t
Layer2/truncated_normal/mulMul'Layer2/truncated_normal/TruncatedNormalLayer2/truncated_normal/stddev*
T0
b
Layer2/truncated_normalAddLayer2/truncated_normal/mulLayer2/truncated_normal/mean*
T0
b
Layer2/weight2
VariableV2*
shared_name *
dtype0*
	container *
shape
:
�
Layer2/weight2/AssignAssignLayer2/weight2Layer2/truncated_normal*
use_locking(*
T0*!
_class
loc:@Layer2/weight2*
validate_shape(
[
Layer2/weight2/readIdentityLayer2/weight2*
T0*!
_class
loc:@Layer2/weight2
<
Layer2/onesConst*
valueB*  �?*
dtype0
\
Layer2/bias2
VariableV2*
shape:*
shared_name *
dtype0*
	container 
�
Layer2/bias2/AssignAssignLayer2/bias2Layer2/ones*
_class
loc:@Layer2/bias2*
validate_shape(*
use_locking(*
T0
U
Layer2/bias2/readIdentityLayer2/bias2*
_class
loc:@Layer2/bias2*
T0
r
Layer2/xw_plus_b/MatMulMatMulLayer1/ReluLayer2/weight2/read*
T0*
transpose_a( *
transpose_b( 
g
Layer2/xw_plus_bBiasAddLayer2/xw_plus_b/MatMulLayer2/bias2/read*
T0*
data_formatNHWC
.
RankConst*
value	B :*
dtype0
9
ShapeShapeLayer2/xw_plus_b*
T0*
out_type0
0
Rank_1Const*
value	B :*
dtype0
;
Shape_1ShapeLayer2/xw_plus_b*
T0*
out_type0
/
Sub/yConst*
value	B :*
dtype0
"
SubSubRank_1Sub/y*
T0
6
Slice/beginPackSub*
T0*

axis *
N
8

Slice/sizeConst*
valueB:*
dtype0
F
SliceSliceShape_1Slice/begin
Slice/size*
Index0*
T0
F
concat/values_0Const*
valueB:
���������*
dtype0
5
concat/axisConst*
value	B : *
dtype0
U
concatConcatV2concat/values_0Sliceconcat/axis*

Tidx0*
T0*
N
C
ReshapeReshapeLayer2/xw_plus_bconcat*
T0*
Tshape0
 
Rank_2Rankone_hot*
T0
2
Shape_2Shapeone_hot*
T0*
out_type0
1
Sub_1/yConst*
value	B :*
dtype0
&
Sub_1SubRank_2Sub_1/y*
T0
:
Slice_1/beginPackSub_1*
T0*

axis *
N
:
Slice_1/sizeConst*
valueB:*
dtype0
L
Slice_1SliceShape_2Slice_1/beginSlice_1/size*
Index0*
T0
H
concat_1/values_0Const*
valueB:
���������*
dtype0
7
concat_1/axisConst*
value	B : *
dtype0
]
concat_1ConcatV2concat_1/values_0Slice_1concat_1/axis*

Tidx0*
T0*
N
>
	Reshape_1Reshapeone_hotconcat_1*
T0*
Tshape0
[
SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitsReshape	Reshape_1*
T0
1
Sub_2/yConst*
value	B :*
dtype0
$
Sub_2SubRankSub_2/y*
T0
;
Slice_2/beginConst*
valueB: *
dtype0
9
Slice_2/sizePackSub_2*
T0*

axis *
N
J
Slice_2SliceShapeSlice_2/beginSlice_2/size*
Index0*
T0
S
	Reshape_2ReshapeSoftmaxCrossEntropyWithLogitsSlice_2*
T0*
Tshape0
3
ConstConst*
valueB: *
dtype0
D
MeanMean	Reshape_2Const*

Tidx0*
	keep_dims( *
T0
8
gradients/ShapeConst*
valueB *
dtype0
<
gradients/ConstConst*
valueB
 *  �?*
dtype0
A
gradients/FillFillgradients/Shapegradients/Const*
T0
O
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0
p
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0
F
gradients/Mean_grad/ShapeShape	Reshape_2*
T0*
out_type0
s
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*
T0*

Tmultiples0
H
gradients/Mean_grad/Shape_1Shape	Reshape_2*
T0*
out_type0
D
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0
G
gradients/Mean_grad/ConstConst*
valueB: *
dtype0
~
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*

Tidx0*
	keep_dims( *
T0
I
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0
�
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*

Tidx0*
	keep_dims( *
T0
G
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0
j
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0
h
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0
V
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*

DstT0
c
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0
_
gradients/Reshape_2_grad/ShapeShapeSoftmaxCrossEntropyWithLogits*
T0*
out_type0

 gradients/Reshape_2_grad/ReshapeReshapegradients/Mean_grad/truedivgradients/Reshape_2_grad/Shape*
T0*
Tshape0
K
gradients/zeros_like	ZerosLikeSoftmaxCrossEntropyWithLogits:1*
T0
n
;gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
dtype0
�
7gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims gradients/Reshape_2_grad/Reshape;gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0
�
0gradients/SoftmaxCrossEntropyWithLogits_grad/mulMul7gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDimsSoftmaxCrossEntropyWithLogits:1*
T0
P
gradients/Reshape_grad/ShapeShapeLayer2/xw_plus_b*
T0*
out_type0
�
gradients/Reshape_grad/ReshapeReshape0gradients/SoftmaxCrossEntropyWithLogits_grad/mulgradients/Reshape_grad/Shape*
T0*
Tshape0
z
+gradients/Layer2/xw_plus_b_grad/BiasAddGradBiasAddGradgradients/Reshape_grad/Reshape*
data_formatNHWC*
T0
�
0gradients/Layer2/xw_plus_b_grad/tuple/group_depsNoOp^gradients/Reshape_grad/Reshape,^gradients/Layer2/xw_plus_b_grad/BiasAddGrad
�
8gradients/Layer2/xw_plus_b_grad/tuple/control_dependencyIdentitygradients/Reshape_grad/Reshape1^gradients/Layer2/xw_plus_b_grad/tuple/group_deps*1
_class'
%#loc:@gradients/Reshape_grad/Reshape*
T0
�
:gradients/Layer2/xw_plus_b_grad/tuple/control_dependency_1Identity+gradients/Layer2/xw_plus_b_grad/BiasAddGrad1^gradients/Layer2/xw_plus_b_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/Layer2/xw_plus_b_grad/BiasAddGrad
�
-gradients/Layer2/xw_plus_b/MatMul_grad/MatMulMatMul8gradients/Layer2/xw_plus_b_grad/tuple/control_dependencyLayer2/weight2/read*
T0*
transpose_a( *
transpose_b(
�
/gradients/Layer2/xw_plus_b/MatMul_grad/MatMul_1MatMulLayer1/Relu8gradients/Layer2/xw_plus_b_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
�
7gradients/Layer2/xw_plus_b/MatMul_grad/tuple/group_depsNoOp.^gradients/Layer2/xw_plus_b/MatMul_grad/MatMul0^gradients/Layer2/xw_plus_b/MatMul_grad/MatMul_1
�
?gradients/Layer2/xw_plus_b/MatMul_grad/tuple/control_dependencyIdentity-gradients/Layer2/xw_plus_b/MatMul_grad/MatMul8^gradients/Layer2/xw_plus_b/MatMul_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/Layer2/xw_plus_b/MatMul_grad/MatMul
�
Agradients/Layer2/xw_plus_b/MatMul_grad/tuple/control_dependency_1Identity/gradients/Layer2/xw_plus_b/MatMul_grad/MatMul_18^gradients/Layer2/xw_plus_b/MatMul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/Layer2/xw_plus_b/MatMul_grad/MatMul_1
�
#gradients/Layer1/Relu_grad/ReluGradReluGrad?gradients/Layer2/xw_plus_b/MatMul_grad/tuple/control_dependencyLayer1/Relu*
T0

+gradients/Layer1/xw_plus_b_grad/BiasAddGradBiasAddGrad#gradients/Layer1/Relu_grad/ReluGrad*
T0*
data_formatNHWC
�
0gradients/Layer1/xw_plus_b_grad/tuple/group_depsNoOp$^gradients/Layer1/Relu_grad/ReluGrad,^gradients/Layer1/xw_plus_b_grad/BiasAddGrad
�
8gradients/Layer1/xw_plus_b_grad/tuple/control_dependencyIdentity#gradients/Layer1/Relu_grad/ReluGrad1^gradients/Layer1/xw_plus_b_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/Layer1/Relu_grad/ReluGrad
�
:gradients/Layer1/xw_plus_b_grad/tuple/control_dependency_1Identity+gradients/Layer1/xw_plus_b_grad/BiasAddGrad1^gradients/Layer1/xw_plus_b_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/Layer1/xw_plus_b_grad/BiasAddGrad
�
-gradients/Layer1/xw_plus_b/MatMul_grad/MatMulMatMul8gradients/Layer1/xw_plus_b_grad/tuple/control_dependencyLayer1/weight1/read*
transpose_a( *
transpose_b(*
T0
�
/gradients/Layer1/xw_plus_b/MatMul_grad/MatMul_1MatMulPlaceholder8gradients/Layer1/xw_plus_b_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
�
7gradients/Layer1/xw_plus_b/MatMul_grad/tuple/group_depsNoOp.^gradients/Layer1/xw_plus_b/MatMul_grad/MatMul0^gradients/Layer1/xw_plus_b/MatMul_grad/MatMul_1
�
?gradients/Layer1/xw_plus_b/MatMul_grad/tuple/control_dependencyIdentity-gradients/Layer1/xw_plus_b/MatMul_grad/MatMul8^gradients/Layer1/xw_plus_b/MatMul_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/Layer1/xw_plus_b/MatMul_grad/MatMul
�
Agradients/Layer1/xw_plus_b/MatMul_grad/tuple/control_dependency_1Identity/gradients/Layer1/xw_plus_b/MatMul_grad/MatMul_18^gradients/Layer1/xw_plus_b/MatMul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/Layer1/xw_plus_b/MatMul_grad/MatMul_1
g
beta1_power/initial_valueConst*
_class
loc:@Layer1/bias1*
valueB
 *fff?*
dtype0
x
beta1_power
VariableV2*
_class
loc:@Layer1/bias1*
dtype0*
	container *
shape: *
shared_name 
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*
_class
loc:@Layer1/bias1*
validate_shape(
S
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@Layer1/bias1
g
beta2_power/initial_valueConst*
_class
loc:@Layer1/bias1*
valueB
 *w�?*
dtype0
x
beta2_power
VariableV2*
shared_name *
_class
loc:@Layer1/bias1*
dtype0*
	container *
shape: 
�
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*
_class
loc:@Layer1/bias1*
validate_shape(
S
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@Layer1/bias1
}
%Layer1/weight1/Adam/Initializer/zerosConst*
valueB?*    *!
_class
loc:@Layer1/weight1*
dtype0
�
Layer1/weight1/Adam
VariableV2*
shape
:?*
shared_name *!
_class
loc:@Layer1/weight1*
dtype0*
	container 
�
Layer1/weight1/Adam/AssignAssignLayer1/weight1/Adam%Layer1/weight1/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@Layer1/weight1*
validate_shape(
e
Layer1/weight1/Adam/readIdentityLayer1/weight1/Adam*
T0*!
_class
loc:@Layer1/weight1

'Layer1/weight1/Adam_1/Initializer/zerosConst*
valueB?*    *!
_class
loc:@Layer1/weight1*
dtype0
�
Layer1/weight1/Adam_1
VariableV2*
shape
:?*
shared_name *!
_class
loc:@Layer1/weight1*
dtype0*
	container 
�
Layer1/weight1/Adam_1/AssignAssignLayer1/weight1/Adam_1'Layer1/weight1/Adam_1/Initializer/zeros*
T0*!
_class
loc:@Layer1/weight1*
validate_shape(*
use_locking(
i
Layer1/weight1/Adam_1/readIdentityLayer1/weight1/Adam_1*
T0*!
_class
loc:@Layer1/weight1
u
#Layer1/bias1/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@Layer1/bias1*
dtype0
�
Layer1/bias1/Adam
VariableV2*
_class
loc:@Layer1/bias1*
dtype0*
	container *
shape:*
shared_name 
�
Layer1/bias1/Adam/AssignAssignLayer1/bias1/Adam#Layer1/bias1/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Layer1/bias1*
validate_shape(
_
Layer1/bias1/Adam/readIdentityLayer1/bias1/Adam*
T0*
_class
loc:@Layer1/bias1
w
%Layer1/bias1/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@Layer1/bias1*
dtype0
�
Layer1/bias1/Adam_1
VariableV2*
_class
loc:@Layer1/bias1*
dtype0*
	container *
shape:*
shared_name 
�
Layer1/bias1/Adam_1/AssignAssignLayer1/bias1/Adam_1%Layer1/bias1/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Layer1/bias1*
validate_shape(
c
Layer1/bias1/Adam_1/readIdentityLayer1/bias1/Adam_1*
T0*
_class
loc:@Layer1/bias1
}
%Layer2/weight2/Adam/Initializer/zerosConst*
dtype0*
valueB*    *!
_class
loc:@Layer2/weight2
�
Layer2/weight2/Adam
VariableV2*
shape
:*
shared_name *!
_class
loc:@Layer2/weight2*
dtype0*
	container 
�
Layer2/weight2/Adam/AssignAssignLayer2/weight2/Adam%Layer2/weight2/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@Layer2/weight2*
validate_shape(
e
Layer2/weight2/Adam/readIdentityLayer2/weight2/Adam*
T0*!
_class
loc:@Layer2/weight2

'Layer2/weight2/Adam_1/Initializer/zerosConst*
valueB*    *!
_class
loc:@Layer2/weight2*
dtype0
�
Layer2/weight2/Adam_1
VariableV2*
shape
:*
shared_name *!
_class
loc:@Layer2/weight2*
dtype0*
	container 
�
Layer2/weight2/Adam_1/AssignAssignLayer2/weight2/Adam_1'Layer2/weight2/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@Layer2/weight2*
validate_shape(
i
Layer2/weight2/Adam_1/readIdentityLayer2/weight2/Adam_1*
T0*!
_class
loc:@Layer2/weight2
u
#Layer2/bias2/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@Layer2/bias2*
dtype0
�
Layer2/bias2/Adam
VariableV2*
_class
loc:@Layer2/bias2*
dtype0*
	container *
shape:*
shared_name 
�
Layer2/bias2/Adam/AssignAssignLayer2/bias2/Adam#Layer2/bias2/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Layer2/bias2*
validate_shape(
_
Layer2/bias2/Adam/readIdentityLayer2/bias2/Adam*
T0*
_class
loc:@Layer2/bias2
w
%Layer2/bias2/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@Layer2/bias2*
dtype0
�
Layer2/bias2/Adam_1
VariableV2*
	container *
shape:*
shared_name *
_class
loc:@Layer2/bias2*
dtype0
�
Layer2/bias2/Adam_1/AssignAssignLayer2/bias2/Adam_1%Layer2/bias2/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Layer2/bias2*
validate_shape(
c
Layer2/bias2/Adam_1/readIdentityLayer2/bias2/Adam_1*
T0*
_class
loc:@Layer2/bias2
?
Adam/learning_rateConst*
valueB
 *��8*
dtype0
7

Adam/beta1Const*
dtype0*
valueB
 *fff?
7

Adam/beta2Const*
valueB
 *w�?*
dtype0
9
Adam/epsilonConst*
dtype0*
valueB
 *w�+2
�
$Adam/update_Layer1/weight1/ApplyAdam	ApplyAdamLayer1/weight1Layer1/weight1/AdamLayer1/weight1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonAgradients/Layer1/xw_plus_b/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@Layer1/weight1*
use_nesterov( 
�
"Adam/update_Layer1/bias1/ApplyAdam	ApplyAdamLayer1/bias1Layer1/bias1/AdamLayer1/bias1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon:gradients/Layer1/xw_plus_b_grad/tuple/control_dependency_1*
_class
loc:@Layer1/bias1*
use_nesterov( *
use_locking( *
T0
�
$Adam/update_Layer2/weight2/ApplyAdam	ApplyAdamLayer2/weight2Layer2/weight2/AdamLayer2/weight2/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonAgradients/Layer2/xw_plus_b/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@Layer2/weight2*
use_nesterov( 
�
"Adam/update_Layer2/bias2/ApplyAdam	ApplyAdamLayer2/bias2Layer2/bias2/AdamLayer2/bias2/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon:gradients/Layer2/xw_plus_b_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Layer2/bias2*
use_nesterov( 
�
Adam/mulMulbeta1_power/read
Adam/beta1%^Adam/update_Layer1/weight1/ApplyAdam#^Adam/update_Layer1/bias1/ApplyAdam%^Adam/update_Layer2/weight2/ApplyAdam#^Adam/update_Layer2/bias2/ApplyAdam*
T0*
_class
loc:@Layer1/bias1

Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*
_class
loc:@Layer1/bias1*
validate_shape(
�

Adam/mul_1Mulbeta2_power/read
Adam/beta2%^Adam/update_Layer1/weight1/ApplyAdam#^Adam/update_Layer1/bias1/ApplyAdam%^Adam/update_Layer2/weight2/ApplyAdam#^Adam/update_Layer2/bias2/ApplyAdam*
_class
loc:@Layer1/bias1*
T0
�
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0*
_class
loc:@Layer1/bias1*
validate_shape(
�
Adam/updateNoOp%^Adam/update_Layer1/weight1/ApplyAdam#^Adam/update_Layer1/bias1/ApplyAdam%^Adam/update_Layer2/weight2/ApplyAdam#^Adam/update_Layer2/bias2/ApplyAdam^Adam/Assign^Adam/Assign_1
\

Adam/valueConst^Adam/update*
_class

loc:@count*
value	B :*
dtype0
Z
Adam	AssignAddcount
Adam/value*
use_locking( *
T0*
_class

loc:@count
:
ArgMax/dimensionConst*
value	B :*
dtype0
S
ArgMaxArgMaxone_hotArgMax/dimension*
T0*
output_type0	*

Tidx0
<
ArgMax_1/dimensionConst*
value	B :*
dtype0
`
ArgMax_1ArgMaxLayer2/xw_plus_bArgMax_1/dimension*
T0*
output_type0	*

Tidx0
)
EqualEqualArgMaxArgMax_1*
T0	
-
Cast_1CastEqual*

DstT0*

SrcT0


Rank_3RankCast_1*
T0
5
range/startConst*
dtype0*
value	B : 
5
range/deltaConst*
value	B :*
dtype0
<
rangeRangerange/startRank_3range/delta*

Tidx0
C
Mean_1MeanCast_1range*
T0*

Tidx0*
	keep_dims( 
8

save/ConstConst*
valueB Bmodel*
dtype0
�
save/SaveV2/tensor_namesConst*�
value�B�BLayer1/bias1BLayer1/bias1/AdamBLayer1/bias1/Adam_1BLayer1/weight1BLayer1/weight1/AdamBLayer1/weight1/Adam_1BLayer2/bias2BLayer2/bias2/AdamBLayer2/bias2/Adam_1BLayer2/weight2BLayer2/weight2/AdamBLayer2/weight2/Adam_1Bbeta1_powerBbeta2_powerBcount*
dtype0
e
save/SaveV2/shape_and_slicesConst*1
value(B&B B B B B B B B B B B B B B B *
dtype0
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesLayer1/bias1Layer1/bias1/AdamLayer1/bias1/Adam_1Layer1/weight1Layer1/weight1/AdamLayer1/weight1/Adam_1Layer2/bias2Layer2/bias2/AdamLayer2/bias2/Adam_1Layer2/weight2Layer2/weight2/AdamLayer2/weight2/Adam_1beta1_powerbeta2_powercount*
dtypes
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
T
save/RestoreV2/tensor_namesConst*!
valueBBLayer1/bias1*
dtype0
L
save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
v
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2
�
save/AssignAssignLayer1/bias1save/RestoreV2*
use_locking(*
T0*
_class
loc:@Layer1/bias1*
validate_shape(
[
save/RestoreV2_1/tensor_namesConst*
dtype0*&
valueBBLayer1/bias1/Adam
N
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2
�
save/Assign_1AssignLayer1/bias1/Adamsave/RestoreV2_1*
T0*
_class
loc:@Layer1/bias1*
validate_shape(*
use_locking(
]
save/RestoreV2_2/tensor_namesConst*(
valueBBLayer1/bias1/Adam_1*
dtype0
N
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2
�
save/Assign_2AssignLayer1/bias1/Adam_1save/RestoreV2_2*
use_locking(*
T0*
_class
loc:@Layer1/bias1*
validate_shape(
X
save/RestoreV2_3/tensor_namesConst*#
valueBBLayer1/weight1*
dtype0
N
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2
�
save/Assign_3AssignLayer1/weight1save/RestoreV2_3*
use_locking(*
T0*!
_class
loc:@Layer1/weight1*
validate_shape(
]
save/RestoreV2_4/tensor_namesConst*(
valueBBLayer1/weight1/Adam*
dtype0
N
!save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2
�
save/Assign_4AssignLayer1/weight1/Adamsave/RestoreV2_4*!
_class
loc:@Layer1/weight1*
validate_shape(*
use_locking(*
T0
_
save/RestoreV2_5/tensor_namesConst**
value!BBLayer1/weight1/Adam_1*
dtype0
N
!save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2
�
save/Assign_5AssignLayer1/weight1/Adam_1save/RestoreV2_5*
T0*!
_class
loc:@Layer1/weight1*
validate_shape(*
use_locking(
V
save/RestoreV2_6/tensor_namesConst*!
valueBBLayer2/bias2*
dtype0
N
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2
�
save/Assign_6AssignLayer2/bias2save/RestoreV2_6*
_class
loc:@Layer2/bias2*
validate_shape(*
use_locking(*
T0
[
save/RestoreV2_7/tensor_namesConst*&
valueBBLayer2/bias2/Adam*
dtype0
N
!save/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2
�
save/Assign_7AssignLayer2/bias2/Adamsave/RestoreV2_7*
use_locking(*
T0*
_class
loc:@Layer2/bias2*
validate_shape(
]
save/RestoreV2_8/tensor_namesConst*(
valueBBLayer2/bias2/Adam_1*
dtype0
N
!save/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2
�
save/Assign_8AssignLayer2/bias2/Adam_1save/RestoreV2_8*
use_locking(*
T0*
_class
loc:@Layer2/bias2*
validate_shape(
X
save/RestoreV2_9/tensor_namesConst*#
valueBBLayer2/weight2*
dtype0
N
!save/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2
�
save/Assign_9AssignLayer2/weight2save/RestoreV2_9*
use_locking(*
T0*!
_class
loc:@Layer2/weight2*
validate_shape(
^
save/RestoreV2_10/tensor_namesConst*(
valueBBLayer2/weight2/Adam*
dtype0
O
"save/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2
�
save/Assign_10AssignLayer2/weight2/Adamsave/RestoreV2_10*
validate_shape(*
use_locking(*
T0*!
_class
loc:@Layer2/weight2
`
save/RestoreV2_11/tensor_namesConst**
value!BBLayer2/weight2/Adam_1*
dtype0
O
"save/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2
�
save/Assign_11AssignLayer2/weight2/Adam_1save/RestoreV2_11*
use_locking(*
T0*!
_class
loc:@Layer2/weight2*
validate_shape(
V
save/RestoreV2_12/tensor_namesConst*
dtype0* 
valueBBbeta1_power
O
"save/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2
�
save/Assign_12Assignbeta1_powersave/RestoreV2_12*
use_locking(*
T0*
_class
loc:@Layer1/bias1*
validate_shape(
V
save/RestoreV2_13/tensor_namesConst*
dtype0* 
valueBBbeta2_power
O
"save/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2
�
save/Assign_13Assignbeta2_powersave/RestoreV2_13*
use_locking(*
T0*
_class
loc:@Layer1/bias1*
validate_shape(
P
save/RestoreV2_14/tensor_namesConst*
valueBBcount*
dtype0
O
"save/RestoreV2_14/shape_and_slicesConst*
dtype0*
valueB
B 

save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2
~
save/Assign_14Assigncountsave/RestoreV2_14*
use_locking(*
T0*
_class

loc:@count*
validate_shape(
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14
�
initNoOp^count/Assign^Layer1/weight1/Assign^Layer1/bias1/Assign^Layer2/weight2/Assign^Layer2/bias2/Assign^beta1_power/Assign^beta2_power/Assign^Layer1/weight1/Adam/Assign^Layer1/weight1/Adam_1/Assign^Layer1/bias1/Adam/Assign^Layer1/bias1/Adam_1/Assign^Layer2/weight2/Adam/Assign^Layer2/weight2/Adam_1/Assign^Layer2/bias2/Adam/Assign^Layer2/bias2/Adam_1/Assign
�
init_1NoOp^count/Assign^Layer1/weight1/Assign^Layer1/bias1/Assign^Layer2/weight2/Assign^Layer2/bias2/Assign^beta1_power/Assign^beta2_power/Assign^Layer1/weight1/Adam/Assign^Layer1/weight1/Adam_1/Assign^Layer1/bias1/Adam/Assign^Layer1/bias1/Adam_1/Assign^Layer2/weight2/Adam/Assign^Layer2/weight2/Adam_1/Assign^Layer2/bias2/Adam/Assign^Layer2/bias2/Adam_1/Assign
:
save_1/ConstConst*
valueB Bmodel*
dtype0
�
save_1/SaveV2/tensor_namesConst*�
value�B�BLayer1/bias1BLayer1/bias1/AdamBLayer1/bias1/Adam_1BLayer1/weight1BLayer1/weight1/AdamBLayer1/weight1/Adam_1BLayer2/bias2BLayer2/bias2/AdamBLayer2/bias2/Adam_1BLayer2/weight2BLayer2/weight2/AdamBLayer2/weight2/Adam_1Bbeta1_powerBbeta2_powerBcount*
dtype0
g
save_1/SaveV2/shape_and_slicesConst*1
value(B&B B B B B B B B B B B B B B B *
dtype0
�
save_1/SaveV2SaveV2save_1/Constsave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesLayer1/bias1Layer1/bias1/AdamLayer1/bias1/Adam_1Layer1/weight1Layer1/weight1/AdamLayer1/weight1/Adam_1Layer2/bias2Layer2/bias2/AdamLayer2/bias2/Adam_1Layer2/weight2Layer2/weight2/AdamLayer2/weight2/Adam_1beta1_powerbeta2_powercount*
dtypes
2
m
save_1/control_dependencyIdentitysave_1/Const^save_1/SaveV2*
T0*
_class
loc:@save_1/Const
V
save_1/RestoreV2/tensor_namesConst*!
valueBBLayer1/bias1*
dtype0
N
!save_1/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
~
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2
�
save_1/AssignAssignLayer1/bias1save_1/RestoreV2*
validate_shape(*
use_locking(*
T0*
_class
loc:@Layer1/bias1
]
save_1/RestoreV2_1/tensor_namesConst*&
valueBBLayer1/bias1/Adam*
dtype0
P
#save_1/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
�
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2
�
save_1/Assign_1AssignLayer1/bias1/Adamsave_1/RestoreV2_1*
use_locking(*
T0*
_class
loc:@Layer1/bias1*
validate_shape(
_
save_1/RestoreV2_2/tensor_namesConst*(
valueBBLayer1/bias1/Adam_1*
dtype0
P
#save_1/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
�
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2
�
save_1/Assign_2AssignLayer1/bias1/Adam_1save_1/RestoreV2_2*
use_locking(*
T0*
_class
loc:@Layer1/bias1*
validate_shape(
Z
save_1/RestoreV2_3/tensor_namesConst*
dtype0*#
valueBBLayer1/weight1
P
#save_1/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2
�
save_1/Assign_3AssignLayer1/weight1save_1/RestoreV2_3*
use_locking(*
T0*!
_class
loc:@Layer1/weight1*
validate_shape(
_
save_1/RestoreV2_4/tensor_namesConst*(
valueBBLayer1/weight1/Adam*
dtype0
P
#save_1/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
dtypes
2
�
save_1/Assign_4AssignLayer1/weight1/Adamsave_1/RestoreV2_4*
use_locking(*
T0*!
_class
loc:@Layer1/weight1*
validate_shape(
a
save_1/RestoreV2_5/tensor_namesConst**
value!BBLayer1/weight1/Adam_1*
dtype0
P
#save_1/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
�
save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
dtypes
2
�
save_1/Assign_5AssignLayer1/weight1/Adam_1save_1/RestoreV2_5*
use_locking(*
T0*!
_class
loc:@Layer1/weight1*
validate_shape(
X
save_1/RestoreV2_6/tensor_namesConst*!
valueBBLayer2/bias2*
dtype0
P
#save_1/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0
�
save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
dtypes
2
�
save_1/Assign_6AssignLayer2/bias2save_1/RestoreV2_6*
validate_shape(*
use_locking(*
T0*
_class
loc:@Layer2/bias2
]
save_1/RestoreV2_7/tensor_namesConst*&
valueBBLayer2/bias2/Adam*
dtype0
P
#save_1/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B 
�
save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
dtypes
2
�
save_1/Assign_7AssignLayer2/bias2/Adamsave_1/RestoreV2_7*
validate_shape(*
use_locking(*
T0*
_class
loc:@Layer2/bias2
_
save_1/RestoreV2_8/tensor_namesConst*
dtype0*(
valueBBLayer2/bias2/Adam_1
P
#save_1/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0
�
save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
dtypes
2
�
save_1/Assign_8AssignLayer2/bias2/Adam_1save_1/RestoreV2_8*
use_locking(*
T0*
_class
loc:@Layer2/bias2*
validate_shape(
Z
save_1/RestoreV2_9/tensor_namesConst*#
valueBBLayer2/weight2*
dtype0
P
#save_1/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0
�
save_1/RestoreV2_9	RestoreV2save_1/Constsave_1/RestoreV2_9/tensor_names#save_1/RestoreV2_9/shape_and_slices*
dtypes
2
�
save_1/Assign_9AssignLayer2/weight2save_1/RestoreV2_9*
use_locking(*
T0*!
_class
loc:@Layer2/weight2*
validate_shape(
`
 save_1/RestoreV2_10/tensor_namesConst*(
valueBBLayer2/weight2/Adam*
dtype0
Q
$save_1/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0
�
save_1/RestoreV2_10	RestoreV2save_1/Const save_1/RestoreV2_10/tensor_names$save_1/RestoreV2_10/shape_and_slices*
dtypes
2
�
save_1/Assign_10AssignLayer2/weight2/Adamsave_1/RestoreV2_10*
use_locking(*
T0*!
_class
loc:@Layer2/weight2*
validate_shape(
b
 save_1/RestoreV2_11/tensor_namesConst**
value!BBLayer2/weight2/Adam_1*
dtype0
Q
$save_1/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0
�
save_1/RestoreV2_11	RestoreV2save_1/Const save_1/RestoreV2_11/tensor_names$save_1/RestoreV2_11/shape_and_slices*
dtypes
2
�
save_1/Assign_11AssignLayer2/weight2/Adam_1save_1/RestoreV2_11*
use_locking(*
T0*!
_class
loc:@Layer2/weight2*
validate_shape(
X
 save_1/RestoreV2_12/tensor_namesConst* 
valueBBbeta1_power*
dtype0
Q
$save_1/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0
�
save_1/RestoreV2_12	RestoreV2save_1/Const save_1/RestoreV2_12/tensor_names$save_1/RestoreV2_12/shape_and_slices*
dtypes
2
�
save_1/Assign_12Assignbeta1_powersave_1/RestoreV2_12*
validate_shape(*
use_locking(*
T0*
_class
loc:@Layer1/bias1
X
 save_1/RestoreV2_13/tensor_namesConst* 
valueBBbeta2_power*
dtype0
Q
$save_1/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0
�
save_1/RestoreV2_13	RestoreV2save_1/Const save_1/RestoreV2_13/tensor_names$save_1/RestoreV2_13/shape_and_slices*
dtypes
2
�
save_1/Assign_13Assignbeta2_powersave_1/RestoreV2_13*
use_locking(*
T0*
_class
loc:@Layer1/bias1*
validate_shape(
R
 save_1/RestoreV2_14/tensor_namesConst*
valueBBcount*
dtype0
Q
$save_1/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0
�
save_1/RestoreV2_14	RestoreV2save_1/Const save_1/RestoreV2_14/tensor_names$save_1/RestoreV2_14/shape_and_slices*
dtypes
2
�
save_1/Assign_14Assigncountsave_1/RestoreV2_14*
validate_shape(*
use_locking(*
T0*
_class

loc:@count
�
save_1/restore_allNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14
?
inputPlaceholder*
shape:���������?*
dtype0
�+
Layer1/weight1_1Const*
dtype0*�+
value�+B�+?"�+��I�Zh�c<�V�=Y���N@�� B=��#<ٔؼ�R>!�>;�>����<n�q�lp6����=<|� ��=�*�!�����=ŬC>���<�D�=���=���V���ى	>��>��1�u�ֽ��=a�2>-�P�Z�����<��K=;|�=~[���5�<z�H�@>q׀>8gq��ҝ=ɃڽM��+��=�;��	�=��(�jN�=���=���=��=\�ܽ]:/=m)b�ꮢ<J��>�ZP=�>���V��d�=c���`o����2�>0�<���Q�)��~�����<S�=aջ�R�����J<�x`=�5=���=����x@>�o�<ؓ@=5�ݼkl�`4>M�=����2=��nl��轮�����=P,9�sK߽���=��<\���Er��v��=̳�=F�\�:U:=2�彈e>�0���]=��=i)G=* �u�>(+���P"���H�'�����=�A�=���=T�=`�˽_��`�O�,�=\?мi���� ۽-Y=7�=D�=�Xཌ��w�`=c�����->a����:�->�!>q>G�����&ab=/k=j�;,S;��3="��=���y��=�v�<y��=ĳ�=K��<�]Q�s:�_8ݽ��=����9��;]���ީ����ʋ8�Q�U��v�;Ǿb��!����
��=wS�=g.=p>��8���8�Im�=s(ý\�|�H�]���g �<�*}��/̽�P>��=���<���MEI=z���
pE>I�ٽ%dϽϯ۽�,��J�<5� >�-��hx
�M~(>]�=S�'�z����(���*>��$<�I����2�S�<�u˼��;��=>�F彺��=���<q���|?��r�=�f�=��z0>~ٹ��-=*mj���=N뼀���iX�����R��F���0��AY���c��X=̈��#rx�2��� 
>+?>|��H^=���=̤��D[��Ř�Z��=7�=4ս*�߽��N>���=;�K>
�����>��I���=Y�?�kE��P�����<�;�ul>���<��:<�_A��tý��=����Ᵹ52�=��,�(�=4��=lHs�'�D=��`=[Lt�+��;}��=�(�=��<�1�=,�;Wx�<O��=�/��V.�ö8�8P<>$�l<T�����K��Q>�=y���a/��e|޽<�(>�n�h׌:w�>/�%�U����4����c�c=��=E�<��Wc�jD>��2>2��4�8>n>C'=&,>���<3@(�"E�>����?�"X��d�7��æ�2�=f����NW=N<��>+Ͻ��� .�����Ə<F���C��*Y�@�=�$��ݢ���]c_>{�i��X� 	f� D�=v��n�=VBA��/�k�<�81��R��	�����ji'�j[`<�6B�G[/>+��=�*?�(�<����H>�^�=�a�=�=��0���c��<5.(>��ؽy�<��=�=�$L�1E��9$�����=T��:���<�QS�R<�=_>1>Δ�9��Mz�=%>AV=��R��=7��o,����=7����CMt��#O�:�=Og�=�5�p��=�F>�����C����<���=鴽-t�=����Hq>Q��=c��;G� �/�'�
�<���5��=�սU�;7��<�tڽ��S����=�/�=B&�<0�=��a="�l=�2<<�}\=�?=�.����%c�=���=k�<ߝ��2*��	�<="x>�s>�1>�|��H�����C��.�������	.������K#�<�L�=ȧ��l�u=Dş��O7>.7=��=s�8�9��=���==�=�pU=D�?��g�=~�>>�hX��� >l��SE�={^m=uӸ<��B�[��b�>������U<V@R��A_��>�|�=k�k�nB)�@��=C>R�C<������=���� ��=�t�=�0��xK<uD�?:��0v��Ζ=轾��=��A;�M.=�'b���<עA>�c6��=��9X>���=��t�����ϳ=�r�Ǯ��=:=��m�t,�><��=��0>9�ż��o=S��<�ڃ>i�0<���<S��,�����B>��`=�0�L+�=<8ټ�I���$>>f;ߺ�Z=��<%jx��,�_^ =�+;t�����=)b5�F�;��u{�! <��<\ �<j�{M=�`<��������H�Žn-�ϝ����=oYݽs��鍓����=0<S=�����.��n���o>��T=A��~���qX��B����=���=�4�^����/U;鼟��5���V>�s��\�=��J��Ҷ=�CT9��==Ъ='V>�c�;��>~�>Z��ad�%�7�qt��D��V��<}W��mu����>��>�1>I���_��#�B=i�����߃�=�2�;.��<�����U���ոlb�eу�N]�=�*��{{>e"�c,@>P�����C<������=�{h>B�!��a?��o��"�ؽ��:Bn�T �=0ܝ���240�KC	�H���M�<�ѽ5$�=#U�c*>��	��+���}`��q=�B�=����8��y *����=I��9�=�Q����0>r�P=��6=4_>�}��A䦽Z�3="2��b �=c�<��=�A�=C=���=wU6�"���۽�y��-$p�x��=�3>�El>Ɇ�v��=m?[>AN<�r=KYX<���=�X>�j8��X6>���<)��=�vs�aI�=-M���J�↼���<�X<$�\=b�ӽ�;�m�=�ǽ����7F>�)k=�� >�=H��<�=	�`��8o���B���J�<�4��H0�;�����"���T>;�l:�i>�ҽ�ӽ��6>�E�=��M=��H���r=^�>2v(����>��ػQ�F=UP=����|+ >������l���5�,m?��@)=&�����=쭅����<��[=W��,>�TI=��B=L=x�=N��<���%��=`Q7�����4}=�]Q�H� �z4��c%>�Ql=��ƽ�=�=��>��m�7cǽ�i>�p>&��=}1/�j���>��.�Z<a������=�}�=>�@�B��<�]��P�,��p�=tM��aD�=��o<NE��Y�=2[Y>����#�n)I��R�;���=�
�����DF>q�2>�O_�9���< �<cL�<�a�=�I<����!�>��<���<��s��ދ�?@�=A�I>��;��Y��&�={�$��]��q�<kq�<-HQ�)J:���<�����*=<�u<`��,6�=��|�{(C>{��=P�=��-=N�<�TY>�"�;�e��i�}���@���>j-�h��Q���$>
nI;����Z>t�<���W���E�=�_������F)>��ؽY�<S�b�ȱ�H�ɼW|t��kU�����K㽺�=5>�Y!>;� ����=q�=�Ć��H�>��>~=�>�[,�!=�h	>ʼ�⚽�Ã=D1>%��=UT��A�>X�~>�9��߽q�=���;K+��f�B�\/<��=�Xm>~(X��<> �#=#�	a[=�'d��tz=]0#>}��=5��=P��~P�=���=M-#����e��=�7��Hzo���=��������;���jf=޺�F����=ţ�<NG%=X�`��,a�H���V%���/>� �<
&��,�=}�>��e��_��.��0�=���j�=S%;>�D=�9�=�m7��E=M�!>	~������=F*�=i�%�[RM��(>e��=o�B���)�j���(=pޛ��7޽?jD=D_̼WUF�nw=�9>��I�G���kx�=2�{�T>q~�<�\�����=���=9i��1�,<Q����N$<� � �):�f��K����l弫u&��������=�6G����=绀>z�b���2�\&�-jٽ�>b�#����=oL�b>\��=���'��(�����<7c>`��1�B=��=��3������4�="3
>F��=�o)���z=3��<����H2�=�I�a@�;�
G=�*>]�Y�!	ͽ����>Ҧ�캊��=�Ƚ�;��|�5���EE�L|ļ�5l>�: >��ֽ���<�`)����=����3�/�H�n;�A���h�¼�r�=�!$�����_�E�=y�=�_�<Xy�<��=�v>����[ a��<�=�"2>U�3=�L>�̲�?)�>����{*>&h�;.��5S����i=�ӻ��k������e2>d�߽īx�?�'>:�i��]�;k��= ��<�(�=�o~��IF>��(�Z���K�=V�.=,� �l��c!>:e�2v>`�=�`s����Ža(;+T,�^�ʺ�4=��<Gy>�hk<+y!=/�#�^�X=aPQ=���I��=sqB���:>����%3��h#>b�;�E�=�F�=�c<�0 ;����+�$���!y����<gNP��/�ߏI=�˽���=&!<��H=6t��m�<3%�>��սʻA>OƟ>��;���>#d<�#lI��PE<:�����j���=�{>2=�>>% ��3;>K[��poϽ�<抣�
t����= �"��#:�> O>��r�;��=�)�=��=9�>0��T�`μ�`��a���?=	w=�\,��X��r��G�ټ��ҽoI���%�=+S>�T»�p�?�<��=Ә���=��/=�ꓽ�ҵ����N�>֯�:����`�=�03>�?a=W�3>�B����;��/>3�=�p�<Wٓ=1��=*� >'�K�.De>��<\�"�z���K>������1<:!�= �ʽ �	B�=�$׽�k
��J�F����
֏�3�4��VS��{\�_I.<�@��L~�<�M�w��=�5>�S���@=�����;���8��=ݮ��*�o�4C�����<ո�=��;J��=|��<�D�<\����I>\��F�=d���p�̾ջ4���95=~�P=�~�x�=>����v4>�u3>� �=��ѽ��s��2>����w$>l>����3>�'=���=A)�����$��_/���l;I5����1>[��6�=�����b��C7�fS�=�{�;dY�<M����<wS�;&�=��<J�����Y��o=�H<C���%P��`%���z'�O=���=M��<Rr�=u_>ۢ��<J�P=���<a�(�м�'�-hG<Ӟ=�F��B�� �=��=[,��@:�0�=z?���l=q������=�5�;-��	n���Z��d ��S<���BU%�k�=��E��	�=I��=�9��D'>�<��O�ܭ���R���_=� ��A>+�=R��2�<��V�<]��o`�=-b�|=�<l_ҽ�)�=�sQ>
ý_�i��SL<5����E��W!<��>�a��3սKީ<�5�=��:�^n�=k�s<�C&�;ƽ
�
Layer1/bias1_1Const*
dtype0*m
valuedBb"X�?z?O�?G�?��x?�<}?��?���?��r?�|?V�v?X?�̄?C�?�j�?xR�?LÉ?�A|?O�?籉?ˇ�?}'�?P�t?
b
xw_plus_b/MatMulMatMulinputLayer1/weight1_1*
T0*
transpose_a( *
transpose_b( 
V
	xw_plus_bBiasAddxw_plus_b/MatMulLayer1/bias1_1*
data_formatNHWC*
T0
 
ReluRelu	xw_plus_b*
T0
�
Layer2/weight2_1Const*�
value�B�"�c�Ƚ)�<&�,= ��� Y>9�`��"�󓐾�Jټ�XR<26�=$ R���=��7����=uK�=���G08�e�V=��I��>0������<�нik>pe >�d��%i=�zz� � >/��gB���l���ս����	>q���1�>�a%>÷z����=&P������ں��@"��q=e�0>�=�h>J�/��>C�����=�����D=�g>��Ͻ���=t����=8�u���N�z����x����;a�ǽ>�<�Ak>�޽u�aq�=hԽ��6Ʃ:���7>@G� 7u���[�����*�>X�H>����ZC�rCy>��=1W9����h���?����U>A$>�t$���>�+>%��Y��?e>�F�;�y�;�lh=<�X��}�<�D8>�E��E�2>��3��	>��=�H� �'�ģ$>�6<O_�V�G����=-���3�=�S>֤�=
�>LOy���ٽ>_	��	4��Y
���=�S>8�_=_���[>�>>�G9���f>ױ�M>�=�I��3Z��.I>��`<c��=�|�a��>�燽��<��a�
VĽ�����U�=�G��(�����=�n�*
dtype0
W
Layer2/bias2_1Const*1
value(B&"��n?@z�?�R�?� ~?"w?�J�?uq�?*
dtype0
c
xw_plus_b_1/MatMulMatMulReluLayer2/weight2_1*
T0*
transpose_a( *
transpose_b( 
Z
xw_plus_b_1BiasAddxw_plus_b_1/MatMulLayer2/bias2_1*
T0*
data_formatNHWC
'
outputSoftmaxxw_plus_b_1*
T0"