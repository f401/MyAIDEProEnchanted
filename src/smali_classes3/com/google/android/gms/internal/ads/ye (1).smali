.class public final Lcom/google/android/gms/internal/ads/ye;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/google/android/gms/internal/ads/cm;->j6()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, "fakeForAdDebugLog"

    :cond_e
    return-object p0
.end method

.method private static j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p2, ""

    :cond_8
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_25

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_10
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_20

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_20
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public static j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/kk;Ljava/lang/String;ZLjava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/kk;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p5, :cond_79

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_79

    :cond_9
    if-eqz p4, :cond_e

    const-string p4, "1"

    goto :goto_10

    :cond_e
    const-string p4, "0"

    :goto_10
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_14
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "@gw_adlocid@"

    invoke-static {v0, v1, p3}, Lcom/google/android/gms/internal/ads/ye;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_adnetrefresh@"

    invoke-static {v0, v1, p4}, Lcom/google/android/gms/internal/ads/ye;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/kk;->j3:Lcom/google/android/gms/internal/ads/qe;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/qe;->u7:Ljava/lang/String;

    const-string v2, "@gw_qdata@"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/ye;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_sdkver@"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/ye;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_sessid@"

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->Zo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ye;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_seqnum@"

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/kk;->tp:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ye;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_adnetstatus@"

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/kk;->a8:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ye;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    if-eqz v1, :cond_6c

    const-string v2, "@gw_adnetid@"

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/pe;->DW:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/ye;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/kk;->QX:Lcom/google/android/gms/internal/ads/pe;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/pe;->Hw:Ljava/lang/String;

    const-string v2, "@gw_allocid@"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/ye;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6c
    iget-boolean v1, p2, Lcom/google/android/gms/internal/ads/kk;->I:Z

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/internal/ads/dk;->j6(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_79
    :goto_79
    return-void
.end method

.method public static j6(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzawd;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzawd;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_68

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_68

    :cond_9
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/ye;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/ye;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "@gw_rwd_userid@"

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/ye;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "@gw_rwd_custom_data@"

    invoke-static {p4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/ye;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "@gw_tmstmp@"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/ye;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p5, :cond_61

    iget-object v3, p5, Lcom/google/android/gms/internal/ads/zzawd;->j6:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "@gw_rwd_itm@"

    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/ads/ye;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, p5, Lcom/google/android/gms/internal/ads/zzawd;->DW:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "@gw_rwd_amt@"

    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/ads/ye;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_61
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {p0, p1, v2}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_68
    :goto_68
    return-void
.end method

.method public static j6(Ljava/lang/String;[I)Z
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    array-length v0, p1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    return v1

    :cond_d
    const-string v0, "x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    if-eq v0, v2, :cond_17

    return v1

    :cond_17
    :try_start_17
    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, p1, v1

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    aput p0, p1, v0
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_28} :catch_29

    return v0

    :catch_29
    move-exception p0

    return v1
.end method
