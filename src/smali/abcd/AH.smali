.class public Labcd/AH;
.super Ljava/lang/Object;


# direct methods
.method public static j6([B)J
    .registers 9

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1

    const-wide/16 v4, 0x0

    move v3, v1

    move v6, v2

    :goto_1
    aget-byte v0, p0, v6

    and-int/lit16 v7, v0, 0xff

    and-int/lit8 v0, v7, 0x7f

    shl-int/2addr v0, v3

    int-to-long v0, v0

    or-long/2addr v0, v4

    add-int/lit8 v2, v3, 0x7

    and-int/lit16 v3, v7, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v6, v6, 0x1

    move-wide v4, v0

    move v3, v2

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static final j6([B[B)[B
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Labcd/AH;->j6([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static final j6([B[B[B)[B
    .registers 10

    const/4 v1, 0x0

    move v0, v1

    move v3, v1

    move v4, v1

    :goto_0
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v5, v0, 0x7f

    shl-int/2addr v5, v4

    or-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x7

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_d

    array-length v0, p0

    if-ne v0, v3, :cond_c

    move v3, v1

    move v4, v1

    :goto_1
    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v5, v2, 0x7f

    shl-int/2addr v5, v4

    or-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x7

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_b

    if-nez p2, :cond_1

    new-array p2, v3, [B

    :cond_0
    move v2, v1

    :goto_2
    array-length v3, p1

    if-lt v0, v3, :cond_2

    return-object p2

    :cond_1
    array-length v2, p2

    if-eq v2, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->resultLengthIncorrect:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v6, v0, 0xff

    and-int/lit16 v0, v6, 0x80

    if-eqz v0, :cond_9

    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_7

    add-int/lit8 v0, v4, 0x1

    aget-byte v3, p1, v4

    and-int/lit16 v3, v3, 0xff

    :goto_3
    and-int/lit8 v4, v6, 0x2

    if-eqz v4, :cond_3

    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    :cond_3
    and-int/lit8 v4, v6, 0x4

    if-eqz v4, :cond_4

    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    and-int/lit8 v4, v6, 0x8

    if-eqz v4, :cond_f

    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    move v5, v3

    :goto_4
    and-int/lit8 v3, v6, 0x10

    if-eqz v3, :cond_8

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v3, v0, 0xff

    :goto_5
    and-int/lit8 v0, v6, 0x20

    if-eqz v0, :cond_5

    aget-byte v0, p1, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v3, v0

    add-int/lit8 v4, v4, 0x1

    :cond_5
    and-int/lit8 v0, v6, 0x40

    if-eqz v0, :cond_e

    add-int/lit8 v0, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    :goto_6
    if-nez v3, :cond_6

    const/high16 v3, 0x10000

    :cond_6
    invoke-static {p0, v5, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    goto :goto_2

    :cond_7
    move v3, v1

    move v0, v4

    goto :goto_3

    :cond_8
    move v3, v1

    move v4, v0

    goto :goto_5

    :cond_9
    if-eqz v6, :cond_a

    invoke-static {p1, v4, p2, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v6

    add-int v0, v4, v6

    goto/16 :goto_2

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unsupportedCommand0:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move v2, v0

    goto/16 :goto_1

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->baseLengthIncorrect:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move v0, v2

    goto/16 :goto_0

    :cond_e
    move v0, v4

    goto :goto_6

    :cond_f
    move v5, v3

    goto :goto_4
.end method
