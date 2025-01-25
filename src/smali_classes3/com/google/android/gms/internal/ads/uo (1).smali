.class final Lcom/google/android/gms/internal/ads/uo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:Ljava/lang/String;

.field private final Hw:Ljava/lang/String;

.field private final j6:Ljava/lang/String;

.field private final v5:Lcom/google/android/gms/internal/ads/po;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/po;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uo;->v5:Lcom/google/android/gms/internal/ads/po;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/uo;->j6:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/uo;->DW:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/uo;->FH:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/uo;->Hw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "precacheCanceled"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "src"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uo;->j6:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uo;->DW:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "cachedSrc"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uo;->DW:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uo;->v5:Lcom/google/android/gms/internal/ads/po;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uo;->FH:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/po;->j6(Lcom/google/android/gms/internal/ads/po;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reason"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uo;->FH:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uo;->Hw:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_45

    const-string v1, "message"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uo;->Hw:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uo;->v5:Lcom/google/android/gms/internal/ads/po;

    const-string v2, "onPrecacheEvent"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/po;->j6(Lcom/google/android/gms/internal/ads/po;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
