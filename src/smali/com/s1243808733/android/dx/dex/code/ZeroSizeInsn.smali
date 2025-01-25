.class public abstract Lcom/s1243808733/android/dx/dex/code/ZeroSizeInsn;
.super Lcom/s1243808733/android/dx/dex/code/DalvInsn;
.source "ZeroSizeInsn.java"


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)V
    .registers 4

    .line 36
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->SPECIAL_FORMAT:Lcom/s1243808733/android/dx/dex/code/Dop;

    sget-object v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {p0, v0, p1, v1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    return-void
.end method


# virtual methods
.method public final codeSize()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final withOpcode(Lcom/s1243808733/android/dx/dex/code/Dop;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 3

    .line 54
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withRegisterOffset(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 3

    .line 60
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/ZeroSizeInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/ZeroSizeInsn;->withRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 2

    return-void
.end method
