.class public Lorg/objectweb/asm/tree/analysis/BasicInterpreter;
.super Lorg/objectweb/asm/tree/analysis/Interpreter;

# interfaces
.implements Lorg/objectweb/asm/Opcodes;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/objectweb/asm/tree/analysis/Interpreter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public binaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    sparse-switch v0, :sswitch_data_24

    new-instance v0, Ljava/lang/Error;

    const-string v1, "Internal error."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_f
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    :goto_11
    return-object v0

    :sswitch_12
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->FLOAT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_11

    :sswitch_15
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->LONG_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_11

    :sswitch_18
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->DOUBLE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_11

    :sswitch_1b
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->REFERENCE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_11

    :sswitch_1e
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_11

    :sswitch_21
    const/4 v0, 0x0

    goto :goto_11

    nop

    :sswitch_data_24
    .sparse-switch
        0x2e -> :sswitch_f
        0x2f -> :sswitch_15
        0x30 -> :sswitch_12
        0x31 -> :sswitch_18
        0x32 -> :sswitch_1b
        0x33 -> :sswitch_f
        0x34 -> :sswitch_f
        0x35 -> :sswitch_f
        0x60 -> :sswitch_f
        0x61 -> :sswitch_15
        0x62 -> :sswitch_12
        0x63 -> :sswitch_18
        0x64 -> :sswitch_f
        0x65 -> :sswitch_15
        0x66 -> :sswitch_12
        0x67 -> :sswitch_18
        0x68 -> :sswitch_f
        0x69 -> :sswitch_15
        0x6a -> :sswitch_12
        0x6b -> :sswitch_18
        0x6c -> :sswitch_f
        0x6d -> :sswitch_15
        0x6e -> :sswitch_12
        0x6f -> :sswitch_18
        0x70 -> :sswitch_f
        0x71 -> :sswitch_15
        0x72 -> :sswitch_12
        0x73 -> :sswitch_18
        0x78 -> :sswitch_f
        0x79 -> :sswitch_15
        0x7a -> :sswitch_f
        0x7b -> :sswitch_15
        0x7c -> :sswitch_f
        0x7d -> :sswitch_15
        0x7e -> :sswitch_f
        0x7f -> :sswitch_15
        0x80 -> :sswitch_f
        0x81 -> :sswitch_15
        0x82 -> :sswitch_f
        0x83 -> :sswitch_15
        0x94 -> :sswitch_1e
        0x95 -> :sswitch_1e
        0x96 -> :sswitch_1e
        0x97 -> :sswitch_1e
        0x98 -> :sswitch_1e
        0x9f -> :sswitch_21
        0xa0 -> :sswitch_21
        0xa1 -> :sswitch_21
        0xa2 -> :sswitch_21
        0xa3 -> :sswitch_21
        0xa4 -> :sswitch_21
        0xa5 -> :sswitch_21
        0xa6 -> :sswitch_21
        0xb5 -> :sswitch_21
    .end sparse-switch
.end method

.method public bridge binaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    check-cast p2, Lorg/objectweb/asm/tree/analysis/BasicValue;

    check-cast p3, Lorg/objectweb/asm/tree/analysis/BasicValue;

    invoke-virtual {p0, p1, p2, p3}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->binaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    return-object v0
.end method

.method public copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    return-object p2
.end method

.method public bridge copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    check-cast p2, Lorg/objectweb/asm/tree/analysis/BasicValue;

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    return-object v0
.end method

