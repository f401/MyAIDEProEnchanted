.class public final Lq/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/StringBuffer;Lp/a;Ljava/util/Hashtable;)V
    .registers 4

    .line 1
    iget-object v0, p1, Lp/a;->a:Lc/n;

    .line 2
    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_b

    goto :goto_f

    .line 3
    :cond_b
    iget-object p2, p1, Lp/a;->a:Lc/n;

    .line 4
    iget-object p2, p2, Lc/n;->b:Ljava/lang/String;

    .line 5
    :goto_f
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p2, 0x3d

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 6
    iget-object p1, p1, Lp/a;->b:Lc/e;

    .line 7
    invoke-static {p1}, Lq/c;->f(Lc/e;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static b(Lp/a;Lp/a;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p0, :cond_8

    return v1

    :cond_8
    if-nez p1, :cond_b

    return v1

    .line 1
    :cond_b
    iget-object v2, p0, Lp/a;->a:Lc/n;

    iget-object v3, p1, Lp/a;->a:Lc/n;

    .line 2
    invoke-virtual {v2, v3}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 3
    :cond_16
    iget-object p0, p0, Lp/a;->b:Lc/e;

    .line 4
    invoke-static {p0}, Lq/c;->f(Lc/e;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lq/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    iget-object p1, p1, Lp/a;->b:Lc/e;

    .line 6
    invoke-static {p1}, Lq/c;->f(Lc/e;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    return v1

    :cond_31
    return v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-static {p0}, Lx/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_44

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_44

    .line 1
    :try_start_14
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/a;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lc/s;->t([B)Lc/s;

    move-result-object v0
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_20} :catch_2f

    .line 2
    instance-of v3, v0, Lc/y;

    if-eqz v3, :cond_44

    check-cast v0, Lc/y;

    invoke-interface {v0}, Lc/y;->h()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_44

    :catch_2f
    move-exception p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown encoding in name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_44
    :goto_44
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x20

    if-le v0, v2, :cond_8c

    const/4 v0, 0x0

    :goto_4d
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x5c

    if-ge v4, v5, :cond_66

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_66

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_66

    add-int/lit8 v0, v0, 0x2

    goto :goto_4d

    :cond_66
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_6b
    add-int/lit8 v5, v4, -0x1

    if-lez v5, :cond_7e

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_7e

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_7e

    add-int/lit8 v4, v4, -0x2

    goto :goto_6b

    :cond_7e
    if-gtz v0, :cond_87

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    if-ge v4, v5, :cond_8c

    :cond_87
    add-int/2addr v4, v2

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 5
    :cond_8c
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_b3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_9e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_b3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v1, v3, :cond_ac

    if-eq v4, v3, :cond_af

    :cond_ac
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_af
    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_9e

    :cond_b3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(C)I
    .registers 3

    const/16 v0, 0x30

    if-gt v0, p0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    :cond_a
    const/16 v0, 0x61

    if-gt v0, p0, :cond_15

    const/16 v0, 0x66

    if-gt p0, v0, :cond_15

    add-int/lit8 p0, p0, -0x61

    goto :goto_17

    :cond_15
    add-int/lit8 p0, p0, -0x41

    :goto_17
    add-int/lit8 p0, p0, 0xa

    return p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c0

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x22

    if-gez v1, :cond_18

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_18

    goto/16 :goto_c0

    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-direct {v3, p0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 p0, 0x0

    aget-char v4, v1, p0

    const/4 v5, 0x1

    if-ne v4, v0, :cond_38

    aget-char v4, v1, v5

    const/16 v6, 0x23

    if-ne v4, v6, :cond_38

    const-string v4, "\\#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x2

    goto :goto_39

    :cond_38
    const/4 v4, 0x0

    :goto_39
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_3e
    array-length v11, v1

    const/16 v12, 0x20

    if-eq v4, v11, :cond_9a

    aget-char v11, v1, v4

    if-eq v11, v12, :cond_48

    const/4 v9, 0x1

    :cond_48
    if-ne v11, v2, :cond_50

    if-nez v6, :cond_93

    xor-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_96

    :cond_50
    if-ne v11, v0, :cond_5c

    if-nez v6, :cond_5c

    if-nez v8, :cond_5c

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    const/4 v6, 0x1

    goto :goto_97

    :cond_5c
    if-ne v11, v12, :cond_63

    if-nez v6, :cond_63

    if-nez v9, :cond_63

    goto :goto_97

    :cond_63
    if-eqz v6, :cond_93

    const/16 v12, 0x30

    if-gt v12, v11, :cond_6d

    const/16 v12, 0x39

    if-le v11, v12, :cond_7d

    :cond_6d
    const/16 v12, 0x61

    if-gt v12, v11, :cond_75

    const/16 v12, 0x66

    if-le v11, v12, :cond_7d

    :cond_75
    const/16 v12, 0x41

    if-gt v12, v11, :cond_93

    const/16 v12, 0x46

    if-gt v11, v12, :cond_93

    :cond_7d
    if-eqz v10, :cond_91

    invoke-static {v10}, Lq/c;->d(C)I

    move-result v6

    invoke-static {v11}, Lq/c;->d(C)I

    move-result v10

    mul-int/lit8 v6, v6, 0x10

    add-int/2addr v10, v6

    int-to-char v6, v10

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    const/4 v10, 0x0

    goto :goto_97

    :cond_91
    move v10, v11

    goto :goto_97

    :cond_93
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_96
    const/4 v6, 0x0

    :goto_97
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    :cond_9a
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_bb

    :goto_a0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    sub-int/2addr p0, v5

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p0

    if-ne p0, v12, :cond_bb

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    sub-int/2addr p0, v5

    if-eq v7, p0, :cond_bb

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    sub-int/2addr p0, v5

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_a0

    :cond_bb
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c0
    :goto_c0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lc/e;)Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    instance-of v1, p0, Lc/y;

    const/16 v2, 0x23

    const-string v3, "\\"

    const/4 v4, 0x0

    if-eqz v1, :cond_34

    instance-of v1, p0, Lc/bi;

    if-nez v1, :cond_34

    check-cast p0, Lc/y;

    invoke-interface {p0}, Lc/y;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_30

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6b

    :cond_34
    :try_start_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lc/e;->l()Lc/s;

    move-result-object p0

    const-string v5, "DER"

    invoke-virtual {p0, v5}, Lc/m;->n(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Ly/a;->c([B)[B

    move-result-object p0

    .line 1
    array-length v5, p0

    new-array v6, v5, [C
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_4f} :catch_102

    const/4 v7, 0x0

    :goto_50
    if-eq v7, v5, :cond_5c

    aget-byte v8, p0, v7

    and-int/lit16 v8, v8, 0xff

    int-to-char v8, v8

    aput-char v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_50

    :cond_5c
    :try_start_5c
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v6}, Ljava/lang/String;-><init>([C)V

    .line 2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_6b} :catch_102

    :goto_6b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v5, 0x5c

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-lt v1, v6, :cond_86

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_86

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_86

    goto :goto_87

    :cond_86
    const/4 v6, 0x0

    :goto_87
    if-eq v6, p0, :cond_d0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_c7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_c7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-eq v1, v5, :cond_c7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_c7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_c7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_c7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_c7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_ce

    :cond_c7
    invoke-virtual {v0, v6, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 p0, p0, 0x1

    :cond_ce
    add-int/2addr v6, v7

    goto :goto_87

    :cond_d0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    const/16 v1, 0x20

    if-lez p0, :cond_ea

    :goto_d8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-le p0, v4, :cond_ea

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p0

    if-ne p0, v1, :cond_ea

    invoke-virtual {v0, v4, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x2

    goto :goto_d8

    :cond_ea
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    sub-int/2addr p0, v7

    :goto_ef
    if-ltz p0, :cond_fd

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_fd

    invoke-virtual {v0, p0, v5}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p0, -0x1

    goto :goto_ef

    :cond_fd
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_102
    move-exception p0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Other value has no encoded form"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_10c

    :goto_10b
    throw p0

    :goto_10c
    goto :goto_10b
.end method
