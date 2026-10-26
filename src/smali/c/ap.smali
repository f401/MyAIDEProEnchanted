.class public final Lc/ap;
.super Lc/b;
.source "SourceFile"


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc/b;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/b;-><init>([BI)V

    return-void
.end method

.method public static o(Ljava/lang/Object;)Lc/ap;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lc/ap;

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    check-cast p0, Lc/ap;

    move-object v0, p0

    :goto_0
    return-object v0

    .line 4294967295
    :cond_1
    instance-of v0, p0, Lc/bl;

    if-eqz v0, :cond_2

    check-cast p0, Lc/bl;

    new-instance v0, Lc/ap;

    iget-object v1, p0, Lc/b;->b:[B

    iget v2, p0, Lc/b;->c:I

    invoke-direct {v0, v1, v2}, Lc/ap;-><init>([BI)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lc/s;->t([B)Lc/s;

    move-result-object v0

    check-cast v0, Lc/ap;
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
    :cond_3
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

.method public static p(Lc/z;)Lc/ap;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lc/z;->k()Lc/s;

    move-result-object v0

    instance-of v1, v0, Lc/ap;

    if-eqz v1, :cond_0

    .line 1
    invoke-static {v0}, Lc/ap;->o(Ljava/lang/Object;)Lc/ap;

    move-result-object v0

    .line 3
    :goto_0
    return-object v0

    .line 2
    :cond_0
    check-cast v0, Lc/o;

    invoke-virtual {v0}, Lc/o;->k()[B

    move-result-object v0

    .line 3
    array-length v1, v0

    if-lt v1, v5, :cond_2

    aget-byte v1, v0, v4

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    new-array v3, v2, [B

    if-eqz v2, :cond_1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v5, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    new-instance v0, Lc/ap;

    invoke-direct {v0, v3, v1}, Lc/ap;-><init>([BI)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "truncated BIT STRING detected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final e(Lc/q;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lc/b;->b:[B

    iget v1, p0, Lc/b;->c:I

    .line 1
    invoke-static {v0}, Lx/a;->b([B)[B

    move-result-object v2

    if-lez v1, :cond_0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/16 v3, 0xff

    shl-int v1, v3, v1

    aget-byte v3, v2, v0

    and-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    .line 2
    :cond_0
    array-length v0, v2

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    .line 3
    iget v3, p0, Lc/b;->c:I

    int-to-byte v3, v3

    .line 4
    aput-byte v3, v1, v4

    const/4 v3, 0x1

    invoke-static {v2, v4, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lc/q;->g(I[B)V

    return-void
.end method

.method public final f()I
    .locals 2

    iget-object v0, p0, Lc/b;->b:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lc/bu;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lc/b;->b:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
