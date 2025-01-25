.class final Lcom/google/android/gms/internal/ads/Ot$d;
.super Lcom/google/android/gms/internal/ads/Ot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/Ot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field private final Hw:Ljava/nio/ByteBuffer;

.field private final Zo:I

.field private final v5:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Ot;-><init>(Lcom/google/android/gms/internal/ads/Pt;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ot$d;->Hw:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/Ot$d;->Zo:I

    return-void
.end method

.method private final FH(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$d;->v5:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Gv;->j6(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/Ot$c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public final DW(I)V
    .registers 4

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_b

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$d;->v5:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$d;->v5:Ljava/nio/ByteBuffer;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_15
    .catch Ljava/nio/BufferOverflowException; {:try_start_4 .. :try_end_15} :catch_18

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :catch_18
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/Ot$c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/Throwable;)V

    goto :goto_20

    :goto_1f
    throw v0

    :goto_20
    goto :goto_1f
.end method

.method public final DW(ILcom/google/android/gms/internal/ads/Pu;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Ot$d;->Zo(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/ads/Ot$d;->gn(II)V

    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/ads/Ot$d;->j6(ILcom/google/android/gms/internal/ads/Pu;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/Ot$d;->Zo(II)V

    return-void
.end method

.method public final DW(ILcom/google/android/gms/internal/ads/yt;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Ot$d;->Zo(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/ads/Ot$d;->gn(II)V

    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/ads/Ot$d;->j6(ILcom/google/android/gms/internal/ads/yt;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/Ot$d;->Zo(II)V

    return-void
.end method

.method final DW(Lcom/google/android/gms/internal/ads/Pu;Lcom/google/android/gms/internal/ads/fv;)V
    .registers 6

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/pt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pt;->gn()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/fv;->DW(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/pt;->j6(I)V

    :cond_11
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/Ot$d;->DW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot;->FH:Lcom/google/android/gms/internal/ads/Qt;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/ads/fv;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V

    return-void
.end method

.method public final DW(Lcom/google/android/gms/internal/ads/yt;)V
    .registers 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yt;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Ot$d;->DW(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/yt;->j6(Lcom/google/android/gms/internal/ads/xt;)V

    return-void
.end method

.method public final DW(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :try_start_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v2

    if-ne v2, v1, :cond_3f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ot$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ot$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Ot$d;->FH(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ot$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ot$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/Ot$d;->DW(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ot$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_3f
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Gv;->j6(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/Ot$d;->DW(I)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Ot$d;->FH(Ljava/lang/String;)V
    :try_end_49
    .catch Lcom/google/android/gms/internal/ads/Kv; {:try_start_6 .. :try_end_49} :catch_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_49} :catch_4a

    return-void

    :catch_4a
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/Ot$c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_51
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ot$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/Ot;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Kv;)V

    return-void
.end method

.method public final DW([BII)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/Ot$c;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_d
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/Ot$c;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final FH(IJ)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$d;->Zo(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/Ot$d;->FH(J)V

    return-void
.end method

.method public final FH(J)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/Ot$c;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final FH(Lcom/google/android/gms/internal/ads/Pu;)V
    .registers 3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Pu;->Hw()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Ot$d;->DW(I)V

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/Pu;->j6(Lcom/google/android/gms/internal/ads/Ot;)V

    return-void
.end method

.method public final Hw(I)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/Ot$c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final VH(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$d;->Zo(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/Ot$d;->j6(I)V

    return-void
.end method

.method public final Zo(II)V
    .registers 3

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Ot$d;->DW(I)V

    return-void
.end method

.method public final gn(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$d;->Zo(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/Ot$d;->DW(I)V

    return-void
.end method

.method public final j6()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$d;->Hw:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ot$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final j6(B)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/Ot$c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final j6(I)V
    .registers 4

    if-ltz p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Ot$d;->DW(I)V

    return-void

    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Ot$d;->j6(J)V

    return-void
.end method

.method public final j6(IJ)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$d;->Zo(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/Ot$d;->j6(J)V

    return-void
.end method

.method public final j6(ILcom/google/android/gms/internal/ads/Pu;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$d;->Zo(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/Ot$d;->FH(Lcom/google/android/gms/internal/ads/Pu;)V

    return-void
.end method

.method final j6(ILcom/google/android/gms/internal/ads/Pu;Lcom/google/android/gms/internal/ads/fv;)V
    .registers 5

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$d;->Zo(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/Ot$d;->DW(Lcom/google/android/gms/internal/ads/Pu;Lcom/google/android/gms/internal/ads/fv;)V

    return-void
.end method

.method public final j6(ILcom/google/android/gms/internal/ads/yt;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$d;->Zo(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/Ot$d;->DW(Lcom/google/android/gms/internal/ads/yt;)V

    return-void
.end method

.method public final j6(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$d;->Zo(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/Ot$d;->DW(Ljava/lang/String;)V

    return-void
.end method

.method public final j6(IZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$d;->Zo(II)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Ot$d;->j6(B)V

    return-void
.end method

.method public final j6(J)V
    .registers 8

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$d;->v5:Ljava/nio/ByteBuffer;

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$d;->v5:Ljava/nio/ByteBuffer;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_1c
    .catch Ljava/nio/BufferOverflowException; {:try_start_9 .. :try_end_1c} :catch_1f

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :catch_1f
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/Ot$c;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/Throwable;)V

    goto :goto_27

    :goto_26
    throw p2

    :goto_27
    goto :goto_26
.end method

.method public final j6([BII)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Ot$d;->DW([BII)V

    return-void
.end method

.method public final tp(II)V
    .registers 4

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$d;->Zo(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/Ot$d;->Hw(I)V

    return-void
.end method
