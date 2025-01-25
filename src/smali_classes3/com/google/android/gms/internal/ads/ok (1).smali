.class public final Lcom/google/android/gms/internal/ads/ok;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final FH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Hw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/qe;",
            ">;"
        }
    .end annotation
.end field

.field private VH:Lorg/json/JSONObject;

.field private Zo:Ljava/lang/String;

.field private gn:Z

.field private final j6:J

.field private v5:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ok;->DW:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ok;->FH:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ok;->Hw:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ok;->gn:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ok;->Zo:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/ok;->j6:J

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_cf

    :try_start_25
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ok;->VH:Lorg/json/JSONObject;

    const-string p1, "status"

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3e

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ok;->gn:Z

    const-string p1, "App settings could not be fetched successfully."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_3e
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/ok;->gn:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ok;->VH:Lorg/json/JSONObject;

    const-string p2, "app_id"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ok;->v5:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ok;->VH:Lorg/json/JSONObject;

    const-string p2, "ad_unit_id_settings"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_a3

    const/4 p2, 0x0

    :goto_55
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-ge p2, p3, :cond_a3

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p3

    const-string v1, "format"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_unit_id"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_78

    goto :goto_a0

    :cond_78
    const-string v3, "interstitial"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_86

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ok;->FH:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a0

    :cond_86
    const-string v3, "rewarded"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a0

    const-string v1, "mediation_config"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    if-eqz p3, :cond_a0

    new-instance v1, Lcom/google/android/gms/internal/ads/qe;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/ads/qe;-><init>(Lorg/json/JSONObject;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ok;->Hw:Ljava/util/Map;

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a0
    :goto_a0
    add-int/lit8 p2, p2, 0x1

    goto :goto_55

    :cond_a3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ok;->VH:Lorg/json/JSONObject;

    const-string p2, "persistable_banner_ad_unit_ids"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_bf

    :goto_ad
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v0, p2, :cond_bf

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ok;->DW:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_bc
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_bc} :catch_c0

    add-int/lit8 v0, v0, 0x1

    goto :goto_ad

    :cond_bf
    return-void

    :catch_c0
    move-exception p1

    const-string p2, "Exception occurred while processing app setting json"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object p2

    const-string p3, "AppSettings.parseAppSettingsJson"

    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_cf
    return-void
.end method


# virtual methods
.method public final DW()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ok;->gn:Z

    return v0
.end method

.method public final FH()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ok;->Zo:Ljava/lang/String;

    return-object v0
.end method

.method public final Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ok;->v5:Ljava/lang/String;

    return-object v0
.end method

.method public final j6()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ok;->j6:J

    return-wide v0
.end method

.method public final v5()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/qe;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ok;->Hw:Ljava/util/Map;

    return-object v0
.end method
