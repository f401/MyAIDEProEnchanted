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

    add-int v0, p3, p2

    iput v0, p0, Lcom/google/android/gms/internal/ads/Uv;->Hw:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/Uv;->FH:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    return-void
.end method

.method private final EQ()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Uv;->Hw:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->v5:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Uv;->Hw:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/Uv;->Hw:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->gn:I

    if-le v0, v1, :cond_0

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Uv;->v5:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->v5:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Uv;->Hw:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Uv;->v5:I

    goto :goto_0
.end method

.method private final Zo(I)V
    .registers 5

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->gn:I

    add-int v2, v0, p1

    if-gt v2, v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->Hw:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/bw;->j6()Lcom/google/android/gms/internal/ads/bw;

    move-result-object v0

    throw v0

    :cond_1
    sub-int v0, v1, v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Uv;->Zo(I)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/bw;->j6()Lcom/google/android/gms/internal/ads/bw;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/bw;->DW()Lcom/google/android/gms/internal/ads/bw;

    move-result-object v0

    throw v0
.end method

.method public static j6([BII)Lcom/google/android/gms/internal/ads/Uv;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/Uv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Lcom/google/android/gms/internal/ads/Uv;-><init>([BII)V

    return-object v0
.end method

.method private final we()B
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->Hw:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Uv;->j6:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    aget-byte v0, v1, v0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/bw;->j6()Lcom/google/android/gms/internal/ads/bw;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method final DW(II)V
    .registers 7

    iget v0, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->DW:I

    sub-int v2, v0, v1

    if-gt p1, v2, :cond_1

    if-ltz p1, :cond_0

    add-int v0, v1, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/Uv;->VH:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Bad position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is beyond current "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final DW(I)Z
    .registers 5

    const/4 v0, 0x1

    and-int/lit8 v1, p1, 0x7

    if-eqz v1, :cond_6

    if-eq v1, v0, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/bw;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/bw;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/Uv;->DW(I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_3
    ushr-int/lit8 v1, p1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/Uv;->j6(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Uv;->Zo(I)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    goto :goto_0
.end method

.method public final DW()[B
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v1

    if-ltz v1, :cond_2

    if-nez v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/gw;->gn:[B

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/Uv;->Hw:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_1

    new-array v0, v1, [B

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Uv;->j6:[B

    const/4 v4, 0x0

    invoke-static {v3, v2, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/bw;->j6()Lcom/google/android/gms/internal/ads/bw;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/bw;->DW()Lcom/google/android/gms/internal/ads/bw;

    move-result-object v0

    throw v0
.end method

.method public final FH(I)I
    .registers 4

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->gn:I

    if-gt v0, v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Uv;->gn:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->EQ()V

    return v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/bw;->j6()Lcom/google/android/gms/internal/ads/bw;

    move-result-object v0

    throw v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/bw;->DW()Lcom/google/android/gms/internal/ads/bw;

    move-result-object v0

    throw v0
.end method

.method public final FH()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v0

    if-ltz v0, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->Hw:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Uv;->j6:[B

    sget-object v4, Lcom/google/android/gms/internal/ads/aw;->j6:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    return-object v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/bw;->j6()Lcom/google/android/gms/internal/ads/bw;

    move-result-object v0

    throw v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/bw;->DW()Lcom/google/android/gms/internal/ads/bw;

    move-result-object v0

    throw v0
.end method

.method public final Hw()I
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/Uv;->Hw:I

    if-ne v1, v2, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Uv;->VH:I

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Uv;->VH:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/Uv;->VH:I

    if-nez v0, :cond_0

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

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    if-ltz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v1, v0, 0x7f

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    move-result v0

    if-ltz v0, :cond_2

    shl-int/lit8 v0, v0, 0x7

    :goto_1
    or-int/2addr v0, v1

    goto :goto_0

    :cond_2
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x7

    or-int/2addr v1, v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    move-result v0

    if-ltz v0, :cond_3

    shl-int/lit8 v0, v0, 0xe

    goto :goto_1

    :cond_3
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr v1, v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    move-result v0

    if-ltz v0, :cond_4

    shl-int/lit8 v0, v0, 0x15

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    move-result v2

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x15

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x1c

    or-int/2addr v0, v1

    if-gez v2, :cond_0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

    move-result v2

    if-gez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/bw;->FH()Lcom/google/android/gms/internal/ads/bw;

    move-result-object v0

    throw v0
.end method

.method public final j6()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->DW:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Zu;)Lcom/google/android/gms/internal/ads/hu;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/hu",
            "<TT;*>;>(",
            "Lcom/google/android/gms/internal/ads/Zu",
            "<TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uv;->we:Lcom/google/android/gms/internal/ads/Kt;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uv;->j6:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->DW:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/Uv;->FH:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Kt;->j6([BII)Lcom/google/android/gms/internal/ads/Kt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Uv;->we:Lcom/google/android/gms/internal/ads/Kt;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uv;->we:Lcom/google/android/gms/internal/ads/Kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kt;->Mr()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/Uv;->DW:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Uv;->we:Lcom/google/android/gms/internal/ads/Kt;

    sub-int v0, v1, v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/Kt;->Zo(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uv;->we:Lcom/google/android/gms/internal/ads/Kt;

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->tp:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/Uv;->u7:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Kt;->FH(I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Uv;->we:Lcom/google/android/gms/internal/ads/Kt;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Ut;->FH()Lcom/google/android/gms/internal/ads/Ut;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Kt;->j6(Lcom/google/android/gms/internal/ads/Zu;Lcom/google/android/gms/internal/ads/Ut;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hu;

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->VH:I

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/Uv;->DW(I)Z

    return-object v0

    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "CodedInputStream read ahead of CodedInputByteBufferNano: %s > %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/ads/bw;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/bw;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public final j6(I)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/Uv;->VH:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/bw;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/bw;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/cw;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Uv;->gn()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->u7:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/Uv;->tp:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Uv;->FH(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->u7:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Uv;->u7:I

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/Uv;)Lcom/google/android/gms/internal/ads/cw;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/Uv;->j6(I)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->u7:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Uv;->u7:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Uv;->Hw(I)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/bw;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/bw;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j6(II)[B
    .registers 7

    if-nez p2, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/gw;->gn:[B

    :goto_0
    return-object v0

    :cond_0
    new-array v0, p2, [B

    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->DW:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Uv;->j6:[B

    add-int/2addr v1, p1

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public final tp()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Uv;->gn:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/Uv;->Zo:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public final u7()J
    .registers 7

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Uv;->we()B

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
    invoke-static {}, Lcom/google/android/gms/internal/ads/bw;->FH()Lcom/google/android/gms/internal/ads/bw;

    move-result-object v0

    throw v0
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
