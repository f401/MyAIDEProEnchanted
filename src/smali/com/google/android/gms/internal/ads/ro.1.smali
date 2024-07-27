.class final Lcom/google/android/gms/internal/ads/ro;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:J

.field private final Hw:J

.field private final VH:I

.field private final Zo:I

.field private final gn:Lcom/google/android/gms/internal/ads/po;

.field private final j6:Ljava/lang/String;

.field private final v5:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/po;Ljava/lang/String;Ljava/lang/String;JJZII)V
    .registers 11

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ro;->gn:Lcom/google/android/gms/internal/ads/po;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ro;->j6:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ro;->DW:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/ro;->FH:J

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/ro;->Hw:J

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/ro;->v5:Z

    iput p9, p0, Lcom/google/android/gms/internal/ads/ro;->Zo:I

    iput p10, p0, Lcom/google/android/gms/internal/ads/ro;->VH:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "event"

    const-string v2, "precacheProgress"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "src"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ro;->j6:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cachedSrc"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ro;->DW:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bufferedDuration"

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ro;->FH:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "totalDuration"

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ro;->Hw:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ro;->v5:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    const-string v2, "cacheReady"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "playerCount"

    iget v2, p0, Lcom/google/android/gms/internal/ads/ro;->Zo:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "playerPreparedCount"

    iget v2, p0, Lcom/google/android/gms/internal/ads/ro;->VH:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ro;->gn:Lcom/google/android/gms/internal/ads/po;

    const-string v2, "onPrecacheEvent"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/po;->j6(Lcom/google/android/gms/internal/ads/po;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method
