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
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;",
            ">;"
        }
    .end annotation
.end field

.field private final ropResultReg:I

.field private sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;


# direct methods
.method public constructor <init>(ILcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
    .locals 1

    .line 75
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {p1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    .line 76
    iput p1, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->ropResultReg:I

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->ropResultReg:I

    return-void
.end method


# virtual methods
.method public accept(Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;)V
    .locals 0

    .line 327
    invoke-interface {p1, p0}, Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;->visitPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V

    return-void
.end method

.method public addPhiOperand(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v1

    .line 135
    new-instance v2, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getRopLabel()I

    move-result v3

    invoke-direct {v2, p1, v1, v3}, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;-><init>(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;II)V

    .line 134
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    return-void
.end method

.method public areAllOperandsEqual()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 252
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 259
    :goto_0
    return v0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;

    iget-object v0, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    .line 258
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;

    .line 259
    iget-object v0, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    if-eq v3, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public canThrow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public changeResultType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)V
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 113
    invoke-static {v0, p1, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->makeLocalOptional(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->setResult(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    return-void
.end method

.method public clone()Lcom/s1243808733/android/dx/ssa/PhiInsn;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t clone phi"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Lcom/s1243808733/android/dx/ssa/SsaInsn;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->clone()Lcom/s1243808733/android/dx/ssa/PhiInsn;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
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
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRopResultReg()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->ropResultReg:I

    return v0
.end method

.method public getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    if-eqz v0, :cond_0

    .line 228
    :goto_0
    return-object v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 215
    sget-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 219
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 222
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;

    .line 224
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    iget-object v0, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v3, v1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    .line 228
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    goto :goto_0
.end method

.method public hasSideEffect()Z
    .locals 1

    .line 321
    invoke-static {}, Lcom/s1243808733/android/dx/ssa/Optimizer;->getPreserveLocals()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getLocalAssignment()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhiOrMove()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRegASource(I)Z
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;

    .line 240
    iget-object v0, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final mapSourceRegisters(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)V
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;

    .line 271
    iget-object v2, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 272
    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/ssa/RegisterMapper;->map(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    iput-object v3, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 273
    iget-object v3, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    if-eq v2, v3, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getParent()Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v3

    iget-object v0, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v3, p0, v2, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onSourceChanged(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    goto :goto_0

    .line 277
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    return-void
.end method

.method public predBlockIndexForSourcesIndex(I)I
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;

    iget v0, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->blockIndex:I

    return v0
.end method

.method public predBlocksForReg(ILcom/s1243808733/android/dx/ssa/SsaMethod;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/ssa/SsaMethod;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation

    .line 301
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 303
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;

    .line 304
    iget-object v3, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 305
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v3

    iget v0, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->blockIndex:I

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public removePhiRegister(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .locals 5

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;

    .line 149
    iget-object v3, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 150
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    .line 333
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->toHumanWithInline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final toHumanWithInline(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x50

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 346
    sget-object v0, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 347
    const-string v0, ": phi"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 350
    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 357
    if-nez v0, :cond_2

    .line 358
    const-string v0, " ."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :goto_0
    const-string v0, " <-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 368
    const-string v0, " ."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 360
    :cond_2
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 368
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 371
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[b="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    .line 374
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;

    iget v0, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->ropLabel:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public toRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;
    .locals 2

    .line 288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot convert phi insns to rop form"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateSourcesToDefinitions(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;

    .line 96
    iget-object v2, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

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
    iget-object v3, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    iput-object v2, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    goto :goto_0

    .line 103
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/PhiInsn;->sources:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    return-void
.end method
