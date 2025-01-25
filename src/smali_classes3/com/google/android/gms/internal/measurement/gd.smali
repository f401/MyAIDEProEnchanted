.class final Lcom/google/android/gms/internal/measurement/gd;
.super Lcom/google/android/gms/internal/measurement/dd;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/dd;-><init>()V

    return-void
.end method

.method private static j6([BIJI)I
    .registers 7

    if-eqz p4, :cond_27

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1e

    const/4 v0, 0x2

    if-ne p4, v0, :cond_18

    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result p0

    invoke-static {p1, p4, p0}, Lcom/google/android/gms/internal/measurement/bd;->j6(III)I

    move-result p0

    return p0

    :cond_18
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1e
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/bd;->j6(II)I

    move-result p0

    return p0

    :cond_27
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/bd;->j6(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method final DW([BII)Ljava/lang/String;
    .registers 15

    or-int v0, p2, p3

    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_bd

    add-int v0, p2, p3

    new-array p3, p3, [C

    const/4 v3, 0x0

    :goto_f
    if-ge p2, v0, :cond_24

    int-to-long v4, p2

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/cd;->j6(B)Z

    move-result v5

    if-eqz v5, :cond_24

    add-int/lit8 p2, p2, 0x1

    invoke-static {v4, p3, v3}, Lcom/google/android/gms/internal/measurement/cd;->j6(B[CI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_24
    move v9, v3

    :cond_25
    :goto_25
    if-ge p2, v0, :cond_b7

    add-int/lit8 v3, p2, 0x1

    int-to-long v4, p2

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result p2

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/cd;->j6(B)Z

    move-result v4

    if-eqz v4, :cond_50

    add-int/lit8 v4, v9, 0x1

    invoke-static {p2, p3, v9}, Lcom/google/android/gms/internal/measurement/cd;->j6(B[CI)V

    move p2, v3

    move v9, v4

    :goto_3b
    if-ge p2, v0, :cond_25

    int-to-long v3, p2

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/cd;->j6(B)Z

    move-result v4

    if-eqz v4, :cond_25

    add-int/lit8 p2, p2, 0x1

    invoke-static {v3, p3, v9}, Lcom/google/android/gms/internal/measurement/cd;->j6(B[CI)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3b

    :cond_50
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/cd;->DW(B)Z

    move-result v4

    if-eqz v4, :cond_6a

    if-ge v3, v0, :cond_65

    int-to-long v4, v3

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v4

    invoke-static {p2, v4, p3, v9}, Lcom/google/android/gms/internal/measurement/cd;->j6(BB[CI)V

    add-int/lit8 p2, v3, 0x1

    :goto_62
    add-int/lit8 v9, v9, 0x1

    goto :goto_25

    :cond_65
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->gn()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object p1

    throw p1

    :cond_6a
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/cd;->FH(B)Z

    move-result v4

    if-eqz v4, :cond_8b

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_86

    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v3

    int-to-long v5, v4

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v5

    invoke-static {p2, v3, v5, p3, v9}, Lcom/google/android/gms/internal/measurement/cd;->j6(BBB[CI)V

    add-int/lit8 p2, v4, 0x1

    goto :goto_62

    :cond_86
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->gn()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object p1

    throw p1

    :cond_8b
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_b2

    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v5

    add-int/lit8 v10, v4, 0x1

    int-to-long v3, v4

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v6

    int-to-long v3, v10

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v7

    move v3, p2

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, p3

    move v8, v9

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/measurement/cd;->j6(BBBB[CI)V

    add-int/lit8 p2, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v9, v2

    goto/16 :goto_25

    :cond_b2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->gn()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object p1

    throw p1

    :cond_b7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v9}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_bd
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v3, p2

    const-string p1, "buffer length=%d, index=%d, size=%d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_e1

    :goto_e0
    throw v0

    :goto_e1
    goto :goto_e0
.end method

.method final j6(I[BII)I
    .registers 20

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    or-int v3, v1, v2

    array-length v4, v0

    sub-int/2addr v4, v2

    or-int/2addr v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ltz v3, :cond_b7

    int-to-long v7, v1

    int-to-long v1, v2

    sub-long/2addr v1, v7

    long-to-int v2, v1

    const/16 v1, 0x10

    const-wide/16 v9, 0x1

    if-ge v2, v1, :cond_1c

    const/4 v1, 0x0

    goto :goto_2c

    :cond_1c
    move-wide v11, v7

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v2, :cond_2b

    invoke-static {v0, v11, v12}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v3

    if-gez v3, :cond_27

    goto :goto_2c

    :cond_27
    add-int/lit8 v1, v1, 0x1

    add-long/2addr v11, v9

    goto :goto_1e

    :cond_2b
    move v1, v2

    :goto_2c
    sub-int/2addr v2, v1

    int-to-long v11, v1

    add-long/2addr v7, v11

    :goto_2f
    const/4 v1, 0x0

    :goto_30
    if-lez v2, :cond_3f

    add-long v11, v7, v9

    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v1

    if-ltz v1, :cond_3e

    add-int/lit8 v2, v2, -0x1

    move-wide v7, v11

    goto :goto_30

    :cond_3e
    move-wide v7, v11

    :cond_3f
    if-nez v2, :cond_42

    return v6

    :cond_42
    add-int/lit8 v2, v2, -0x1

    const/16 v3, -0x20

    const/16 v11, -0x41

    const/4 v12, -0x1

    if-ge v1, v3, :cond_60

    if-nez v2, :cond_4e

    return v1

    :cond_4e
    add-int/lit8 v2, v2, -0x1

    const/16 v3, -0x3e

    if-lt v1, v3, :cond_5f

    add-long v13, v7, v9

    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v1

    if-le v1, v11, :cond_5d

    goto :goto_5f

    :cond_5d
    move-wide v7, v13

    goto :goto_2f

    :cond_5f
    :goto_5f
    return v12

    :cond_60
    const/16 v13, -0x10

    if-ge v1, v13, :cond_8c

    if-ge v2, v4, :cond_6b

    invoke-static {v0, v1, v7, v8, v2}, Lcom/google/android/gms/internal/measurement/gd;->j6([BIJI)I

    move-result v0

    return v0

    :cond_6b
    add-int/lit8 v2, v2, -0x2

    add-long v13, v7, v9

    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v7

    if-gt v7, v11, :cond_8b

    const/16 v8, -0x60

    if-ne v1, v3, :cond_7b

    if-lt v7, v8, :cond_8b

    :cond_7b
    const/16 v3, -0x13

    if-ne v1, v3, :cond_81

    if-ge v7, v8, :cond_8b

    :cond_81
    invoke-static {v0, v13, v14}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v1

    if-le v1, v11, :cond_88

    goto :goto_8b

    :cond_88
    add-long v7, v13, v9

    goto :goto_2f

    :cond_8b
    :goto_8b
    return v12

    :cond_8c
    if-ge v2, v5, :cond_93

    invoke-static {v0, v1, v7, v8, v2}, Lcom/google/android/gms/internal/measurement/gd;->j6([BIJI)I

    move-result v0

    return v0

    :cond_93
    add-int/lit8 v2, v2, -0x3

    add-long v13, v7, v9

    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v3

    if-gt v3, v11, :cond_b6

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v3, v3, 0x70

    add-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x1e

    if-nez v1, :cond_b6

    add-long v7, v13, v9

    invoke-static {v0, v13, v14}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v1

    if-gt v1, v11, :cond_b6

    add-long v13, v7, v9

    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v1

    if-le v1, v11, :cond_5d

    :cond_b6
    return v12

    :cond_b7
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-array v5, v5, [Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    const-string v0, "Array length=%d, index=%d, limit=%d"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_da

    :goto_d9
    throw v3

    :goto_da
    goto :goto_d9
.end method

.method final j6(Ljava/lang/CharSequence;[BII)I
    .registers 24

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    int-to-long v6, v3

    add-long/2addr v6, v4

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_13b

    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_13b

    const/4 v2, 0x0

    :goto_1a
    const-wide/16 v11, 0x1

    const/16 v3, 0x80

    if-ge v2, v8, :cond_2e

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_2e

    int-to-byte v3, v13

    invoke-static {v1, v4, v5, v3}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJB)V

    add-int/lit8 v2, v2, 0x1

    add-long/2addr v4, v11

    goto :goto_1a

    :cond_2e
    if-ne v2, v8, :cond_32

    long-to-int v0, v4

    return v0

    :cond_32
    :goto_32
    if-ge v2, v8, :cond_139

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_44

    cmp-long v14, v4, v6

    if-gez v14, :cond_44

    int-to-byte v13, v13

    invoke-static {v1, v4, v5, v13}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJB)V

    add-long/2addr v4, v11

    goto :goto_9f

    :cond_44
    const/16 v14, 0x800

    if-ge v13, v14, :cond_69

    const-wide/16 v14, 0x2

    sub-long v14, v6, v14

    cmp-long v16, v4, v14

    if-gtz v16, :cond_69

    add-long v14, v4, v11

    ushr-int/lit8 v11, v13, 0x6

    or-int/lit16 v11, v11, 0x3c0

    int-to-byte v11, v11

    invoke-static {v1, v4, v5, v11}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJB)V

    and-int/lit8 v4, v13, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    invoke-static {v1, v14, v15, v4}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJB)V

    const-wide/16 v4, 0x1

    add-long/2addr v14, v4

    move-wide v12, v14

    :goto_65
    const/16 v11, 0x80

    goto/16 :goto_f0

    :cond_69
    const v11, 0xdfff

    const v12, 0xd800

    if-lt v13, v12, :cond_73

    if-ge v11, v13, :cond_a3

    :cond_73
    const-wide/16 v14, 0x3

    sub-long v14, v6, v14

    cmp-long v16, v4, v14

    if-gtz v16, :cond_a3

    const-wide/16 v14, 0x1

    add-long v11, v4, v14

    ushr-int/lit8 v3, v13, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    invoke-static {v1, v4, v5, v3}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJB)V

    add-long v3, v11, v14

    ushr-int/lit8 v5, v13, 0x6

    and-int/lit8 v5, v5, 0x3f

    const/16 v14, 0x80

    or-int/2addr v5, v14

    int-to-byte v5, v5

    invoke-static {v1, v11, v12, v5}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJB)V

    and-int/lit8 v5, v13, 0x3f

    or-int/2addr v5, v14

    int-to-byte v5, v5

    invoke-static {v1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJB)V

    const-wide/16 v11, 0x1

    add-long/2addr v3, v11

    move-wide v4, v3

    :goto_9f
    move-wide v12, v4

    const-wide/16 v4, 0x1

    goto :goto_65

    :cond_a3
    const-wide/16 v14, 0x4

    sub-long v14, v6, v14

    cmp-long v3, v4, v14

    if-gtz v3, :cond_104

    add-int/lit8 v3, v2, 0x1

    if-eq v3, v8, :cond_fc

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v11

    if-eqz v11, :cond_fb

    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    const-wide/16 v11, 0x1

    add-long v13, v4, v11

    ushr-int/lit8 v15, v2, 0x12

    or-int/lit16 v15, v15, 0xf0

    int-to-byte v15, v15

    invoke-static {v1, v4, v5, v15}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJB)V

    add-long v4, v13, v11

    ushr-int/lit8 v15, v2, 0xc

    and-int/lit8 v15, v15, 0x3f

    const/16 v11, 0x80

    or-int/lit16 v12, v15, 0x80

    int-to-byte v12, v12

    invoke-static {v1, v13, v14, v12}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJB)V

    const-wide/16 v12, 0x1

    add-long v14, v4, v12

    ushr-int/lit8 v16, v2, 0x6

    and-int/lit8 v12, v16, 0x3f

    or-int/2addr v12, v11

    int-to-byte v12, v12

    invoke-static {v1, v4, v5, v12}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJB)V

    const-wide/16 v4, 0x1

    add-long v12, v14, v4

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v11

    int-to-byte v2, v2

    invoke-static {v1, v14, v15, v2}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJB)V

    move v2, v3

    :goto_f0
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x80

    move-wide/from16 v17, v4

    move-wide v4, v12

    move-wide/from16 v11, v17

    goto/16 :goto_32

    :cond_fb
    move v2, v3

    :cond_fc
    new-instance v0, Lcom/google/android/gms/internal/measurement/fd;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2, v8}, Lcom/google/android/gms/internal/measurement/fd;-><init>(II)V

    throw v0

    :cond_104
    if-gt v12, v13, :cond_11c

    if-gt v13, v11, :cond_11c

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_116

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_11c

    :cond_116
    new-instance v0, Lcom/google/android/gms/internal/measurement/fd;

    invoke-direct {v0, v2, v8}, Lcom/google/android/gms/internal/measurement/fd;-><init>(II)V

    throw v0

    :cond_11c
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_139
    long-to-int v0, v4

    return v0

    :cond_13b
    add-int/lit8 v8, v8, -0x1

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x25

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v2, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_161

    :goto_160
    throw v0

    :goto_161
    goto :goto_160
.end method

.method final j6(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 24

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/_c;->j6(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v2

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    int-to-long v9, v8

    sub-long v11, v6, v4

    const-string v13, " at index "

    const-string v14, "Failed writing "

    cmp-long v15, v9, v11

    if-gtz v15, :cond_147

    const/4 v9, 0x0

    :goto_24
    const/16 v10, 0x80

    const-wide/16 v11, 0x1

    if-ge v9, v8, :cond_38

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-ge v15, v10, :cond_38

    int-to-byte v10, v15

    invoke-static {v4, v5, v10}, Lcom/google/android/gms/internal/measurement/_c;->j6(JB)V

    add-int/lit8 v9, v9, 0x1

    add-long/2addr v4, v11

    goto :goto_24

    :cond_38
    if-ne v9, v8, :cond_40

    sub-long/2addr v4, v2

    long-to-int v0, v4

    :goto_3c
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_40
    :goto_40
    if-ge v9, v8, :cond_13e

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-ge v15, v10, :cond_57

    cmp-long v16, v4, v6

    if-gez v16, :cond_57

    int-to-byte v15, v15

    invoke-static {v4, v5, v15}, Lcom/google/android/gms/internal/measurement/_c;->j6(JB)V

    add-long/2addr v4, v11

    move-wide/from16 v17, v2

    :goto_53
    const/16 v15, 0x80

    goto/16 :goto_f6

    :cond_57
    const/16 v10, 0x800

    if-ge v15, v10, :cond_7a

    const-wide/16 v17, 0x2

    sub-long v17, v6, v17

    cmp-long v10, v4, v17

    if-gtz v10, :cond_7a

    move-wide/from16 v17, v2

    add-long v1, v4, v11

    ushr-int/lit8 v3, v15, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    invoke-static {v4, v5, v3}, Lcom/google/android/gms/internal/measurement/_c;->j6(JB)V

    and-int/lit8 v3, v15, 0x3f

    const/16 v4, 0x80

    or-int/2addr v3, v4

    int-to-byte v3, v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/_c;->j6(JB)V

    add-long/2addr v1, v11

    goto :goto_ae

    :cond_7a
    move-wide/from16 v17, v2

    const v1, 0xdfff

    const v2, 0xd800

    if-lt v15, v2, :cond_86

    if-ge v1, v15, :cond_b0

    :cond_86
    const-wide/16 v19, 0x3

    sub-long v19, v6, v19

    cmp-long v3, v4, v19

    if-gtz v3, :cond_b0

    add-long v1, v4, v11

    ushr-int/lit8 v3, v15, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    invoke-static {v4, v5, v3}, Lcom/google/android/gms/internal/measurement/_c;->j6(JB)V

    add-long v3, v1, v11

    ushr-int/lit8 v5, v15, 0x6

    and-int/lit8 v5, v5, 0x3f

    const/16 v10, 0x80

    or-int/2addr v5, v10

    int-to-byte v5, v5

    invoke-static {v1, v2, v5}, Lcom/google/android/gms/internal/measurement/_c;->j6(JB)V

    and-int/lit8 v1, v15, 0x3f

    or-int/2addr v1, v10

    int-to-byte v1, v1

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/measurement/_c;->j6(JB)V

    add-long v1, v3, v11

    :goto_ae
    move-wide v4, v1

    goto :goto_53

    :cond_b0
    const-wide/16 v19, 0x4

    sub-long v19, v6, v19

    cmp-long v3, v4, v19

    if-gtz v3, :cond_109

    add-int/lit8 v1, v9, 0x1

    if-eq v1, v8, :cond_101

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v15, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_100

    invoke-static {v15, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    add-long v9, v4, v11

    ushr-int/lit8 v3, v2, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    invoke-static {v4, v5, v3}, Lcom/google/android/gms/internal/measurement/_c;->j6(JB)V

    add-long v3, v9, v11

    ushr-int/lit8 v5, v2, 0xc

    and-int/lit8 v5, v5, 0x3f

    const/16 v15, 0x80

    or-int/2addr v5, v15

    int-to-byte v5, v5

    invoke-static {v9, v10, v5}, Lcom/google/android/gms/internal/measurement/_c;->j6(JB)V

    add-long v9, v3, v11

    ushr-int/lit8 v5, v2, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v15

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/_c;->j6(JB)V

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v15

    int-to-byte v2, v2

    invoke-static {v9, v10, v2}, Lcom/google/android/gms/internal/measurement/_c;->j6(JB)V

    add-long/2addr v9, v11

    move-wide v4, v9

    move v9, v1

    :goto_f6
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p2

    move-wide/from16 v2, v17

    const/16 v10, 0x80

    goto/16 :goto_40

    :cond_100
    move v9, v1

    :cond_101
    new-instance v0, Lcom/google/android/gms/internal/measurement/fd;

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v0, v9, v8}, Lcom/google/android/gms/internal/measurement/fd;-><init>(II)V

    throw v0

    :cond_109
    if-gt v2, v15, :cond_121

    if-gt v15, v1, :cond_121

    add-int/lit8 v1, v9, 0x1

    if-eq v1, v8, :cond_11b

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_121

    :cond_11b
    new-instance v0, Lcom/google/android/gms/internal/measurement/fd;

    invoke-direct {v0, v9, v8}, Lcom/google/android/gms/internal/measurement/fd;-><init>(II)V

    throw v0

    :cond_121
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13e
    move-wide/from16 v17, v2

    sub-long v4, v4, v17

    long-to-int v0, v4

    move-object/from16 v1, p2

    goto/16 :goto_3c

    :cond_147
    add-int/lit8 v8, v8, -0x1

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_16f

    :goto_16e
    throw v0

    :goto_16f
    goto :goto_16e
.end method
