.class public final Lcom/google/android/gms/internal/ads/Wf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Z

.field private final FH:Z

.field private final Hw:Z

.field private final j6:Z

.field private final v5:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/Yf;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Yf;->j6(Lcom/google/android/gms/internal/ads/Yf;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Wf;->j6:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Yf;->DW(Lcom/google/android/gms/internal/ads/Yf;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Wf;->DW:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Yf;->FH(Lcom/google/android/gms/internal/ads/Yf;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Wf;->FH:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Yf;->Hw(Lcom/google/android/gms/internal/ads/Yf;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Wf;->Hw:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Yf;->v5(Lcom/google/android/gms/internal/ads/Yf;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Wf;->v5:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Yf;Lcom/google/android/gms/internal/ads/Xf;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Wf;-><init>(Lcom/google/android/gms/internal/ads/Yf;)V

    return-void
.end method


# virtual methods
.method public final j6()Lorg/json/JSONObject;
    .registers 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "sms"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Wf;->j6:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tel"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Wf;->DW:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "calendar"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Wf;->FH:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "storePicture"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Wf;->Hw:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "inlineVideo"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Wf;->v5:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Error occured while obtaining the MRAID capabilities."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
