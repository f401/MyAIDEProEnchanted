.class final Lcom/google/android/gms/internal/measurement/gd;
.super Lcom/google/android/gms/internal/measurement/dd;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/dd;-><init>()V

    return-void
.end method

.method private static j6([BIJI)I
    .registers 9

    if-eqz p4, :cond_2

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v0

    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    invoke-static {p0, v2, v3}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/bd;->j6(III)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/bd;->j6(II)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/bd;->j6(I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method final DW([BII)Ljava/lang/String;
    .registers 16

    const/4 v6, 0x0

    or-int v0, p2, p3

    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_9

    add-int v7, p2, p3

    new-array v4, p3, [C

    move v5, v6

    move v0, p2

    :goto_0
    if-ge v0, v7, :cond_1

    int-to-long v2, v0

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/cd;->j6(B)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/cd;->j6(B[CI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v2

    :cond_1
    :goto_1
    if-ge v0, v7, :cond_8

    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v0

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/cd;->j6(B)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/cd;->j6(B[CI)V

    move v0, v1

    :goto_2
    if-ge v0, v7, :cond_0

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/cd;->j6(B)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v4, v2}, Lcom/google/android/gms/internal/measurement/cd;->j6(B[CI)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/cd;->DW(B)Z

    move-result v2

    if-eqz v2, :cond_4

    if-ge v1, v7, :cond_3

    int-to-long v2, v1

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v2

    invoke-static {v0, v2, v4, v5}, Lcom/google/android/gms/internal/measurement/cd;->j6(BB[CI)V

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->gn()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0

    :cond_4
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/cd;->FH(B)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v2, v7, -0x1

    if-ge v1, v2, :cond_5

    add-int/lit8 v2, v1, 0x1

    int-to-long v8, v1

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v1

    int-to-long v8, v2

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v3

    invoke-static {v0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/cd;->j6(BBB[CI)V

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->gn()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0

    :cond_6
    add-int/lit8 v2, v7, -0x2

    if-ge v1, v2, :cond_7

    add-int/lit8 v2, v1, 0x1

    int-to-long v8, v1

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v1

    add-int/lit8 v8, v2, 0x1

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v2

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/cd;->j6(BBBB[CI)V

    add-int/lit8 v0, v8, 0x1

    add-int/lit8 v1, v5, 0x1

    add-int/lit8 v5, v1, 0x1

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->gn()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, v6, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "buffer length=%d, index=%d, size=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final j6(I[BII)I
    .registers 13

    or-int v0, p3, p4

    array-length v1, p2

    sub-int/2addr v1, p4

    or-int/2addr v0, v1

    if-ltz v0, :cond_11

    int-to-long v4, p3

    int-to-long v0, p4

    sub-long/2addr v0, v4

    long-to-int v1, v0

    const/16 v0, 0x10

    if-ge v1, v0, :cond_2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    sub-int v2, v1, v0

    int-to-long v0, v0

    add-long/2addr v0, v4

    :cond_1
    :goto_1
    const/4 v6, 0x0

    move-wide v4, v0

    move v7, v2

    :goto_2
    if-lez v7, :cond_4

    const-wide/16 v0, 0x1

    add-long v2, v4, v0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v0

    if-ltz v0, :cond_12

    add-int/lit8 v1, v7, -0x1

    move-wide v4, v2

    move v7, v1

    move v6, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    move-wide v2, v4

    :goto_3
    if-ge v0, v1, :cond_3

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v6

    if-ltz v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v6

    :goto_4
    if-nez v7, :cond_6

    const/4 v0, 0x0

    :cond_5
    :goto_5
    return v0

    :cond_6
    add-int/lit8 v1, v7, -0x1

    const/16 v2, -0x20

    if-ge v0, v2, :cond_8

    if-eqz v1, :cond_5

    add-int/lit8 v2, v1, -0x1

    const/16 v1, -0x3e

    if-lt v0, v1, :cond_7

    const-wide/16 v0, 0x1

    add-long/2addr v0, v4

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v3

    const/16 v4, -0x41

    if-le v3, v4, :cond_1

    :cond_7
    const/4 v0, -0x1

    goto :goto_5

    :cond_8
    const/16 v2, -0x10

    if-ge v0, v2, :cond_e

    const/4 v2, 0x2

    if-ge v1, v2, :cond_9

    invoke-static {p2, v0, v4, v5, v1}, Lcom/google/android/gms/internal/measurement/gd;->j6([BIJI)I

    move-result v0

    goto :goto_5

    :cond_9
    add-int/lit8 v2, v1, -0x2

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v1

    const/16 v3, -0x41

    if-gt v1, v3, :cond_c

    const/16 v3, -0x20

    if-ne v0, v3, :cond_a

    const/16 v3, -0x60

    if-lt v1, v3, :cond_c

    :cond_a
    const/16 v3, -0x13

    if-ne v0, v3, :cond_b

    const/16 v0, -0x60

    if-ge v1, v0, :cond_c

    :cond_b
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v0

    const/16 v1, -0x41

    if-le v0, v1, :cond_d

    :cond_c
    const/4 v0, -0x1

    goto :goto_5

    :cond_d
    const-wide/16 v0, 0x1

    add-long/2addr v0, v6

    goto :goto_1

    :cond_e
    const/4 v2, 0x3

    if-ge v1, v2, :cond_f

    invoke-static {p2, v0, v4, v5, v1}, Lcom/google/android/gms/internal/measurement/gd;->j6([BIJI)I

    move-result v0

    goto :goto_5

    :cond_f
    add-int/lit8 v2, v1, -0x3

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v1

    const/16 v3, -0x41

    if-gt v1, v3, :cond_10

    shl-int/lit8 v0, v0, 0x1c

    add-int/lit8 v1, v1, 0x70

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_10

    const-wide/16 v0, 0x1

    add-long v4, v6, v0

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v0

    const/16 v1, -0x41

    if-gt v0, v1, :cond_10

    const-wide/16 v0, 0x1

    add-long/2addr v0, v4

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJ)B

    move-result v3

    const/16 v4, -0x41

    if-le v3, v4, :cond_1

    :cond_10
    const/4 v0, -0x1

    goto/16 :goto_5

    :cond_11
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Array length=%d, index=%d, limit=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    move-wide v4, v2

    goto/16 :goto_4
.end method

.method final j6(Ljava/lang/CharSequence;[BII)I
    .registers 19

    move/from16 v0, p3

    int-to-long v2, v0

    move/from16 v0, p4

    int-to-long v4, v0

    add-long v8, v4, v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    move/from16 v0, p4

    if-gt v10, v0, :cond_c

    move-object/from16 v0, p2

    array-length v4, v0

    sub-int v4, v4, p4

    move/from16 v0, p3

    if-lt v4, v0, :cond_c

    const/4 v6, 0x0

    :goto_0
    const-wide/16 v4, 0x1

    if-ge v6, v10, :cond_0

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v11, 0x80

    if-ge v7, v11, :cond_0

    int-to-byte v4, v7

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJB)V

    add-int/lit8 v6, v6, 0x1

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    if-ne v6, v10, :cond_1

    long-to-int v2, v2

    :goto_1
    return v2

    :cond_1
    :goto_2
    if-ge v6, v10, :cond_b

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const/16 v7, 0x80

    if-ge v11, v7, :cond_2

    cmp-long v7, v2, v8

    if-gez v7, :cond_2

    int-to-byte v7, v11

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v7}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJB)V

    add-long/2addr v2, v4

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    const/16 v7, 0x800

    if-ge v11, v7, :cond_3

    const-wide/16 v12, 0x2

    sub-long v12, v8, v12

    cmp-long v7, v2, v12

    if-gtz v7, :cond_3

    add-long v12, v2, v4

    ushr-int/lit8 v7, v11, 0x6

    or-int/lit16 v7, v7, 0x3c0

    int-to-byte v7, v7

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v7}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJB)V

    and-int/lit8 v2, v11, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13, v2}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJB)V

    add-long v2, v12, v4

    goto :goto_3

    :cond_3
    const v7, 0xd800

    if-lt v11, v7, :cond_4

    const v7, 0xdfff

    if-ge v7, v11, :cond_5

    :cond_4
    const-wide/16 v12, 0x3

    sub-long v12, v8, v12

    cmp-long v7, v2, v12

    if-gtz v7, :cond_5

    add-long v12, v2, v4

    ushr-int/lit8 v7, v11, 0xc

    or-int/lit16 v7, v7, 0x1e0

    int-to-byte v7, v7

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v7}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJB)V

    add-long v2, v12, v4

    ushr-int/lit8 v4, v11, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13, v4}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJB)V

    and-int/lit8 v4, v11, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJB)V

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    goto :goto_3

    :cond_5
    const-wide/16 v4, 0x4

    sub-long v4, v8, v4

    cmp-long v4, v2, v4

    if-gtz v4, :cond_8

    add-int/lit8 v7, v6, 0x1

    if-eq v7, v10, :cond_6

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v11, v4}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v11, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    ushr-int/lit8 v11, v6, 0x12

    or-int/lit16 v11, v11, 0xf0

    int-to-byte v11, v11

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v11}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJB)V

    const-wide/16 v2, 0x1

    add-long/2addr v2, v4

    ushr-int/lit8 v11, v6, 0xc

    and-int/lit8 v11, v11, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v11}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJB)V

    const-wide/16 v4, 0x1

    add-long v12, v2, v4

    ushr-int/lit8 v4, v6, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJB)V

    const-wide/16 v4, 0x1

    const-wide/16 v2, 0x1

    add-long/2addr v2, v12

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13, v6}, Lcom/google/android/gms/internal/measurement/_c;->j6([BJB)V

    move v6, v7

    goto/16 :goto_3

    :cond_6
    move v7, v6

    :cond_7
    new-instance v2, Lcom/google/android/gms/internal/measurement/fd;

    add-int/lit8 v3, v7, -0x1

    invoke-direct {v2, v3, v10}, Lcom/google/android/gms/internal/measurement/fd;-><init>(II)V

    throw v2

    :cond_8
    const v4, 0xd800

    if-gt v4, v11, :cond_a

    const v4, 0xdfff

    if-gt v11, v4, :cond_a

    add-int/lit8 v4, v6, 0x1

    if-eq v4, v10, :cond_9

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v11, v4}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    new-instance v2, Lcom/google/android/gms/internal/measurement/fd;

    invoke-direct {v2, v6, v10}, Lcom/google/android/gms/internal/measurement/fd;-><init>(II)V

    throw v2

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Failed writing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, " at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    long-to-int v2, v2

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v2, v10, -0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x25

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed writing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " at index "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v2, p3, p4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method final j6(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 15

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/_c;->j6(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    int-to-long v2, v2

    add-long v6, v2, v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    int-to-long v2, v8

    sub-long v10, v6, v0

    cmp-long v2, v2, v10

    if-gtz v2, :cond_c

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v8, :cond_0

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v9, 0x80

    if-ge v3, v9, :cond_0

    int-to-byte v3, v3

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/_c;->j6(JB)V

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v10, 0x1

    add-long/2addr v0, v10

    goto :goto_0

    :cond_0
    if-ne v2, v8, :cond_1

    sub-long/2addr v0, v4

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    return-void

    :cond_1
    :goto_2
    if-ge v2, v8, :cond_b

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v3, 0x80

    if-ge v9, v3, :cond_2

    cmp-long v3, v0, v6

    if-gez v3, :cond_2

    int-to-byte v3, v9

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/_c;->j6(JB)V

    const-wide/16 v10, 0x1

    add-long/2addr v0, v10

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/16 v3, 0x800

    if-ge v9, v3, :cond_3

    const-wide/16 v10, 0x2

    sub-long v10, v6, v10

    cmp-long v3, v0, v10

    if-gtz v3, :cond_3

    const-wide/16 v10, 0x1

    add-long/2addr v10, v0

    ushr-int/lit8 v3, v9, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/_c;->j6(JB)V

    and-int/lit8 v0, v9, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v10, v11, v0}, Lcom/google/android/gms/internal/measurement/_c;->j6(JB)V

    const-wide/16 v0, 0x1

    add-long/2addr v0, v10

    goto :goto_3

    :cond_3
    const v3, 0xd800

    if-lt v9, v3, :cond_4

    const v3, 0xdfff

    if-ge v3, v9, :cond_5

    :cond_4
    const-wide/16 v10, 0x3

    sub-long v10, v6, v10

    cmp-long v3, v0, v10

    if-gtz v3, :cond_5

    const-wide/16 v10, 0x1

    add-long/2addr v10, v0

    ushr-int/lit8 v3, v9, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/_c;->j6(JB)V

    const-wide/16 v0, 0x1

    add-long/2addr v0, v10

    ushr-int/lit8 v3, v9, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-static {v10, v11, v3}, Lcom/google/android/gms/internal/measurement/_c;->j6(JB)V

    and-int/lit8 v3, v9, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/_c;->j6(JB)V

    const-wide/16 v10, 0x1

    add-long/2addr v0, v10

    goto :goto_3

    :cond_5
    const-wide/16 v10, 0x4

    sub-long v10, v6, v10

    cmp-long v3, v0, v10

    if-gtz v3, :cond_8

    add-int/lit8 v3, v2, 0x1

    if-eq v3, v8, :cond_6

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-static {v9, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    const-wide/16 v10, 0x1

    add-long/2addr v10, v0

    ushr-int/lit8 v9, v2, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    invoke-static {v0, v1, v9}, Lcom/google/android/gms/internal/measurement/_c;->j6(JB)V

    const-wide/16 v0, 0x1

    add-long/2addr v0, v10

    ushr-int/lit8 v9, v2, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    invoke-static {v10, v11, v9}, Lcom/google/android/gms/internal/measurement/_c;->j6(JB)V

    const-wide/16 v10, 0x1

    add-long/2addr v10, v0

    ushr-int/lit8 v9, v2, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    invoke-static {v0, v1, v9}, Lcom/google/android/gms/internal/measurement/_c;->j6(JB)V

    and-int/lit8 v0, v2, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v10, v11, v0}, Lcom/google/android/gms/internal/measurement/_c;->j6(JB)V

    const-wide/16 v0, 0x1

    add-long/2addr v0, v10

    move v2, v3

    goto/16 :goto_3

    :cond_6
    move v3, v2

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/measurement/fd;

    add-int/lit8 v1, v3, -0x1

    invoke-direct {v0, v1, v8}, Lcom/google/android/gms/internal/measurement/fd;-><init>(II)V

    throw v0

    :cond_8
    const v3, 0xd800

    if-gt v3, v9, :cond_a

    const v3, 0xdfff

    if-gt v9, v3, :cond_a

    add-int/lit8 v3, v2, 0x1

    if-eq v3, v8, :cond_9

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/measurement/fd;

    invoke-direct {v0, v2, v8}, Lcom/google/android/gms/internal/measurement/fd;-><init>(II)V

    throw v0

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed writing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    sub-long/2addr v0, v4

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v0, v8, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed writing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, " at index "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
