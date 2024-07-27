.class public final Lcom/s1243808733/android/dx/dex/code/SimpleInsn;
.super Lcom/s1243808733/android/dx/dex/code/FixedSizeInsn;
.source "SimpleInsn.java"


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V
    .registers 4

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/dex/code/FixedSizeInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    return-void
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 57
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public withOpcode(Lcom/s1243808733/android/dx/dex/code/Dop;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 45
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    return-object v0
.end method

.method public withRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 51
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    return-object v0
.end method
