.class public final Lcom/google/android/gms/internal/ads/Ez;
.super Lcom/google/android/gms/internal/ads/zz;


# instance fields
.field public final DW:Lcom/google/android/gms/internal/ads/Az;

.field public FH:Ljava/nio/ByteBuffer;

.field public Hw:J

.field private final v5:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zz;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/Az;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Az;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ez;->DW:Lcom/google/android/gms/internal/ads/Az;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Ez;->v5:I

    return-void
.end method

.method private final v5(I)Ljava/nio/ByteBuffer;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Buffer too small ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " < "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final Hw(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Ez;->v5(I)Ljava/nio/ByteBuffer;

    throw v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Ez;->v5(I)Ljava/nio/ByteBuffer;

    throw v2
.end method

.method public final j6()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zz;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method public final v5()Z
    .registers 2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zz;->FH(I)Z

    move-result v0

    return v0
.end method
