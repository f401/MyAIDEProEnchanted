.class public abstract Lcom/s1243808733/android/dx/dex/code/ZeroSizeInsn;
.super Lcom/s1243808733/android/dx/dex/code/DalvInsn;
.source "ZeroSizeInsn.java"


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)V
    .locals 2

    .line 36
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->SPECIAL_FORMAT:Lcom/s1243808733/android/dx/dex/code/Dop;

    sget-object v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {p0, v0, p1, v1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    return-void
.end method


# virtual methods
.method public final codeSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final withOpcode(Lcom/s1243808733/android/dx/dex/code/Dop;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withRegisterOffset(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/ZeroSizeInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/code/ZeroSizeInsn;->withRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .locals 0

    return-void
.end method
