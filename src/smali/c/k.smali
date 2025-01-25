.class public final Lc/k;
.super Lc/s;
.source "SourceFile"


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Lc/s;-><init>()V

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lc/k;->a:[B

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 2

    invoke-direct {p0}, Lc/s;-><init>()V

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lc/k;->a:[B

    return-void
.end method

.method public constructor <init>([BZ)V
    .registers 7

    invoke-direct {p0}, Lc/s;-><init>()V

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_2b

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const-string v2, "malformed integer"

    if-nez v0, :cond_1b

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_15

    goto :goto_1b

    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    :goto_1b
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2b

    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_25

    goto :goto_2b

    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2b
    :goto_2b
    if-eqz p2, :cond_31

    invoke-static {p1}, Lx/a;->b([B)[B

    move-result-object p1

    :cond_31
    iput-object p1, p0, Lc/k;->a:[B

    return-void
.end method

.method public static b(Ljava/lang/Object;)Lc/k;
    .registers 2

    if-eqz p0, :cond_47

    instance-of v0, p0, Lc/k;

    if-eqz v0, :cond_7

    goto :goto_47

    :cond_7
    instance-of v0, p0, [B

    if-eqz v0, :cond_2c

    :try_start_b
    check-cast p0, [B

    invoke-static {p0}, Lc/s;->t([B)Lc/s;

    move-result-object p0

    check-cast p0, Lc/k;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    .line 1
    const-string v0, "encoding error in getInstance: "

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2c
    const-string v0, "illegal object in getInstance: "

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_47
    :goto_47
    check-cast p0, Lc/k;

    return-object p0
.end method

.method public static c(Lc/z;)Lc/k;
    .registers 1

    invoke-virtual {p0}, Lc/z;->k()Lc/s;

    move-result-object p0

    invoke-static {p0}, Lc/k;->b(Ljava/lang/Object;)Lc/k;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final d(Lc/s;)Z
    .registers 3

    instance-of v0, p1, Lc/k;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    check-cast p1, Lc/k;

    iget-object v0, p0, Lc/k;->a:[B

    iget-object p1, p1, Lc/k;->a:[B

    invoke-static {v0, p1}, Lx/a;->a([B[B)Z

    move-result p1

    return p1
.end method

.method public final e(Lc/q;)V
    .registers 4

    const/4 v0, 0x2

    iget-object v1, p0, Lc/k;->a:[B

    invoke-virtual {p1, v0, v1}, Lc/q;->g(I[B)V

    return-void
.end method

.method public final f()I
    .registers 3

    iget-object v0, p0, Lc/k;->a:[B

    array-length v0, v0

    invoke-static {v0}, Lc/bu;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lc/k;->a:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lc/k;->a:[B

    array-length v3, v2

    if-eq v0, v3, :cond_12

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    rem-int/lit8 v3, v0, 0x4

    shl-int/2addr v2, v3

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_12
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lc/k;->a:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 2
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
