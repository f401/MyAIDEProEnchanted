.class public final Lc/k;
.super Lc/s;
.source "SourceFile"


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Lc/s;-><init>()V

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lc/k;->a:[B

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lc/s;-><init>()V

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lc/k;->a:[B

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lc/s;-><init>()V

    array-length v0, p1

    if-le v0, v2, :cond_1

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    if-nez v0, :cond_0

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_3

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_4

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lx/a;->b([B)[B

    move-result-object p1

    :cond_2
    iput-object p1, p0, Lc/k;->a:[B

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "malformed integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "malformed integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/lang/Object;)Lc/k;
    .locals 2

    if-eqz p0, :cond_0

    instance-of v0, p0, Lc/k;

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    check-cast p0, Lc/k;

    move-object v0, p0

    :goto_0
    return-object v0

    .line 4294967295
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lc/s;->t([B)Lc/s;

    move-result-object v0

    check-cast v0, Lc/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1
    const-string v1, "encoding error in getInstance: "

    invoke-static {v1}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    const-string v0, "illegal object in getInstance: "

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static c(Lc/z;)Lc/k;
    .locals 1

    invoke-virtual {p0}, Lc/z;->k()Lc/s;

    move-result-object v0

    invoke-static {v0}, Lc/k;->b(Ljava/lang/Object;)Lc/k;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final d(Lc/s;)Z
    .locals 2

    instance-of v0, p1, Lc/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lc/k;

    iget-object v0, p0, Lc/k;->a:[B

    iget-object v1, p1, Lc/k;->a:[B

    invoke-static {v0, v1}, Lx/a;->a([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public final e(Lc/q;)V
    .locals 2

    const/4 v0, 0x2

    iget-object v1, p0, Lc/k;->a:[B

    invoke-virtual {p1, v0, v1}, Lc/q;->g(I[B)V

    return-void
.end method

.method public final f()I
    .locals 2

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
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v1, p0, Lc/k;->a:[B

    array-length v3, v1

    if-eq v2, v3, :cond_0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    rem-int/lit8 v3, v2, 0x4

    shl-int/2addr v1, v3

    xor-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lc/k;->a:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 2
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
