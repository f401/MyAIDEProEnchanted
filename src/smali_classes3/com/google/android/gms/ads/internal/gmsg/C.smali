.class final Lcom/google/android/gms/ads/internal/gmsg/C;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final DW:Lcom/google/android/gms/internal/ads/Sc;

.field private final FH:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

.field private final j6:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/gmsg/HttpClient;Ljava/util/Map;Lcom/google/android/gms/internal/ads/Sc;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/C;->FH:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/gmsg/C;->j6:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/gmsg/C;->DW:Lcom/google/android/gms/internal/ads/Sc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    const-string v0, "Received Http request."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/C;->j6:Ljava/util/Map;

    const-string v1, "http_request"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_f
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_2d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/C;->FH:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;->send(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_22

    const-string v0, "Response should not be null."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    return-void

    :cond_22
    sget-object v1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/gmsg/D;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/gmsg/D;-><init>(Lcom/google/android/gms/ads/internal/gmsg/C;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_2d
    move-exception v0

    const-string v1, "Error converting request to json."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
