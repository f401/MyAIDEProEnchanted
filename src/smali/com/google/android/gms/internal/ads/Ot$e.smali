.class final Lcom/google/android/gms/internal/ads/Ot$e;
.super Lcom/google/android/gms/internal/ads/Ot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/Ot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field private final Hw:Ljava/nio/ByteBuffer;

.field private final VH:J

.field private final Zo:J

.field private final gn:J

.field private tp:J

.field private final u7:J

.field private final v5:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Ot;-><init>(Lcom/google/android/gms/internal/ads/Pt;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ot$e;->Hw:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->v5:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->Zo:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->Zo:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->VH:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->Zo:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->gn:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->gn:J

    const-wide/16 v2, 0xa

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->u7:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->VH:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    return-void
.end method

.method private final u7(J)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->v5:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->Zo:J

    sub-long v2, p1, v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public final DW()I
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->gn:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final DW(I)V
    .registers 9

    const/4 v6, 0x1

    const-wide/16 v4, 0x1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->u7:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    add-long v2, v4, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    int-to-byte v2, p1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Ev;->j6(JB)V

    :goto_1
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    add-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Ev;->j6(JB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    add-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Ev;->j6(JB)V

    ushr-int/lit8 p1, p1, 0x7

    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->gn:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    and-int/lit8 v2, p1, -0x80

    if-nez v2, :cond_1

    add-long v2, v4, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    int-to-byte v2, p1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Ev;->j6(JB)V

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/ads/Ot$c;

    const-string v3, "Pos: %d, limit: %d, len: %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->gn:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v0, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final DW(ILcom/google/android/gms/internal/ads/Pu;)V
    .registers 6

    const/4 v2, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/Ot$e;->Zo(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/Ot$e;->gn(II)V

    invoke-virtual {p0, v2, p2}, Lcom/google/android/gms/internal/ads/Ot$e;->j6(ILcom/google/android/gms/internal/ads/Pu;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/Ot$e;->Zo(II)V

    return-void
.end method

.method public final DW(ILcom/google/android/gms/internal/ads/yt;)V
    .registers 6

    const/4 v2, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/Ot$e;->Zo(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/Ot$e;->gn(II)V

    invoke-virtual {p0, v2, p2}, Lcom/google/android/gms/internal/ads/Ot$e;->j6(ILcom/google/android/gms/internal/ads/yt;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/Ot$e;->Zo(II)V

    return-void
.end method

.method final DW(Lcom/google/android/gms/internal/ads/Pu;Lcom/google/android/gms/internal/ads/fv;)V
    .registers 6

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/pt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pt;->gn()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/fv;->DW(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/pt;->j6(I)V

    :cond_0
    move v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Ot$e;->DW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot;->FH:Lcom/google/android/gms/internal/ads/Qt;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/ads/fv;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Tv;)V

    return-void
.end method

.method public final DW(Lcom/google/android/gms/internal/ads/yt;)V
    .registers 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yt;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Ot$e;->DW(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/yt;->j6(Lcom/google/android/gms/internal/ads/xt;)V

    return-void
.end method

.method public final DW(Ljava/lang/String;)V
    .registers 10

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/Ot$e;->Zo:J

    sub-long/2addr v4, v6

    long-to-int v0, v4

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ot$e;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ot$e;->v5:Ljava/nio/ByteBuffer;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/Gv;->j6(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ot$e;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Ot$e;->DW(I)V

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    int-to-long v0, v0

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Gv;->j6(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Ot$e;->DW(I)V

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/internal/ads/Ot$e;->u7(J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ot$e;->v5:Ljava/nio/ByteBuffer;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/Gv;->j6(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    int-to-long v0, v0

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/Kv; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/Ot$e;->u7(J)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Kv;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/ads/Ot$c;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/ads/Ot$c;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final DW([BII)V
    .registers 12

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->gn:J

    int-to-long v6, p3

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    sub-long/2addr v0, v6

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    int-to-long v2, p2

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/Ev;->j6([BJJJ)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    return-void

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/Ot$c;

    const-string v1, "Pos: %d, limit: %d, len: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Ot$e;->gn:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final FH(IJ)V
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$e;->Zo(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/Ot$e;->FH(J)V

    return-void
.end method

.method public final FH(J)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->v5:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Ot$e;->Zo:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    return-void
.end method

.method public final FH(Lcom/google/android/gms/internal/ads/Pu;)V
    .registers 3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Pu;->Hw()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Ot$e;->DW(I)V

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/Pu;->j6(Lcom/google/android/gms/internal/ads/Ot;)V

    return-void
.end method

.method public final Hw(I)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->v5:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Ot$e;->Zo:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    return-void
.end method

.method public final VH(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$e;->Zo(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/Ot$e;->j6(I)V

    return-void
.end method

.method public final Zo(II)V
    .registers 4

    shl-int/lit8 v0, p1, 0x3

    or-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Ot$e;->DW(I)V

    return-void
.end method

.method public final gn(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$e;->Zo(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/Ot$e;->DW(I)V

    return-void
.end method

.method public final j6()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->Hw:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Ot$e;->Zo:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final j6(B)V
    .registers 9

    const/4 v6, 0x1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->gn:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Ev;->j6(JB)V

    return-void

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/Ot$c;

    const-string v3, "Pos: %d, limit: %d, len: %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->gn:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v0, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final j6(I)V
    .registers 4

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Ot$e;->DW(I)V

    :goto_0
    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Ot$e;->j6(J)V

    goto :goto_0
.end method

.method public final j6(IJ)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$e;->Zo(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/Ot$e;->j6(J)V

    return-void
.end method

.method public final j6(ILcom/google/android/gms/internal/ads/Pu;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$e;->Zo(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/Ot$e;->FH(Lcom/google/android/gms/internal/ads/Pu;)V

    return-void
.end method

.method final j6(ILcom/google/android/gms/internal/ads/Pu;Lcom/google/android/gms/internal/ads/fv;)V
    .registers 5

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$e;->Zo(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/Ot$e;->DW(Lcom/google/android/gms/internal/ads/Pu;Lcom/google/android/gms/internal/ads/fv;)V

    return-void
.end method

.method public final j6(ILcom/google/android/gms/internal/ads/yt;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$e;->Zo(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/Ot$e;->DW(Lcom/google/android/gms/internal/ads/yt;)V

    return-void
.end method

.method public final j6(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$e;->Zo(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/Ot$e;->DW(Ljava/lang/String;)V

    return-void
.end method

.method public final j6(IZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$e;->Zo(II)V

    int-to-byte v0, p2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Ot$e;->j6(B)V

    return-void
.end method

.method public final j6(J)V
    .registers 16

    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x80

    const/4 v7, 0x7

    const/4 v6, 0x1

    const-wide/16 v4, 0x1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->u7:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    :goto_0
    and-long v0, p1, v8

    cmp-long v0, v0, v10

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    add-long v2, v4, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    long-to-int v2, p1

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Ev;->j6(JB)V

    :goto_1
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    add-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Ev;->j6(JB)V

    ushr-long/2addr p1, v7

    goto :goto_0

    :cond_1
    add-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Ev;->j6(JB)V

    ushr-long/2addr p1, v7

    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->gn:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    and-long v2, p1, v8

    cmp-long v2, v2, v10

    if-nez v2, :cond_1

    add-long v2, v4, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    long-to-int v2, p1

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Ev;->j6(JB)V

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/ads/Ot$c;

    const-string v3, "Pos: %d, limit: %d, len: %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->gn:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v0, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final j6([BII)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Ot$e;->DW([BII)V

    return-void
.end method

.method public final tp(II)V
    .registers 4

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$e;->Zo(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/Ot$e;->Hw(I)V

    return-void
.end method
