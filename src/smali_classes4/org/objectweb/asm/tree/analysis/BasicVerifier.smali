.class public Lorg/objectweb/asm/tree/analysis/BasicVerifier;
.super Lorg/objectweb/asm/tree/analysis/BasicInterpreter;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public binaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    sparse-switch v0, :sswitch_data_10c

    new-instance v0, Ljava/lang/Error;

    const-string v1, "Internal error."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_f
    const-string v0, "[I"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-object v2, v1

    :goto_1c
    invoke-virtual {p0, p2, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->isSubTypeOf(Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Z

    move-result v1

    if-nez v1, :cond_ec

    new-instance v1, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v2, "First argument"

    invoke-direct {v1, p1, v2, v0, p2}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;Ljava/lang/Object;Lorg/objectweb/asm/tree/analysis/Value;)V

    throw v1

    :sswitch_2a
    const-string v0, "[Z"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->isSubTypeOf(Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "[Z"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    :goto_44
    sget-object v1, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-object v2, v1

    goto :goto_1c

    :cond_48
    const-string v0, "[B"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    goto :goto_44

    :sswitch_53
    const-string v0, "[C"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-object v2, v1

    goto :goto_1c

    :sswitch_61
    const-string v0, "[S"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-object v2, v1

    goto :goto_1c

    :sswitch_6f
    const-string v0, "[J"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-object v2, v1

    goto :goto_1c

    :sswitch_7d
    const-string v0, "[F"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-object v2, v1

    goto :goto_1c

    :sswitch_8b
    const-string v0, "[D"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-object v2, v1

    goto :goto_1c

    :sswitch_99
    const-string v0, "[Ljava/lang/Object;"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-object v2, v1

    goto/16 :goto_1c

    :sswitch_a8
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    sget-object v1, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-object v2, v1

    goto/16 :goto_1c

    :sswitch_af
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->FLOAT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    sget-object v1, Lorg/objectweb/asm/tree/analysis/BasicValue;->FLOAT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-object v2, v1

    goto/16 :goto_1c

    :sswitch_b6
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->LONG_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    sget-object v1, Lorg/objectweb/asm/tree/analysis/BasicValue;->LONG_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-object v2, v1

    goto/16 :goto_1c

    :sswitch_bd
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->LONG_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    sget-object v1, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-object v2, v1

    goto/16 :goto_1c

    :sswitch_c4
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->DOUBLE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    sget-object v1, Lorg/objectweb/asm/tree/analysis/BasicValue;->DOUBLE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-object v2, v1

    goto/16 :goto_1c

    :sswitch_cb
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->REFERENCE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    sget-object v1, Lorg/objectweb/asm/tree/analysis/BasicValue;->REFERENCE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-object v2, v1

    goto/16 :goto_1c

    :sswitch_d2
    move-object v0, p1

    check-cast v0, Lorg/objectweb/asm/tree/FieldInsnNode;

    iget-object v1, v0, Lorg/objectweb/asm/tree/FieldInsnNode;->owner:Ljava/lang/String;

    invoke-static {v1}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v1

    iget-object v0, v0, Lorg/objectweb/asm/tree/FieldInsnNode;->desc:Ljava/lang/String;

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v2

    move-object v0, v1

    goto/16 :goto_1c

    :cond_ec
    invoke-virtual {p0, p3, v2}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->isSubTypeOf(Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Z

    move-result v0

    if-nez v0, :cond_fa

    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "Second argument"

    invoke-direct {v0, p1, v1, v2, p3}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;Ljava/lang/Object;Lorg/objectweb/asm/tree/analysis/Value;)V

    throw v0

    :cond_fa
    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_107

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->getElementValue(Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    :goto_106
    return-object v0

    :cond_107
    invoke-super {p0, p1, p2, p3}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->binaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    goto :goto_106

    :sswitch_data_10c
    .sparse-switch
        0x2e -> :sswitch_f
        0x2f -> :sswitch_6f
        0x30 -> :sswitch_7d
        0x31 -> :sswitch_8b
        0x32 -> :sswitch_99
        0x33 -> :sswitch_2a
        0x34 -> :sswitch_53
        0x35 -> :sswitch_61
        0x60 -> :sswitch_a8
        0x61 -> :sswitch_b6
        0x62 -> :sswitch_af
        0x63 -> :sswitch_c4
        0x64 -> :sswitch_a8
        0x65 -> :sswitch_b6
        0x66 -> :sswitch_af
        0x67 -> :sswitch_c4
        0x68 -> :sswitch_a8
        0x69 -> :sswitch_b6
        0x6a -> :sswitch_af
        0x6b -> :sswitch_c4
        0x6c -> :sswitch_a8
        0x6d -> :sswitch_b6
        0x6e -> :sswitch_af
        0x6f -> :sswitch_c4
        0x70 -> :sswitch_a8
        0x71 -> :sswitch_b6
        0x72 -> :sswitch_af
        0x73 -> :sswitch_c4
        0x78 -> :sswitch_a8
        0x79 -> :sswitch_bd
        0x7a -> :sswitch_a8
        0x7b -> :sswitch_bd
        0x7c -> :sswitch_a8
        0x7d -> :sswitch_bd
        0x7e -> :sswitch_a8
        0x7f -> :sswitch_b6
        0x80 -> :sswitch_a8
        0x81 -> :sswitch_b6
        0x82 -> :sswitch_a8
        0x83 -> :sswitch_b6
        0x94 -> :sswitch_b6
        0x95 -> :sswitch_af
        0x96 -> :sswitch_af
        0x97 -> :sswitch_c4
        0x98 -> :sswitch_c4
        0x9f -> :sswitch_a8
        0xa0 -> :sswitch_a8
        0xa1 -> :sswitch_a8
        0xa2 -> :sswitch_a8
        0xa3 -> :sswitch_a8
        0xa4 -> :sswitch_a8
        0xa5 -> :sswitch_cb
        0xa6 -> :sswitch_cb
        0xb5 -> :sswitch_d2
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

    invoke-virtual {p0, p1, p2, p3}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->binaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    return-object v0
.end method

.method public copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    sparse-switch v0, :sswitch_data_44

    :cond_8
    return-object p2

    :sswitch_9
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    :goto_b
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    invoke-direct {v1, p1, v2, v0, p2}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;Ljava/lang/Object;Lorg/objectweb/asm/tree/analysis/Value;)V

    throw v1

    :sswitch_17
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->FLOAT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_b

    :sswitch_1a
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->LONG_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_b

    :sswitch_1d
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->DOUBLE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_b

    :sswitch_20
    invoke-virtual {p2}, Lorg/objectweb/asm/tree/analysis/BasicValue;->isReference()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "an object reference"

    invoke-direct {v0, p1, v2, v1, p2}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;Ljava/lang/Object;Lorg/objectweb/asm/tree/analysis/Value;)V

    throw v0

    :sswitch_2e
    invoke-virtual {p2}, Lorg/objectweb/asm/tree/analysis/BasicValue;->isReference()Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->RETURNADDRESS_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/tree/analysis/BasicValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "an object reference or a return address"

    invoke-direct {v0, p1, v2, v1, p2}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;Ljava/lang/Object;Lorg/objectweb/asm/tree/analysis/Value;)V

    throw v0

    :sswitch_data_44
    .sparse-switch
        0x15 -> :sswitch_9
        0x16 -> :sswitch_1a
        0x17 -> :sswitch_17
        0x18 -> :sswitch_1d
        0x19 -> :sswitch_20
        0x36 -> :sswitch_9
        0x37 -> :sswitch_1a
        0x38 -> :sswitch_17
        0x39 -> :sswitch_1d
        0x3a -> :sswitch_2e
    .end sparse-switch
