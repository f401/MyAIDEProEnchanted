.class public Labcd/sH;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/sH$a;
    }
.end annotation


# direct methods
.method private static DW(Ljava/io/InputStream;[BII)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-gtz p3, :cond_4

    goto :goto_a

    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_b

    :goto_a
    return v0

    :cond_b
    add-int/2addr v0, v1

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto :goto_1
.end method

.method private static DW(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;
    .registers 3

    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method private static DW(Ljava/io/InputStream;JLabcd/yE;)Ljava/io/InputStream;
    .registers 11

    new-instance v6, Labcd/rH;

    invoke-static {}, Labcd/tE;->j6()Ljava/util/zip/Inflater;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Labcd/rH;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;JLabcd/yE;)V

    return-object v6
.end method

.method private static DW(Ljava/io/InputStream;Ljava/util/zip/Inflater;Labcd/YD;[B)V
    .registers 6

    :goto_0
    :try_start_0
    invoke-virtual {p1, p3}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v0
    :try_end_4
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_4} :catch_5b

    if-nez v0, :cond_4f

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result p1

    if-nez p1, :cond_1a

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1a

    return-void

    :cond_1a
    new-instance p0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jgit/JGitText;->corruptObjectBadStream:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw p0

    :cond_26
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p0, p3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_37

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v1, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_0

    :cond_37
    new-instance p0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jgit/JGitText;->corruptObjectBadStream:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw p0

    :cond_43
    new-instance p0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jgit/JGitText;->corruptObjectBadStream:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw p0

    :cond_4f
    new-instance p0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jgit/JGitText;->corruptObjectIncorrectLength:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw p0

    :catch_5b
    move-exception p0

    new-instance p0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jgit/JGitText;->corruptObjectBadStream:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    goto :goto_69

    :goto_68
    throw p0

    :goto_69
    goto :goto_68
.end method

.method private static DW([B)Z
    .registers 5

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, v1, 0x8f

    const/16 v3, 0x8

    if-ne v2, v3, :cond_17

    const/4 v2, 0x1

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    shl-int/2addr v1, v3

    or-int/2addr p0, v1

    rem-int/lit8 p0, p0, 0x1f

    if-nez p0, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method static synthetic j6(Ljava/io/InputStream;[BII)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Labcd/sH;->DW(Ljava/io/InputStream;[BII)I

    move-result p0

    return p0
.end method

.method static j6(Ljava/io/InputStream;Labcd/YD;Labcd/wH;)J
    .registers 9

    :try_start_0
    invoke-static {p0}, Labcd/sH;->DW(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;

    move-result-object p0

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    const/16 v0, 0x40

    new-array v1, v0, [B

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v1, v3, v2}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    invoke-static {v1}, Labcd/sH;->DW([B)Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    invoke-virtual {p2}, Labcd/wH;->VH()Ljava/util/zip/Inflater;

    move-result-object p2

    invoke-static {p0, p2}, Labcd/sH;->j6(Ljava/io/InputStream;Ljava/util/zip/Inflater;)Ljava/util/zip/InflaterInputStream;

    move-result-object p0

    invoke-static {p0, v1, v3, v0}, Labcd/sH;->DW(Ljava/io/InputStream;[BII)I

    move-result p0

    const/4 p2, 0x5

    if-lt p0, p2, :cond_4d

    new-instance p0, Labcd/EK;

    invoke-direct {p0}, Labcd/EK;-><init>()V

    const/16 p2, 0x20

    invoke-static {p1, v1, p2, p0}, Labcd/hE;->j6(Labcd/YD;[BBLabcd/EK;)I

    iget p2, p0, Labcd/EK;->j6:I

    invoke-static {v1, p2, p0}, Labcd/IK;->DW([BILabcd/EK;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_41

    return-wide v0

    :cond_41
    new-instance p0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->corruptObjectNegativeSize:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw p0

    :cond_4d
    new-instance p0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->corruptObjectNoHeader:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw p0

    :cond_59
    const/16 p2, 0x12

    invoke-static {p0, v1, v2, p2}, Labcd/sH;->DW(Ljava/io/InputStream;[BII)I
    :try_end_5e
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_5e} :catch_7a

    aget-byte p0, v1, v3

    and-int/lit16 p0, p0, 0xff

    and-int/lit8 p1, p0, 0xf

    int-to-long p1, p1

    const/4 v0, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x1

    :goto_68
    and-int/lit16 p0, p0, 0x80

    if-nez p0, :cond_6d

    return-wide p1

    :cond_6d
    aget-byte p0, v1, v3

    and-int/lit16 p0, p0, 0xff

    and-int/lit8 v4, p0, 0x7f

    shl-int/2addr v4, v2

    int-to-long v4, v4

    add-long/2addr p1, v4

    add-int/lit8 v2, v2, 0x7

    add-int/2addr v3, v0

    goto :goto_68

    :catch_7a
    move-exception p0

    new-instance p0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->corruptObjectBadStream:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    goto :goto_88

    :goto_87
    throw p0

    :goto_88
    goto :goto_87
.end method

.method static j6(Ljava/io/InputStream;Ljava/io/File;Labcd/YD;Labcd/wH;)Labcd/FE;
    .registers 21

    move-object/from16 v9, p2

    move-object/from16 v0, p3

    :try_start_4
    invoke-static/range {p0 .. p0}, Labcd/sH;->DW(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    const/16 v2, 0x40

    new-array v3, v2, [B

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v3, v5, v4}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    invoke-static {v3}, Labcd/sH;->DW([B)Z

    move-result v6

    const-wide/32 v7, 0x7fffffff

    if-eqz v6, :cond_bc

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->reset()V

    invoke-virtual/range {p3 .. p3}, Labcd/wH;->VH()Ljava/util/zip/Inflater;

    move-result-object v4

    invoke-static {v1, v4}, Labcd/sH;->j6(Ljava/io/InputStream;Ljava/util/zip/Inflater;)Ljava/util/zip/InflaterInputStream;

    move-result-object v6

    invoke-static {v6, v3, v5, v2}, Labcd/sH;->DW(Ljava/io/InputStream;[BII)I

    move-result v2

    const/4 v10, 0x5

    if-lt v2, v10, :cond_b0

    new-instance v10, Labcd/EK;

    invoke-direct {v10}, Labcd/EK;-><init>()V

    const/16 v11, 0x20

    invoke-static {v9, v3, v11, v10}, Labcd/hE;->j6(Labcd/YD;[BBLabcd/EK;)I

    move-result v11

    iget v12, v10, Labcd/EK;->j6:I

    invoke-static {v3, v12, v10}, Labcd/IK;->DW([BILabcd/EK;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-ltz v16, :cond_a4

    iget v14, v10, Labcd/EK;->j6:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v10, Labcd/EK;->j6:I
    :try_end_4e
    .catch Ljava/util/zip/ZipException; {:try_start_4 .. :try_end_4e} :catch_149

    aget-byte v14, v3, v14

    if-nez v14, :cond_98

    if-nez p1, :cond_62

    cmp-long v14, v7, v12

    if-ltz v14, :cond_59

    goto :goto_62

    :cond_59
    :try_start_59
    new-instance v0, Labcd/cD$a;

    invoke-direct {v0}, Labcd/cD$a;-><init>()V

    invoke-virtual {v0, v9}, Labcd/cD;->j6(Labcd/YD;)V

    throw v0

    :cond_62
    :goto_62
    invoke-virtual/range {p3 .. p3}, Labcd/wH;->Zo()I

    move-result v7

    int-to-long v7, v7

    cmp-long v14, v12, v7

    if-ltz v14, :cond_7e

    if-nez p1, :cond_6e

    goto :goto_7e

    :cond_6e
    new-instance v10, Labcd/sH$a;

    iget-object v7, v0, Labcd/wH;->v5:Labcd/GG;

    const/4 v8, 0x0

    move-object v1, v10

    move v2, v11

    move-wide v3, v12

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v8}, Labcd/sH$a;-><init>(IJLjava/io/File;Labcd/YD;Labcd/GG;Labcd/sH$a;)V

    return-object v10

    :cond_7e
    :goto_7e
    long-to-int v0, v12

    new-array v7, v0, [B

    iget v8, v10, Labcd/EK;->j6:I

    sub-int/2addr v2, v8

    if-lez v2, :cond_8b

    iget v8, v10, Labcd/EK;->j6:I

    invoke-static {v3, v8, v7, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8b
    sub-int/2addr v0, v2

    invoke-static {v6, v7, v2, v0}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    invoke-static {v1, v4, v9, v3}, Labcd/sH;->DW(Ljava/io/InputStream;Ljava/util/zip/Inflater;Labcd/YD;[B)V

    new-instance v0, Labcd/FE$a;

    invoke-direct {v0, v11, v7}, Labcd/FE$a;-><init>(I[B)V

    return-object v0

    :cond_98
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectGarbageAfterSize:Ljava/lang/String;

    invoke-direct {v0, v9, v1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw v0

    :cond_a4
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectNegativeSize:Ljava/lang/String;

    invoke-direct {v0, v9, v1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw v0

    :cond_b0
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectNoHeader:Ljava/lang/String;

    invoke-direct {v0, v9, v1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw v0

    :cond_bc
    const/16 v2, 0x12

    invoke-static {v1, v3, v4, v2}, Labcd/sH;->DW(Ljava/io/InputStream;[BII)I
    :try_end_c1
    .catch Ljava/util/zip/ZipException; {:try_start_59 .. :try_end_c1} :catch_149

    aget-byte v2, v3, v5

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v6, v2, 0x4

    and-int/lit8 v6, v6, 0x7

    and-int/lit8 v10, v2, 0xf

    int-to-long v10, v10

    const/4 v12, 0x4

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x4

    :goto_d0
    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_134

    if-eq v6, v13, :cond_ea

    if-eq v6, v4, :cond_ea

    const/4 v2, 0x3

    if-eq v6, v2, :cond_ea

    if-ne v6, v12, :cond_de

    goto :goto_ea

    :cond_de
    :try_start_de
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectInvalidType:Ljava/lang/String;

    invoke-direct {v0, v9, v1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw v0

    :cond_ea
    :goto_ea
    if-nez p1, :cond_fa

    cmp-long v2, v7, v10

    if-ltz v2, :cond_f1

    goto :goto_fa

    :cond_f1
    new-instance v0, Labcd/cD$a;

    invoke-direct {v0}, Labcd/cD$a;-><init>()V

    invoke-virtual {v0, v9}, Labcd/cD;->j6(Labcd/YD;)V

    throw v0

    :cond_fa
    :goto_fa
    invoke-virtual/range {p3 .. p3}, Labcd/wH;->Zo()I

    move-result v2

    int-to-long v7, v2

    cmp-long v2, v10, v7

    if-ltz v2, :cond_116

    if-nez p1, :cond_106

    goto :goto_116

    :cond_106
    new-instance v12, Labcd/sH$a;

    iget-object v7, v0, Labcd/wH;->v5:Labcd/GG;

    const/4 v8, 0x0

    move-object v1, v12

    move v2, v6

    move-wide v3, v10

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v8}, Labcd/sH$a;-><init>(IJLjava/io/File;Labcd/YD;Labcd/GG;Labcd/sH$a;)V

    return-object v12

    :cond_116
    :goto_116
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->reset()V

    int-to-long v7, v14

    invoke-static {v1, v7, v8}, Labcd/BK;->j6(Ljava/io/InputStream;J)V

    invoke-virtual/range {p3 .. p3}, Labcd/wH;->VH()Ljava/util/zip/Inflater;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/sH;->j6(Ljava/io/InputStream;Ljava/util/zip/Inflater;)Ljava/util/zip/InflaterInputStream;

    move-result-object v2

    long-to-int v4, v10

    new-array v7, v4, [B

    invoke-static {v2, v7, v5, v4}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    invoke-static {v1, v0, v9, v3}, Labcd/sH;->DW(Ljava/io/InputStream;Ljava/util/zip/Inflater;Labcd/YD;[B)V

    new-instance v0, Labcd/FE$a;

    invoke-direct {v0, v6, v7}, Labcd/FE$a;-><init>(I[B)V
    :try_end_133
    .catch Ljava/util/zip/ZipException; {:try_start_de .. :try_end_133} :catch_149

    return-object v0

    :cond_134
    aget-byte v2, v3, v14

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v16, v2, 0x7f

    shl-int v4, v16, v15

    move/from16 v16, v6

    int-to-long v5, v4

    add-long/2addr v10, v5

    add-int/lit8 v15, v15, 0x7

    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v16

    const/4 v4, 0x2

    const/4 v5, 0x0

    goto :goto_d0

    :catch_149
    move-exception v0

    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectBadStream:Ljava/lang/String;

    invoke-direct {v0, v9, v1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    goto :goto_157

    :goto_156
    throw v0

    :goto_157
    goto :goto_156
.end method

.method public static j6([BLabcd/YD;)Labcd/FE;
    .registers 5

    new-instance v0, Labcd/wH;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/wH;-><init>(Labcd/GG;)V

    :try_start_6
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v2, v1, p1, v0}, Labcd/sH;->j6(Ljava/io/InputStream;Ljava/io/File;Labcd/YD;Labcd/wH;)Labcd/FE;

    move-result-object p0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_13

    invoke-virtual {v0}, Labcd/wH;->FH()V

    return-object p0

    :catchall_13
    move-exception p0

    invoke-virtual {v0}, Labcd/wH;->FH()V

    throw p0
.end method

.method static synthetic j6(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;
    .registers 1

    invoke-static {p0}, Labcd/sH;->DW(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Ljava/io/InputStream;JLabcd/yE;)Ljava/io/InputStream;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Labcd/sH;->DW(Ljava/io/InputStream;JLabcd/yE;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Ljava/io/InputStream;Ljava/util/zip/Inflater;)Ljava/util/zip/InflaterInputStream;
    .registers 4

    new-instance v0, Ljava/util/zip/InflaterInputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, p0, p1, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    return-object v0
.end method

.method static synthetic j6(Ljava/io/InputStream;Ljava/util/zip/Inflater;Labcd/YD;[B)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Labcd/sH;->DW(Ljava/io/InputStream;Ljava/util/zip/Inflater;Labcd/YD;[B)V

    return-void
.end method

.method static synthetic j6([B)Z
    .registers 1

    invoke-static {p0}, Labcd/sH;->DW([B)Z

    move-result p0

    return p0
.end method
