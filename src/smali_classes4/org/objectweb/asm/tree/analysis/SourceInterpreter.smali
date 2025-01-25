.class public Lorg/objectweb/asm/tree/analysis/SourceInterpreter;
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
.method public binaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/SourceValue;Lorg/objectweb/asm/tree/analysis/SourceValue;)Lorg/objectweb/asm/tree/analysis/SourceValue;
    .registers 6

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    sparse-switch v0, :sswitch_data_10

    const/4 v0, 0x1

    :goto_8
    new-instance v1, Lorg/objectweb/asm/tree/analysis/SourceValue;

    invoke-direct {v1, v0, p1}, Lorg/objectweb/asm/tree/analysis/SourceValue;-><init>(ILorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-object v1

    :sswitch_e
    const/4 v0, 0x2

    goto :goto_8

    :sswitch_data_10
    .sparse-switch
        0x2f -> :sswitch_e
        0x31 -> :sswitch_e
        0x61 -> :sswitch_e
        0x63 -> :sswitch_e
        0x65 -> :sswitch_e
        0x67 -> :sswitch_e
        0x69 -> :sswitch_e
        0x6b -> :sswitch_e
        0x6d -> :sswitch_e
        0x6f -> :sswitch_e
        0x71 -> :sswitch_e
        0x73 -> :sswitch_e
        0x79 -> :sswitch_e
        0x7b -> :sswitch_e
        0x7d -> :sswitch_e
        0x7f -> :sswitch_e
        0x81 -> :sswitch_e
        0x83 -> :sswitch_e
    .end sparse-switch
.end method

.method public bridge binaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    check-cast p2, Lorg/objectweb/asm/tree/analysis/SourceValue;

    check-cast p3, Lorg/objectweb/asm/tree/analysis/SourceValue;

    invoke-virtual {p0, p1, p2, p3}, Lorg/objectweb/asm/tree/analysis/SourceInterpreter;->binaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/SourceValue;Lorg/objectweb/asm/tree/analysis/SourceValue;)Lorg/objectweb/asm/tree/analysis/SourceValue;

    move-result-object v0

    return-object v0
.end method

.method public copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/SourceValue;)Lorg/objectweb/asm/tree/analysis/SourceValue;
    .registers 5

    new-instance v0, Lorg/objectweb/asm/tree/analysis/SourceValue;

    invoke-virtual {p2}, Lorg/objectweb/asm/tree/analysis/SourceValue;->getSize()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lorg/objectweb/asm/tree/analysis/SourceValue;-><init>(ILorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-object v0
.end method

.method public bridge copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    check-cast p2, Lorg/objectweb/asm/tree/analysis/SourceValue;

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/tree/analysis/SourceInterpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/SourceValue;)Lorg/objectweb/asm/tree/analysis/SourceValue;

    move-result-object v0

    return-object v0
.end method

.method public merge(Lorg/objectweb/asm/tree/analysis/SourceValue;Lorg/objectweb/asm/tree/analysis/SourceValue;)Lorg/objectweb/asm/tree/analysis/SourceValue;
    .registers 7

    iget-object v0, p1, Lorg/objectweb/asm/tree/analysis/SourceValue;->insns:Ljava/util/Set;

    instance-of v0, v0, Lorg/objectweb/asm/tree/analysis/SmallSet;

    if-eqz v0, :cond_32

    iget-object v0, p2, Lorg/objectweb/asm/tree/analysis/SourceValue;->insns:Ljava/util/Set;

    instance-of v0, v0, Lorg/objectweb/asm/tree/analysis/SmallSet;

    if-eqz v0, :cond_32

    iget-object v0, p1, Lorg/objectweb/asm/tree/analysis/SourceValue;->insns:Ljava/util/Set;

    check-cast v0, Lorg/objectweb/asm/tree/analysis/SmallSet;

    iget-object v1, p2, Lorg/objectweb/asm/tree/analysis/SourceValue;->insns:Ljava/util/Set;

    check-cast v1, Lorg/objectweb/asm/tree/analysis/SmallSet;

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/analysis/SmallSet;->union(Lorg/objectweb/asm/tree/analysis/SmallSet;)Ljava/util/Set;

    move-result-object v1

    iget-object v0, p1, Lorg/objectweb/asm/tree/analysis/SourceValue;->insns:Ljava/util/Set;

    if-ne v1, v0, :cond_23

    iget v0, p1, Lorg/objectweb/asm/tree/analysis/SourceValue;->size:I

    iget v2, p2, Lorg/objectweb/asm/tree/analysis/SourceValue;->size:I

    if-ne v0, v2, :cond_23

    :cond_22
    :goto_22
    return-object p1

    :cond_23
    new-instance v0, Lorg/objectweb/asm/tree/analysis/SourceValue;

    iget v2, p1, Lorg/objectweb/asm/tree/analysis/SourceValue;->size:I

    iget v3, p2, Lorg/objectweb/asm/tree/analysis/SourceValue;->size:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v0, v2, v1}, Lorg/objectweb/asm/tree/analysis/SourceValue;-><init>(ILjava/util/Set;)V

    move-object p1, v0

    goto :goto_22

    :cond_32
    iget v0, p1, Lorg/objectweb/asm/tree/analysis/SourceValue;->size:I

    iget v1, p2, Lorg/objectweb/asm/tree/analysis/SourceValue;->size:I

    if-ne v0, v1, :cond_42

    iget-object v0, p1, Lorg/objectweb/asm/tree/analysis/SourceValue;->insns:Ljava/util/Set;

    iget-object v1, p2, Lorg/objectweb/asm/tree/analysis/SourceValue;->insns:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_22

    :cond_42
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p1, Lorg/objectweb/asm/tree/analysis/SourceValue;->insns:Ljava/util/Set;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p2, Lorg/objectweb/asm/tree/analysis/SourceValue;->insns:Ljava/util/Set;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lorg/objectweb/asm/tree/analysis/SourceValue;

    iget v2, p1, Lorg/objectweb/asm/tree/analysis/SourceValue;->size:I

    iget v3, p2, Lorg/objectweb/asm/tree/analysis/SourceValue;->size:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v0, v2, v1}, Lorg/objectweb/asm/tree/analysis/SourceValue;-><init>(ILjava/util/Set;)V

    move-object p1, v0

    goto :goto_22
