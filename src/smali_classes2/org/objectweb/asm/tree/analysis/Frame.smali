.class public Lorg/objectweb/asm/tree/analysis/Frame;
.super Ljava/lang/Object;


# instance fields
.field private locals:I

.field private returnValue:Lorg/objectweb/asm/tree/analysis/Value;

.field private top:I

.field private values:[Lorg/objectweb/asm/tree/analysis/Value;


# direct methods
.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int v0, p1, p2

    new-array v0, v0, [Lorg/objectweb/asm/tree/analysis/Value;

    check-cast v0, [Lorg/objectweb/asm/tree/analysis/Value;

    iput-object v0, p0, Lorg/objectweb/asm/tree/analysis/Frame;->values:[Lorg/objectweb/asm/tree/analysis/Value;

    iput p1, p0, Lorg/objectweb/asm/tree/analysis/Frame;->locals:I

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/tree/analysis/Frame;)V
    .registers 5

    iget v0, p1, Lorg/objectweb/asm/tree/analysis/Frame;->locals:I

    iget-object v1, p1, Lorg/objectweb/asm/tree/analysis/Frame;->values:[Lorg/objectweb/asm/tree/analysis/Value;

    array-length v1, v1

    iget v2, p1, Lorg/objectweb/asm/tree/analysis/Frame;->locals:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;-><init>(II)V

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/analysis/Frame;->init(Lorg/objectweb/asm/tree/analysis/Frame;)Lorg/objectweb/asm/tree/analysis/Frame;

    return-void
.end method


# virtual methods
.method public clearStack()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/objectweb/asm/tree/analysis/Frame;->top:I

    return-void
.end method

.method public execute(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Interpreter;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal opcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-virtual {p2, p1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->newOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    :cond_0
    :goto_0
    :pswitch_2
    return-void

    :pswitch_3
    move-object v0, p1

    check-cast v0, Lorg/objectweb/asm/tree/VarInsnNode;

    iget v0, v0, Lorg/objectweb/asm/tree/VarInsnNode;->var:I

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->getLocal(I)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p2, p1, v1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->binaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    check-cast p1, Lorg/objectweb/asm/tree/VarInsnNode;

    iget v1, p1, Lorg/objectweb/asm/tree/VarInsnNode;->var:I

    invoke-virtual {p0, v1, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->setLocal(ILorg/objectweb/asm/tree/analysis/Value;)V

    invoke-interface {v0}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v0

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p2, v6}, Lorg/objectweb/asm/tree/analysis/Interpreter;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/objectweb/asm/tree/analysis/Frame;->setLocal(ILorg/objectweb/asm/tree/analysis/Value;)V

    :cond_1
    if-lez v1, :cond_0

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->getLocal(I)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v0

    if-ne v0, v3, :cond_0

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p2, v6}, Lorg/objectweb/asm/tree/analysis/Interpreter;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->setLocal(ILorg/objectweb/asm/tree/analysis/Value;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p2, p1, v2, v1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->ternaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-interface {v0}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v0

    if-ne v0, v3, :cond_0

    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "Illegal use of POP"

    invoke-direct {v0, p1, v1}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;)V

    throw v0

    :pswitch_8
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-interface {v0}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v0

    if-ne v0, v5, :cond_0

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-interface {v0}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v0

    if-eq v0, v5, :cond_0

    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "Illegal use of POP2"

    invoke-direct {v0, p1, v1}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;)V

    throw v0

    :pswitch_9
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-interface {v0}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v1

    if-eq v1, v5, :cond_2

    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "Illegal use of DUP"

    invoke-direct {v0, p1, v1}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-interface {v0}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v2

    if-ne v2, v5, :cond_3

    invoke-interface {v1}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v2

    if-eq v2, v5, :cond_4

    :cond_3
    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "Illegal use of DUP_X1"

    invoke-direct {v0, p1, v1}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-interface {v0}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v1

    if-ne v1, v5, :cond_6

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-interface {v1}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v2

    if-ne v2, v5, :cond_5

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v2

    invoke-interface {v2}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v3

    if-ne v3, v5, :cond_6

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "Illegal use of DUP_X2"

    invoke-direct {v0, p1, v1}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;)V

    throw v0

    :pswitch_c
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-interface {v0}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v1

    if-ne v1, v5, :cond_7

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-interface {v1}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v2

    if-ne v2, v5, :cond_8

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p2, p1, v1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "Illegal use of DUP2"

    invoke-direct {v0, p1, v1}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;)V

    throw v0

    :pswitch_d
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-interface {v0}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v1

    if-ne v1, v5, :cond_9

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-interface {v1}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v2

    if-ne v2, v5, :cond_a

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v2

    invoke-interface {v2}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v3

    if-ne v3, v5, :cond_a

    invoke-virtual {p2, p1, v1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-interface {v1}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v2

    if-ne v2, v5, :cond_a

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :cond_a
    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "Illegal use of DUP2_X1"

    invoke-direct {v0, p1, v1}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;)V

    throw v0

    :pswitch_e
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-interface {v0}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v1

    if-ne v1, v5, :cond_c

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-interface {v1}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v2

    if-ne v2, v5, :cond_e

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v2

    invoke-interface {v2}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v3

    if-ne v3, v5, :cond_b

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v3

    invoke-interface {v3}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v4

    if-ne v4, v5, :cond_e

    invoke-virtual {p2, p1, v1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p2, p1, v1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-interface {v1}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v2

    if-ne v2, v5, :cond_d

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v2

    invoke-interface {v2}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v3

    if-ne v3, v5, :cond_e

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :cond_e
    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "Illegal use of DUP2_X2"

    invoke-direct {v0, p1, v1}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;)V

    throw v0

    :pswitch_f
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-interface {v1}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v2

    if-ne v2, v5, :cond_f

    invoke-interface {v0}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v2

    if-eq v2, v5, :cond_10

    :cond_f
    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "Illegal use of SWAP"

    invoke-direct {v0, p1, v1}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p2, p1, v1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p2, p1, v1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->binaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p2, p1, v1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->binaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :pswitch_13
    move-object v0, p1

    check-cast v0, Lorg/objectweb/asm/tree/IincInsnNode;

    iget v0, v0, Lorg/objectweb/asm/tree/IincInsnNode;->var:I

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->getLocal(I)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->setLocal(ILorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p2, p1, v1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->binaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p2, p1, v1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->binaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {p2, p1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->newOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/Frame;->returnValue:Lorg/objectweb/asm/tree/analysis/Value;

    invoke-virtual {p2, p1, v0, v1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->returnOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :pswitch_1b
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/Frame;->returnValue:Lorg/objectweb/asm/tree/analysis/Value;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "Incompatible return type"

    invoke-direct {v0, p1, v1}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;)V

    throw v0

    :pswitch_1c
    invoke-virtual {p2, p1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->newOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p2, p1, v1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->binaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    goto/16 :goto_0

    :pswitch_20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    check-cast v0, Lorg/objectweb/asm/tree/MethodInsnNode;

    iget-object v2, v0, Lorg/objectweb/asm/tree/MethodInsnNode;->desc:Ljava/lang/String;

    invoke-static {v2}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v0

    array-length v0, v0

    :goto_1
    if-lez v0, :cond_11

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_11
    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    const/16 v3, 0xb8

    if-eq v0, v3, :cond_12

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_12
    invoke-static {v2}, Lorg/objectweb/asm/Type;->getReturnType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    sget-object v2, Lorg/objectweb/asm/Type;->VOID_TYPE:Lorg/objectweb/asm/Type;

    if-ne v0, v2, :cond_13

    invoke-virtual {p2, p1, v1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->naryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/util/List;)Lorg/objectweb/asm/tree/analysis/Value;

    goto/16 :goto_0

    :cond_13
    invoke-virtual {p2, p1, v1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->naryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/util/List;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :pswitch_21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    check-cast v0, Lorg/objectweb/asm/tree/InvokeDynamicInsnNode;

    iget-object v2, v0, Lorg/objectweb/asm/tree/InvokeDynamicInsnNode;->desc:Ljava/lang/String;

    invoke-static {v2}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v0

    array-length v0, v0

    :goto_2
    if-lez v0, :cond_14

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_14
    invoke-static {v2}, Lorg/objectweb/asm/Type;->getReturnType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    sget-object v2, Lorg/objectweb/asm/Type;->VOID_TYPE:Lorg/objectweb/asm/Type;

    if-ne v0, v2, :cond_15

    invoke-virtual {p2, p1, v1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->naryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/util/List;)Lorg/objectweb/asm/tree/analysis/Value;

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p2, p1, v1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->naryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/util/List;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :pswitch_22
    invoke-virtual {p2, p1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->newOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :pswitch_23
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :pswitch_24
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    goto/16 :goto_0

    :pswitch_25
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :pswitch_26
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    goto/16 :goto_0

    :pswitch_27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    check-cast v0, Lorg/objectweb/asm/tree/MultiANewArrayInsnNode;

    iget v0, v0, Lorg/objectweb/asm/tree/MultiANewArrayInsnNode;->dims:I

    :goto_3
    if-lez v0, :cond_16

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_16
    invoke-virtual {p2, p1, v1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->naryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/util/List;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_0

    :pswitch_28
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_2
        :pswitch_18
        :pswitch_2
        :pswitch_19
        :pswitch_19
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_25
        :pswitch_26
        :pswitch_26
        :pswitch_0
        :pswitch_27
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method public getLocal(I)Lorg/objectweb/asm/tree/analysis/Value;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget v0, p0, Lorg/objectweb/asm/tree/analysis/Frame;->locals:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Trying to access an inexistant local variable"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/Frame;->values:[Lorg/objectweb/asm/tree/analysis/Value;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLocals()I
    .registers 2

    iget v0, p0, Lorg/objectweb/asm/tree/analysis/Frame;->locals:I

    return v0
.end method

.method public getMaxStackSize()I
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/Frame;->values:[Lorg/objectweb/asm/tree/analysis/Value;

    array-length v0, v0

    iget v1, p0, Lorg/objectweb/asm/tree/analysis/Frame;->locals:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getStack(I)Lorg/objectweb/asm/tree/analysis/Value;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/Frame;->values:[Lorg/objectweb/asm/tree/analysis/Value;

    iget v1, p0, Lorg/objectweb/asm/tree/analysis/Frame;->locals:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getStackSize()I
    .registers 2

    iget v0, p0, Lorg/objectweb/asm/tree/analysis/Frame;->top:I

    return v0
.end method

.method public init(Lorg/objectweb/asm/tree/analysis/Frame;)Lorg/objectweb/asm/tree/analysis/Frame;
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p1, Lorg/objectweb/asm/tree/analysis/Frame;->returnValue:Lorg/objectweb/asm/tree/analysis/Value;

    iput-object v0, p0, Lorg/objectweb/asm/tree/analysis/Frame;->returnValue:Lorg/objectweb/asm/tree/analysis/Value;

    iget-object v0, p1, Lorg/objectweb/asm/tree/analysis/Frame;->values:[Lorg/objectweb/asm/tree/analysis/Value;

    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/Frame;->values:[Lorg/objectweb/asm/tree/analysis/Value;

    iget-object v2, p0, Lorg/objectweb/asm/tree/analysis/Frame;->values:[Lorg/objectweb/asm/tree/analysis/Value;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/objectweb/asm/tree/analysis/Frame;->top:I

    iput v0, p0, Lorg/objectweb/asm/tree/analysis/Frame;->top:I

    return-object p0
.end method

.method public merge(Lorg/objectweb/asm/tree/analysis/Frame;Lorg/objectweb/asm/tree/analysis/Interpreter;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Lorg/objectweb/asm/tree/analysis/Frame;->top:I

    iget v2, p1, Lorg/objectweb/asm/tree/analysis/Frame;->top:I

    if-eq v0, v2, :cond_0

    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const/4 v1, 0x0

    const-string v2, "Incompatible stack heights"

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    move v2, v1

    :goto_0
    iget v1, p0, Lorg/objectweb/asm/tree/analysis/Frame;->locals:I

    iget v3, p0, Lorg/objectweb/asm/tree/analysis/Frame;->top:I

    add-int/2addr v1, v3

    if-ge v2, v1, :cond_2

    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/Frame;->values:[Lorg/objectweb/asm/tree/analysis/Value;

    aget-object v1, v1, v2

    iget-object v3, p1, Lorg/objectweb/asm/tree/analysis/Frame;->values:[Lorg/objectweb/asm/tree/analysis/Value;

    aget-object v3, v3, v2

    invoke-virtual {p2, v1, v3}, Lorg/objectweb/asm/tree/analysis/Interpreter;->merge(Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    iget-object v3, p0, Lorg/objectweb/asm/tree/analysis/Frame;->values:[Lorg/objectweb/asm/tree/analysis/Value;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/Frame;->values:[Lorg/objectweb/asm/tree/analysis/Value;

    aput-object v1, v0, v2

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public merge(Lorg/objectweb/asm/tree/analysis/Frame;[Z)Z
    .registers 7

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget v1, p0, Lorg/objectweb/asm/tree/analysis/Frame;->locals:I

    if-ge v2, v1, :cond_1

    aget-boolean v1, p2, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/Frame;->values:[Lorg/objectweb/asm/tree/analysis/Value;

    aget-object v1, v1, v2

    iget-object v3, p1, Lorg/objectweb/asm/tree/analysis/Frame;->values:[Lorg/objectweb/asm/tree/analysis/Value;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/Frame;->values:[Lorg/objectweb/asm/tree/analysis/Value;

    iget-object v1, p1, Lorg/objectweb/asm/tree/analysis/Frame;->values:[Lorg/objectweb/asm/tree/analysis/Value;

    aget-object v1, v1, v2

    aput-object v1, v0, v2

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public pop()Lorg/objectweb/asm/tree/analysis/Value;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget v0, p0, Lorg/objectweb/asm/tree/analysis/Frame;->top:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Cannot pop operand off an empty stack."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/Frame;->values:[Lorg/objectweb/asm/tree/analysis/Value;

    iget v1, p0, Lorg/objectweb/asm/tree/analysis/Frame;->top:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/objectweb/asm/tree/analysis/Frame;->top:I

    iget v2, p0, Lorg/objectweb/asm/tree/analysis/Frame;->locals:I

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public push(Lorg/objectweb/asm/tree/analysis/Value;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget v0, p0, Lorg/objectweb/asm/tree/analysis/Frame;->top:I

    iget v1, p0, Lorg/objectweb/asm/tree/analysis/Frame;->locals:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/Frame;->values:[Lorg/objectweb/asm/tree/analysis/Value;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Insufficient maximum stack size."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/Frame;->values:[Lorg/objectweb/asm/tree/analysis/Value;

    iget v1, p0, Lorg/objectweb/asm/tree/analysis/Frame;->top:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/objectweb/asm/tree/analysis/Frame;->top:I

    iget v2, p0, Lorg/objectweb/asm/tree/analysis/Frame;->locals:I

    add-int/2addr v1, v2

    aput-object p1, v0, v1

    return-void
.end method

.method public setLocal(ILorg/objectweb/asm/tree/analysis/Value;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget v0, p0, Lorg/objectweb/asm/tree/analysis/Frame;->locals:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Trying to access an inexistant local variable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/Frame;->values:[Lorg/objectweb/asm/tree/analysis/Value;

    aput-object p2, v0, p1

    return-void
.end method

.method public setReturn(Lorg/objectweb/asm/tree/analysis/Value;)V
    .registers 2

    iput-object p1, p0, Lorg/objectweb/asm/tree/analysis/Frame;->returnValue:Lorg/objectweb/asm/tree/analysis/Value;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->getLocals()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->getLocal(I)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->getStackSize()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->getStack(I)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
