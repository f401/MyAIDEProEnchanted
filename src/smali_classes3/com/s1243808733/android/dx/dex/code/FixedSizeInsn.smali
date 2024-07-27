.class public abstract Lcom/s1243808733/android/dx/dex/code/FixedSizeInsn;
.super Lcom/s1243808733/android/dx/dex/code/DalvInsn;
.source "FixedSizeInsn.java"


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V
    .registers 4

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    return-void
.end method


# virtual methods
.method public final codeSize()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/FixedSizeInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/Dop;->getFormat()Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->codeSize()I

    move-result v0

    return v0
.end method

.method protected final listingString0(Z)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/FixedSizeInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/Dop;->getFormat()Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->listingString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final withRegisterOffset(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/FixedSizeInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/code/FixedSizeInsn;->withRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/util/AnnotatedOutput;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/FixedSizeInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/Dop;->getFormat()Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    return-void
.end method
