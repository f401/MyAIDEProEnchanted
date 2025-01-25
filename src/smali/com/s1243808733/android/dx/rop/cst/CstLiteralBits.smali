.class public abstract Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;
.super Lcom/s1243808733/android/dx/rop/cst/TypedConstant;
.source "CstLiteralBits.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;-><init>()V

    return-void
.end method


# virtual methods
.method public fitsIn16Bits()Z
    .registers 4

    .line 60
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->fitsInInt()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 64
    :cond_8
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    move-result v0

    int-to-short v2, v0

    if-ne v2, v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public fitsIn8Bits()Z
    .registers 4

    .line 75
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->fitsInInt()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 79
    :cond_8
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    move-result v0

    int-to-byte v2, v0

    if-ne v2, v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public abstract fitsInInt()Z
.end method

.method public abstract getIntBits()I
.end method

.method public abstract getLongBits()J
.end method
