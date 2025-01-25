.class public final Lcom/google/android/gms/internal/ads/Ii;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Ljava/lang/String;

.field private final EQ:Lorg/json/JSONObject;

.field private final FH:Ljava/lang/String;

.field private final Hw:Ljava/lang/String;

.field private final J0:Z

.field private final VH:Ljava/lang/String;

.field private final Zo:Ljava/lang/String;

.field private gn:Ljava/lang/String;

.field private final j6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tp:Z

.field private final u7:I

.field private final v5:Z

.field private final we:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ii;->gn:Ljava/lang/String;

    const-string v0, "base_uri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ii;->DW:Ljava/lang/String;

    const-string v0, "post_parameters"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ii;->FH:Ljava/lang/String;

    const-string v0, "drt_include"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_37

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_35
    const/4 v0, 0x1

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    :goto_38
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ii;->v5:Z

    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ii;->Zo:Ljava/lang/String;

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ii;->Hw:Ljava/lang/String;

    const-string v0, "errors"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_54

    const/4 v0, 0x0

    goto :goto_5e

    :cond_54
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_5e
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ii;->j6:Ljava/util/List;

    const-string v0, "valid"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_69

    const/4 v2, -0x2

    :cond_69
    iput v2, p0, Lcom/google/android/gms/internal/ads/Ii;->u7:I

    const-string v0, "fetched_ad"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ii;->VH:Ljava/lang/String;

    const-string v0, "render_test_ad_label"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ii;->tp:Z

    const-string v0, "preprocessor_flags"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_84

    goto :goto_89

    :cond_84
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_89
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ii;->EQ:Lorg/json/JSONObject;

    const-string v0, "analytics_query_ad_event_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ii;->we:Ljava/lang/String;

    const-string v0, "is_analytics_logging_enabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Ii;->J0:Z

    return-void
.end method


# virtual methods
.method public final DW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ii;->gn:Ljava/lang/String;

    return-object v0
.end method

.method public final FH()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ii;->DW:Ljava/lang/String;

    return-object v0
.end method

.method public final Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ii;->FH:Ljava/lang/String;

    return-object v0
.end method

.method public final VH()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ii;->tp:Z

    return v0
.end method

.method public final Zo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ii;->VH:Ljava/lang/String;

    return-object v0
.end method

.method public final gn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ii;->we:Ljava/lang/String;

    return-object v0
.end method

.method public final j6()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Ii;->u7:I

    return v0
.end method

.method public final u7()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ii;->J0:Z

    return v0
.end method

.method public final v5()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ii;->v5:Z

    return v0
.end method
