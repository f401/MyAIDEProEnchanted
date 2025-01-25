.class public Labcd/AH;
.super Ljava/lang/Object;


# direct methods
.method public static j6([B)J
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_21

    const-wide/16 v3, 0x0

    :goto_e
    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v5, v1, 0x7f

    shl-int/2addr v5, v0

    int-to-long v5, v5

    or-long/2addr v3, v5

    add-int/lit8 v0, v0, 0x7

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1e

    return-wide v3

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_21
    move v1, v2

    goto :goto_2
.end method

.method public static final j6([B[B)[B
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Labcd/AH;->j6([B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static final j6([B[B[B)[B
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v5, v1, 0x7f

    shl-int/2addr v5, v3

    or-int/2addr v2, v5

    add-int/lit8 v3, v3, 0x7

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_d5

    array-length v1, p0

    if-ne v1, v2, :cond_c9

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_19
    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    and-int/lit8 v5, v4, 0x7f

    shl-int/2addr v5, v2

    or-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x7

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_c6

    if-nez p2, :cond_2e

    new-array p2, v1, [B

    goto :goto_31

    :cond_2e
    array-length v2, p2

    if-ne v2, v1, :cond_ba

    :goto_31
    const/4 v1, 0x0

    :goto_32
    array-length v2, p1

    if-lt v3, v2, :cond_36

    return-object p2

    :cond_36
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_a6

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_4b

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    goto :goto_4d

    :cond_4b
    move v4, v2

    const/4 v2, 0x0

    :goto_4d
    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_5a

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    :cond_5a
    and-int/lit8 v5, v3, 0x4

    if-eqz v5, :cond_67

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    :cond_67
    and-int/lit8 v5, v3, 0x8

    if-eqz v5, :cond_74

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    :cond_74
    and-int/lit8 v5, v3, 0x10

    if-eqz v5, :cond_7f

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    goto :goto_81

    :cond_7f
    move v5, v4

    const/4 v4, 0x0

    :goto_81
    and-int/lit8 v6, v3, 0x20

    if-eqz v6, :cond_8e

    aget-byte v6, p1, v5

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    :cond_8e
    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_9c

    add-int/lit8 v3, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    goto :goto_9d

    :cond_9c
    move v3, v5

    :goto_9d
    if-nez v4, :cond_a1

    const/high16 v4, 0x10000

    :cond_a1
    invoke-static {p0, v2, p2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v4

    goto :goto_32

    :cond_a6
    if-eqz v3, :cond_ae

    invoke-static {p1, v2, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v3

    add-int/2addr v3, v2

    goto :goto_32

    :cond_ae
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jgit/JGitText;->unsupportedCommand0:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ba
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jgit/JGitText;->resultLengthIncorrect:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c6
    move v4, v3

    goto/16 :goto_19

    :cond_c9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jgit/JGitText;->baseLengthIncorrect:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d5
    move v1, v4

    goto/16 :goto_4
.end method