.end method

.method public bridge merge(Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;
    .registers 4

    check-cast p1, Lorg/objectweb/asm/tree/analysis/SourceValue;

    check-cast p2, Lorg/objectweb/asm/tree/analysis/SourceValue;

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/tree/analysis/SourceInterpreter;->merge(Lorg/objectweb/asm/tree/analysis/SourceValue;Lorg/objectweb/asm/tree/analysis/SourceValue;)Lorg/objectweb/asm/tree/analysis/SourceValue;

    move-result-object v0

    return-object v0
.end method

.method public naryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/util/List;)Lorg/objectweb/asm/tree/analysis/SourceValue;
    .registers 5

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    const/16 v1, 0xc5

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_9
    new-instance v1, Lorg/objectweb/asm/tree/analysis/SourceValue;

    invoke-direct {v1, v0, p1}, Lorg/objectweb/asm/tree/analysis/SourceValue;-><init>(ILorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-object v1

    :cond_f
    const/16 v1, 0xba

    if-ne v0, v1, :cond_21

    move-object v0, p1

    check-cast v0, Lorg/objectweb/asm/tree/InvokeDynamicInsnNode;

    iget-object v0, v0, Lorg/objectweb/asm/tree/InvokeDynamicInsnNode;->desc:Ljava/lang/String;

    :goto_18
    invoke-static {v0}, Lorg/objectweb/asm/Type;->getReturnType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getSize()I

    move-result v0

    goto :goto_9

    :cond_21
    move-object v0, p1

    check-cast v0, Lorg/objectweb/asm/tree/MethodInsnNode;

    iget-object v0, v0, Lorg/objectweb/asm/tree/MethodInsnNode;->desc:Ljava/lang/String;

    goto :goto_18
.end method

.method public bridge naryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/util/List;)Lorg/objectweb/asm/tree/analysis/Value;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/tree/analysis/SourceInterpreter;->naryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/util/List;)Lorg/objectweb/asm/tree/analysis/SourceValue;

    move-result-object v0

    return-object v0
.end method

