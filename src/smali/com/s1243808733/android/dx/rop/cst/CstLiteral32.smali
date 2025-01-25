.class public abstract Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;
.super Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;
.source "CstLiteral32.java"


# instance fields
.field private final bits:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;-><init>()V

    .line 33
    iput p1, p0, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;->bits:I

    return-void
.end method


# virtual methods
.method protected compareTo0(Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 3

    .line 53
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;

    iget p1, p1, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;->bits:I

    .line 55
    iget v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;->bits:I

    if-ge v0, p1, :cond_a

    const/4 p1, -0x1

    return p1

    :cond_a
    if-le v0, p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_16

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_16

    iget v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;->bits:I

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;

    iget p1, p1, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;->bits:I

    if-ne v0, p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public final fitsInInt()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final getIntBits()I
    .registers 2

    .line 79
    iget v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;->bits:I

    return v0
.end method

.method public final getLongBits()J
    .registers 3

    .line 85
    iget v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;->bits:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final hashCode()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstLiteral32;->bits:I

    return v0
.end method

.method public final isCategory2()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
