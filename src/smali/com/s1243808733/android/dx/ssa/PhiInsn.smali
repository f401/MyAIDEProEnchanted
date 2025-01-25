.class public final Lcom/s1243808733/android/dx/ssa/PhiInsn;
.super Lcom/s1243808733/android/dx/ssa/SsaInsn;
.source "PhiInsn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;,
        Lcom/s1243808733/android/dx/ssa/PhiInsn$Visitor;
    }
.end annotation


# instance fields
.field private final operands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;",
            ">;"
        }
    .end annotation
.end field

.field private final ropResultReg:I

.field private sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;


# direct methods
.method public constructor <init>(ILcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
    .registers 4

    .line 75
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {p1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    .line 48
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    .line 76
    iput p1, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->ropResultReg:I

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
    .registers 3

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    .line 48
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p1

    iput p1, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->ropResultReg:I

    return-void
.end method


# virtual methods
.method public accept(Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;)V
    .registers 2

    .line 327
    invoke-interface {p1, p0}, Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;->visitPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V

    return-void
.end method

.method public addPhiOperand(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
    .registers 6

    .line 134
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v1

    .line 135
    new-instance v2, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getRopLabel()I

    move-result p2

    invoke-direct {v2, p1, v1, p2}, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;-><init>(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;II)V

    .line 134
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    return-void
.end method

.method public areAllOperandsEqual()Z
    .registers 6

    .line 252
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 257
    :cond_a
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;

    iget-object v0, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 258
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;

    .line 259
    iget-object v4, v4, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    if-eq v0, v4, :cond_1f

    return v2

    :cond_34
    return v1
.end method

.method public canThrow()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public changeResultType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)V
    .registers 4

    .line 114
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 113
    invoke-static {v0, p1, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->makeLocalOptional(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->setResult(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    return-void
.end method

.method public clone()Lcom/s1243808733/android/dx/ssa/PhiInsn;
    .registers 3

    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t clone phi"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Lcom/s1243808733/android/dx/ssa/SsaInsn;
    .registers 2

    .line 36
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->clone()Lcom/s1243808733/android/dx/ssa/PhiInsn;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->clone()Lcom/s1243808733/android/dx/ssa/PhiInsn;

    move-result-object v0

    return-object v0
.end method

.method public getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRopResultReg()I
    .registers 2

    .line 123
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->ropResultReg:I

    return v0
.end method

.method public getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 5

    .line 209
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    if-eqz v0, :cond_5

    return-object v0

    .line 213
    :cond_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 215
    sget-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    return-object v0

    .line 218
    :cond_10
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 219
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    iput-object v1, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v0, :cond_32

    .line 222
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;

    .line 224
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    iget-object v2, v2, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v3, v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 227
    :cond_32
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    .line 228
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    return-object v0
.end method

.method public hasSideEffect()Z
    .registers 2

    .line 321
    invoke-static {}, Lcom/s1243808733/android/dx/ssa/Optimizer;->getPreserveLocals()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getLocalAssignment()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isPhiOrMove()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isRegASource(I)Z
    .registers 4

    .line 239
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;

    .line 240
    iget-object v1, v1, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    if-ne v1, p1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method public final mapSourceRegisters(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)V
    .registers 6

    .line 270
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;

    .line 271
    iget-object v2, v1, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 272
    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/ssa/RegisterMapper;->map(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    iput-object v3, v1, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 273
    iget-object v3, v1, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    if-eq v2, v3, :cond_6

    .line 274
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getParent()Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v3

    iget-object v1, v1, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v3, p0, v2, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onSourceChanged(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    goto :goto_6

    .line 277
    :cond_2c
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    return-void
.end method

.method public predBlockIndexForSourcesIndex(I)I
    .registers 3

    .line 168
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;

    iget p1, p1, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->blockIndex:I

    return p1
.end method

.method public predBlocksForReg(ILcom/s1243808733/android/dx/ssa/SsaMethod;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/ssa/SsaMethod;",
            ")",
            "Ljava/util/List<",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;

    .line 304
    iget-object v3, v2, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    if-ne v3, p1, :cond_b

    .line 305
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v3

    iget v2, v2, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->blockIndex:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_2f
    return-object v0
.end method

.method public removePhiRegister(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 7

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;

    .line 149
    iget-object v3, v2, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    if-ne v3, v4, :cond_b

    .line 150
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 154
    :cond_27
    iget-object p1, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 157
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    .line 333
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->toHumanWithInline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final toHumanWithInline(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 346
    sget-object v1, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 347
    const-string v1, ": phi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_20

    .line 350
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_20
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    .line 357
    const-string v1, " ."

    const-string v2, " "

    if-nez p1, :cond_2e

    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 360
    :cond_2e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->toHuman()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :goto_38
    const-string p1, " <-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result p1

    if-nez p1, :cond_4b

    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_88

    :cond_4b
    const/4 v1, 0x0

    :goto_4c
    if-ge v1, p1, :cond_88

    .line 371
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-virtual {v4, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "[b="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    .line 374
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;

    iget v4, v4, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->ropLabel:I

    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 372
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 378
    :cond_88
    :goto_88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;
    .registers 3

    .line 288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot convert phi insns to rop form"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateSourcesToDefinitions(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 6

    .line 95
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;

    .line 96
    iget-object v2, v1, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 98
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    .line 97
    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 100
    iget-object v3, v1, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    iput-object v2, v1, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    goto :goto_6

    .line 103
    :cond_2d
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    return-void
.end method
