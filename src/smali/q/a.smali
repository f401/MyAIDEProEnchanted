.class public abstract Lq/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final b(Lp/c;Lp/c;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lp/c;->g()[Lp/b;

    move-result-object v4

    invoke-virtual {p2}, Lp/c;->g()[Lp/b;

    move-result-object v5

    array-length v0, v4

    array-length v2, v5

    if-eq v0, v2, :cond_1

    .line 5
    :cond_0
    :goto_0
    return v1

    .line 4294967295
    :cond_1
    aget-object v0, v4, v1

    invoke-virtual {v0}, Lp/b;->b()Lp/a;

    move-result-object v0

    if-eqz v0, :cond_2

    aget-object v0, v5, v1

    invoke-virtual {v0}, Lp/b;->b()Lp/a;

    move-result-object v0

    if-eqz v0, :cond_2

    aget-object v0, v4, v1

    invoke-virtual {v0}, Lp/b;->b()Lp/a;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lp/a;->a:Lc/n;

    .line 2
    aget-object v2, v5, v1

    invoke-virtual {v2}, Lp/b;->b()Lp/a;

    move-result-object v2

    .line 3
    iget-object v2, v2, Lp/a;->a:Lc/n;

    .line 4
    invoke-virtual {v0, v2}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_1
    move v2, v1

    :goto_2
    array-length v3, v4

    if-eq v2, v3, :cond_6

    aget-object v6, v4, v2

    if-eqz v0, :cond_4

    .line 5
    array-length v3, v5

    add-int/lit8 v3, v3, -0x1

    :goto_3
    if-ltz v3, :cond_0

    aget-object v7, v5, v3

    if-eqz v7, :cond_3

    invoke-virtual {p0, v6, v7}, Lq/a;->c(Lp/b;Lp/b;)Z

    move-result v7

    if-eqz v7, :cond_3

    aput-object v8, v5, v3

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    .line 4
    goto :goto_1

    .line 5
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_4
    move v3, v1

    :goto_5
    array-length v7, v5

    if-eq v3, v7, :cond_0

    aget-object v7, v5, v3

    if-eqz v7, :cond_5

    invoke-virtual {p0, v6, v7}, Lq/a;->c(Lp/b;Lp/b;)Z

    move-result v7

    if-eqz v7, :cond_5

    aput-object v8, v5, v3

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final c(Lp/b;Lp/b;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Lp/b;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lp/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lp/b;->c()[Lp/a;

    move-result-object v2

    invoke-virtual {p2}, Lp/b;->c()[Lp/a;

    move-result-object v3

    array-length v0, v2

    array-length v4, v3

    if-eq v0, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    array-length v4, v2

    if-eq v0, v4, :cond_2

    aget-object v4, v2, v0

    aget-object v5, v3, v0

    invoke-static {v4, v5}, Lq/c;->b(Lp/a;Lp/a;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lp/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lp/b;->b()Lp/a;

    move-result-object v0

    invoke-virtual {p2}, Lp/b;->b()Lp/a;

    move-result-object v1

    invoke-static {v0, v1}, Lq/c;->b(Lp/a;Lp/a;)Z

    move-result v1

    goto :goto_0
.end method

.method public final d(Lc/n;Ljava/lang/String;)Lc/e;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    :goto_0
    if-eq v0, v1, :cond_0

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v4}, Lq/c;->d(C)I

    move-result v4

    invoke-static {v3}, Lq/c;->d(C)I

    move-result v3

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lc/s;->t([B)Lc/s;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 8
    :goto_1
    return-object v0

    .line 3
    :catch_0
    move-exception v0

    const-string v0, "can\'t recode value for oid "

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lc/n;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lc/r;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lc/r;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 6
    :cond_2
    sget-object v0, Lq/b;->j:Lc/n;

    invoke-virtual {p1, v0}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lq/b;->k:Lc/n;

    invoke-virtual {p1, v0}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    :cond_3
    new-instance v0, Lc/aw;

    invoke-direct {v0, p2}, Lc/aw;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_4
    sget-object v0, Lq/b;->h:Lc/n;

    invoke-virtual {p1, v0}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lc/i;

    invoke-direct {v0, p2}, Lc/i;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    sget-object v0, Lq/b;->e:Lc/n;

    invoke-virtual {p1, v0}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lq/b;->f:Lc/n;

    invoke-virtual {p1, v0}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lq/b;->g:Lc/n;

    invoke-virtual {p1, v0}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lq/b;->i:Lc/n;

    invoke-virtual {p1, v0}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8
    :cond_6
    new-instance v0, Lc/bb;

    invoke-direct {v0, p2}, Lc/bb;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_7
    new-instance v0, Lc/bh;

    invoke-direct {v0, p2}, Lc/bh;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
