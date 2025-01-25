.class public final Lcom/google/android/gms/internal/ads/Uv;
.super Ljava/lang/Object;


# instance fields
.field private final DW:I

.field private EQ:I

.field private final FH:I

.field private Hw:I

.field private VH:I

.field private Zo:I

.field private gn:I

.field private final j6:[B

.field private tp:I

.field private u7:I

.field private v5:I

.field private we:Lcom/google/android/gms/internal/ads/Kt;


# direct methods
.method private constructor <init>([BII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/ads/Uv;->gn:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/ads/Uv;->tp:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/android/gms/internal/ads/Uv;->EQ:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Uv;->j6:[B

    iput p2, p0, Lcom/google/android/gms/internal/ads/Uv;->DW:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/ads/Uv;->Hw:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/Uv;->FH:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    return-void
.end method

.method private final EQ()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Uv;->Hw:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->v5:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Uv;->Hw:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->gn:I

    if-le v0, v1, :cond_13

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Uv;->v5:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Uv;->Hw:I

    return-void

    :cond_13
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Uv;->v5:I

    return-void
.end method

.method private final Zo(I)V
    .registers 5

    if-ltz p1, :cond_20

    iget v0, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->gn:I

    add-int v2, v0, p1

    if-gt v2, v1, :cond_17

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->Hw:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_12

    iput v2, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    return-void

    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/ads/bw;->j6()Lcom/google/android/gms/internal/ads/bw;

    move-result-object p1

    throw p1

    :cond_17
    sub-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Uv;->Zo(I)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/bw;->j6()Lcom/google/android/gms/internal/ads/bw;

    move-result-object p1

    throw p1

    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/ads/bw;->DW()Lcom/google/android/gms/internal/ads/bw;

    move-result-object p1

    throw p1
.end method

.method public static j6([BII)Lcom/google/android/gms/internal/ads/Uv;
    .registers 4

    new-instance p1, Lcom/google/android/gms/internal/ads/Uv;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/internal/ads/Uv;-><init>([BII)V

    return-object p1
.end method

.method private final we()B
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->Hw:I

    if-eq v0, v1, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Uv;->j6:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    aget-byte v0, v1, v0

    return v0

    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/ads/bw;->j6()Lcom/google/android/gms/internal/ads/bw;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method final DW(II)V
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->DW:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_28

    if-ltz p1, :cond_f

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/Uv;->VH:I

    return-void

    :cond_f
    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x18

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Bad position "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_28
    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Position "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is beyond current "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final DW(I)Z
    .registers 6

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x1

    if-eqz v0, :cond_5e

    if-eq v0, v1, :cond_45

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3d

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2a

    if-eq v0, v2, :cond_28

    const/4 p1, 0x5

    if-ne v0, p1, :cond_20

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    return v1

    :cond_20
    new-instance p1, Lcom/google/android/gms/internal/ads/bw;

    const-string v0, "Protocol message tag had invalid wire type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/bw;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_28
    const/4 p1, 0x0

    return p1

    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Uv;->DW(I)Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_36
    ushr-int/2addr p1, v3

    shl-int/2addr p1, v3

    or-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Uv;->j6(I)V

    return v1

    :cond_3d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Uv;->Zo(I)V

    return v1

    :cond_45
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    return v1

    :cond_5e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    return v1
.end method

.method public final DW()[B
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v0

    if-ltz v0, :cond_25

    if-nez v0, :cond_b

    sget-object v0, Lcom/google/android/gms/internal/ads/gw;->gn:[B

    return-object v0

    :cond_b
    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->Hw:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_20

    new-array v1, v0, [B

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Uv;->j6:[B

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    return-object v1

    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/ads/bw;->j6()Lcom/google/android/gms/internal/ads/bw;

    move-result-object v0

    throw v0

    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/ads/bw;->DW()Lcom/google/android/gms/internal/ads/bw;

    move-result-object v0

    throw v0
.end method

.method public final FH(I)I
    .registers 3

    if-ltz p1, :cond_14

    iget v0, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/Uv;->gn:I

    if-gt p1, v0, :cond_f

    iput p1, p0, Lcom/google/android/gms/internal/ads/Uv;->gn:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->EQ()V

    return v0

    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/ads/bw;->j6()Lcom/google/android/gms/internal/ads/bw;

    move-result-object p1

    throw p1

    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/ads/bw;->DW()Lcom/google/android/gms/internal/ads/bw;

    move-result-object p1

    throw p1
.end method

.method public final FH()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v0

    if-ltz v0, :cond_21

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->Hw:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1c

    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Uv;->j6:[B

    sget-object v4, Lcom/google/android/gms/internal/ads/aw;->j6:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    return-object v1

    :cond_1c
    invoke-static {}, Lcom/google/android/gms/internal/ads/bw;->j6()Lcom/google/android/gms/internal/ads/bw;

    move-result-object v0

    throw v0

    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/ads/bw;->DW()Lcom/google/android/gms/internal/ads/bw;

    move-result-object v0

    throw v0
.end method

.method public final Hw()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->Hw:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Uv;->VH:I

    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Uv;->VH:I

    if-eqz v0, :cond_13

    return v0

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/ads/bw;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/bw;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final Hw(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/Uv;->gn:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->EQ()V

    return-void
.end method

.method public final VH()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final Zo()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v0

    return v0
.end method

.method public final gn()I
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    move-result v0

    if-ltz v0, :cond_7

    return v0

    :cond_7
    and-int/lit8 v0, v0, 0x7f

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    move-result v1

    if-ltz v1, :cond_12

    shl-int/lit8 v1, v1, 0x7

    goto :goto_2d

    :cond_12
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    move-result v1

    if-ltz v1, :cond_20

    shl-int/lit8 v1, v1, 0xe

    goto :goto_2d

    :cond_20
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    move-result v1

    if-ltz v1, :cond_2f

    shl-int/lit8 v1, v1, 0x15

    :goto_2d
    or-int/2addr v0, v1

    goto :goto_50

    :cond_2f
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    move-result v2

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x1c

    or-int/2addr v0, v1

    if-gez v2, :cond_50

    const/4 v1, 0x0

    :goto_3e
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4b

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    move-result v2

    if-ltz v2, :cond_48

    return v0

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_4b
    invoke-static {}, Lcom/google/android/gms/internal/ads/bw;->FH()Lcom/google/android/gms/internal/ads/bw;

    move-result-object v0

    throw v0

    :cond_50
    :goto_50
    return v0
.end method

.method public final j6()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->DW:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Zu;)Lcom/google/android/gms/internal/ads/hu;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/hu<",
            "TT;*>;>(",
            "Lcom/google/android/gms/internal/ads/Zu<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uv;->we:Lcom/google/android/gms/internal/ads/Kt;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uv;->j6:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->DW:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/Uv;->FH:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Kt;->j6([BII)Lcom/google/android/gms/internal/ads/Kt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Uv;->we:Lcom/google/android/gms/internal/ads/Kt;

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uv;->we:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/Uv;->DW:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_3f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Uv;->we:Lcom/google/android/gms/internal/ads/Kt;

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/Kt;->Zo(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uv;->we:Lcom/google/android/gms/internal/ads/Kt;

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->tp:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/Uv;->u7:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Kt;->FH(I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uv;->we:Lcom/google/android/gms/internal/ads/Kt;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Ut;->FH()Lcom/google/android/gms/internal/ads/Ut;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Kt;->j6(Lcom/google/android/gms/internal/ads/Zu;Lcom/google/android/gms/internal/ads/Ut;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/hu;

    iget v0, p0, Lcom/google/android/gms/internal/ads/Uv;->VH:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Uv;->DW(I)Z

    return-object p1

    :cond_3f
    new-instance p1, Ljava/io/IOException;

    const-string v2, "CodedInputStream read ahead of CodedInputByteBufferNano: %s > %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5c
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_0 .. :try_end_5c} :catch_5c

    :catch_5c
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/bw;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/bw;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public final j6(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Uv;->VH:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/bw;

    const-string v0, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/bw;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/cw;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->u7:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/Uv;->tp:I

    if-ge v1, v2, :cond_25

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Uv;->FH(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->u7:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Uv;->u7:I

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/cw;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Uv;->j6(I)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/Uv;->u7:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/Uv;->u7:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Uv;->Hw(I)V

    return-void

    :cond_25
    new-instance p1, Lcom/google/android/gms/internal/ads/bw;

    const-string v0, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/bw;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6(II)[B
    .registers 6

    if-nez p2, :cond_5

    sget-object p1, Lcom/google/android/gms/internal/ads/gw;->gn:[B

    return-object p1

    :cond_5
    new-array v0, p2, [B

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->DW:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Uv;->j6:[B

    add-int/2addr v1, p1

    const/4 p1, 0x0

    invoke-static {v2, v1, v0, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final tp()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Uv;->gn:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    const/4 v0, -0x1

    return v0

    :cond_9
    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final u7()J
    .registers 7

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v0, v3, :cond_18

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v1

    :cond_15
    add-int/lit8 v0, v0, 0x7

    goto :goto_3

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/ads/bw;->FH()Lcom/google/android/gms/internal/ads/bw;

    move-result-object v0

    goto :goto_1e

    :goto_1d
    throw v0

    :goto_1e
    goto :goto_1d
.end method

.method public final v5()J
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Uv;->u7()J

    move-result-wide v0

    return-wide v0
.end method

.method public final v5(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Uv;->VH:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Uv;->DW(II)V

    return-void
.end method
