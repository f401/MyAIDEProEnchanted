.class public final Lcom/google/android/gms/internal/ads/Cn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field public final DW:I

.field public final FH:I

.field public final Hw:I

.field public final VH:I

.field public final Zo:I

.field public final gn:I

.field public final j6:Z

.field public final tp:Z

.field public final u7:Z

.field public final v5:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "aggressive_media_codec_release"

    sget-object v2, Lcom/google/android/gms/internal/ads/p;->dx:Lcom/google/android/gms/internal/ads/e;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Cn;->j6(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/e;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Cn;->j6:Z

    const-string v1, "byte_buffer_precache_limit"

    sget-object v2, Lcom/google/android/gms/internal/ads/p;->lg:Lcom/google/android/gms/internal/ads/e;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Cn;->DW(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/e;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Cn;->DW:I

    const-string v1, "exo_cache_buffer_size"

    sget-object v2, Lcom/google/android/gms/internal/ads/p;->gW:Lcom/google/android/gms/internal/ads/e;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Cn;->DW(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/e;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Cn;->FH:I

    const-string v1, "exo_connect_timeout_millis"

    sget-object v2, Lcom/google/android/gms/internal/ads/p;->j3:Lcom/google/android/gms/internal/ads/e;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Cn;->DW(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/e;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Cn;->Hw:I

    const-string v1, "exo_player_version"

    sget-object v2, Lcom/google/android/gms/internal/ads/p;->aM:Lcom/google/android/gms/internal/ads/e;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Cn;->FH(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/e;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Cn;->v5:Ljava/lang/String;

    const-string v1, "exo_read_timeout_millis"

    sget-object v2, Lcom/google/android/gms/internal/ads/p;->Mr:Lcom/google/android/gms/internal/ads/e;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Cn;->DW(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/e;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Cn;->Zo:I

    const-string v1, "load_check_interval_bytes"

    sget-object v2, Lcom/google/android/gms/internal/ads/p;->U2:Lcom/google/android/gms/internal/ads/e;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Cn;->DW(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/e;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Cn;->VH:I

    const-string v1, "player_precache_limit"

    sget-object v2, Lcom/google/android/gms/internal/ads/p;->a8:Lcom/google/android/gms/internal/ads/e;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Cn;->DW(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/e;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Cn;->gn:I

    const-string v1, "use_cache_data_source"

    sget-object v2, Lcom/google/android/gms/internal/ads/p;->N2:Lcom/google/android/gms/internal/ads/e;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Cn;->j6(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/e;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Cn;->u7:Z

    const-string v1, "use_dash"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Cn;->j6(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Cn;->tp:Z

    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static DW(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/e;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/e",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static FH(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/e;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/e",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private static j6(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/e;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/e",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Cn;->j6(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static j6(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .registers 4

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    :cond_0
    :goto_0
    return p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method
