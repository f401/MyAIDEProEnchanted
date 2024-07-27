.class final Lcom/google/android/gms/internal/ads/wz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Yy;


# instance fields
.field private DW:I

.field private FH:I

.field private Hw:Ljava/nio/ByteBuffer;

.field private Zo:Z

.field private j6:I

.field private v5:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/gms/internal/ads/wz;->j6:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/wz;->DW:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/wz;->FH:I

    sget-object v0, Lcom/google/android/gms/internal/ads/Yy;->j6:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wz;->Hw:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wz;->v5:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final DW()Ljava/nio/ByteBuffer;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wz;->v5:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/Yy;->j6:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/wz;->v5:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final FH()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public final Hw()Z
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/wz;->Zo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wz;->v5:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/Yy;->j6:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Zo()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/wz;->FH:I

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final flush()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/Yy;->j6:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wz;->v5:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/wz;->Zo:Z

    return-void
.end method

.method public final j6()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/wz;->DW:I

    return v0
.end method

.method public final j6(Ljava/nio/ByteBuffer;)V
    .registers 9

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x3

    const/high16 v4, -0x80000000

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int v0, v2, v1

    iget v3, p0, Lcom/google/android/gms/internal/ads/wz;->FH:I

    if-eq v3, v4, :cond_1

    if-eq v3, v5, :cond_2

    if-ne v3, v6, :cond_0

    div-int/lit8 v0, v0, 0x2

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/wz;->Hw:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, v0, :cond_3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wz;->Hw:Ljava/nio/ByteBuffer;

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/wz;->FH:I

    if-eq v0, v4, :cond_7

    if-eq v0, v5, :cond_5

    if-ne v0, v6, :cond_4

    :goto_2
    if-ge v1, v2, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wz;->Hw:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wz;->Hw:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, 0x3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x4

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    div-int/lit8 v0, v0, 0x3

    :cond_2
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wz;->Hw:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_5
    :goto_3
    if-ge v1, v2, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wz;->Hw:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wz;->Hw:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x80

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :goto_4
    if-ge v0, v2, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wz;->Hw:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wz;->Hw:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x3

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wz;->Hw:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wz;->Hw:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wz;->v5:Ljava/nio/ByteBuffer;

    return-void

    :cond_7
    move v0, v1

    goto :goto_4
.end method

.method public final j6(III)Z
    .registers 6

    const/4 v1, 0x2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    if-eq p3, v1, :cond_0

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p3, v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/wz;->j6:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/wz;->DW:I

    if-ne v0, p2, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/wz;->FH:I

    if-ne v0, p3, :cond_2

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/Zy;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Zy;-><init>(III)V

    throw v0

    :cond_2
    iput p1, p0, Lcom/google/android/gms/internal/ads/wz;->j6:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/wz;->DW:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/wz;->FH:I

    if-ne p3, v1, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ads/Yy;->j6:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wz;->Hw:Ljava/nio/ByteBuffer;

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final reset()V
    .registers 3

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/wz;->flush()V

    sget-object v0, Lcom/google/android/gms/internal/ads/Yy;->j6:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wz;->Hw:Ljava/nio/ByteBuffer;

    iput v1, p0, Lcom/google/android/gms/internal/ads/wz;->j6:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/wz;->DW:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/wz;->FH:I

    return-void
.end method

.method public final v5()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/wz;->Zo:Z

    return-void
.end method
