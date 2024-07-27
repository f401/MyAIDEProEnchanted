.class public final Lcom/s1243808733/android/dx/dex/code/OddSpacer;
.super Lcom/s1243808733/android/dx/dex/code/VariableSizeInsn;
.source "OddSpacer.java"


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)V
    .registers 3

    .line 38
    sget-object v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/android/dx/dex/code/VariableSizeInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    return-void
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 64
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public codeSize()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/OddSpacer;->getAddress()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected listingString0(Z)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/OddSpacer;->codeSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    .line 74
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "nop // spacer"

    goto :goto_0
.end method

.method public withRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 58
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/OddSpacer;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/OddSpacer;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/dex/code/OddSpacer;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)V

    return-object v0
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/util/AnnotatedOutput;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/OddSpacer;->codeSize()I

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {v1, v1}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->codeUnit(II)S

    move-result v0

    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    :cond_0
    return-void
.end method
