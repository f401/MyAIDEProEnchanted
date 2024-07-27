.class final Lcom/google/android/gms/internal/measurement/jb;
.super Lcom/google/android/gms/internal/measurement/hb;


# instance fields
.field private EQ:I

.field private J0:I

.field private final VH:Z

.field private final Zo:[B

.field private gn:I

.field private tp:I

.field private u7:I

.field private we:I


# direct methods
.method private constructor <init>([BIIZ)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/hb;-><init>(Lcom/google/android/gms/internal/measurement/ib;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/measurement/jb;->J0:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/jb;->Zo:[B

    add-int v0, p3, p2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    iput p2, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    iget v0, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    iput v0, p0, Lcom/google/android/gms/internal/measurement/jb;->EQ:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/measurement/jb;->VH:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/measurement/ib;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/jb;-><init>([BIIZ)V

    return-void
.end method

.method private final a8()I
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    if-eq v1, v0, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/jb;->Zo:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    if-ltz v0, :cond_0

    iput v4, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    :goto_0
    return v0

    :cond_0
    sub-int/2addr v1, v4

    const/16 v2, 0x9

    if-lt v1, v2, :cond_5

    add-int/lit8 v2, v4, 0x1

    aget-byte v1, v3, v4

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_2

    xor-int/lit8 v0, v0, -0x80

    move v1, v2

    :cond_1
    :goto_1
    iput v1, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0xe

    xor-int/2addr v0, v2

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_4

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    move v1, v2

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    shl-int/lit8 v4, v2, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    if-gez v1, :cond_6

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    if-gez v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    if-gez v1, :cond_6

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    if-gez v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    if-ltz v1, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/jb;->U2()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method private final er()J
    .registers 21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    sub-int/2addr v3, v2

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/jb;->Zo:[B

    add-int/lit8 v4, v2, 0x8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    aget-byte v4, v3, v2

    int-to-long v4, v4

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v3, v6

    int-to-long v6, v6

    add-int/lit8 v8, v2, 0x2

    aget-byte v8, v3, v8

    int-to-long v8, v8

    add-int/lit8 v10, v2, 0x3

    aget-byte v10, v3, v10

    int-to-long v10, v10

    add-int/lit8 v12, v2, 0x4

    aget-byte v12, v3, v12

    int-to-long v12, v12

    add-int/lit8 v14, v2, 0x5

    aget-byte v14, v3, v14

    int-to-long v14, v14

    add-int/lit8 v16, v2, 0x6

    aget-byte v16, v3, v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-int/lit8 v2, v2, 0x7

    aget-byte v2, v3, v2

    int-to-long v2, v2

    const-wide/16 v18, 0xff

    and-long v2, v2, v18

    const/16 v18, 0x38

    shl-long v2, v2, v18

    const-wide/16 v18, 0xff

    and-long v4, v4, v18

    const-wide/16 v18, 0xff

    and-long v6, v6, v18

    const/16 v18, 0x8

    shl-long v6, v6, v18

    or-long/2addr v4, v6

    const-wide/16 v6, 0xff

    and-long/2addr v6, v8

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    const-wide/16 v6, 0xff

    and-long/2addr v6, v10

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    const-wide/16 v6, 0xff

    and-long/2addr v6, v12

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    const-wide/16 v6, 0xff

    and-long/2addr v6, v14

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    const-wide/16 v6, 0xff

    and-long v6, v6, v16

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->j6()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v2

    throw v2
.end method

.method private final gW()B
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jb;->Zo:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    aget-byte v0, v1, v0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->j6()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0
.end method

.method private final lg()J
    .registers 11

    const-wide/16 v8, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    if-eq v1, v0, :cond_9

    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/jb;->Zo:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v6, v0

    if-ltz v0, :cond_0

    iput v2, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    int-to-long v2, v0

    :goto_0
    return-wide v2

    :cond_0
    sub-int/2addr v1, v2

    const/16 v3, 0x9

    if-lt v1, v3, :cond_9

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v6, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v0, v2

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    :goto_1
    int-to-long v2, v0

    move v4, v1

    :goto_2
    iput v4, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v6, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_2

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v2, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v4, 0x1

    aget-byte v2, v6, v4

    shl-int/lit8 v2, v2, 0x15

    xor-int/2addr v0, v2

    if-gez v0, :cond_3

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_1

    :cond_3
    int-to-long v2, v0

    add-int/lit8 v4, v1, 0x1

    aget-byte v0, v6, v1

    int-to-long v0, v0

    const/16 v5, 0x1c

    shl-long/2addr v0, v5

    xor-long/2addr v0, v2

    cmp-long v2, v0, v8

    if-ltz v2, :cond_5

    const-wide/32 v2, 0xfe03f80

    :goto_3
    xor-long/2addr v0, v2

    :cond_4
    move-wide v2, v0

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v4, 0x1

    aget-byte v2, v6, v4

    int-to-long v2, v2

    const/16 v4, 0x23

    shl-long/2addr v2, v4

    xor-long/2addr v2, v0

    cmp-long v0, v2, v8

    if-gez v0, :cond_6

    const-wide v0, -0x7f01fc080L

    move v4, v5

    :goto_4
    xor-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_2

    :cond_6
    add-int/lit8 v4, v5, 0x1

    aget-byte v0, v6, v5

    int-to-long v0, v0

    const/16 v5, 0x2a

    shl-long/2addr v0, v5

    xor-long/2addr v0, v2

    cmp-long v2, v0, v8

    if-ltz v2, :cond_7

    const-wide v2, 0x3f80fe03f80L

    goto :goto_3

    :cond_7
    add-int/lit8 v5, v4, 0x1

    aget-byte v2, v6, v4

    int-to-long v2, v2

    const/16 v4, 0x31

    shl-long/2addr v2, v4

    xor-long/2addr v2, v0

    cmp-long v0, v2, v8

    if-gez v0, :cond_8

    const-wide v0, -0x1fc07f01fc080L

    move v4, v5

    goto :goto_4

    :cond_8
    add-int/lit8 v4, v5, 0x1

    aget-byte v0, v6, v5

    int-to-long v0, v0

    const/16 v5, 0x38

    shl-long/2addr v0, v5

    xor-long/2addr v0, v2

    const-wide v2, 0xfe03f80fe03f80L

    xor-long/2addr v0, v2

    cmp-long v2, v0, v8

    if-gez v2, :cond_4

    add-int/lit8 v5, v4, 0x1

    aget-byte v2, v6, v4

    int-to-long v2, v2

    cmp-long v2, v2, v8

    if-ltz v2, :cond_9

    move-wide v2, v0

    move v4, v5

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/jb;->U2()J

    move-result-wide v2

    goto/16 :goto_0
.end method

.method private final rN()I
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jb;->Zo:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    aget-byte v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, v2, 0xff

    and-int/lit16 v2, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    and-int/lit16 v2, v4, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->j6()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0
.end method

.method private final yS()V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/jb;->u7:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    iget v0, p0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/jb;->EQ:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/jb;->J0:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/measurement/jb;->u7:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/jb;->u7:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/jb;->u7:I

    goto :goto_0
.end method


# virtual methods
.method public final DW()F
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->rN()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final DW(I)Z
    .registers 8

    const/4 v4, 0x4

    const/16 v5, 0xa

    const/4 v1, 0x0

    const/4 v0, 0x1

    and-int/lit8 v2, p1, 0x7

    if-eqz v2, :cond_7

    if-eq v2, v0, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    if-eq v2, v4, :cond_2

    const/4 v1, 0x5

    if-ne v2, v1, :cond_1

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/jb;->Zo(I)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->v5()Lcom/google/android/gms/internal/measurement/Nb;

    move-result-object v0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/jb;->Hw()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/jb;->DW(I)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_4
    ushr-int/lit8 v1, p1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/jb;->j6(I)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->a8()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/jb;->Zo(I)V

    goto :goto_0

    :cond_6
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/jb;->Zo(I)V

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    iget v3, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    sub-int/2addr v2, v3

    if-lt v2, v5, :cond_9

    :goto_1
    if-ge v1, v5, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/jb;->Zo:[B

    iget v3, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    aget-byte v2, v2, v3

    if-gez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->FH()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0

    :cond_9
    :goto_2
    if-ge v1, v5, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->gW()B

    move-result v2

    if-gez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->FH()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0
.end method

.method public final EQ()Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->a8()I

    move-result v1

    if-lez v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jb;->Zo:[B

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/bd;->DW([BII)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    :goto_0
    return-object v0

    :cond_0
    if-nez v1, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    if-gtz v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->DW()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->j6()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0
.end method

.method public final FH()Ljava/lang/String;
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->a8()I

    move-result v1

    if-lez v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/jb;->Zo:[B

    sget-object v4, Lcom/google/android/gms/internal/measurement/Hb;->j6:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v2, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    :goto_0
    return-object v0

    :cond_0
    if-nez v1, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->DW()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->j6()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0
.end method

.method public final Hw()I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/jb;->j3()Z

    move-result v1

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/jb;->we:I

    :cond_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->a8()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/jb;->we:I

    iget v0, p0, Lcom/google/android/gms/internal/measurement/jb;->we:I

    ushr-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/measurement/Mb;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/Mb;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final Hw(I)I
    .registers 4

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/jb;->Mr()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/jb;->J0:I

    if-gt v0, v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/jb;->J0:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->yS()V

    return v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->j6()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->DW()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0
.end method

.method public final J0()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->a8()I

    move-result v0

    return v0
.end method

.method public final J8()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->a8()I

    move-result v0

    return v0
.end method

.method public final Mr()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/jb;->EQ:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final QX()J
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->er()J

    move-result-wide v0

    return-wide v0
.end method

.method final U2()J
    .registers 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->gW()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->FH()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0
.end method

.method public final VH()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->a8()I

    move-result v0

    return v0
.end method

.method public final Ws()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->rN()I

    move-result v0

    return v0
.end method

.method public final XL()I
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->a8()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    neg-int v1, v1

    ushr-int/lit8 v0, v0, 0x1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final Zo()J
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->lg()J

    move-result-wide v0

    return-wide v0
.end method

.method public final Zo(I)V
    .registers 4

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    add-int v0, v1, p1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    return-void

    :cond_0
    if-gez p1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->DW()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->j6()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0
.end method

.method public final aM()J
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->lg()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    neg-long v2, v2

    const/4 v4, 0x1

    ushr-long/2addr v0, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public final gn()J
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->er()J

    move-result-wide v0

    return-wide v0
.end method

.method public final j3()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j6()D
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->er()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final j6(Lcom/google/android/gms/internal/measurement/wc;Lcom/google/android/gms/internal/measurement/sb;)Lcom/google/android/gms/internal/measurement/lc;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/measurement/lc;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/wc",
            "<TT;>;",
            "Lcom/google/android/gms/internal/measurement/sb;",
            ")TT;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->a8()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/hb;->j6:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/hb;->DW:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/jb;->Hw(I)I

    move-result v1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/hb;->j6:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/hb;->j6:I

    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/internal/measurement/wc;->j6(Lcom/google/android/gms/internal/measurement/hb;Lcom/google/android/gms/internal/measurement/sb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/lc;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/jb;->j6(I)V

    iget v2, p0, Lcom/google/android/gms/internal/measurement/hb;->j6:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/hb;->j6:I

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/jb;->v5(I)V

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->Zo()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0
.end method

.method public final j6(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/jb;->we:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->Hw()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0
.end method

.method public final tp()Z
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->lg()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final u7()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->rN()I

    move-result v0

    return v0
.end method

.method public final v5()J
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->lg()J

    move-result-wide v0

    return-wide v0
.end method

.method public final v5(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/jb;->J0:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->yS()V

    return-void
.end method

.method public final we()Lcom/google/android/gms/internal/measurement/Wa;
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->a8()I

    move-result v1

    if-lez v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jb;->Zo:[B

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/Wa;->j6([BII)Lcom/google/android/gms/internal/measurement/Wa;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    :goto_0
    return-object v0

    :cond_0
    if-nez v1, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/measurement/Wa;->j6:Lcom/google/android/gms/internal/measurement/Wa;

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_2

    add-int v0, v1, v2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jb;->Zo:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Wa;->j6([B)Lcom/google/android/gms/internal/measurement/Wa;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-gtz v1, :cond_4

    if-nez v1, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/measurement/Hb;->FH:[B

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->DW()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->j6()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0
.end method