.method public merge(Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;
    .registers 4

    invoke-virtual {p1, p2}, Lorg/objectweb/asm/tree/analysis/BasicValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object p1, Lorg/objectweb/asm/tree/analysis/BasicValue;->UNINITIALIZED_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    :cond_8
    return-object p1
.end method

.method public bridge merge(Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;
    .registers 4

    check-cast p1, Lorg/objectweb/asm/tree/analysis/BasicValue;

    check-cast p2, Lorg/objectweb/asm/tree/analysis/BasicValue;

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->merge(Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    return-object v0
.end method

.method public naryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/util/List;)Lorg/objectweb/asm/tree/analysis/BasicValue;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    const/16 v1, 0xc5

    if-ne v0, v1, :cond_15

    check-cast p1, Lorg/objectweb/asm/tree/MultiANewArrayInsnNode;

    iget-object v0, p1, Lorg/objectweb/asm/tree/MultiANewArrayInsnNode;->desc:Ljava/lang/String;

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const/16 v1, 0xba

    if-ne v0, v1, :cond_26

    check-cast p1, Lorg/objectweb/asm/tree/InvokeDynamicInsnNode;

    iget-object v0, p1, Lorg/objectweb/asm/tree/InvokeDynamicInsnNode;->desc:Ljava/lang/String;

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getReturnType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    goto :goto_14

    :cond_26
    check-cast p1, Lorg/objectweb/asm/tree/MethodInsnNode;

    iget-object v0, p1, Lorg/objectweb/asm/tree/MethodInsnNode;->desc:Ljava/lang/String;

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getReturnType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    goto :goto_14
.end method

.method public bridge naryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/util/List;)Lorg/objectweb/asm/tree/analysis/Value;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->naryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/util/List;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    return-object v0
.end method

.method public newOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/analysis/BasicValue;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    sparse-switch v0, :sswitch_data_e8

    new-instance v0, Ljava/lang/Error;

    const-string v1, "Internal error."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_f
    const-string v0, "null"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    :goto_19
    return-object v0

    :sswitch_1a
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_19

    :sswitch_1d
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->LONG_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_19

    :sswitch_20
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->FLOAT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_19

    :sswitch_23
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->DOUBLE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_19

    :sswitch_26
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_19

    :sswitch_29
    check-cast p1, Lorg/objectweb/asm/tree/LdcInsnNode;

    iget-object v1, p1, Lorg/objectweb/asm/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    instance-of v0, v1, Ljava/lang/Integer;

    if-eqz v0, :cond_34

    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_19

    :cond_34
    instance-of v0, v1, Ljava/lang/Float;

    if-eqz v0, :cond_3b

    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->FLOAT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_19

    :cond_3b
    instance-of v0, v1, Ljava/lang/Long;

    if-eqz v0, :cond_42

    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->LONG_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_19

    :cond_42
    instance-of v0, v1, Ljava/lang/Double;

    if-eqz v0, :cond_49

    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->DOUBLE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_19

    :cond_49
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_58

    const-string v0, "java/lang/String"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    goto :goto_19

    :cond_58
    instance-of v0, v1, Lorg/objectweb/asm/Type;

    if-eqz v0, :cond_9e

    move-object v0, v1

    check-cast v0, Lorg/objectweb/asm/Type;

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_6b

    const/16 v2, 0x9

    if-ne v0, v2, :cond_76

    :cond_6b
    const-string v0, "java/lang/Class"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    goto :goto_19

    :cond_76
    const/16 v2, 0xb

    if-ne v0, v2, :cond_85

    const-string v0, "java/lang/invoke/MethodType"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    goto :goto_19

    :cond_85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Illegal LDC constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9e
    instance-of v0, v1, Lorg/objectweb/asm/Handle;

    if-eqz v0, :cond_ae

    const-string v0, "java/lang/invoke/MethodHandle"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    goto/16 :goto_19

    :cond_ae
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Illegal LDC constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_c7
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->RETURNADDRESS_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto/16 :goto_19

    :sswitch_cb
    check-cast p1, Lorg/objectweb/asm/tree/FieldInsnNode;

    iget-object v0, p1, Lorg/objectweb/asm/tree/FieldInsnNode;->desc:Ljava/lang/String;

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    goto/16 :goto_19

    :sswitch_d9
    check-cast p1, Lorg/objectweb/asm/tree/TypeInsnNode;

    iget-object v0, p1, Lorg/objectweb/asm/tree/TypeInsnNode;->desc:Ljava/lang/String;

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    goto/16 :goto_19

    nop

    :sswitch_data_e8
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1a
        0x3 -> :sswitch_1a
        0x4 -> :sswitch_1a
        0x5 -> :sswitch_1a
        0x6 -> :sswitch_1a
        0x7 -> :sswitch_1a
        0x8 -> :sswitch_1a
        0x9 -> :sswitch_1d
        0xa -> :sswitch_1d
        0xb -> :sswitch_20
        0xc -> :sswitch_20
        0xd -> :sswitch_20
        0xe -> :sswitch_23
        0xf -> :sswitch_23
        0x10 -> :sswitch_26
        0x11 -> :sswitch_26
        0x12 -> :sswitch_29
        0xa8 -> :sswitch_c7
        0xb2 -> :sswitch_cb
        0xbb -> :sswitch_d9
    .end sparse-switch
.end method

.method public bridge newOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/analysis/Value;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->newOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    return-object v0
.end method

.method public newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;
    .registers 4

    if-nez p1, :cond_5

    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->UNINITIALIZED_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    new-instance v0, Ljava/lang/Error;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_14  #0x0
    const/4 v0, 0x0

    goto :goto_4

    :pswitch_16  #0x1, 0x2, 0x3, 0x4, 0x5
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_4

    :pswitch_19  #0x6
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->FLOAT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_4

    :pswitch_1c  #0x7
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->LONG_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_4

    :pswitch_1f  #0x8
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->DOUBLE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_4

    :pswitch_22  #0x9, 0xa
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->REFERENCE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_4

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_14  #00000000
        :pswitch_16  #00000001
        :pswitch_16  #00000002
        :pswitch_16  #00000003
        :pswitch_16  #00000004
        :pswitch_16  #00000005
        :pswitch_19  #00000006
        :pswitch_1c  #00000007
        :pswitch_1f  #00000008
        :pswitch_22  #00000009
        :pswitch_22  #0000000a
    .end packed-switch
.end method

.method public bridge newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/Value;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    return-object v0
.end method

.method public returnOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    return-void
.end method

.method public bridge returnOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    check-cast p2, Lorg/objectweb/asm/tree/analysis/BasicValue;

    check-cast p3, Lorg/objectweb/asm/tree/analysis/BasicValue;

    invoke-virtual {p0, p1, p2, p3}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->returnOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)V

    return-void
