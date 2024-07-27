.class public abstract Lcom/s1243808733/android/dx/rop/cst/CstLiteral64;
.super Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;
.source "CstLiteral64.java"


# instance fields
.field private final bits:J


# direct methods
.method constructor <init>(J)V
    .registers 4

    .line 32
    invoke-direct {p0}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/s1243808733/android/dx/rop/cst/CstLiteral64;->bits:J

    return-void
.end method


# virtual methods
.method protected compareTo0(Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 53
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstLiteral64;

    iget-wide v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstLiteral64;->bits:J

    .line 55
    iget-wide v2, p0, Lcom/s1243808733/android/dx/rop/cst/CstLiteral64;->bits:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 56
    const/4 v0, -0x1

    .line 60
    :goto_0
    return v0

    .line 57
    :cond_0
    iget-wide v2, p0, Lcom/s1243808733/android/dx/rop/cst/CstLiteral64;->bits:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 58
    const/4 v0, 0x1

    goto :goto_0

    .line 60
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 39
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstLiteral64;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstLiteral64;->bits:J

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstLiteral64;

    iget-wide v2, p1, Lcom/s1243808733/android/dx/rop/cst/CstLiteral64;->bits:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fitsInInt()Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 73
    iget-wide v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstLiteral64;->bits:J

    long-to-int v0, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/s1243808733/android/dx/rop/cst/CstLiteral64;->bits:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getIntBits()I
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 79
    iget-wide v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstLiteral64;->bits:J

    long-to-int v0, v0

    return v0
.end method

.method public final getLongBits()J
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 85
    iget-wide v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstLiteral64;->bits:J

    return-wide v0
.end method

.method public final hashCode()I
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 47
    iget-wide v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstLiteral64;->bits:J

    long-to-int v0, v0

    iget-wide v2, p0, Lcom/s1243808733/android/dx/rop/cst/CstLiteral64;->bits:J

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    long-to-int v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public final isCategory2()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 67
    const/4 v0, 0x1

    return v0
.end method
