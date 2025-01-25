.class public final Lc/ap;
.super Lc/b;
.source "SourceFile"


# direct methods
.method public constructor <init>([B)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc/b;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lc/b;-><init>([BI)V

    return-void
.end method

.method public static o(Ljava/lang/Object;)Lc/ap;
    .registers 3

    if-eqz p0, :cond_57

    instance-of v0, p0, Lc/ap;

    if-eqz v0, :cond_7

    goto :goto_57

    :cond_7
    instance-of v0, p0, Lc/bl;

    if-eqz v0, :cond_17

    check-cast p0, Lc/bl;

    new-instance v0, Lc/ap;

    iget-object v1, p0, Lc/b;->b:[B

    iget p0, p0, Lc/b;->c:I

    invoke-direct {v0, v1, p0}, Lc/ap;-><init>([BI)V

    return-object v0

    :cond_17
    instance-of v0, p0, [B

    if-eqz v0, :cond_3c

    :try_start_1b
    check-cast p0, [B

    invoke-static {p0}, Lc/s;->t([B)Lc/s;

    move-result-object p0

    check-cast p0, Lc/ap;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_23} :catch_24

    return-object p0

    :catch_24
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
    :cond_3c
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

    :cond_57
    :goto_57
    check-cast p0, Lc/ap;

    return-object p0
.end method

.method public static p(Lc/z;)Lc/ap;
    .registers 6

    invoke-virtual {p0}, Lc/z;->k()Lc/s;

    move-result-object p0

    instance-of v0, p0, Lc/ap;

    if-eqz v0, :cond_d

    .line 1
    invoke-static {p0}, Lc/ap;->o(Ljava/lang/Object;)Lc/ap;

    move-result-object p0

    return-object p0

    .line 2
    :cond_d
    check-cast p0, Lc/o;

    invoke-virtual {p0}, Lc/o;->k()[B

    move-result-object p0

    .line 3
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2b

    const/4 v0, 0x0

    aget-byte v2, p0, v0

    array-length v3, p0

    sub-int/2addr v3, v1

    new-array v4, v3, [B

    if-eqz v3, :cond_25

    array-length v3, p0

    sub-int/2addr v3, v1

    invoke-static {p0, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_25
    new-instance p0, Lc/ap;

    invoke-direct {p0, v4, v2}, Lc/ap;-><init>([BI)V

    return-object p0

    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "truncated BIT STRING detected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final e(Lc/q;)V
    .registers 8

    iget-object v0, p0, Lc/b;->b:[B

    iget v1, p0, Lc/b;->c:I

    .line 1
    invoke-static {v0}, Lx/a;->b([B)[B

    move-result-object v2

    const/4 v3, 0x1

    if-lez v1, :cond_17

    array-length v0, v0

    sub-int/2addr v0, v3

    const/16 v4, 0xff

    shl-int v1, v4, v1

    aget-byte v4, v2, v0

    and-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    .line 2
    :cond_17
    array-length v0, v2

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    .line 3
    iget v4, p0, Lc/b;->c:I

    int-to-byte v4, v4

    .line 4
    const/4 v5, 0x0

    aput-byte v4, v1, v5

    invoke-static {v2, v5, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lc/q;->g(I[B)V

    return-void
.end method

.method public final f()I
    .registers 3

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
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
