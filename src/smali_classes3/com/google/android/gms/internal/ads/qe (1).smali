.class public final Lcom/google/android/gms/internal/ads/qe;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field public final DW:J

.field public final EQ:Ljava/lang/String;

.field public final FH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final Hw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final J0:I

.field public final J8:J

.field public Mr:I

.field public final QX:Z

.field public U2:Z

.field public final VH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final Ws:Z

.field public final XL:Z

.field public final Zo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final aM:Z

.field public final gn:Z

.field public j3:I

.field public final j6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/pe;",
            ">;"
        }
    .end annotation
.end field

.field public final tp:J

.field public final u7:Ljava/lang/String;

.field public final v5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final we:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/qe;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;JIILjava/lang/String;IIJZ)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/pe;",
            ">;J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "JII",
            "Ljava/lang/String;",
            "IIJZ)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/qe;->j6:Ljava/util/List;

    move-wide v1, p2

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/qe;->DW:J

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/qe;->FH:Ljava/util/List;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/qe;->Hw:Ljava/util/List;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/qe;->v5:Ljava/util/List;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/qe;->Zo:Ljava/util/List;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/qe;->VH:Ljava/util/List;

    move v1, p9

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/qe;->gn:Z

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/qe;->u7:Ljava/lang/String;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/qe;->tp:J

    const/4 v3, 0x0

    iput v3, v0, Lcom/google/android/gms/internal/ads/qe;->j3:I

    const/4 v4, 0x1

    iput v4, v0, Lcom/google/android/gms/internal/ads/qe;->Mr:I

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/qe;->EQ:Ljava/lang/String;

    iput v3, v0, Lcom/google/android/gms/internal/ads/qe;->we:I

    const/4 v4, -0x1

    iput v4, v0, Lcom/google/android/gms/internal/ads/qe;->J0:I

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/qe;->J8:J

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/qe;->Ws:Z

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/qe;->QX:Z

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/qe;->XL:Z

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/qe;->aM:Z

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/qe;->U2:Z

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->j6(I)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Mediation Response JSON: "

    if-eqz v1, :cond_1f

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_1f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_24
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    :cond_27
    const-string v0, "ad_networks"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_3a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_7b

    :try_start_40
    new-instance v6, Lcom/google/android/gms/internal/ads/pe;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/pe;-><init>(Lorg/json/JSONObject;)V
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_49} :catch_77

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/pe;->j6()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_52

    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/qe;->U2:Z

    :cond_52
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-gez v5, :cond_78

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/pe;->FH:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_72

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5d

    goto :goto_73

    :cond_72
    const/4 v8, 0x0

    :goto_73
    if-eqz v8, :cond_78

    move v5, v4

    goto :goto_78

    :catch_77
    move-exception v6

    :cond_78
    :goto_78
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    :cond_7b
    iput v5, p0, Lcom/google/android/gms/internal/ads/qe;->j3:I

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/qe;->Mr:I

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qe;->j6:Ljava/util/List;

    const-string v0, "qdata"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qe;->u7:Ljava/lang/String;

    const-string v0, "fs_model_type"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/qe;->J0:I

    const-string v0, "timeout_ms"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/qe;->J8:J

    const-string v0, "settings"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_13f

    const-string v4, "ad_network_timeout_millis"

    invoke-virtual {p1, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/qe;->DW:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    const-string v4, "click_urls"

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/ye;->j6(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/qe;->FH:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    const-string v4, "imp_urls"

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/ye;->j6(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/qe;->Hw:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    const-string v4, "downloaded_imp_urls"

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/ye;->j6(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/qe;->v5:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    const-string v4, "nofill_urls"

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/ye;->j6(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/qe;->Zo:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    const-string v4, "remote_ping_urls"

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/ye;->j6(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/qe;->VH:Ljava/util/List;

    const-string v4, "render_in_browser"

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/qe;->gn:Z

    const-string v4, "refresh"

    invoke-virtual {p1, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_103

    const-wide/16 v1, 0x3e8

    mul-long v1, v1, v4

    :cond_103
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/qe;->tp:J

    const-string v1, "rewards"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzawd;->j6(Lorg/json/JSONArray;)Lcom/google/android/gms/internal/ads/zzawd;

    move-result-object v1

    if-nez v1, :cond_116

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qe;->EQ:Ljava/lang/String;

    iput v3, p0, Lcom/google/android/gms/internal/ads/qe;->we:I

    goto :goto_11e

    :cond_116
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzawd;->j6:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qe;->EQ:Ljava/lang/String;

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzawd;->DW:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/qe;->we:I

    :goto_11e
    const-string v0, "use_displayed_impression"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/qe;->Ws:Z

    const-string v0, "allow_pub_rendered_attribution"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/qe;->QX:Z

    const-string v0, "allow_pub_owned_ad_view"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/qe;->XL:Z

    const-string v0, "allow_custom_click_gesture"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/qe;->aM:Z

    return-void

    :cond_13f
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/qe;->DW:J

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qe;->FH:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qe;->Hw:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qe;->v5:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qe;->Zo:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qe;->VH:Ljava/util/List;

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/qe;->tp:J

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qe;->EQ:Ljava/lang/String;

    iput v3, p0, Lcom/google/android/gms/internal/ads/qe;->we:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/qe;->Ws:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/qe;->gn:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/qe;->QX:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/qe;->XL:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/qe;->aM:Z

    return-void
.end method
