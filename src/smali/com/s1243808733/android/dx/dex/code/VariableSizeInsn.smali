.class public abstract Lcom/s1243808733/android/dx/dex/code/VariableSizeInsn;
.super Lcom/s1243808733/android/dx/dex/code/DalvInsn;
.source "VariableSizeInsn.java"


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V
    .registers 4

    .line 35
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->SPECIAL_FORMAT:Lcom/s1243808733/android/dx/dex/code/Dop;

    invoke-direct {p0, v0, p1, p2}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    return-void
.end method


# virtual methods
.method public final withOpcode(Lcom/s1243808733/android/dx/dex/code/Dop;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 3

    .line 41
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final withRegisterOffset(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 3

    .line 47
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/VariableSizeInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/VariableSizeInsn;->withRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object p1

    return-object p1
.end method