.end method

.method public ternaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge ternaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    check-cast p2, Lorg/objectweb/asm/tree/analysis/BasicValue;

    check-cast p3, Lorg/objectweb/asm/tree/analysis/BasicValue;

    check-cast p4, Lorg/objectweb/asm/tree/analysis/BasicValue;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->ternaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    return-object v0
.end method

.method public unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v1

    packed-switch v1, :pswitch_data_cc

    :pswitch_8  #0x78, 0x79, 0x7a, 0x7b, 0x7c, 0x7d, 0x7e, 0x7f, 0x80, 0x81, 0x82, 0x83, 0x94, 0x95, 0x96, 0x97, 0x98, 0x9f, 0xa0, 0xa1, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xa7, 0xa8, 0xa9, 0xb1, 0xb2, 0xb5, 0xb6, 0xb7, 0xb8, 0xb9, 0xba, 0xbb, 0xc4, 0xc5
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Internal error."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_10  #0x74, 0x84, 0x88, 0x8b, 0x8e, 0x91, 0x92, 0x93
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    :goto_12
    :pswitch_12  #0x99, 0x9a, 0x9b, 0x9c, 0x9d, 0x9e, 0xaa, 0xab, 0xac, 0xad, 0xae, 0xaf, 0xb0, 0xb3, 0xbf, 0xc2, 0xc3, 0xc6, 0xc7
    return-object v0

    :pswitch_13  #0x76, 0x86, 0x89, 0x90
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->FLOAT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_12

    :pswitch_16  #0x75, 0x85, 0x8c, 0x8f
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->LONG_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_12

    :pswitch_19  #0x77, 0x87, 0x8a, 0x8d
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->DOUBLE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_12

    :pswitch_1c  #0xb4
    check-cast p1, Lorg/objectweb/asm/tree/FieldInsnNode;

    iget-object v0, p1, Lorg/objectweb/asm/tree/FieldInsnNode;->desc:Ljava/lang/String;

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    goto :goto_12

    :pswitch_29  #0xbc
    move-object v0, p1

    check-cast v0, Lorg/objectweb/asm/tree/IntInsnNode;

    iget v0, v0, Lorg/objectweb/asm/tree/IntInsnNode;->operand:I

    packed-switch v0, :pswitch_data_178

    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "Invalid array type"

    invoke-direct {v0, p1, v1}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;)V

    throw v0

    :pswitch_39  #0x4
    const-string v0, "[Z"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    goto :goto_12

    :pswitch_44  #0x5
    const-string v0, "[C"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    goto :goto_12

    :pswitch_4f  #0x8
    const-string v0, "[B"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    goto :goto_12

    :pswitch_5a  #0x9
    const-string v0, "[S"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    goto :goto_12

    :pswitch_65  #0xa
    const-string v0, "[I"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    goto :goto_12

    :pswitch_70  #0x6
    const-string v0, "[F"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    goto :goto_12

    :pswitch_7b  #0x7
    const-string v0, "[D"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    goto :goto_12

    :pswitch_86  #0xb
    const-string v0, "[J"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    goto :goto_12

    :pswitch_91  #0xbd
    check-cast p1, Lorg/objectweb/asm/tree/TypeInsnNode;

    iget-object v0, p1, Lorg/objectweb/asm/tree/TypeInsnNode;->desc:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    goto/16 :goto_12

    :pswitch_b6  #0xbe
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto/16 :goto_12

    :pswitch_ba  #0xc0
    check-cast p1, Lorg/objectweb/asm/tree/TypeInsnNode;

    iget-object v0, p1, Lorg/objectweb/asm/tree/TypeInsnNode;->desc:Ljava/lang/String;

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    goto/16 :goto_12

    :pswitch_c8  #0xc1
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto/16 :goto_12

    :pswitch_data_cc
    .packed-switch 0x74
        :pswitch_10  #00000074
        :pswitch_16  #00000075
        :pswitch_13  #00000076
        :pswitch_19  #00000077
        :pswitch_8  #00000078
        :pswitch_8  #00000079
        :pswitch_8  #0000007a
        :pswitch_8  #0000007b
        :pswitch_8  #0000007c
        :pswitch_8  #0000007d
        :pswitch_8  #0000007e
        :pswitch_8  #0000007f
        :pswitch_8  #00000080
        :pswitch_8  #00000081
        :pswitch_8  #00000082
        :pswitch_8  #00000083
        :pswitch_10  #00000084
        :pswitch_16  #00000085
        :pswitch_13  #00000086
        :pswitch_19  #00000087
        :pswitch_10  #00000088
        :pswitch_13  #00000089
        :pswitch_19  #0000008a
        :pswitch_10  #0000008b
        :pswitch_16  #0000008c
        :pswitch_19  #0000008d
        :pswitch_10  #0000008e
        :pswitch_16  #0000008f
        :pswitch_13  #00000090
        :pswitch_10  #00000091
        :pswitch_10  #00000092
        :pswitch_10  #00000093
        :pswitch_8  #00000094
        :pswitch_8  #00000095
        :pswitch_8  #00000096
        :pswitch_8  #00000097
        :pswitch_8  #00000098
        :pswitch_12  #00000099
        :pswitch_12  #0000009a
        :pswitch_12  #0000009b
        :pswitch_12  #0000009c
        :pswitch_12  #0000009d
        :pswitch_12  #0000009e
        :pswitch_8  #0000009f
        :pswitch_8  #000000a0
        :pswitch_8  #000000a1
        :pswitch_8  #000000a2
        :pswitch_8  #000000a3
        :pswitch_8  #000000a4
        :pswitch_8  #000000a5
        :pswitch_8  #000000a6
        :pswitch_8  #000000a7
        :pswitch_8  #000000a8
        :pswitch_8  #000000a9
        :pswitch_12  #000000aa
        :pswitch_12  #000000ab
        :pswitch_12  #000000ac
        :pswitch_12  #000000ad
        :pswitch_12  #000000ae
        :pswitch_12  #000000af
        :pswitch_12  #000000b0
        :pswitch_8  #000000b1
        :pswitch_8  #000000b2
        :pswitch_12  #000000b3
        :pswitch_1c  #000000b4
        :pswitch_8  #000000b5
        :pswitch_8  #000000b6
        :pswitch_8  #000000b7
        :pswitch_8  #000000b8
        :pswitch_8  #000000b9
        :pswitch_8  #000000ba
        :pswitch_8  #000000bb
        :pswitch_29  #000000bc
        :pswitch_91  #000000bd
        :pswitch_b6  #000000be
        :pswitch_12  #000000bf
        :pswitch_ba  #000000c0
        :pswitch_c8  #000000c1
        :pswitch_12  #000000c2
        :pswitch_12  #000000c3
        :pswitch_8  #000000c4
        :pswitch_8  #000000c5
        :pswitch_12  #000000c6
        :pswitch_12  #000000c7
    .end packed-switch

    :pswitch_data_178
    .packed-switch 0x4
        :pswitch_39  #00000004
        :pswitch_44  #00000005
        :pswitch_70  #00000006
        :pswitch_7b  #00000007
        :pswitch_4f  #00000008
        :pswitch_5a  #00000009
        :pswitch_65  #0000000a
        :pswitch_86  #0000000b
    .end packed-switch
.end method

.method public bridge unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    check-cast p2, Lorg/objectweb/asm/tree/analysis/BasicValue;

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    return-object v0
.end method
