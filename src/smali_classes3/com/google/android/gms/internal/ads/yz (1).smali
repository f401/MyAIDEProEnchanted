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
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/yz;->Hw:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/yz;->v5:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/yz;->j6:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/yz;->DW:I

    sget-object v0, Lcom/google/android/gms/internal/ads/Yy;->j6:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->Zo:Ljava/nio/ByteBuffer;

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

    const v0, 0x3dcccccd  # 0.1f

    const/high16 v1, 0x41000000  # 8.0f

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

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->FH:Lcom/google/android/gms/internal/ads/xz;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xz;->DW()I

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public final VH()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/yz;->u7:J

    return-wide v0
.end method

.method public final Zo()Z
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/yz;->Hw:F

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a  # 0.01f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_1e

    iget v0, p0, Lcom/google/android/gms/internal/ads/yz;->v5:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    return v0

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    return v0
.end method

.method public final flush()V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/xz;

    iget v1, p0, Lcom/google/android/gms/internal/ads/yz;->DW:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/yz;->j6:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/xz;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->FH:Lcom/google/android/gms/internal/ads/xz;

    iget v1, p0, Lcom/google/android/gms/internal/ads/yz;->Hw:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xz;->j6(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->FH:Lcom/google/android/gms/internal/ads/xz;

    iget v1, p0, Lcom/google/android/gms/internal/ads/yz;->v5:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xz;->DW(F)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Yy;->j6:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->gn:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/yz;->u7:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/yz;->tp:J

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

    const v0, 0x3dcccccd  # 0.1f

    const/high16 v1, 0x41000000  # 8.0f

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/TD;->j6(FFF)F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/yz;->Hw:F

    return p1
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

    if-eqz v0, :cond_21

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

    :cond_21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yz;->FH:Lcom/google/android/gms/internal/ads/xz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xz;->DW()I

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/yz;->j6:I

    mul-int p1, p1, v0

    shl-int/lit8 p1, p1, 0x1

    if-lez p1, :cond_6c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->Zo:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_4c

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->Zo:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->VH:Ljava/nio/ShortBuffer;

    goto :goto_56

    :cond_4c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->Zo:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->VH:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    :goto_56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->FH:Lcom/google/android/gms/internal/ads/xz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yz;->VH:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xz;->DW(Ljava/nio/ShortBuffer;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/yz;->tp:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/yz;->tp:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->Zo:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yz;->Zo:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yz;->gn:Ljava/nio/ByteBuffer;

    :cond_6c
    return-void
.end method

.method public final j6(III)Z
    .registers 5

    const/4 v0, 0x2

    if-ne p3, v0, :cond_13

    iget p3, p0, Lcom/google/android/gms/internal/ads/yz;->DW:I

    if-ne p3, p1, :cond_d

    iget p3, p0, Lcom/google/android/gms/internal/ads/yz;->j6:I

    if-ne p3, p2, :cond_d

    const/4 p1, 0x0

    return p1

    :cond_d
    iput p1, p0, Lcom/google/android/gms/internal/ads/yz;->DW:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/yz;->j6:I

    const/4 p1, 0x1

    return p1

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/ads/Zy;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Zy;-><init>(III)V

    throw v0
.end method

.method public final reset()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->FH:Lcom/google/android/gms/internal/ads/xz;

    sget-object v0, Lcom/google/android/gms/internal/ads/Yy;->j6:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->Zo:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->VH:Ljava/nio/ShortBuffer;

    sget-object v0, Lcom/google/android/gms/internal/ads/Yy;->j6:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yz;->gn:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/yz;->j6:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/yz;->DW:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/yz;->u7:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/yz;->tp:J

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