.end method

.method public bridge copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    check-cast p2, Lorg/objectweb/asm/tree/analysis/BasicValue;

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    return-object v0
.end method

.method protected getElementValue(Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->REFERENCE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    return-object v0
.end method

.method protected isArrayValue(Lorg/objectweb/asm/tree/analysis/BasicValue;)Z
    .registers 3

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/analysis/BasicValue;->isReference()Z

    move-result v0

    return v0
.end method

.method protected isSubTypeOf(Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Z
    .registers 4

    invoke-virtual {p1, p2}, Lorg/objectweb/asm/tree/analysis/BasicValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public naryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/util/List;)Lorg/objectweb/asm/tree/analysis/BasicValue;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    const/16 v6, 0xba

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v3

    const/16 v0, 0xc5

    if-ne v3, v0, :cond_35

    move v0, v1

    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    sget-object v1, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/tree/analysis/BasicValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    new-instance v1, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const/4 v2, 0x0

    sget-object v3, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/analysis/Value;

    invoke-direct {v1, p1, v2, v3, v0}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;Ljava/lang/Object;Lorg/objectweb/asm/tree/analysis/Value;)V

    throw v1

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_30
    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->naryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/util/List;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    return-object v0

    :cond_35
    const/16 v0, 0xb8

    if-eq v3, v0, :cond_67

    if-eq v3, v6, :cond_67

    move-object v0, p1

    check-cast v0, Lorg/objectweb/asm/tree/MethodInsnNode;

    iget-object v0, v0, Lorg/objectweb/asm/tree/MethodInsnNode;->owner:Ljava/lang/String;

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v4

    const/4 v2, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/analysis/BasicValue;

    invoke-virtual {p0, v4}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->isSubTypeOf(Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Z

    move-result v0

    if-nez v0, :cond_68

    new-instance v2, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v3, "Method owner"

    invoke-virtual {p0, v4}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v4

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/analysis/Value;

    invoke-direct {v2, p1, v3, v4, v0}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;Ljava/lang/Object;Lorg/objectweb/asm/tree/analysis/Value;)V

    throw v2

    :cond_67
    move v2, v1

    :cond_68
    if-ne v3, v6, :cond_a6

    move-object v0, p1

    check-cast v0, Lorg/objectweb/asm/tree/InvokeDynamicInsnNode;

    iget-object v0, v0, Lorg/objectweb/asm/tree/InvokeDynamicInsnNode;->desc:Ljava/lang/String;

    :goto_6f
    invoke-static {v0}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v4

    :goto_73
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_30

    add-int/lit8 v3, v1, 0x1

    aget-object v0, v4, v1

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/analysis/BasicValue;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->isSubTypeOf(Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Z

    move-result v5

    if-nez v5, :cond_ac

    new-instance v2, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Argument "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3, v1, v0}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;Ljava/lang/Object;Lorg/objectweb/asm/tree/analysis/Value;)V

    throw v2

    :cond_a6
    move-object v0, p1

    check-cast v0, Lorg/objectweb/asm/tree/MethodInsnNode;

    iget-object v0, v0, Lorg/objectweb/asm/tree/MethodInsnNode;->desc:Ljava/lang/String;

    goto :goto_6f

    :cond_ac
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v1, v3

    goto :goto_73
.end method

.method public bridge naryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/util/List;)Lorg/objectweb/asm/tree/analysis/Value;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->naryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/util/List;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    return-object v0
.end method

