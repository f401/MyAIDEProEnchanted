.class public final Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;
.super Lcom/s1243808733/android/dx/ssa/SsaInsn;
.source "NormalSsaInsn.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private insn:Lcom/s1243808733/android/dx/rop/code/Insn;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
    .registers 4

    .line 40
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Insn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    .line 41
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    return-void
.end method


# virtual methods
.method public accept(Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 204
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->isNormalMoveInsn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-interface {p1, p0}, Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;->visitMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V

    .line 207
    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, p0}, Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;->visitNonMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V

    goto :goto_0
.end method

.method public canThrow()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->canThrow()Z

    move-result v0

    return v0
.end method

.method public final changeOneSource(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ")V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    .line 65
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v3

    .line 66
    new-instance v4, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v4, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 68
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 72
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    .line 74
    invoke-virtual {v2, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getParent()Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onSourceChanged(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/s1243808733/android/dx/rop/code/Insn;->withNewRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    return-void

    .line 69
    :cond_1
    if-ne v1, p1, :cond_2

    move-object v0, p2

    :goto_1
    invoke-virtual {v4, v1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 68
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    goto :goto_1
.end method

.method public clone()Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 105
    invoke-super {p0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->clone()Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    return-object v0
.end method

.method public bridge clone()Lcom/s1243808733/android/dx/ssa/SsaInsn;
    .registers 2

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->clone()Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAssignment()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    .line 147
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    const/16 v2, 0x36

    if-ne v1, v2, :cond_0

    .line 150
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Insn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 155
    :goto_0
    if-nez v1, :cond_1

    .line 156
    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 165
    :goto_1
    return-object v0

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v2

    .line 161
    if-nez v2, :cond_2

    .line 162
    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 165
    goto :goto_1
.end method

.method public getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    return-object v0
.end method

.method public getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    return-object v0
.end method

.method public hasSideEffect()Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    .line 224
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v2

    .line 226
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 239
    :goto_0
    return v0

    .line 230
    :cond_0
    invoke-static {}, Lcom/s1243808733/android/dx/ssa/Optimizer;->getPreserveLocals()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getLocalAssignment()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x0

    .line 233
    :goto_1
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 237
    goto :goto_0

    :cond_2
    move v1, v0

    .line 230
    goto :goto_1

    .line 233
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_0
        0x37 -> :sswitch_0
    .end sparse-switch
.end method

.method public isMoveException()Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNormalMoveInsn()Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPhiOrMove()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 214
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->isNormalMoveInsn()Z

    move-result v0

    return v0
.end method

.method public final mapSourceRegisters(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/RegisterMapper;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/ssa/RegisterMapper;->map(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 50
    if-eq v1, v0, :cond_0

    .line 51
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/s1243808733/android/dx/rop/code/Insn;->withNewRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    .line 52
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getParent()Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onSourcesChanged(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    :cond_0
    return-void
.end method

.method public final setNewSources(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;",
            ")V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Sources counts don\'t match"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/s1243808733/android/dx/rop/code/Insn;->withNewRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->toRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Insn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/code/Insn;->withNewRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    return-object v0
.end method

.method public upgradeToLiteral()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Insn;->withSourceLiteral()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    .line 178
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getParent()Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onSourcesChanged(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    return-void
.end method
