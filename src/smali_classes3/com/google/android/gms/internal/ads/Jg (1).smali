.class public final Lcom/google/android/gms/internal/ads/Jg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Tg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/Tg<",
        "Lcom/google/android/gms/internal/ads/U;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Kg;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/ka;
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "html_containers"

    aput-object v2, v0, v1

    const-string v1, "instream"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/Il;->j6(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1a

    const-string v0, "video"

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object p1

    goto :goto_2a

    :cond_1a
    const-string p2, "base_url"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "html"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v2}, Lcom/google/android/gms/internal/ads/Kg;->j6(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object p1

    :goto_2a
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lcom/google/android/gms/internal/ads/Hm;)Lcom/google/android/gms/internal/ads/Mo;

    move-result-object p1

    if-nez p1, :cond_37

    const-string p1, "Can not get video view for instream ad."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_37
    new-instance p2, Lcom/google/android/gms/internal/ads/U;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/U;-><init>(Lcom/google/android/gms/internal/ads/Mo;)V

    return-object p2
.end method