.method public returnOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->isSubTypeOf(Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "Incompatible return type"

    invoke-direct {v0, p1, v1, p3, p2}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;Ljava/lang/Object;Lorg/objectweb/asm/tree/analysis/Value;)V

    throw v0

    :cond_e
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

    invoke-virtual {p0, p1, p2, p3}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->returnOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)V

    return-void
.end method

.method public ternaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    packed-switch v0, :pswitch_data_d4

    new-instance v0, Ljava/lang/Error;

    const-string v1, "Internal error."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f  #0x4f
    const-string v0, "[I"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    :goto_1b
    invoke-virtual {p0, p2, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->isSubTypeOf(Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Z

    move-result v2

    if-nez v2, :cond_b2

    new-instance v1, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v2, "First argument"

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, " array reference"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v2, v0, p2}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;Ljava/lang/Object;Lorg/objectweb/asm/tree/analysis/Value;)V

    throw v1

    :pswitch_42  #0x54
    const-string v0, "[Z"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->isSubTypeOf(Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "[Z"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    :goto_5c
    sget-object v1, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_1b

    :cond_5f
    const-string v0, "[B"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    goto :goto_5c

    :pswitch_6a  #0x55
    const-string v0, "[C"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_1b

    :pswitch_77  #0x56
    const-string v0, "[S"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_1b

    :pswitch_84  #0x50
    const-string v0, "[J"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/tree/analysis/BasicValue;->LONG_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_1b

    :pswitch_91  #0x51
    const-string v0, "[F"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/tree/analysis/BasicValue;->FLOAT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto/16 :goto_1b

    :pswitch_9f  #0x52
    const-string v0, "[D"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/tree/analysis/BasicValue;->DOUBLE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto/16 :goto_1b

    :pswitch_ad  #0x53
    sget-object v1, Lorg/objectweb/asm/tree/analysis/BasicValue;->REFERENCE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-object v0, p2

    goto/16 :goto_1b

    :cond_b2
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    invoke-virtual {v0, p3}, Lorg/objectweb/asm/tree/analysis/BasicValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c4

    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "Second argument"

    sget-object v2, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    invoke-direct {v0, p1, v1, v2, p3}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;Ljava/lang/Object;Lorg/objectweb/asm/tree/analysis/Value;)V

    throw v0

    :cond_c4
    invoke-virtual {p0, p4, v1}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->isSubTypeOf(Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Z

    move-result v0

    if-nez v0, :cond_d2

    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v2, "Third argument"

    invoke-direct {v0, p1, v2, v1, p4}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;Ljava/lang/Object;Lorg/objectweb/asm/tree/analysis/Value;)V

    throw v0

    :cond_d2
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_d4
    .packed-switch 0x4f
        :pswitch_f  #0000004f
        :pswitch_84  #00000050
        :pswitch_91  #00000051
        :pswitch_9f  #00000052
        :pswitch_ad  #00000053
        :pswitch_42  #00000054
        :pswitch_6a  #00000055
        :pswitch_77  #00000056
    .end packed-switch
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

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->ternaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;

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

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    packed-switch v0, :pswitch_data_82

    :pswitch_8  #0x78, 0x79, 0x7a, 0x7b, 0x7c, 0x7d, 0x7e, 0x7f, 0x80, 0x81, 0x82, 0x83, 0x94, 0x95, 0x96, 0x97, 0x98, 0x9f, 0xa0, 0xa1, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xa7, 0xa8, 0xa9, 0xb1, 0xb2, 0xb5, 0xb6, 0xb7, 0xb8, 0xb9, 0xba, 0xbb, 0xc4, 0xc5
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Internal error."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_10  #0x74, 0x84, 0x85, 0x86, 0x87, 0x91, 0x92, 0x93, 0x99, 0x9a, 0x9b, 0x9c, 0x9d, 0x9e, 0xaa, 0xab, 0xac, 0xbc, 0xbd
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->INT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    :goto_12
    invoke-virtual {p0, p2, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->isSubTypeOf(Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Z

    move-result v1

    if-nez v1, :cond_7c

    new-instance v1, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    invoke-direct {v1, p1, v2, v0, p2}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;Ljava/lang/Object;Lorg/objectweb/asm/tree/analysis/Value;)V

    throw v1

    :pswitch_1e  #0x76, 0x8b, 0x8c, 0x8d, 0xae
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->FLOAT_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_12

    :pswitch_21  #0x75, 0x88, 0x89, 0x8a, 0xad
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->LONG_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_12

    :pswitch_24  #0x77, 0x8e, 0x8f, 0x90, 0xaf
    sget-object v0, Lorg/objectweb/asm/tree/analysis/BasicValue;->DOUBLE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    goto :goto_12

    :pswitch_27  #0xb4
    move-object v0, p1

    check-cast v0, Lorg/objectweb/asm/tree/FieldInsnNode;

    iget-object v0, v0, Lorg/objectweb/asm/tree/FieldInsnNode;->owner:Ljava/lang/String;

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    goto :goto_12

    :pswitch_35  #0xc0
    invoke-virtual {p2}, Lorg/objectweb/asm/tree/analysis/BasicValue;->isReference()Z

    move-result v0

    if-nez v0, :cond_43

    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "an object reference"

    invoke-direct {v0, p1, v2, v1, p2}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;Ljava/lang/Object;Lorg/objectweb/asm/tree/analysis/Value;)V

    throw v0

    :cond_43
    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    :goto_47
    return-object v0

    :pswitch_48  #0xbe
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->isArrayValue(Lorg/objectweb/asm/tree/analysis/BasicValue;)Z

    move-result v0

    if-nez v0, :cond_56

    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "an array reference"

    invoke-direct {v0, p1, v2, v1, p2}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;Ljava/lang/Object;Lorg/objectweb/asm/tree/analysis/Value;)V

    throw v0

    :cond_56
    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    goto :goto_47

    :pswitch_5b  #0xb0, 0xbf, 0xc1, 0xc2, 0xc3, 0xc6, 0xc7
    invoke-virtual {p2}, Lorg/objectweb/asm/tree/analysis/BasicValue;->isReference()Z

    move-result v0

    if-nez v0, :cond_69

    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "an object reference"

    invoke-direct {v0, p1, v2, v1, p2}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;Ljava/lang/Object;Lorg/objectweb/asm/tree/analysis/Value;)V

    throw v0

    :cond_69
    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    goto :goto_47

    :pswitch_6e  #0xb3
    move-object v0, p1

    check-cast v0, Lorg/objectweb/asm/tree/FieldInsnNode;

    iget-object v0, v0, Lorg/objectweb/asm/tree/FieldInsnNode;->desc:Ljava/lang/String;

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    goto :goto_12

    :cond_7c
    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/tree/analysis/BasicInterpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    goto :goto_47

    nop

    :pswitch_data_82
    .packed-switch 0x74
        :pswitch_10  #00000074
        :pswitch_21  #00000075
        :pswitch_1e  #00000076
        :pswitch_24  #00000077
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
        :pswitch_10  #00000085
        :pswitch_10  #00000086
        :pswitch_10  #00000087
        :pswitch_21  #00000088
        :pswitch_21  #00000089
        :pswitch_21  #0000008a
        :pswitch_1e  #0000008b
        :pswitch_1e  #0000008c
        :pswitch_1e  #0000008d
        :pswitch_24  #0000008e
        :pswitch_24  #0000008f
        :pswitch_24  #00000090
        :pswitch_10  #00000091
        :pswitch_10  #00000092
        :pswitch_10  #00000093
        :pswitch_8  #00000094
        :pswitch_8  #00000095
        :pswitch_8  #00000096
        :pswitch_8  #00000097
        :pswitch_8  #00000098
        :pswitch_10  #00000099
        :pswitch_10  #0000009a
        :pswitch_10  #0000009b
        :pswitch_10  #0000009c
        :pswitch_10  #0000009d
        :pswitch_10  #0000009e
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
        :pswitch_10  #000000aa
        :pswitch_10  #000000ab
        :pswitch_10  #000000ac
        :pswitch_21  #000000ad
        :pswitch_1e  #000000ae
        :pswitch_24  #000000af
        :pswitch_5b  #000000b0
        :pswitch_8  #000000b1
        :pswitch_8  #000000b2
        :pswitch_6e  #000000b3
        :pswitch_27  #000000b4
        :pswitch_8  #000000b5
        :pswitch_8  #000000b6
        :pswitch_8  #000000b7
        :pswitch_8  #000000b8
        :pswitch_8  #000000b9
        :pswitch_8  #000000ba
        :pswitch_8  #000000bb
        :pswitch_10  #000000bc
        :pswitch_10  #000000bd
        :pswitch_48  #000000be
        :pswitch_5b  #000000bf
        :pswitch_35  #000000c0
        :pswitch_5b  #000000c1
        :pswitch_5b  #000000c2
        :pswitch_5b  #000000c3
        :pswitch_8  #000000c4
        :pswitch_8  #000000c5
        :pswitch_5b  #000000c6
        :pswitch_5b  #000000c7
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

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    return-object v0
.end method
