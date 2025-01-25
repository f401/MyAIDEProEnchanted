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

    packed-switch v0, :pswitch_data_44e

    :pswitch_b  #0x13, 0x14, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0xc4
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

    :pswitch_28  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x10, 0x11, 0x12
    invoke-virtual {p2, p1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->newOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    :cond_2f
    :goto_2f
    :pswitch_2f  #0x0, 0xa7, 0xa9
    return-void

    :pswitch_30  #0x15, 0x16, 0x17, 0x18, 0x19
    move-object v0, p1

    check-cast v0, Lorg/objectweb/asm/tree/VarInsnNode;

    iget v0, v0, Lorg/objectweb/asm/tree/VarInsnNode;->var:I

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->getLocal(I)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto :goto_2f

    :pswitch_41  #0x2e, 0x2f, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p2, p1, v1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->binaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto :goto_2f

    :pswitch_51  #0x36, 0x37, 0x38, 0x39, 0x3a
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    check-cast p1, Lorg/objectweb/asm/tree/VarInsnNode;

    iget v1, p1, Lorg/objectweb/asm/tree/VarInsnNode;->var:I

    invoke-virtual {p0, v1, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->setLocal(ILorg/objectweb/asm/tree/analysis/Value;)V

    invoke-interface {v0}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v0

    if-ne v0, v3, :cond_6f

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p2, v6}, Lorg/objectweb/asm/tree/analysis/Interpreter;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/objectweb/asm/tree/analysis/Frame;->setLocal(ILorg/objectweb/asm/tree/analysis/Value;)V

    :cond_6f
    if-lez v1, :cond_2f

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->getLocal(I)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-interface {v0}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v0

    if-ne v0, v3, :cond_2f

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p2, v6}, Lorg/objectweb/asm/tree/analysis/Interpreter;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->setLocal(ILorg/objectweb/asm/tree/analysis/Value;)V

    goto :goto_2f

    :pswitch_89  #0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p2, p1, v2, v1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->ternaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    goto :goto_2f

    :pswitch_99  #0x57
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-interface {v0}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v0

    if-ne v0, v3, :cond_2f

    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "Illegal use of POP"

    invoke-direct {v0, p1, v1}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;)V

    throw v0

    :pswitch_ab  #0x58
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-interface {v0}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v0

    if-ne v0, v5, :cond_2f

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-interface {v0}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v0

    if-eq v0, v5, :cond_2f

    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "Illegal use of POP2"

    invoke-direct {v0, p1, v1}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;)V

    throw v0

    :pswitch_c7  #0x59
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-interface {v0}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v1

    if-eq v1, v5, :cond_d9

    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "Illegal use of DUP"

    invoke-direct {v0, p1, v1}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;)V

    throw v0

    :cond_d9
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :pswitch_e5  #0x5a
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-interface {v0}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v2

    if-ne v2, v5, :cond_f9

    invoke-interface {v1}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v2

    if-eq v2, v5, :cond_101

    :cond_f9
    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "Illegal use of DUP_X1"

    invoke-direct {v0, p1, v1}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;)V

    throw v0

    :cond_101
    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :pswitch_110  #0x5b
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-interface {v0}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v1

    if-ne v1, v5, :cond_14f

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-interface {v1}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v2

    if-ne v2, v5, :cond_140

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v2

    invoke-interface {v2}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v3

    if-ne v3, v5, :cond_14f

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :cond_140
    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :cond_14f
    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "Illegal use of DUP_X2"

    invoke-direct {v0, p1, v1}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;)V

    throw v0

    :pswitch_157  #0x5c
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-interface {v0}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v1

    if-ne v1, v5, :cond_181

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-interface {v1}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v2

    if-ne v2, v5, :cond_18d

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p2, p1, v1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :cond_181
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :cond_18d
    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "Illegal use of DUP2"

    invoke-direct {v0, p1, v1}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;)V

    throw v0

    :pswitch_195  #0x5d
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-interface {v0}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v1

    if-ne v1, v5, :cond_1cc

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-interface {v1}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v2

    if-ne v2, v5, :cond_1e5

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v2

    invoke-interface {v2}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v3

    if-ne v3, v5, :cond_1e5

    invoke-virtual {p2, p1, v1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :cond_1cc
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-interface {v1}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v2

    if-ne v2, v5, :cond_1e5

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :cond_1e5
    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "Illegal use of DUP2_X1"

    invoke-direct {v0, p1, v1}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;)V

    throw v0

    :pswitch_1ed  #0x5e
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-interface {v0}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v1

    if-ne v1, v5, :cond_24a

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-interface {v1}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v2

    if-ne v2, v5, :cond_27f

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v2

    invoke-interface {v2}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v3

    if-ne v3, v5, :cond_231

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v3

    invoke-interface {v3}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v4

    if-ne v4, v5, :cond_27f

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

    goto/16 :goto_2f

    :cond_231
    invoke-virtual {p2, p1, v1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :cond_24a
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-interface {v1}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v2

    if-ne v2, v5, :cond_270

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v2

    invoke-interface {v2}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v3

    if-ne v3, v5, :cond_27f

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :cond_270
    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :cond_27f
    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "Illegal use of DUP2_X2"

    invoke-direct {v0, p1, v1}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;)V

    throw v0

    :pswitch_287  #0x5f
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-interface {v1}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v2

    if-ne v2, v5, :cond_29b

    invoke-interface {v0}, Lorg/objectweb/asm/tree/analysis/Value;->getSize()I

    move-result v2

    if-eq v2, v5, :cond_2a3

    :cond_29b
    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "Illegal use of SWAP"

    invoke-direct {v0, p1, v1}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;)V

    throw v0

    :cond_2a3
    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    invoke-virtual {p2, p1, v1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->copyOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :pswitch_2b3  #0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p2, p1, v1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->binaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :pswitch_2c4  #0x74, 0x75, 0x76, 0x77
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :pswitch_2d1  #0x78, 0x79, 0x7a, 0x7b, 0x7c, 0x7d, 0x7e, 0x7f, 0x80, 0x81, 0x82, 0x83
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p2, p1, v1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->binaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :pswitch_2e2  #0x84
    move-object v0, p1

    check-cast v0, Lorg/objectweb/asm/tree/IincInsnNode;

    iget v0, v0, Lorg/objectweb/asm/tree/IincInsnNode;->var:I

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->getLocal(I)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->setLocal(ILorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :pswitch_2f4  #0x85, 0x86, 0x87, 0x88, 0x89, 0x8a, 0x8b, 0x8c, 0x8d, 0x8e, 0x8f, 0x90, 0x91, 0x92, 0x93
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :pswitch_301  #0x94, 0x95, 0x96, 0x97, 0x98
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p2, p1, v1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->binaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :pswitch_312  #0x99, 0x9a, 0x9b, 0x9c, 0x9d, 0x9e
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    goto/16 :goto_2f

    :pswitch_31b  #0x9f, 0xa0, 0xa1, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p2, p1, v1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->binaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    goto/16 :goto_2f

    :pswitch_328  #0xa8
    invoke-virtual {p2, p1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->newOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :pswitch_331  #0xaa, 0xab
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    goto/16 :goto_2f

    :pswitch_33a  #0xac, 0xad, 0xae, 0xaf, 0xb0
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/Frame;->returnValue:Lorg/objectweb/asm/tree/analysis/Value;

    invoke-virtual {p2, p1, v0, v1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->returnOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :pswitch_348  #0xb1
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/Frame;->returnValue:Lorg/objectweb/asm/tree/analysis/Value;

    if-eqz v0, :cond_2f

    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const-string v1, "Incompatible return type"

    invoke-direct {v0, p1, v1}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;)V

    throw v0

    :pswitch_354  #0xb2
    invoke-virtual {p2, p1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->newOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :pswitch_35d  #0xb3
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    goto/16 :goto_2f

    :pswitch_366  #0xb4
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :pswitch_373  #0xb5
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p2, p1, v1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->binaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    goto/16 :goto_2f

    :pswitch_380  #0xb6, 0xb7, 0xb8, 0xb9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    check-cast v0, Lorg/objectweb/asm/tree/MethodInsnNode;

    iget-object v2, v0, Lorg/objectweb/asm/tree/MethodInsnNode;->desc:Ljava/lang/String;

    invoke-static {v2}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v0

    array-length v0, v0

    :goto_38f
    if-lez v0, :cond_39b

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_38f

    :cond_39b
    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    const/16 v3, 0xb8

    if-eq v0, v3, :cond_3aa

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3aa
    invoke-static {v2}, Lorg/objectweb/asm/Type;->getReturnType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    sget-object v2, Lorg/objectweb/asm/Type;->VOID_TYPE:Lorg/objectweb/asm/Type;

    if-ne v0, v2, :cond_3b7

    invoke-virtual {p2, p1, v1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->naryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/util/List;)Lorg/objectweb/asm/tree/analysis/Value;

    goto/16 :goto_2f

    :cond_3b7
    invoke-virtual {p2, p1, v1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->naryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/util/List;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :pswitch_3c0  #0xba
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    check-cast v0, Lorg/objectweb/asm/tree/InvokeDynamicInsnNode;

    iget-object v2, v0, Lorg/objectweb/asm/tree/InvokeDynamicInsnNode;->desc:Ljava/lang/String;

    invoke-static {v2}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v0

    array-length v0, v0

    :goto_3cf
    if-lez v0, :cond_3db

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3cf

    :cond_3db
    invoke-static {v2}, Lorg/objectweb/asm/Type;->getReturnType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    sget-object v2, Lorg/objectweb/asm/Type;->VOID_TYPE:Lorg/objectweb/asm/Type;

    if-ne v0, v2, :cond_3e8

    invoke-virtual {p2, p1, v1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->naryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/util/List;)Lorg/objectweb/asm/tree/analysis/Value;

    goto/16 :goto_2f

    :cond_3e8
    invoke-virtual {p2, p1, v1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->naryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/util/List;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :pswitch_3f1  #0xbb
    invoke-virtual {p2, p1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->newOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :pswitch_3fa  #0xbc, 0xbd, 0xbe
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :pswitch_407  #0xbf
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    goto/16 :goto_2f

    :pswitch_410  #0xc0, 0xc1
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :pswitch_41d  #0xc2, 0xc3
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    goto/16 :goto_2f

    :pswitch_426  #0xc5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    check-cast v0, Lorg/objectweb/asm/tree/MultiANewArrayInsnNode;

    iget v0, v0, Lorg/objectweb/asm/tree/MultiANewArrayInsnNode;->dims:I

    :goto_430
    if-lez v0, :cond_43c

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_430

    :cond_43c
    invoke-virtual {p2, p1, v1}, Lorg/objectweb/asm/tree/analysis/Interpreter;->naryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/util/List;)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->push(Lorg/objectweb/asm/tree/analysis/Value;)V

    goto/16 :goto_2f

    :pswitch_445  #0xc6, 0xc7
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->pop()Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/objectweb/asm/tree/analysis/Interpreter;->unaryOperation(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;

    goto/16 :goto_2f

    :pswitch_data_44e
    .packed-switch 0x0
        :pswitch_2f  #00000000
        :pswitch_28  #00000001
        :pswitch_28  #00000002
        :pswitch_28  #00000003
        :pswitch_28  #00000004
        :pswitch_28  #00000005
        :pswitch_28  #00000006
        :pswitch_28  #00000007
        :pswitch_28  #00000008
        :pswitch_28  #00000009
        :pswitch_28  #0000000a
        :pswitch_28  #0000000b
        :pswitch_28  #0000000c
        :pswitch_28  #0000000d
        :pswitch_28  #0000000e
        :pswitch_28  #0000000f
        :pswitch_28  #00000010
        :pswitch_28  #00000011
        :pswitch_28  #00000012
        :pswitch_b  #00000013
        :pswitch_b  #00000014
        :pswitch_30  #00000015
        :pswitch_30  #00000016
        :pswitch_30  #00000017
        :pswitch_30  #00000018
        :pswitch_30  #00000019
        :pswitch_b  #0000001a
        :pswitch_b  #0000001b
        :pswitch_b  #0000001c
        :pswitch_b  #0000001d
        :pswitch_b  #0000001e
        :pswitch_b  #0000001f
        :pswitch_b  #00000020
        :pswitch_b  #00000021
        :pswitch_b  #00000022
        :pswitch_b  #00000023
        :pswitch_b  #00000024
        :pswitch_b  #00000025
        :pswitch_b  #00000026
        :pswitch_b  #00000027
        :pswitch_b  #00000028
        :pswitch_b  #00000029
        :pswitch_b  #0000002a
        :pswitch_b  #0000002b
        :pswitch_b  #0000002c
        :pswitch_b  #0000002d
        :pswitch_41  #0000002e
        :pswitch_41  #0000002f
        :pswitch_41  #00000030
        :pswitch_41  #00000031
        :pswitch_41  #00000032
        :pswitch_41  #00000033
        :pswitch_41  #00000034
        :pswitch_41  #00000035
        :pswitch_51  #00000036
        :pswitch_51  #00000037
        :pswitch_51  #00000038
        :pswitch_51  #00000039
        :pswitch_51  #0000003a
        :pswitch_b  #0000003b
        :pswitch_b  #0000003c
        :pswitch_b  #0000003d
        :pswitch_b  #0000003e
        :pswitch_b  #0000003f
        :pswitch_b  #00000040
        :pswitch_b  #00000041
        :pswitch_b  #00000042
        :pswitch_b  #00000043
        :pswitch_b  #00000044
        :pswitch_b  #00000045
        :pswitch_b  #00000046
        :pswitch_b  #00000047
        :pswitch_b  #00000048
        :pswitch_b  #00000049
        :pswitch_b  #0000004a
        :pswitch_b  #0000004b
        :pswitch_b  #0000004c
        :pswitch_b  #0000004d
        :pswitch_b  #0000004e
        :pswitch_89  #0000004f
        :pswitch_89  #00000050
        :pswitch_89  #00000051
        :pswitch_89  #00000052
        :pswitch_89  #00000053
        :pswitch_89  #00000054
        :pswitch_89  #00000055
        :pswitch_89  #00000056
        :pswitch_99  #00000057
        :pswitch_ab  #00000058
        :pswitch_c7  #00000059
        :pswitch_e5  #0000005a
        :pswitch_110  #0000005b
        :pswitch_157  #0000005c
        :pswitch_195  #0000005d
        :pswitch_1ed  #0000005e
        :pswitch_287  #0000005f
        :pswitch_2b3  #00000060
        :pswitch_2b3  #00000061
        :pswitch_2b3  #00000062
        :pswitch_2b3  #00000063
        :pswitch_2b3  #00000064
        :pswitch_2b3  #00000065
        :pswitch_2b3  #00000066
        :pswitch_2b3  #00000067
        :pswitch_2b3  #00000068
        :pswitch_2b3  #00000069
        :pswitch_2b3  #0000006a
        :pswitch_2b3  #0000006b
        :pswitch_2b3  #0000006c
        :pswitch_2b3  #0000006d
        :pswitch_2b3  #0000006e
        :pswitch_2b3  #0000006f
        :pswitch_2b3  #00000070
        :pswitch_2b3  #00000071
        :pswitch_2b3  #00000072
        :pswitch_2b3  #00000073
        :pswitch_2c4  #00000074
        :pswitch_2c4  #00000075
        :pswitch_2c4  #00000076
        :pswitch_2c4  #00000077
        :pswitch_2d1  #00000078
        :pswitch_2d1  #00000079
        :pswitch_2d1  #0000007a
        :pswitch_2d1  #0000007b
        :pswitch_2d1  #0000007c
        :pswitch_2d1  #0000007d
        :pswitch_2d1  #0000007e
        :pswitch_2d1  #0000007f
        :pswitch_2d1  #00000080
        :pswitch_2d1  #00000081
        :pswitch_2d1  #00000082
        :pswitch_2d1  #00000083
        :pswitch_2e2  #00000084
        :pswitch_2f4  #00000085
        :pswitch_2f4  #00000086
        :pswitch_2f4  #00000087
        :pswitch_2f4  #00000088
        :pswitch_2f4  #00000089
        :pswitch_2f4  #0000008a
        :pswitch_2f4  #0000008b
        :pswitch_2f4  #0000008c
        :pswitch_2f4  #0000008d
        :pswitch_2f4  #0000008e
        :pswitch_2f4  #0000008f
        :pswitch_2f4  #00000090
        :pswitch_2f4  #00000091
        :pswitch_2f4  #00000092
        :pswitch_2f4  #00000093
        :pswitch_301  #00000094
        :pswitch_301  #00000095
        :pswitch_301  #00000096
        :pswitch_301  #00000097
        :pswitch_301  #00000098
        :pswitch_312  #00000099
        :pswitch_312  #0000009a
        :pswitch_312  #0000009b
        :pswitch_312  #0000009c
        :pswitch_312  #0000009d
        :pswitch_312  #0000009e
        :pswitch_31b  #0000009f
        :pswitch_31b  #000000a0
        :pswitch_31b  #000000a1
        :pswitch_31b  #000000a2
        :pswitch_31b  #000000a3
        :pswitch_31b  #000000a4
        :pswitch_31b  #000000a5
        :pswitch_31b  #000000a6
        :pswitch_2f  #000000a7
        :pswitch_328  #000000a8
        :pswitch_2f  #000000a9
        :pswitch_331  #000000aa
        :pswitch_331  #000000ab
        :pswitch_33a  #000000ac
        :pswitch_33a  #000000ad
        :pswitch_33a  #000000ae
        :pswitch_33a  #000000af
        :pswitch_33a  #000000b0
        :pswitch_348  #000000b1
        :pswitch_354  #000000b2
        :pswitch_35d  #000000b3
        :pswitch_366  #000000b4
        :pswitch_373  #000000b5
        :pswitch_380  #000000b6
        :pswitch_380  #000000b7
        :pswitch_380  #000000b8
        :pswitch_380  #000000b9
        :pswitch_3c0  #000000ba
        :pswitch_3f1  #000000bb
        :pswitch_3fa  #000000bc
        :pswitch_3fa  #000000bd
        :pswitch_3fa  #000000be
        :pswitch_407  #000000bf
        :pswitch_410  #000000c0
        :pswitch_410  #000000c1
        :pswitch_41d  #000000c2
        :pswitch_41d  #000000c3
        :pswitch_b  #000000c4
        :pswitch_426  #000000c5
        :pswitch_445  #000000c6
        :pswitch_445  #000000c7
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

    if-lt p1, v0, :cond_c

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Trying to access an inexistant local variable"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
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

    if-eq v0, v2, :cond_10

    new-instance v0, Lorg/objectweb/asm/tree/analysis/AnalyzerException;

    const/4 v1, 0x0

    const-string v2, "Incompatible stack heights"

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/tree/analysis/AnalyzerException;-><init>(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/lang/String;)V

    throw v0

    :cond_10
    move v0, v1

    move v2, v1

    :goto_12
    iget v1, p0, Lorg/objectweb/asm/tree/analysis/Frame;->locals:I

    iget v3, p0, Lorg/objectweb/asm/tree/analysis/Frame;->top:I

    add-int/2addr v1, v3

    if-ge v2, v1, :cond_38

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

    if-nez v3, :cond_34

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/Frame;->values:[Lorg/objectweb/asm/tree/analysis/Value;

    aput-object v1, v0, v2

    const/4 v0, 0x1

    :cond_34
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_12

    :cond_38
    return v0
.end method

.method public merge(Lorg/objectweb/asm/tree/analysis/Frame;[Z)Z
    .registers 7

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_3
    iget v1, p0, Lorg/objectweb/asm/tree/analysis/Frame;->locals:I

    if-ge v2, v1, :cond_26

    aget-boolean v1, p2, v2

    if-nez v1, :cond_22

    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/Frame;->values:[Lorg/objectweb/asm/tree/analysis/Value;

    aget-object v1, v1, v2

    iget-object v3, p1, Lorg/objectweb/asm/tree/analysis/Frame;->values:[Lorg/objectweb/asm/tree/analysis/Value;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/Frame;->values:[Lorg/objectweb/asm/tree/analysis/Value;

    iget-object v1, p1, Lorg/objectweb/asm/tree/analysis/Frame;->values:[Lorg/objectweb/asm/tree/analysis/Value;

    aget-object v1, v1, v2

    aput-object v1, v0, v2

    const/4 v0, 0x1

    :cond_22
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_26
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

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Cannot pop operand off an empty stack."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
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

    if-lt v0, v1, :cond_12

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Insufficient maximum stack size."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
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

    if-lt p1, v0, :cond_1d

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

    :cond_1d
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

    :goto_7
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->getLocals()I

    move-result v3

    if-ge v0, v3, :cond_17

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/Frame;->getLocal(I)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_17
    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1c
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/analysis/Frame;->getStackSize()I

    move-result v0

    if-ge v1, v0, :cond_30

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->getStack(I)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_30
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
