.class public final Lcom/google/android/gms/internal/ads/yz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Yy;


# instance fields
.field private DW:I

.field private EQ:Z

.field private FH:Lcom/google/android/gms/internal/ads/xz;

.field private Hw:F

.field private VH:Ljava/nio/ShortBuffer;

.field private Zo:Ljava/nio/ByteBuffer;

.field private gn:Ljava/nio/ByteBuffer;

.field private j6:I

.field private tp:J

.field private u7:J

.field private v5:F


# direct methods
.method public constructor <init>()V
    .registers 3

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/google/android/gms/internal/ads/yz;->Hw:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/yz;->v5:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/yz;->j6:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/yz;->DW:I

    sget-object v0, Lcom/google/android/gms/internal/ads/Yy;->j6:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->Zo:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->Zo:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->VH:Ljava/nio/ShortBuffer;

    sget-object v0, Lcom/google/android/gms/internal/ads/Yy;->j6:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->gn:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final DW(F)F
    .registers 4

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/TD;->j6(FFF)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/yz;->v5:F

    return p1
.end method

.method public final DW()Ljava/nio/ByteBuffer;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->gn:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/Yy;->j6:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/yz;->gn:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final FH()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public final Hw()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/yz;->EQ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->FH:Lcom/google/android/gms/internal/ads/xz;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xz;->DW()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final VH()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/yz;->u7:J

    return-wide v0
.end method

.method public final Zo()Z
    .registers 4

    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3c23d70a    # 0.01f

    iget v0, p0, Lcom/google/android/gms/internal/ads/yz;->Hw:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/yz;->v5:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final flush()V
    .registers 7

    const-wide/16 v4, 0x0

    new-instance v0, Lcom/google/android/gms/internal/ads/xz;

    iget v1, p0, Lcom/google/android/gms/internal/ads/yz;->DW:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/yz;->j6:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/xz;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->FH:Lcom/google/android/gms/internal/ads/xz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->FH:Lcom/google/android/gms/internal/ads/xz;

    iget v1, p0, Lcom/google/android/gms/internal/ads/yz;->Hw:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xz;->j6(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->FH:Lcom/google/android/gms/internal/ads/xz;

    iget v1, p0, Lcom/google/android/gms/internal/ads/yz;->v5:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xz;->DW(F)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Yy;->j6:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->gn:Ljava/nio/ByteBuffer;

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/yz;->u7:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/yz;->tp:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/yz;->EQ:Z

    return-void
.end method

.method public final gn()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/yz;->tp:J

    return-wide v0
.end method

.method public final j6(F)F
    .registers 4

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/TD;->j6(FFF)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/yz;->Hw:F

    iget v0, p0, Lcom/google/android/gms/internal/ads/yz;->Hw:F

    return v0
.end method

.method public final j6()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/yz;->j6:I

    return v0
.end method

.method public final j6(Ljava/nio/ByteBuffer;)V
    .registers 8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/yz;->u7:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/yz;->u7:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yz;->FH:Lcom/google/android/gms/internal/ads/xz;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/xz;->j6(Ljava/nio/ShortBuffer;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->FH:Lcom/google/android/gms/internal/ads/xz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xz;->DW()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/yz;->j6:I

    mul-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yz;->Zo:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/yz;->Zo:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yz;->Zo:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/yz;->VH:Ljava/nio/ShortBuffer;

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yz;->FH:Lcom/google/android/gms/internal/ads/xz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yz;->VH:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/xz;->DW(Ljava/nio/ShortBuffer;)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/yz;->tp:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/yz;->tp:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yz;->Zo:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->Zo:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->gn:Ljava/nio/ByteBuffer;

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yz;->Zo:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yz;->VH:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public final j6(III)Z
    .registers 5

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/yz;->DW:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/yz;->j6:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/yz;->DW:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/yz;->j6:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/Zy;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Zy;-><init>(III)V

    throw v0
.end method

.method public final reset()V
    .registers 5

    const-wide/16 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->FH:Lcom/google/android/gms/internal/ads/xz;

    sget-object v0, Lcom/google/android/gms/internal/ads/Yy;->j6:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->Zo:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->Zo:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->VH:Ljava/nio/ShortBuffer;

    sget-object v0, Lcom/google/android/gms/internal/ads/Yy;->j6:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->gn:Ljava/nio/ByteBuffer;

    iput v1, p0, Lcom/google/android/gms/internal/ads/yz;->j6:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/yz;->DW:I

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/yz;->u7:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/yz;->tp:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/yz;->EQ:Z

    return-void
.end method

.method public final v5()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->FH:Lcom/google/android/gms/internal/ads/xz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xz;->j6()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/yz;->EQ:Z

    return-void
.end method
