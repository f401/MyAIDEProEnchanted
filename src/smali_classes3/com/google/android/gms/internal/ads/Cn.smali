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
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_d

    :catch_b
    move-exception p1

    :cond_c
    const/4 v0, 0x0

    :goto_d
    const-string p1, "aggressive_media_codec_release"

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->dx:Lcom/google/android/gms/internal/ads/e;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Cn;->j6(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/e;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Cn;->j6:Z

    const-string p1, "byte_buffer_precache_limit"

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->lg:Lcom/google/android/gms/internal/ads/e;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Cn;->DW(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/e;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/Cn;->DW:I

    const-string p1, "exo_cache_buffer_size"

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->gW:Lcom/google/android/gms/internal/ads/e;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Cn;->DW(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/e;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/Cn;->FH:I

    const-string p1, "exo_connect_timeout_millis"

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->j3:Lcom/google/android/gms/internal/ads/e;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Cn;->DW(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/e;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/Cn;->Hw:I

    const-string p1, "exo_player_version"

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->aM:Lcom/google/android/gms/internal/ads/e;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Cn;->FH(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/e;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Cn;->v5:Ljava/lang/String;

    const-string p1, "exo_read_timeout_millis"

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->Mr:Lcom/google/android/gms/internal/ads/e;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Cn;->DW(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/e;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/Cn;->Zo:I

    const-string p1, "load_check_interval_bytes"

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->U2:Lcom/google/android/gms/internal/ads/e;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Cn;->DW(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/e;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/Cn;->VH:I

    const-string p1, "player_precache_limit"

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->a8:Lcom/google/android/gms/internal/ads/e;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Cn;->DW(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/e;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/Cn;->gn:I

    const-string p1, "use_cache_data_source"

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->N2:Lcom/google/android/gms/internal/ads/e;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Cn;->j6(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/e;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Cn;->u7:Z

    const-string p1, "use_dash"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Cn;->j6(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Cn;->tp:Z

    return-void
.end method

.method private static DW(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/e;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/e<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    if-eqz p0, :cond_8

    :try_start_2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static FH(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/e;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/e<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_8

    :try_start_2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static j6(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/e;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/e<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Cn;->j6(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static j6(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .registers 3

    if-eqz p0, :cond_8

    :try_start_2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    :cond_8
    return p2
.end method
