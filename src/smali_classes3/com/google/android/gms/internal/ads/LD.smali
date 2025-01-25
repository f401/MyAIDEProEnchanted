.class public final Lcom/google/android/gms/internal/ads/LD;
.super Ljava/lang/Object;


# instance fields
.field private DW:I

.field private FH:I

.field public j6:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    iput p1, p0, Lcom/google/android/gms/internal/ads/LD;->FH:I

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/LD;->FH:I

    return-void
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    return v0
.end method

.method public final DW(I)V
    .registers 3

    if-ltz p1, :cond_8

    iget v0, p0, Lcom/google/android/gms/internal/ads/LD;->FH:I

    if-gt p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    return-void
.end method

.method public final EQ()I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    aget-byte v1, v0, v1

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final FH()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/LD;->FH:I

    return v0
.end method

.method public final FH(I)V
    .registers 3

    if-ltz p1, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    array-length v0, v0

    if-gt p1, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/LD;->FH:I

    return-void
.end method

.method public final Hw()I
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    aget-byte v1, v0, v1

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    aget-byte v2, v0, v2

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    aget-byte v3, v0, v3

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    and-int/lit16 v2, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public final Hw(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    return-void
.end method

.method public final J0()J
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    aget-byte v2, v0, v2

    int-to-long v5, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    const-wide/16 v9, 0xff

    and-long/2addr v3, v9

    and-long/2addr v5, v9

    const/16 v1, 0x8

    shl-long/2addr v5, v1

    or-long/2addr v3, v5

    and-long v5, v7, v9

    const/16 v1, 0x10

    shl-long/2addr v5, v1

    or-long/2addr v3, v5

    aget-byte v0, v0, v2

    int-to-long v0, v0

    and-long/2addr v0, v9

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public final J8()I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    aget-byte v1, v0, v1

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    aget-byte v0, v0, v2

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public final QX()J
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->v5()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_b

    return-wide v0

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x26

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Top bit not zero: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final VH()I
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final Ws()I
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v0

    if-ltz v0, :cond_7

    return v0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Top bit not zero: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final XL()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->tp()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    :goto_a
    iget v1, p0, Lcom/google/android/gms/internal/ads/LD;->FH:I

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_17

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    new-instance v3, Ljava/lang/String;

    sub-int v4, v0, v2

    invoke-direct {v3, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    iput v0, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/LD;->FH:I

    if-ge v0, v1, :cond_2c

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    :cond_2c
    return-object v3
.end method

.method public final Zo()S
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    aget-byte v1, v0, v1

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public final gn()I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    aget-byte v1, v0, v1

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public final j6()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    array-length v0, v0

    return v0
.end method

.method public final j6(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->j6()I

    move-result v0

    if-ge v0, p1, :cond_9

    new-array v0, p1, [B

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    :goto_b
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/LD;->j6([BI)V

    return-void
.end method

.method public final j6([BI)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    iput p2, p0, Lcom/google/android/gms/internal/ads/LD;->FH:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    return-void
.end method

.method public final j6([BII)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    return-void
.end method

.method public final tp()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/LD;->FH:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final u7()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/LD;->FH:I

    return-void
.end method

.method public final v5()J
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    iget v2, v0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    aget-byte v2, v1, v2

    int-to-long v4, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, v0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    aget-byte v3, v1, v3

    int-to-long v6, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    aget-byte v2, v1, v2

    int-to-long v8, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, v0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    aget-byte v3, v1, v3

    int-to-long v10, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    aget-byte v2, v1, v2

    int-to-long v12, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, v0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    aget-byte v3, v1, v3

    int-to-long v14, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    aget-byte v2, v1, v2

    move-object/from16 v16, v1

    int-to-long v1, v2

    move-wide/from16 v17, v1

    add-int/lit8 v1, v3, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    const-wide/16 v1, 0xff

    and-long/2addr v4, v1

    const/16 v19, 0x38

    shl-long v4, v4, v19

    and-long/2addr v6, v1

    const/16 v19, 0x30

    shl-long v6, v6, v19

    or-long/2addr v4, v6

    and-long v6, v8, v1

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    and-long v6, v10, v1

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    and-long v6, v12, v1

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    and-long v6, v14, v1

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    and-long v6, v17, v1

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    aget-byte v3, v16, v3

    int-to-long v6, v3

    and-long/2addr v1, v6

    or-long/2addr v1, v4

    return-wide v1
.end method

.method public final v5(I)Ljava/lang/String;
    .registers 6

    if-nez p1, :cond_5

    const-string p1, ""

    return-object p1

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    add-int v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/google/android/gms/internal/ads/LD;->FH:I

    if-ge v1, v2, :cond_18

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    aget-byte v1, v2, v1

    if-nez v1, :cond_18

    add-int/lit8 v1, p1, -0x1

    goto :goto_19

    :cond_18
    move v1, p1

    :goto_19
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([BII)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    return-object v2
.end method

.method public final we()J
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    aget-byte v2, v0, v2

    int-to-long v5, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/LD;->DW:I

    const-wide/16 v9, 0xff

    and-long/2addr v3, v9

    const/16 v1, 0x18

    shl-long/2addr v3, v1

    and-long/2addr v5, v9

    const/16 v1, 0x10

    shl-long/2addr v5, v1

    or-long/2addr v3, v5

    and-long v5, v7, v9

    const/16 v1, 0x8

    shl-long/2addr v5, v1

    or-long/2addr v3, v5

    aget-byte v0, v0, v2

    int-to-long v0, v0

    and-long/2addr v0, v9

    or-long/2addr v0, v3

    return-wide v0
.end method
