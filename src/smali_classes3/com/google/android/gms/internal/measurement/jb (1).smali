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

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    iput p2, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    iput p2, p0, Lcom/google/android/gms/internal/measurement/jb;->EQ:I

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

    if-eq v1, v0, :cond_6b

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/jb;->Zo:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_11

    iput v3, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    return v0

    :cond_11
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_6b

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_22

    xor-int/lit8 v0, v0, -0x80

    goto :goto_68

    :cond_22
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_2f

    xor-int/lit16 v0, v0, 0x3f80

    :cond_2d
    move v1, v3

    goto :goto_68

    :cond_2f
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_3d

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_68

    :cond_3d
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_2d

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_68

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2d

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_68

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2d

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-ltz v2, :cond_6b

    :cond_68
    :goto_68
    iput v1, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    return v0

    :cond_6b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/jb;->U2()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method private final er()J
    .registers 22

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    iget v2, v0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    sub-int/2addr v2, v1

    const/16 v3, 0x8

    if-lt v2, v3, :cond_68

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/jb;->Zo:[B

    add-int/lit8 v4, v1, 0x8

    iput v4, v0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    aget-byte v4, v2, v1

    int-to-long v4, v4

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, v2, v6

    int-to-long v6, v6

    add-int/lit8 v8, v1, 0x2

    aget-byte v8, v2, v8

    int-to-long v8, v8

    add-int/lit8 v10, v1, 0x3

    aget-byte v10, v2, v10

    int-to-long v10, v10

    add-int/lit8 v12, v1, 0x4

    aget-byte v12, v2, v12

    int-to-long v12, v12

    add-int/lit8 v14, v1, 0x5

    aget-byte v14, v2, v14

    int-to-long v14, v14

    add-int/lit8 v16, v1, 0x6

    aget-byte v3, v2, v16

    move-wide/from16 v17, v14

    int-to-long v14, v3

    add-int/lit8 v1, v1, 0x7

    aget-byte v1, v2, v1

    int-to-long v1, v1

    const-wide/16 v19, 0xff

    and-long v1, v1, v19

    const/16 v3, 0x38

    shl-long/2addr v1, v3

    and-long v4, v4, v19

    and-long v6, v6, v19

    const/16 v3, 0x8

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    and-long v6, v8, v19

    const/16 v3, 0x10

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    and-long v6, v10, v19

    const/16 v3, 0x18

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    and-long v6, v12, v19

    const/16 v3, 0x20

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    and-long v6, v17, v19

    const/16 v3, 0x28

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    and-long v6, v14, v19

    const/16 v3, 0x30

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    or-long/2addr v1, v4

    return-wide v1

    :cond_68
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->j6()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v1

    throw v1
.end method

.method private final gW()B
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    if-eq v0, v1, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jb;->Zo:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    aget-byte v0, v1, v0

    return v0

    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->j6()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0
.end method

.method private final lg()J
    .registers 12

    iget v0, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    if-eq v1, v0, :cond_b9

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/jb;->Zo:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_12

    iput v3, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    int-to-long v0, v0

    return-wide v0

    :cond_12
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_b9

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_23

    xor-int/lit8 v0, v0, -0x80

    goto :goto_3e

    :cond_23
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_31

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    goto/16 :goto_b6

    :cond_31
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_44

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    :goto_3e
    int-to-long v2, v0

    move-wide v9, v2

    :goto_40
    move v3, v1

    :goto_41
    move-wide v0, v9

    goto/16 :goto_b6

    :cond_44
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_58

    const-wide/32 v1, 0xfe03f80

    goto :goto_7d

    :cond_58
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_6b

    const-wide v5, -0x7f01fc080L

    goto :goto_93

    :cond_6b
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_81

    const-wide v1, 0x3f80fe03f80L

    :goto_7d
    xor-long/2addr v1, v3

    move v3, v0

    move-wide v0, v1

    goto :goto_b6

    :cond_81
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_96

    const-wide v5, -0x1fc07f01fc080L

    :goto_93
    xor-long/2addr v3, v5

    :goto_94
    move-wide v9, v3

    goto :goto_40

    :cond_96
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_b3

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-ltz v0, :cond_b9

    goto :goto_94

    :cond_b3
    move-wide v9, v3

    move v3, v0

    goto :goto_41

    :goto_b6
    iput v3, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    return-wide v0

    :cond_b9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/jb;->U2()J

    move-result-wide v0

    return-wide v0
.end method

.method private final rN()I
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2e

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

    :cond_2e
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

    iget v1, p0, Lcom/google/android/gms/internal/measurement/jb;->EQ:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/jb;->J0:I

    if-le v1, v2, :cond_16

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/measurement/jb;->u7:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    return-void

    :cond_16
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/jb;->u7:I

    return-void
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
    .registers 7

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3f

    if-eq v0, v1, :cond_39

    const/4 v3, 0x2

    if-eq v0, v3, :cond_31

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1e

    if-eq v0, v3, :cond_1d

    const/4 p1, 0x5

    if-ne v0, p1, :cond_18

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/jb;->Zo(I)V

    return v1

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->v5()Lcom/google/android/gms/internal/measurement/Nb;

    move-result-object p1

    throw p1

    :cond_1d
    return v2

    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/jb;->Hw()I

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/jb;->DW(I)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_2a
    ushr-int/2addr p1, v4

    shl-int/2addr p1, v4

    or-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/jb;->j6(I)V

    return v1

    :cond_31
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->a8()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/jb;->Zo(I)V

    return v1

    :cond_39
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/jb;->Zo(I)V

    return v1

    :cond_3f
    iget p1, p0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    iget v0, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    sub-int/2addr p1, v0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_5e

    :goto_48
    if-ge v2, v0, :cond_59

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/jb;->Zo:[B

    iget v3, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    aget-byte p1, p1, v3

    if-gez p1, :cond_69

    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    :cond_59
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->FH()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object p1

    throw p1

    :cond_5e
    :goto_5e
    if-ge v2, v0, :cond_6a

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->gW()B

    move-result p1

    if-gez p1, :cond_69

    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    :cond_69
    return v1

    :cond_6a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->FH()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object p1

    goto :goto_70

    :goto_6f
    throw p1

    :goto_70
    goto :goto_6f
.end method

.method public final EQ()Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->a8()I

    move-result v0

    if-lez v0, :cond_19

    iget v1, p0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jb;->Zo:[B

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/bd;->DW([BII)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    return-object v1

    :cond_19
    if-nez v0, :cond_1e

    const-string v0, ""

    return-object v0

    :cond_1e
    if-gtz v0, :cond_25

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->DW()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0

    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->j6()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0
.end method

.method public final FH()Ljava/lang/String;
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->a8()I

    move-result v0

    if-lez v0, :cond_1c

    iget v1, p0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1c

    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/jb;->Zo:[B

    sget-object v4, Lcom/google/android/gms/internal/measurement/Hb;->j6:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    return-object v1

    :cond_1c
    if-nez v0, :cond_21

    const-string v0, ""

    return-object v0

    :cond_21
    if-gez v0, :cond_28

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->DW()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0

    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->j6()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0
.end method

.method public final Hw()I
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/jb;->j3()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/jb;->we:I

    return v0

    :cond_a
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->a8()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/jb;->we:I

    ushr-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_15

    return v0

    :cond_15
    new-instance v0, Lcom/google/android/gms/internal/measurement/Mb;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/Mb;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final Hw(I)I
    .registers 3

    if-ltz p1, :cond_16

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/jb;->Mr()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/jb;->J0:I

    if-gt p1, v0, :cond_11

    iput p1, p0, Lcom/google/android/gms/internal/measurement/jb;->J0:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->yS()V

    return v0

    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->j6()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object p1

    throw p1

    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->DW()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object p1

    throw p1
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

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->gW()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v0

    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->FH()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    goto :goto_1e

    :goto_1d
    throw v0

    :goto_1e
    goto :goto_1d
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

    if-ltz p1, :cond_d

    iget v0, p0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_d

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    return-void

    :cond_d
    if-gez p1, :cond_14

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->DW()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object p1

    throw p1

    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->j6()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object p1

    throw p1
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

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
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
            "Lcom/google/android/gms/internal/measurement/wc<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/sb;",
            ")TT;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->a8()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/hb;->j6:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/hb;->DW:I

    if-ge v1, v2, :cond_28

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/jb;->Hw(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/hb;->j6:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/hb;->j6:I

    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/internal/measurement/wc;->j6(Lcom/google/android/gms/internal/measurement/hb;Lcom/google/android/gms/internal/measurement/sb;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/lc;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/jb;->j6(I)V

    iget p2, p0, Lcom/google/android/gms/internal/measurement/hb;->j6:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/android/gms/internal/measurement/hb;->j6:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/jb;->v5(I)V

    return-object p1

    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->Zo()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object p1

    throw p1
.end method

.method public final j6(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/jb;->we:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->Hw()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object p1

    throw p1
.end method

.method public final tp()Z
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/jb;->lg()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
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

    move-result v0

    if-lez v0, :cond_19

    iget v1, p0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jb;->Zo:[B

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/Wa;->j6([BII)Lcom/google/android/gms/internal/measurement/Wa;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    return-object v1

    :cond_19
    if-nez v0, :cond_1e

    sget-object v0, Lcom/google/android/gms/internal/measurement/Wa;->j6:Lcom/google/android/gms/internal/measurement/Wa;

    return-object v0

    :cond_1e
    if-lez v0, :cond_31

    iget v1, p0, Lcom/google/android/gms/internal/measurement/jb;->gn:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_31

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/jb;->tp:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jb;->Zo:[B

    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_37

    :cond_31
    if-gtz v0, :cond_41

    if-nez v0, :cond_3c

    sget-object v0, Lcom/google/android/gms/internal/measurement/Hb;->FH:[B

    :goto_37
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Wa;->j6([B)Lcom/google/android/gms/internal/measurement/Wa;

    move-result-object v0

    return-object v0

    :cond_3c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->DW()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0

    :cond_41
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Mb;->j6()Lcom/google/android/gms/internal/measurement/Mb;

    move-result-object v0

    throw v0
.end method
