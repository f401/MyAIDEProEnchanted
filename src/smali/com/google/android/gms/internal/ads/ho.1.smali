.class public final Lcom/google/android/gms/internal/ads/ho;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private j6:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Ljava/nio/ByteBuffer;)J
    .registers 10

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ho;->j6:J

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance v1, Lcom/google/android/gms/internal/ads/go;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/go;-><init>(Ljava/nio/ByteBuffer;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/Fl;

    sget-object v5, Lcom/google/android/gms/internal/ads/jo;->FH:Lcom/google/android/gms/internal/ads/jo;

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/ads/Fl;-><init>(Lcom/google/android/gms/internal/ads/Aw;Lcom/google/android/gms/internal/ads/fl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xw;->j6()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Fm;

    instance-of v5, v0, Lcom/google/android/gms/internal/ads/En;

    if-eqz v5, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/ads/En;

    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xw;->j6()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Fm;

    instance-of v5, v0, Lcom/google/android/gms/internal/ads/eo;

    if-eqz v5, :cond_2

    check-cast v0, Lcom/google/android/gms/internal/ads/eo;

    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eo;->FH()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eo;->Hw()J

    move-result-wide v0

    div-long v0, v4, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ho;->j6:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ho;->j6:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_3
    move-object v0, v4

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_3
    move-wide v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_4
    move-object v0, v4

    goto :goto_2
.end method
