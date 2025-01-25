.class public final Lc/ao;
.super Lc/s;
.source "SourceFile"

# interfaces
.implements Lc/y;


# instance fields
.field public final a:[C


# direct methods
.method public constructor <init>([C)V
    .registers 2

    invoke-direct {p0}, Lc/s;-><init>()V

    iput-object p1, p0, Lc/ao;->a:[C

    return-void
.end method


# virtual methods
.method public final d(Lc/s;)Z
    .registers 7

    instance-of v0, p1, Lc/ao;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lc/ao;

    iget-object v0, p0, Lc/ao;->a:[C

    iget-object p1, p1, Lc/ao;->a:[C

    if-ne v0, p1, :cond_f

    goto :goto_27

    :cond_f
    if-eqz v0, :cond_28

    if-nez p1, :cond_14

    goto :goto_28

    :cond_14
    array-length v2, v0

    array-length v3, p1

    if-eq v2, v3, :cond_19

    goto :goto_28

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    array-length v3, v0

    if-eq v2, v3, :cond_27

    aget-char v3, v0, v2

    aget-char v4, p1, v2

    if-eq v3, v4, :cond_24

    goto :goto_28

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_27
    :goto_27
    const/4 v1, 0x1

    :cond_28
    :goto_28
    return v1
.end method

.method public final e(Lc/q;)V
    .registers 5

    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Lc/q;->d(I)V

    iget-object v0, p0, Lc/ao;->a:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lc/q;->i(I)V

    const/4 v0, 0x0

    :goto_e
    iget-object v1, p0, Lc/ao;->a:[C

    array-length v2, v1

    if-eq v0, v2, :cond_22

    aget-char v1, v1, v0

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Lc/q;->d(I)V

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Lc/q;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_22
    return-void
.end method

.method public final f()I
    .registers 3

    iget-object v0, p0, Lc/ao;->a:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lc/bu;->b(I)I

    move-result v0

    iget-object v1, p0, Lc/ao;->a:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method public final g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final h()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lc/ao;->a:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public final hashCode()I
    .registers 5

    iget-object v0, p0, Lc/ao;->a:[C

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_14

    :cond_6
    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    :goto_9
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_13

    mul-int/lit16 v2, v2, 0x101

    aget-char v3, v0, v1

    xor-int/2addr v2, v3

    goto :goto_9

    :cond_13
    move v0, v2

    :goto_14
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lc/ao;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
