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
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "precacheProgress"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "src"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ro;->j6:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cachedSrc"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ro;->DW:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/ro;->FH:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bufferedDuration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/ro;->Hw:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "totalDuration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ro;->v5:Z

    if-eqz v1, :cond_37

    const-string v1, "1"

    goto :goto_39

    :cond_37
    const-string v1, "0"

    :goto_39
    const-string v2, "cacheReady"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/ro;->Zo:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/ro;->VH:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerPreparedCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ro;->gn:Lcom/google/android/gms/internal/ads/po;

    const-string v2, "onPrecacheEvent"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/po;->j6(Lcom/google/android/gms/internal/ads/po;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
