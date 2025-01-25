.class public Lcom/baidu/mobstat/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 7

    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    :try_start_5
    const-string v1, "s"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    const-string v1, "sv"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/dq;->b()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_26

    .line 34
    invoke-static {v3, p0}, Lcom/baidu/mobstat/ds;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 36
    :cond_26
    const-string v2, "ii"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string v1, "w"

    invoke-static {p0}, Lcom/baidu/mobstat/ds;->c(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    const-string v1, "h"

    invoke-static {p0}, Lcom/baidu/mobstat/ds;->d(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    const-string v1, "ly"

    sget-object v2, Lcom/baidu/mobstat/z;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v1, "pv"

    const-string v2, "35"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_53} :catch_f9

    .line 47
    const/4 v4, 0x0

    :try_start_54
    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 48
    const-string v2, "pn"

    invoke-static {v3, p0}, Lcom/baidu/mobstat/ds;->n(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v2, "a"

    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    const-string v2, "n"

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_6f} :catch_70
    .catch Lorg/json/JSONException; {:try_start_54 .. :try_end_6f} :catch_f9

    goto :goto_78

    :catch_70
    move-exception v1

    .line 52
    :try_start_71
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    .line 55
    :goto_78
    const-string v1, "mc"

    invoke-static {v3, p0}, Lcom/baidu/mobstat/ds;->h(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v1, "bm"

    invoke-static {v3, p0}, Lcom/baidu/mobstat/ds;->l(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v1, "m"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v1, "dn"

    invoke-static {p0, v3}, Lcom/baidu/mobstat/ds;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 61
    const-string v2, "failed_cnt"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    const-string v2, "send_index"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    invoke-static {}, Lcom/baidu/mobstat/ds;->b()Ljava/lang/String;

    move-result-object v2
    :try_end_ad
    .catch Lorg/json/JSONException; {:try_start_71 .. :try_end_ad} :catch_f9

    .line 65
    if-nez v2, :cond_b1

    const-string v2, ""

    :cond_b1
    :try_start_b1
    const-string v4, "rom"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v2, "trace"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v1, "od"

    invoke-static {v3, p0}, Lcom/baidu/mobstat/ds;->b(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v1, "out_od"

    invoke-static {v3, p0}, Lcom/baidu/mobstat/ds;->c(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v1, "from"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v1, "gaid"

    invoke-static {v3, p0}, Lcom/baidu/mobstat/ds;->e(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v1, "iid"

    invoke-static {v3, p0}, Lcom/baidu/mobstat/ds;->d(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v1, "ii3"

    invoke-static {v3, p0}, Lcom/baidu/mobstat/ds;->f(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v1, "ssaid"

    invoke-static {v3, p0}, Lcom/baidu/mobstat/ds;->g(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f8
    .catch Lorg/json/JSONException; {:try_start_b1 .. :try_end_f8} :catch_f9

    goto :goto_101

    :catch_f9
    move-exception p0

    .line 82
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V

    :goto_101
    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 95
    :cond_4
    :try_start_4
    const-string v1, "payload"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONArray;

    if-eqz p0, :cond_1c

    .line 97
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1c

    .line 98
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    goto :goto_1d

    :cond_1c
    move-object p0, v0

    :goto_1d
    if-eqz p0, :cond_27

    .line 102
    const-string v1, "he"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_26

    goto :goto_27

    :catch_26
    move-exception p0

    :cond_27
    :goto_27
    return-object v0
.end method

.method public static b(Lorg/json/JSONObject;)V
    .registers 6

    .line 113
    const-string v0, "failed_cnt"

    :try_start_2
    const-string v1, "trace"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 114
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 115
    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception p0

    :goto_14
    return-void
.end method

.method public static c(Lorg/json/JSONObject;)V
    .registers 6

    .line 123
    const-string v0, "send_index"

    :try_start_2
    const-string v1, "trace"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 124
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 125
    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception p0

    :goto_14
    return-void
.end method
