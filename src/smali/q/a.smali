.class public abstract Lq/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .registers 5

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_1b
    return-object v0
.end method


# virtual methods
.method public final b(Lp/c;Lp/c;)Z
    .registers 11

    invoke-virtual {p1}, Lp/c;->g()[Lp/b;

    move-result-object p1

    invoke-virtual {p2}, Lp/c;->g()[Lp/b;

    move-result-object p2

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_e

    return v2

    :cond_e
    aget-object v0, p1, v2

    invoke-virtual {v0}, Lp/b;->b()Lp/a;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_35

    aget-object v0, p2, v2

    invoke-virtual {v0}, Lp/b;->b()Lp/a;

    move-result-object v0

    if-eqz v0, :cond_35

    aget-object v0, p1, v2

    invoke-virtual {v0}, Lp/b;->b()Lp/a;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lp/a;->a:Lc/n;

    .line 2
    aget-object v3, p2, v2

    invoke-virtual {v3}, Lp/b;->b()Lp/a;

    move-result-object v3

    .line 3
    iget-object v3, v3, Lp/a;->a:Lc/n;

    .line 4
    invoke-virtual {v0, v3}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    const/4 v3, 0x0

    :goto_37
    array-length v4, p1

    if-eq v3, v4, :cond_6a

    aget-object v4, p1, v3

    const/4 v5, 0x0

    if-eqz v0, :cond_53

    .line 5
    array-length v6, p2

    sub-int/2addr v6, v1

    :goto_41
    if-ltz v6, :cond_69

    aget-object v7, p2, v6

    if-eqz v7, :cond_50

    invoke-virtual {p0, v4, v7}, Lq/a;->c(Lp/b;Lp/b;)Z

    move-result v7

    if-eqz v7, :cond_50

    aput-object v5, p2, v6

    goto :goto_63

    :cond_50
    add-int/lit8 v6, v6, -0x1

    goto :goto_41

    :cond_53
    const/4 v6, 0x0

    :goto_54
    array-length v7, p2

    if-eq v6, v7, :cond_69

    aget-object v7, p2, v6

    if-eqz v7, :cond_66

    invoke-virtual {p0, v4, v7}, Lq/a;->c(Lp/b;Lp/b;)Z

    move-result v7

    if-eqz v7, :cond_66

    aput-object v5, p2, v6

    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_66
    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    :cond_69
    return v2

    :cond_6a
    return v1
.end method

.method public final c(Lp/b;Lp/b;)Z
    .registers 7

    invoke-virtual {p1}, Lp/b;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    invoke-virtual {p2}, Lp/b;->d()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p1}, Lp/b;->c()[Lp/a;

    move-result-object p1

    invoke-virtual {p2}, Lp/b;->c()[Lp/a;

    move-result-object p2

    array-length v0, p1

    array-length v2, p2

    if-eq v0, v2, :cond_1a

    goto :goto_40

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    array-length v2, p1

    if-eq v0, v2, :cond_2c

    aget-object v2, p1, v0

    aget-object v3, p2, v0

    invoke-static {v2, v3}, Lq/c;->b(Lp/a;Lp/a;)Z

    move-result v2

    if-nez v2, :cond_29

    goto :goto_40

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2c
    const/4 v1, 0x1

    goto :goto_40

    :cond_2e
    invoke-virtual {p2}, Lp/b;->d()Z

    move-result v0

    if-nez v0, :cond_40

    invoke-virtual {p1}, Lp/b;->b()Lp/a;

    move-result-object p1

    invoke-virtual {p2}, Lp/b;->b()Lp/a;

    move-result-object p2

    invoke-static {p1, p2}, Lq/c;->b(Lp/a;Lp/a;)Z

    move-result v1

    :cond_40
    :goto_40
    return v1
.end method

.method public final d(Lc/n;Ljava/lang/String;)Lc/e;
    .registers 8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_55

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_55

    .line 1
    :try_start_10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    :goto_19
    if-eq v2, v0, :cond_3a

    mul-int/lit8 v3, v2, 0x2

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

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_3a
    invoke-static {v1}, Lc/s;->t([B)Lc/s;

    move-result-object p1
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_3e} :catch_3f

    return-object p1

    .line 3
    :catch_3f
    move-exception p2

    const-string p2, "can\'t recode value for oid "

    invoke-static {p2}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 4
    iget-object p1, p1, Lc/n;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lc/r;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/r;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_55
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_67

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5c

    if-ne v0, v2, :cond_67

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 6
    :cond_67
    sget-object v0, Lq/b;->j:Lc/n;

    invoke-virtual {p1, v0}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    sget-object v0, Lq/b;->k:Lc/n;

    invoke-virtual {p1, v0}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    goto :goto_b3

    :cond_78
    sget-object v0, Lq/b;->h:Lc/n;

    invoke-virtual {p1, v0}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    new-instance p1, Lc/i;

    invoke-direct {p1, p2}, Lc/i;-><init>(Ljava/lang/String;)V

    goto :goto_b8

    :cond_86
    sget-object v0, Lq/b;->e:Lc/n;

    invoke-virtual {p1, v0}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ad

    sget-object v0, Lq/b;->f:Lc/n;

    invoke-virtual {p1, v0}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ad

    sget-object v0, Lq/b;->g:Lc/n;

    invoke-virtual {p1, v0}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ad

    sget-object v0, Lq/b;->i:Lc/n;

    invoke-virtual {p1, v0}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    goto :goto_ad

    .line 7
    :cond_a7
    new-instance p1, Lc/bh;

    invoke-direct {p1, p2}, Lc/bh;-><init>(Ljava/lang/String;)V

    goto :goto_b8

    .line 8
    :cond_ad
    :goto_ad
    new-instance p1, Lc/bb;

    invoke-direct {p1, p2}, Lc/bb;-><init>(Ljava/lang/String;)V

    goto :goto_b8

    :cond_b3
    :goto_b3
    new-instance p1, Lc/aw;

    invoke-direct {p1, p2}, Lc/aw;-><init>(Ljava/lang/String;)V

    :goto_b8
    return-object p1
.end method
