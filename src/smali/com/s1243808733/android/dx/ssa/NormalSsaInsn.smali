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

    .line 204
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->isNormalMoveInsn()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 205
    invoke-interface {p1, p0}, Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;->visitMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V

    goto :goto_d

    .line 207
    :cond_a
    invoke-interface {p1, p0}, Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;->visitNonMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V

    :goto_d
    return-void
.end method

.method public canThrow()Z
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->canThrow()Z

    move-result v0

    return v0
.end method

.method public final changeOneSource(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 8

    .line 64
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    .line 66
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v2, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_20

    if-ne v3, p1, :cond_16

    move-object v4, p2

    goto :goto_1a

    .line 69
    :cond_16
    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    :goto_1a
    invoke-virtual {v2, v3, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 72
    :cond_20
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    .line 74
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    if-eq v0, v1, :cond_3c

    .line 80
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getParent()Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onSourceChanged(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 83
    :cond_3c
    iget-object p1, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lcom/s1243808733/android/dx/rop/code/Insn;->withNewRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    return-void
.end method

.method public clone()Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;
    .registers 2

    .line 105
    invoke-super {p0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->clone()Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/s1243808733/android/dx/ssa/SsaInsn;
    .registers 2

    .line 29
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->clone()Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

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

    .line 29
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->clone()Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAssignment()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 4

    .line 149
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/16 v1, 0x36

    if-ne v0, v1, :cond_1a

    .line 150
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    goto :goto_1e

    .line 152
    :cond_1a
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    :goto_1e
    const/4 v1, 0x0

    if-nez v0, :cond_22

    return-object v1

    .line 159
    :cond_22
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v2

    if-nez v2, :cond_29

    return-object v1

    :cond_29
    return-object v0
.end method

.method public getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    return-object v0
.end method

.method public getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    return-object v0
.end method

.method public hasSideEffect()Z
    .registers 5

    .line 224
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    return v2

    .line 231
    :cond_c
    invoke-static {}, Lcom/s1243808733/android/dx/ssa/Optimizer;->getPreserveLocals()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getLocalAssignment()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 233
    :goto_1b
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2a

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2a

    const/16 v3, 0x37

    if-eq v0, v3, :cond_2a

    return v2

    :cond_2a
    return v1
.end method

.method public isMoveException()Z
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public isNormalMoveInsn()Z
    .registers 3

    .line 186
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public isPhiOrMove()Z
    .registers 2

    .line 214
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->isNormalMoveInsn()Z

    move-result v0

    return v0
.end method

.method public final mapSourceRegisters(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)V
    .registers 5

    .line 47
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/ssa/RegisterMapper;->map(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    if-eq p1, v0, :cond_23

    .line 51
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/s1243808733/android/dx/rop/code/Insn;->withNewRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    .line 52
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getParent()Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onSourcesChanged(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    :cond_23
    return-void
.end method

.method public final setNewSources(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V
    .registers 4

    .line 93
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1d

    .line 99
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/s1243808733/android/dx/rop/code/Insn;->withNewRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->insn:Lcom/s1243808733/android/dx/rop/code/Insn;

    return-void

    .line 96
    :cond_1d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Sources counts don\'t match"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    .line 121
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->toRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;
    .registers 4

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
