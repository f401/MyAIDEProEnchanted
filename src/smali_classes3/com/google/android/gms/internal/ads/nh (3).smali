.class final Lcom/google/android/gms/internal/ads/nh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/B;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/B<",
        "Lcom/google/android/gms/internal/ads/Mo;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Rm;

.field private final FH:Lcom/google/android/gms/internal/ads/hh;

.field private final j6:Lcom/google/android/gms/internal/ads/Mo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/hh;Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/Rm;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nh;->FH:Lcom/google/android/gms/internal/ads/hh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/nh;->j6:Lcom/google/android/gms/internal/ads/Mo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/nh;->DW:Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 7

    const-string p1, "success"

    :try_start_2
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "failure"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    goto :goto_25

    :cond_1d
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    move-object v0, p2

    const/4 p2, 0x1

    :goto_25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nh;->FH:Lcom/google/android/gms/internal/ads/hh;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/hh;->j6(Lcom/google/android/gms/internal/ads/hh;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ads_id"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    return-void

    :cond_3a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nh;->j6:Lcom/google/android/gms/internal/ads/Mo;

    const-string v2, "/nativeAdPreProcess"

    invoke-interface {v1, v2, p0}, Lcom/google/android/gms/internal/ads/Mo;->DW(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "json"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nh;->DW:Lcom/google/android/gms/internal/ads/Rm;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/Rm;->DW(Ljava/lang/Object;)V
    :try_end_53
    .catchall {:try_start_2 .. :try_end_53} :catchall_54

    return-void

    :catchall_54
    move-exception p1

    const-string p2, "Error while preprocessing json."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/nh;->DW:Lcom/google/android/gms/internal/ads/Rm;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/Rm;->j6(Ljava/lang/Throwable;)V

    return-void
.end method
