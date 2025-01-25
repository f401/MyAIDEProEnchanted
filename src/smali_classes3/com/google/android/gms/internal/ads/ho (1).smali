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

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ho;->j6:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_9

    return-wide v0

    :cond_9
    :try_start_9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance v0, Lcom/google/android/gms/internal/ads/go;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/go;-><init>(Ljava/nio/ByteBuffer;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/Fl;

    sget-object v1, Lcom/google/android/gms/internal/ads/jo;->FH:Lcom/google/android/gms/internal/ads/jo;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Fl;-><init>(Lcom/google/android/gms/internal/ads/Aw;Lcom/google/android/gms/internal/ads/fl;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xw;->j6()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Fm;

    instance-of v4, v0, Lcom/google/android/gms/internal/ads/En;

    if-eqz v4, :cond_24

    check-cast v0, Lcom/google/android/gms/internal/ads/En;

    goto :goto_39

    :cond_38
    move-object v0, v1

    :goto_39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xw;->j6()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_41
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Fm;

    instance-of v4, v0, Lcom/google/android/gms/internal/ads/eo;

    if-eqz v4, :cond_41

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/eo;

    :cond_54
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/eo;->FH()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/eo;->Hw()J

    move-result-wide v0

    div-long/2addr v4, v0

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/ho;->j6:J
    :try_end_63
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_63} :catch_66
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_63} :catch_64

    return-wide v4

    :catch_64
    move-exception p1

    goto :goto_67

    :catch_66
    move-exception p1

    :goto_67
    return-wide v2
.end method
