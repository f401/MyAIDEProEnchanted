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
    .registers 8

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

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->VH:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    int-to-long v4, p1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->gn:J

    const-wide/16 v4, 0xa

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->u7:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    return-void
.end method

.method private final u7(J)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->v5:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/Ot$e;->Zo:J

    sub-long/2addr p1, v1

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public final DW()I
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->gn:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final DW(I)V
    .registers 9

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->u7:J

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v2

    if-gtz v6, :cond_29

    :goto_a
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_18

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    :goto_10
    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Ev;->j6(JB)V

    return-void

    :cond_18
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    add-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Ev;->j6(JB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_a

    :cond_29
    :goto_29
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->gn:J

    cmp-long v6, v0, v2

    if-gez v6, :cond_45

    and-int/lit8 v2, p1, -0x80

    if-nez v2, :cond_36

    goto :goto_10

    :cond_36
    add-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Ev;->j6(JB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_29

    :cond_45
    new-instance p1, Lcom/google/android/gms/internal/ads/Ot$c;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->gn:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/String;)V

    goto :goto_6c

    :goto_6b
    throw p1

    :goto_6c
    goto :goto_6b
.end method

.method public final DW(ILcom/google/android/gms/internal/ads/Pu;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Ot$e;->Zo(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/ads/Ot$e;->gn(II)V

    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/ads/Ot$e;->j6(ILcom/google/android/gms/internal/ads/Pu;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/Ot$e;->Zo(II)V

    return-void
.end method

.method public final DW(ILcom/google/android/gms/internal/ads/yt;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Ot$e;->Zo(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/ads/Ot$e;->gn(II)V

    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/ads/Ot$e;->j6(ILcom/google/android/gms/internal/ads/yt;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/Ot$e;->Zo(II)V

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
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/Ot$e;->DW(I)V

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

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Ot;->VH(I)I

    move-result v3

    if-ne v3, v2, :cond_38

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/Ot$e;->Zo:J

    sub-long/2addr v4, v6

    long-to-int v2, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ot$e;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ot$e;->v5:Ljava/nio/ByteBuffer;

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/Gv;->j6(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ot$e;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/Ot$e;->DW(I)V

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    int-to-long v2, v3

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    return-void

    :cond_38
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Gv;->j6(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/Ot$e;->DW(I)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    invoke-direct {p0, v3, v4}, Lcom/google/android/gms/internal/ads/Ot$e;->u7(J)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ot$e;->v5:Ljava/nio/ByteBuffer;

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/Gv;->j6(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J
    :try_end_4f
    .catch Lcom/google/android/gms/internal/ads/Kv; {:try_start_2 .. :try_end_4f} :catch_5e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_4f} :catch_57
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_4f} :catch_50

    return-void

    :catch_50
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/Ot$c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_57
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/Ot$c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_5e
    move-exception v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Ot$e;->u7(J)V

    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Ot;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Kv;)V

    return-void
.end method

.method public final DW([BII)V
    .registers 15

    if-eqz p1, :cond_21

    if-ltz p2, :cond_21

    if-ltz p3, :cond_21

    array-length v0, p1

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_21

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->gn:J

    int-to-long v9, p3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    sub-long/2addr v0, v9

    cmp-long v2, v0, v5

    if-gez v2, :cond_15

    goto :goto_21

    :cond_15
    int-to-long v3, p2

    move-object v2, p1

    move-wide v7, v9

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/Ev;->j6([BJJJ)V

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    add-long/2addr p1, v9

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    return-void

    :cond_21
    :goto_21
    if-nez p1, :cond_2b

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2b
    new-instance p1, Lcom/google/android/gms/internal/ads/Ot$c;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->gn:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final FH(IJ)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ot$e;->Zo(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/Ot$e;->FH(J)V

    return-void
.end method

.method public final FH(J)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->v5:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/Ot$e;->Zo:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {v0, v2, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

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
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->v5:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/Ot$e;->Zo:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {v0, v2, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

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
    .registers 3

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Ot$e;->DW(I)V

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
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->Hw:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/Ot$e;->Zo:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final j6(B)V
    .registers 7

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->gn:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_11

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Ev;->j6(JB)V

    return-void

    :cond_11
    new-instance p1, Lcom/google/android/gms/internal/ads/Ot$c;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->gn:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6(I)V
    .registers 4

    if-ltz p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Ot$e;->DW(I)V

    return-void

    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Ot$e;->j6(J)V

    return-void
.end method

.method public final j6(IJ)V
    .registers 5

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

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Ot$e;->j6(B)V

    return-void
.end method

.method public final j6(J)V
    .registers 15

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->u7:J

    const/4 v4, 0x7

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x80

    const-wide/16 v9, 0x1

    cmp-long v11, v0, v2

    if-gtz v11, :cond_2f

    :goto_f
    and-long v0, p1, v7

    cmp-long v2, v0, v5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    if-nez v2, :cond_20

    :goto_17
    add-long/2addr v9, v0

    iput-wide v9, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Ev;->j6(JB)V

    return-void

    :cond_20
    add-long v2, v0, v9

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Ev;->j6(JB)V

    ushr-long/2addr p1, v4

    goto :goto_f

    :cond_2f
    :goto_2f
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->gn:J

    cmp-long v11, v0, v2

    if-gez v11, :cond_4d

    and-long v2, p1, v7

    cmp-long v11, v2, v5

    if-nez v11, :cond_3e

    goto :goto_17

    :cond_3e
    add-long v2, v0, v9

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Ot$e;->tp:J

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Ev;->j6(JB)V

    ushr-long/2addr p1, v4

    goto :goto_2f

    :cond_4d
    new-instance p1, Lcom/google/android/gms/internal/ads/Ot$c;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p2, v2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ot$e;->gn:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/Ot$c;-><init>(Ljava/lang/String;)V

    goto :goto_74

    :goto_73
    throw p1

    :goto_74
    goto :goto_73
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
