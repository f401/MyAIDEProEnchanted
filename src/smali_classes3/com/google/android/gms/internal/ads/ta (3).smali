.class final Lcom/google/android/gms/internal/ads/ta;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/B;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/B<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/oa;

.field private final j6:Lcom/google/android/gms/internal/ads/dh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/oa;Lcom/google/android/gms/internal/ads/dh;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ta;->DW:Lcom/google/android/gms/internal/ads/oa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ta;->j6:Lcom/google/android/gms/internal/ads/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    :cond_21
    const-string p2, "id"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ta;->DW:Lcom/google/android/gms/internal/ads/oa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oa;->DW(Lcom/google/android/gms/internal/ads/oa;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ta;->j6:Lcom/google/android/gms/internal/ads/dh;

    const-string v0, "sendMessageToNativeJs"

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/dh;->j6(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_33} :catch_34

    return-void

    :catch_34
    move-exception p1

    const-string p2, "Unable to dispatch sendMessageToNativeJs event"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
