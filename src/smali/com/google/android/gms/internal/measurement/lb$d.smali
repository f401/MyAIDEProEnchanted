.class final Lcom/google/android/gms/internal/measurement/lb$d;
.super Lcom/google/android/gms/internal/measurement/lb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/lb;
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

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/lb;-><init>(Lcom/google/android/gms/internal/measurement/mb;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/lb$d;->Hw:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/lb$d;->Zo:I

    return-void
.end method

.method private final FH(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$d;->v5:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/bd;->j6(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/lb$c;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/lb$c;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public final DW(I)V
    .registers 4

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$d;->v5:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$d;->v5:Ljava/nio/ByteBuffer;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/lb$c;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/lb$c;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final DW(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lb$d;->j6(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/lb$d;->j6(I)V

    return-void
.end method

.method public final DW(ILcom/google/android/gms/internal/measurement/Wa;)V
    .registers 6

    const/4 v2, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/lb$d;->j6(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/lb$d;->FH(II)V

    invoke-virtual {p0, v2, p2}, Lcom/google/android/gms/internal/measurement/lb$d;->j6(ILcom/google/android/gms/internal/measurement/Wa;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/lb$d;->j6(II)V

    return-void
.end method

.method public final DW(ILcom/google/android/gms/internal/measurement/lc;)V
    .registers 6

    const/4 v2, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/lb$d;->j6(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/lb$d;->FH(II)V

    invoke-virtual {p0, v2, p2}, Lcom/google/android/gms/internal/measurement/lb$d;->j6(ILcom/google/android/gms/internal/measurement/lc;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/lb$d;->j6(II)V

    return-void
.end method

.method public final DW(Lcom/google/android/gms/internal/measurement/Wa;)V
    .registers 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/Wa;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/lb$d;->DW(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/Wa;->j6(Lcom/google/android/gms/internal/measurement/Va;)V

    return-void
.end method

.method final DW(Lcom/google/android/gms/internal/measurement/lc;Lcom/google/android/gms/internal/measurement/Cc;)V
    .registers 6

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/Oa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/Oa;->gn()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/measurement/Cc;->FH(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/Oa;->j6(I)V

    :cond_0
    move v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/lb$d;->DW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb;->FH:Lcom/google/android/gms/internal/measurement/nb;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/measurement/Cc;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/od;)V

    return-void
.end method

.method public final DW(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/lb;->VH(I)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/lb;->VH(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/lb$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/lb$d;->FH(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/lb$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/lb$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int v0, v2, v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/lb$d;->DW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/bd;->j6(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/lb$d;->DW(I)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/lb$d;->FH(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/fd; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/lb$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lb;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/fd;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/lb$c;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/lb$c;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final DW([BII)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/lb$c;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/lb$c;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/lb$c;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/lb$c;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final FH(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lb$d;->j6(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/lb$d;->DW(I)V

    return-void
.end method

.method public final FH(IJ)V
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lb$d;->j6(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/lb$d;->FH(J)V

    return-void
.end method

.method public final FH(J)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/lb$c;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/lb$c;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final FH(Lcom/google/android/gms/internal/measurement/lc;)V
    .registers 3

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/lc;->FH()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/lb$d;->DW(I)V

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/lc;->j6(Lcom/google/android/gms/internal/measurement/lb;)V

    return-void
.end method

.method public final Hw(I)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/lb$c;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/lb$c;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final j6()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$d;->Hw:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/lb$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final j6(B)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$d;->v5:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/lb$c;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/lb$c;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final j6(I)V
    .registers 4

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/lb$d;->DW(I)V

    :goto_0
    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/lb$d;->j6(J)V

    goto :goto_0
.end method

.method public final j6(II)V
    .registers 4

    shl-int/lit8 v0, p1, 0x3

    or-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/lb$d;->DW(I)V

    return-void
.end method

.method public final j6(IJ)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lb$d;->j6(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/lb$d;->j6(J)V

    return-void
.end method

.method public final j6(ILcom/google/android/gms/internal/measurement/Wa;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lb$d;->j6(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/lb$d;->DW(Lcom/google/android/gms/internal/measurement/Wa;)V

    return-void
.end method

.method public final j6(ILcom/google/android/gms/internal/measurement/lc;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lb$d;->j6(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/lb$d;->FH(Lcom/google/android/gms/internal/measurement/lc;)V

    return-void
.end method

.method final j6(ILcom/google/android/gms/internal/measurement/lc;Lcom/google/android/gms/internal/measurement/Cc;)V
    .registers 5

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lb$d;->j6(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/lb$d;->DW(Lcom/google/android/gms/internal/measurement/lc;Lcom/google/android/gms/internal/measurement/Cc;)V

    return-void
.end method

.method public final j6(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lb$d;->j6(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/lb$d;->DW(Ljava/lang/String;)V

    return-void
.end method

.method public final j6(IZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lb$d;->j6(II)V

    int-to-byte v0, p2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/lb$d;->j6(B)V

    return-void
.end method

.method public final j6(J)V
    .registers 8

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$d;->v5:Ljava/nio/ByteBuffer;

    long-to-int v1, p1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/lb$d;->v5:Ljava/nio/ByteBuffer;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/lb$c;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/lb$c;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final j6([BII)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/lb$d;->DW([BII)V

    return-void
.end method

.method public final v5(II)V
    .registers 4

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/lb$d;->j6(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/lb$d;->Hw(I)V

    return-void
.end method
