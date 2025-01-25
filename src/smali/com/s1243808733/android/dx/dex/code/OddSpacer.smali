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

    const/4 v0, 0x0

    return-object v0
.end method

.method public codeSize()I
    .registers 2

    .line 44
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/OddSpacer;->getAddress()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected listingString0(Z)Ljava/lang/String;
    .registers 2

    .line 70
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/OddSpacer;->codeSize()I

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 74
    :cond_8
    const-string p1, "nop // spacer"

    return-object p1
.end method

.method public withRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 3

    .line 58
    new-instance p1, Lcom/s1243808733/android/dx/dex/code/OddSpacer;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/OddSpacer;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/s1243808733/android/dx/dex/code/OddSpacer;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)V

    return-object p1
.end method

.method public writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 3

    .line 50
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/OddSpacer;->codeSize()I

    move-result v0

    if-eqz v0, :cond_e

    .line 51
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->codeUnit(II)S

    move-result v0

    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    :cond_e
    return-void
.end method
