.class final synthetic Lcom/google/android/gms/internal/ads/qa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/up;


# instance fields
.field private final DW:Ljava/util/Map;

.field private final FH:Lcom/google/android/gms/internal/ads/dh;

.field private final j6:Lcom/google/android/gms/internal/ads/pa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/pa;Ljava/util/Map;Lcom/google/android/gms/internal/ads/dh;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qa;->j6:Lcom/google/android/gms/internal/ads/pa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qa;->DW:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/qa;->FH:Lcom/google/android/gms/internal/ads/dh;

    return-void
.end method


# virtual methods
.method public final j6(Z)V
    .registers 7

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qa;->j6:Lcom/google/android/gms/internal/ads/pa;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qa;->DW:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qa;->FH:Lcom/google/android/gms/internal/ads/dh;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/pa;->DW:Lcom/google/android/gms/internal/ads/oa;

    const-string v3, "id"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/oa;->j6(Lcom/google/android/gms/internal/ads/oa;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_18
    const-string v2, "messageType"

    const-string v4, "htmlLoaded"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/pa;->DW:Lcom/google/android/gms/internal/ads/oa;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/oa;->DW(Lcom/google/android/gms/internal/ads/oa;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "sendMessageToNativeJs"

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/ads/dh;->j6(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_2d} :catch_2e

    return-void

    :catch_2e
    move-exception p1

    const-string v0, "Unable to dispatch sendMessageToNativeJs event"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
