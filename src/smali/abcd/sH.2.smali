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

    :goto_0
    if-gtz p3, :cond_1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/2addr v0, v1

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto :goto_0
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

    new-instance v1, Labcd/rH;

    invoke-static {}, Labcd/tE;->j6()Ljava/util/zip/Inflater;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Labcd/rH;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;JLabcd/yE;)V

    return-object v1
.end method

.method private static DW(Ljava/io/InputStream;Ljava/util/zip/Inflater;Labcd/YD;[B)V
    .registers 6

    :goto_0
    :try_start_0
    invoke-virtual {p1, p3}, Ljava/util/zip/Inflater;->inflate([B)I
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectBadStream:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v1, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_0

    :cond_2
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectBadStream:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectBadStream:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectIncorrectLength:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectBadStream:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw v0
.end method

.method private static DW([B)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, v2, 0x8f

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x1f

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic j6(Ljava/io/InputStream;[BII)I
    .registers 5

    invoke-static {p0, p1, p2, p3}, Labcd/sH;->DW(Ljava/io/InputStream;[BII)I

    move-result v0

    return v0
.end method

.method static j6(Ljava/io/InputStream;Labcd/YD;Labcd/wH;)J
    .registers 11

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0}, Labcd/sH;->DW(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    const/16 v1, 0x40

    new-array v5, v1, [B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v5, v1, v2}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    invoke-static {v5}, Labcd/sH;->DW([B)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    invoke-virtual {p2}, Labcd/wH;->VH()Ljava/util/zip/Inflater;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/sH;->j6(Ljava/io/InputStream;Ljava/util/zip/Inflater;)Ljava/util/zip/InflaterInputStream;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x40

    invoke-static {v0, v5, v1, v2}, Labcd/sH;->DW(Ljava/io/InputStream;[BII)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    new-instance v0, Labcd/EK;

    invoke-direct {v0}, Labcd/EK;-><init>()V

    const/16 v1, 0x20

    invoke-static {p1, v5, v1, v0}, Labcd/hE;->j6(Labcd/YD;[BBLabcd/EK;)I

    iget v1, v0, Labcd/EK;->j6:I

    invoke-static {v5, v1, v0}, Labcd/IK;->DW([BILabcd/EK;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    :cond_0
    return-wide v0

    :cond_1
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectNegativeSize:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectBadStream:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw v0

    :cond_2
    :try_start_1
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectNoHeader:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v1, 0x2

    const/16 v2, 0x12

    invoke-static {v0, v5, v1, v2}, Labcd/sH;->DW(Ljava/io/InputStream;[BII)I
    :try_end_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_0

    aget-byte v0, v5, v3

    and-int/lit16 v2, v0, 0xff

    and-int/lit8 v0, v2, 0xf

    int-to-long v0, v0

    const/4 v4, 0x4

    const/4 v3, 0x1

    :goto_0
    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    aget-byte v2, v5, v3

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v6, v2, 0x7f

    shl-int/2addr v6, v4

    int-to-long v6, v6

    add-long/2addr v0, v6

    add-int/lit8 v4, v4, 0x7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static j6(Ljava/io/InputStream;Ljava/io/File;Labcd/YD;Labcd/wH;)Labcd/FE;
    .registers 16

    :try_start_0
    invoke-static {p0}, Labcd/sH;->DW(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;

    move-result-object v6

    const/16 v0, 0x14

    invoke-virtual {v6, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    const/16 v0, 0x40

    new-array v7, v0, [B

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v6, v7, v0, v1}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    invoke-static {v7}, Labcd/sH;->DW([B)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->reset()V

    invoke-virtual {p3}, Labcd/wH;->VH()Ljava/util/zip/Inflater;

    move-result-object v0

    invoke-static {v6, v0}, Labcd/sH;->j6(Ljava/io/InputStream;Ljava/util/zip/Inflater;)Ljava/util/zip/InflaterInputStream;

    move-result-object v4

    const/4 v1, 0x0

    const/16 v2, 0x40

    invoke-static {v4, v7, v1, v2}, Labcd/sH;->DW(Ljava/io/InputStream;[BII)I

    move-result v5

    const/4 v1, 0x5

    if-lt v5, v1, :cond_7

    new-instance v8, Labcd/EK;

    invoke-direct {v8}, Labcd/EK;-><init>()V

    const/16 v1, 0x20

    invoke-static {p2, v7, v1, v8}, Labcd/hE;->j6(Labcd/YD;[BBLabcd/EK;)I

    move-result v1

    iget v2, v8, Labcd/EK;->j6:I

    invoke-static {v7, v2, v8}, Labcd/IK;->DW([BILabcd/EK;)J

    move-result-wide v2

    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-ltz v9, :cond_6

    iget v9, v8, Labcd/EK;->j6:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Labcd/EK;->j6:I
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    aget-byte v9, v7, v9

    if-nez v9, :cond_5

    if-nez p1, :cond_0

    const-wide/32 v10, 0x7fffffff

    cmp-long v9, v10, v2

    if-ltz v9, :cond_3

    :cond_0
    :try_start_1
    invoke-virtual {p3}, Labcd/wH;->Zo()I

    move-result v9

    int-to-long v10, v9

    cmp-long v9, v2, v10

    if-ltz v9, :cond_1

    if-nez p1, :cond_4

    :cond_1
    long-to-int v2, v2

    new-array v2, v2, [B

    iget v3, v8, Labcd/EK;->j6:I

    sub-int v3, v5, v3

    if-lez v3, :cond_2

    iget v5, v8, Labcd/EK;->j6:I

    const/4 v8, 0x0

    invoke-static {v7, v5, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    array-length v5, v2

    sub-int/2addr v5, v3

    invoke-static {v4, v2, v3, v5}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    invoke-static {v6, v0, p2, v7}, Labcd/sH;->DW(Ljava/io/InputStream;Ljava/util/zip/Inflater;Labcd/YD;[B)V

    new-instance v0, Labcd/FE$a;

    invoke-direct {v0, v1, v2}, Labcd/FE$a;-><init>(I[B)V

    :goto_0
    return-object v0

    :cond_3
    new-instance v0, Labcd/cD$a;

    invoke-direct {v0}, Labcd/cD$a;-><init>()V

    invoke-virtual {v0, p2}, Labcd/cD;->j6(Labcd/YD;)V

    throw v0
    :try_end_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectBadStream:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw v0

    :cond_4
    :try_start_2
    new-instance v0, Labcd/sH$a;

    iget-object v6, p3, Labcd/wH;->v5:Labcd/GG;

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Labcd/sH$a;-><init>(IJLjava/io/File;Labcd/YD;Labcd/GG;Labcd/sH$a;)V

    goto :goto_0

    :cond_5
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectGarbageAfterSize:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectNegativeSize:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectNoHeader:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v0, 0x2

    const/16 v1, 0x12

    invoke-static {v6, v7, v0, v1}, Labcd/sH;->DW(Ljava/io/InputStream;[BII)I
    :try_end_2
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v0, 0x0

    aget-byte v0, v7, v0

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, v0, 0x4

    and-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0xf

    int-to-long v2, v2

    const/4 v5, 0x1

    const/4 v4, 0x4

    :goto_1
    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_f

    const/4 v0, 0x1

    if-eq v1, v0, :cond_9

    const/4 v0, 0x2

    if-eq v1, v0, :cond_9

    const/4 v0, 0x3

    if-eq v1, v0, :cond_9

    const/4 v0, 0x4

    if-ne v1, v0, :cond_c

    :cond_9
    if-nez p1, :cond_a

    const-wide/32 v8, 0x7fffffff

    cmp-long v0, v8, v2

    if-ltz v0, :cond_d

    :cond_a
    :try_start_3
    invoke-virtual {p3}, Labcd/wH;->Zo()I

    move-result v0

    int-to-long v8, v0

    cmp-long v0, v2, v8

    if-ltz v0, :cond_b

    if-nez p1, :cond_e

    :cond_b
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->reset()V

    int-to-long v4, v5

    invoke-static {v6, v4, v5}, Labcd/BK;->j6(Ljava/io/InputStream;J)V

    invoke-virtual {p3}, Labcd/wH;->VH()Ljava/util/zip/Inflater;

    move-result-object v0

    invoke-static {v6, v0}, Labcd/sH;->j6(Ljava/io/InputStream;Ljava/util/zip/Inflater;)Ljava/util/zip/InflaterInputStream;

    move-result-object v4

    long-to-int v2, v2

    new-array v2, v2, [B

    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v4, v2, v3, v5}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    invoke-static {v6, v0, p2, v7}, Labcd/sH;->DW(Ljava/io/InputStream;Ljava/util/zip/Inflater;Labcd/YD;[B)V

    new-instance v0, Labcd/FE$a;

    invoke-direct {v0, v1, v2}, Labcd/FE$a;-><init>(I[B)V

    goto/16 :goto_0

    :cond_c
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectInvalidType:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Labcd/YC;-><init>(Labcd/YD;Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Labcd/cD$a;

    invoke-direct {v0}, Labcd/cD$a;-><init>()V

    invoke-virtual {v0, p2}, Labcd/cD;->j6(Labcd/YD;)V

    throw v0

    :cond_e
    new-instance v0, Labcd/sH$a;

    iget-object v6, p3, Labcd/wH;->v5:Labcd/GG;

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Labcd/sH$a;-><init>(IJLjava/io/File;Labcd/YD;Labcd/GG;Labcd/sH$a;)V
    :try_end_3
    .catch Ljava/util/zip/ZipException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_f
    aget-byte v0, v7, v5

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v8, v0, 0x7f

    shl-int/2addr v8, v4

    int-to-long v8, v8

    add-long/2addr v2, v8

    add-int/lit8 v4, v4, 0x7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static j6([BLabcd/YD;)Labcd/FE;
    .registers 5

    const/4 v0, 0x0

    new-instance v1, Labcd/wH;

    invoke-direct {v1, v0}, Labcd/wH;-><init>(Labcd/GG;)V

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v1}, Labcd/sH;->j6(Ljava/io/InputStream;Ljava/io/File;Labcd/YD;Labcd/wH;)Labcd/FE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Labcd/wH;->FH()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Labcd/wH;->FH()V

    throw v0
.end method

.method static synthetic j6(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;
    .registers 2

    invoke-static {p0}, Labcd/sH;->DW(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j6(Ljava/io/InputStream;JLabcd/yE;)Ljava/io/InputStream;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Labcd/sH;->DW(Ljava/io/InputStream;JLabcd/yE;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
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
    .registers 2

    invoke-static {p0}, Labcd/sH;->DW([B)Z

    move-result v0

    return v0
.end method