.method public newOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/analysis/SourceValue;
    .registers 6

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    sparse-switch v0, :sswitch_data_32

    move v0, v1

    :goto_a
    new-instance v1, Lorg/objectweb/asm/tree/analysis/SourceValue;

    invoke-direct {v1, v0, p1}, Lorg/objectweb/asm/tree/analysis/SourceValue;-><init>(ILorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-object v1

    :sswitch_10
    move v0, v2

    goto :goto_a

    :sswitch_12
    move-object v0, p1

    check-cast v0, Lorg/objectweb/asm/tree/LdcInsnNode;

    iget-object v0, v0, Lorg/objectweb/asm/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    instance-of v3, v0, Ljava/lang/Long;

    if-nez v3, :cond_1f

    instance-of v0, v0, Ljava/lang/Double;

    if-eqz v0, :cond_21

    :cond_1f
    move v0, v2

    goto :goto_a

    :cond_21
    move v0, v1

    goto :goto_a

    :sswitch_23
    move-object v0, p1

    check-cast v0, Lorg/objectweb/asm/tree/FieldInsnNode;

    iget-object v0, v0, Lorg/objectweb/asm/tree/FieldInsnNode;->desc:Ljava/lang/String;

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getSize()I

    move-result v0

    goto :goto_a

    nop

    :sswitch_data_32
    .sparse-switch
        0x9 -> :sswitch_10
        0xa -> :sswitch_10
        0xe -> :sswitch_10
        0xf -> :sswitch_10
        0x12 -> :sswitch_12
        0xb2 -> :sswitch_23
    .end sparse-switch
.end method

.method public bridge newOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/analysis/Value;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/analysis/SourceInterpreter;->newOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/analysis/SourceValue;

    move-result-object v0

    return-object v0
.end method

.method public newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/SourceValue;
    .registers 4

    sget-object v0, Lorg/objectweb/asm/Type;->VOID_TYPE:Lorg/objectweb/asm/Type;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    if-nez p1, :cond_10

    const/4 v0, 0x1

    :goto_9
    new-instance v1, Lorg/objectweb/asm/tree/analysis/SourceValue;

    invoke-direct {v1, v0}, Lorg/objectweb/asm/tree/analysis/SourceValue;-><init>(I)V

    move-object v0, v1

    goto :goto_5

    :cond_10
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSize()I

    move-result v0

    goto :goto_9
.end method

.method public bridge newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/Value;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/analysis/SourceInterpreter;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/SourceValue;

    move-result-object v0

    return-object v0
.end method

.method public returnOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/SourceValue;Lorg/objectweb/asm/tree/analysis/SourceValue;)V
    .registers 4

    return-void
.end method

.method public bridge returnOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    check-cast p2, Lorg/objectweb/asm/tree/analysis/SourceValue;

    check-cast p3, Lorg/objectweb/asm/tree/analysis/SourceValue;

    invoke-virtual {p0, p1, p2, p3}, Lorg/objectweb/asm/tree/analysis/SourceInterpreter;->returnOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/SourceValue;Lorg/objectweb/asm/tree/analysis/SourceValue;)V

    return-void
.end method

.method public ternaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/SourceValue;Lorg/objectweb/asm/tree/analysis/SourceValue;Lorg/objectweb/asm/tree/analysis/SourceValue;)Lorg/objectweb/asm/tree/analysis/SourceValue;
    .registers 7

    new-instance v0, Lorg/objectweb/asm/tree/analysis/SourceValue;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lorg/objectweb/asm/tree/analysis/SourceValue;-><init>(ILorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-object v0
.end method

.method public bridge ternaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    check-cast p2, Lorg/objectweb/asm/tree/analysis/SourceValue;

    check-cast p3, Lorg/objectweb/asm/tree/analysis/SourceValue;

    check-cast p4, Lorg/objectweb/asm/tree/analysis/SourceValue;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/tree/analysis/SourceInterpreter;->ternaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/SourceValue;Lorg/objectweb/asm/tree/analysis/SourceValue;Lorg/objectweb/asm/tree/analysis/SourceValue;)Lorg/objectweb/asm/tree/analysis/SourceValue;

    move-result-object v0

    return-object v0
.end method

.method public unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/SourceValue;)Lorg/objectweb/asm/tree/analysis/SourceValue;
    .registers 5

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1e

    const/4 v0, 0x1

    :goto_8
    new-instance v1, Lorg/objectweb/asm/tree/analysis/SourceValue;

    invoke-direct {v1, v0, p1}, Lorg/objectweb/asm/tree/analysis/SourceValue;-><init>(ILorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-object v1

    :sswitch_e
    const/4 v0, 0x2

    goto :goto_8

    :sswitch_10
    move-object v0, p1

    check-cast v0, Lorg/objectweb/asm/tree/FieldInsnNode;

    iget-object v0, v0, Lorg/objectweb/asm/tree/FieldInsnNode;->desc:Ljava/lang/String;

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getSize()I

    move-result v0

    goto :goto_8

    :sswitch_data_1e
    .sparse-switch
        0x75 -> :sswitch_e
        0x77 -> :sswitch_e
        0x85 -> :sswitch_e
        0x87 -> :sswitch_e
        0x8a -> :sswitch_e
        0x8c -> :sswitch_e
        0x8d -> :sswitch_e
        0x8f -> :sswitch_e
        0xb4 -> :sswitch_10
    .end sparse-switch
.end method

.method public bridge unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    check-cast p2, Lorg/objectweb/asm/tree/analysis/SourceValue;

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/tree/analysis/SourceInterpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/SourceValue;)Lorg/objectweb/asm/tree/analysis/SourceValue;

    move-result-object v0

    return-object v0
.end method
