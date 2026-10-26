.class public final Lc/ao;
.super Lc/s;
.source "SourceFile"

# interfaces
.implements Lc/y;


# instance fields
.field public final a:[C


# direct methods
.method public constructor <init>([C)V
    .locals 0

    invoke-direct {p0}, Lc/s;-><init>()V

    iput-object p1, p0, Lc/ao;->a:[C

    return-void
.end method


# virtual methods
.method public final d(Lc/s;)Z
    .locals 6

    const/4 v1, 0x0

    instance-of v0, p1, Lc/ao;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    check-cast p1, Lc/ao;

    iget-object v2, p0, Lc/ao;->a:[C

    iget-object v3, p1, Lc/ao;->a:[C

    if-ne v2, v3, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    array-length v0, v2

    array-length v4, v3

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_1
    array-length v4, v2

    if-eq v0, v4, :cond_2

    aget-char v4, v2, v0

    aget-char v5, v3, v0

    if-ne v4, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final e(Lc/q;)V
    .locals 3

    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Lc/q;->d(I)V

    iget-object v0, p0, Lc/ao;->a:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lc/q;->i(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lc/ao;->a:[C

    array-length v2, v1

    if-eq v0, v2, :cond_0

    aget-char v1, v1, v0

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Lc/q;->d(I)V

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Lc/q;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f()I
    .locals 2

    iget-object v0, p0, Lc/ao;->a:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lc/bu;->b(I)I

    move-result v0

    iget-object v1, p0, Lc/ao;->a:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lc/ao;->a:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v2, p0, Lc/ao;->a:[C

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    array-length v1, v2

    add-int/lit8 v0, v1, 0x1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    mul-int/lit16 v0, v0, 0x101

    aget-char v3, v2, v1

    xor-int/2addr v0, v3

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lc/ao;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
