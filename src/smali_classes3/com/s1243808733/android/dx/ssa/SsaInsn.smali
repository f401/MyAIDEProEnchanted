.class public abstract Lcom/s1243808733/android/dx/ssa/SsaInsn;
.super Ljava/lang/Object;
.source "SsaInsn.java"

# interfaces
.implements Lcom/s1243808733/android/dx/util/ToHuman;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;
    }
.end annotation


# instance fields
.field private final block:Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

.field private result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;


# direct methods
.method protected constructor <init>(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
    .registers 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p2, :cond_0

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "block == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput-object p2, p0, Lcom/s1243808733/android/dx/ssa/SsaInsn;->block:Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 49
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/SsaInsn;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    return-void
.end method

.method public static makeFromRop(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/ssa/SsaInsn;
    .registers 3

    .line 60
    new-instance v0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    invoke-direct {v0, p0, p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    return-object v0
.end method


# virtual methods
.method public abstract accept(Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;",
            ")V"
        }
    .end annotation
.end method

.method public abstract canThrow()Z
.end method

.method public changeResultReg(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaInsn;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaInsn;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaInsn;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    :cond_0
    return-void
.end method

.method public clone()Lcom/s1243808733/android/dx/ssa/SsaInsn;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 67
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->clone()Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v0

    return-object v0
.end method

.method public getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaInsn;->block:Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    return-object v0
.end method

.method public getLocalAssignment()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaInsn;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaInsn;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaInsn;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 205
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    goto :goto_0
.end method

.method public abstract getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;
.end method

.method public abstract getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;
.end method

.method public getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaInsn;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    return-object v0
.end method

.method public abstract getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
.end method

.method public abstract hasSideEffect()Z
.end method

.method public isMoveException()Z
    .registers 2

    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public isNormalMoveInsn()Z
    .registers 2

    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isPhiOrMove()Z
.end method

.method public isRegASource(I)Z
    .registers 3

    .line 216
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->specForRegister(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isResultReg(I)Z
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaInsn;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaInsn;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    if-eq v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final mapRegisters(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/RegisterMapper;",
            ")V"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaInsn;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 159
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaInsn;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/ssa/RegisterMapper;->map(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaInsn;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 160
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaInsn;->block:Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getParent()Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->updateOneDefinition(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 161
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->mapSourceRegisters(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)V

    return-void
.end method

.method public abstract mapSourceRegisters(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/RegisterMapper;",
            ")V"
        }
    .end annotation
.end method

.method protected setResult(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ")V"
        }
    .end annotation

    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "result == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/SsaInsn;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    return-void
.end method

.method public final setResultLocal(Lcom/s1243808733/android/dx/rop/code/LocalItem;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/LocalItem;",
            ")V"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaInsn;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v0

    .line 144
    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaInsn;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaInsn;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaInsn;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->makeLocalOptional(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaInsn;->result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    :cond_1
    return-void
.end method

.method public abstract toRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;
.end method
