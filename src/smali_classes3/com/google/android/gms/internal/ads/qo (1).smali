.class final Lcom/google/android/gms/internal/ads/qo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:I

.field private final Hw:I

.field private final Zo:Lcom/google/android/gms/internal/ads/po;

.field private final j6:Ljava/lang/String;

.field private final v5:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/po;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qo;->Zo:Lcom/google/android/gms/internal/ads/po;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qo;->j6:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/qo;->DW:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/qo;->FH:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/qo;->Hw:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/qo;->v5:Z

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

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qo;->j6:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cachedSrc"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qo;->DW:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/qo;->FH:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bytesLoaded"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/qo;->Hw:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "totalBytes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/qo;->v5:Z

    if-eqz v1, :cond_37

    const-string v1, "1"

    goto :goto_39

    :cond_37
    const-string v1, "0"

    :goto_39
    const-string v2, "cacheReady"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qo;->Zo:Lcom/google/android/gms/internal/ads/po;

    const-string v2, "onPrecacheEvent"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/po;->j6(Lcom/google/android/gms/internal/ads/po;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
