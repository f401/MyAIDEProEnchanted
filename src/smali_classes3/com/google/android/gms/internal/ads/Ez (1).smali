.class public final Lcom/google/android/gms/internal/ads/Ez;
.super Lcom/google/android/gms/internal/ads/zz;


# instance fields
.field public final DW:Lcom/google/android/gms/internal/ads/Az;

.field public FH:Ljava/nio/ByteBuffer;

.field public Hw:J

.field private final v5:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zz;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/Az;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/Az;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ez;->DW:Lcom/google/android/gms/internal/ads/Az;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/Ez;->v5:I

    return-void
.end method

.method private final v5(I)Ljava/nio/ByteBuffer;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Buffer too small ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " < "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final Hw(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, p1

    if-lt v0, v2, :cond_13

    return-void

    :cond_13
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Ez;->v5(I)Ljava/nio/ByteBuffer;

    throw v1

    :cond_17
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Ez;->v5(I)Ljava/nio/ByteBuffer;

    throw v1
.end method

.method public final j6()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zz;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_a
    return-void
.end method

.method public final v5()Z
    .registers 2

    const/high16 v0, 0x40000000  # 2.0f

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zz;->FH(I)Z

    move-result v0

    return v0
.end method
