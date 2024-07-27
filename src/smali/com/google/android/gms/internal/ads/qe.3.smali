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
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final Hw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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
            "Ljava/util/List",
            "<",
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
            "Ljava/util/List",
            "<",
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
            "Ljava/util/List",
            "<",
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
            "Ljava/util/List",
            "<",
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
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/pe;",
            ">;J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "JII",
            "Ljava/lang/String;",
            "IIJZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qe;->j6:Ljava/util/List;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/qe;->DW:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/qe;->FH:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/qe;->Hw:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/qe;->v5:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/qe;->Zo:Ljava/util/List;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/qe;->VH:Ljava/util/List;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/qe;->gn:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/qe;->u7:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/qe;->tp:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/qe;->j3:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/qe;->Mr:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qe;->EQ:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/qe;->we:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/qe;->J0:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/qe;->J8:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/qe;->Ws:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/qe;->QX:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/qe;->XL:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/qe;->aM:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/qe;->U2:Z

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 15

    const/4 v5, 0x1

    const/4 v2, -0x1

    const-wide/16 v6, -0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->j6(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Mediation Response JSON: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    :cond_0
    const-string v0, "ad_networks"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    move v3, v4

    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_5

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/pe;

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/pe;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pe;->j6()Z

    move-result v10

    if-eqz v10, :cond_1

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/qe;->U2:Z

    :cond_1
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-gez v1, :cond_9

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/pe;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v11, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    :goto_2
    if-eqz v0, :cond_9

    move v0, v3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mediation Response JSON: "

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_2

    :cond_5
    iput v1, p0, Lcom/google/android/gms/internal/ads/qe;->j3:I

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/qe;->Mr:I

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

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

    invoke-virtual {p1, v0, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/qe;->J8:J

    const-string v0, "settings"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v0, "ad_network_timeout_millis"

    invoke-virtual {v2, v0, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/qe;->DW:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    const-string v0, "click_urls"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/ye;->j6(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qe;->FH:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    const-string v0, "imp_urls"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/ye;->j6(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qe;->Hw:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    const-string v0, "downloaded_imp_urls"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/ye;->j6(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qe;->v5:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    const-string v0, "nofill_urls"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/ye;->j6(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qe;->Zo:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->er()Lcom/google/android/gms/internal/ads/ye;

    const-string v0, "remote_ping_urls"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/ye;->j6(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qe;->VH:Ljava/util/List;

    const-string v0, "render_in_browser"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/qe;->gn:Z

    const-string v0, "refresh"

    invoke-virtual {v2, v0, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmp-long v3, v0, v8

    if-lez v3, :cond_8

    const-wide/16 v6, 0x3e8

    mul-long/2addr v0, v6

    :goto_4
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/qe;->tp:J

    const-string v0, "rewards"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawd;->j6(Lorg/json/JSONArray;)Lcom/google/android/gms/internal/ads/zzawd;

    move-result-object v0

    if-nez v0, :cond_6

    iput-object v12, p0, Lcom/google/android/gms/internal/ads/qe;->EQ:Ljava/lang/String;

    iput v4, p0, Lcom/google/android/gms/internal/ads/qe;->we:I

    :goto_5
    const-string v0, "use_displayed_impression"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/qe;->Ws:Z

    const-string v0, "allow_pub_rendered_attribution"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/qe;->QX:Z

    const-string v0, "allow_pub_owned_ad_view"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/qe;->XL:Z

    const-string v0, "allow_custom_click_gesture"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/qe;->aM:Z

    :goto_6
    return-void

    :cond_6
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzawd;->j6:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/qe;->EQ:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzawd;->DW:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/qe;->we:I

    goto :goto_5

    :cond_7
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/qe;->DW:J

    iput-object v12, p0, Lcom/google/android/gms/internal/ads/qe;->FH:Ljava/util/List;

    iput-object v12, p0, Lcom/google/android/gms/internal/ads/qe;->Hw:Ljava/util/List;

    iput-object v12, p0, Lcom/google/android/gms/internal/ads/qe;->v5:Ljava/util/List;

    iput-object v12, p0, Lcom/google/android/gms/internal/ads/qe;->Zo:Ljava/util/List;

    iput-object v12, p0, Lcom/google/android/gms/internal/ads/qe;->VH:Ljava/util/List;

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/qe;->tp:J

    iput-object v12, p0, Lcom/google/android/gms/internal/ads/qe;->EQ:Ljava/lang/String;

    iput v4, p0, Lcom/google/android/gms/internal/ads/qe;->we:I

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/qe;->Ws:Z

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/qe;->gn:Z

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/qe;->QX:Z

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/qe;->XL:Z

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/qe;->aM:Z

    goto :goto_6

    :catch_0
    move-exception v0

    move v0, v1

    goto/16 :goto_3

    :cond_8
    move-wide v0, v6

    goto :goto_4

    :cond_9
    move v0, v1

    goto/16 :goto_3
.end method
