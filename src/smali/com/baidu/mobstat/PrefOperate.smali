.class public Lcom/baidu/mobstat/PrefOperate;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 104
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/CooperService;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static loadMetaDataConfig(Landroid/content/Context;)V
    .registers 7

    .line 13
    const-string v0, "true"

    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

    .line 19
    const/4 v2, 0x0

    :try_start_5
    const-string v3, "BaiduMobAd_EXCEPTION_LOG"

    invoke-static {p0, v3}, Lcom/baidu/mobstat/ds;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 24
    invoke-static {}, Lcom/baidu/mobstat/ExceptionAnalysis;->getInstance()Lcom/baidu/mobstat/ExceptionAnalysis;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/baidu/mobstat/ExceptionAnalysis;->openExceptionAnalysis(Landroid/content/Context;Z)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1e} :catch_1f

    goto :goto_20

    .line 90
    :catch_1f
    move-exception v3

    .line 34
    :cond_20
    :goto_20
    const/16 v3, 0x18

    :try_start_22
    const-string v4, "BaiduMobAd_SEND_STRATEGY"

    invoke-static {p0, v4}, Lcom/baidu/mobstat/ds;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 38
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_84

    .line 39
    sget-object v5, Lcom/baidu/mobstat/SendStrategyEnum;->APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v5}, Lcom/baidu/mobstat/SendStrategyEnum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 40
    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

    .line 41
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v4

    .line 42
    invoke-virtual {v1}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v5

    .line 41
    invoke-virtual {v4, p0, v5}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;I)V

    goto :goto_84

    .line 43
    :cond_48
    sget-object v5, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v5}, Lcom/baidu/mobstat/SendStrategyEnum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 44
    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    .line 45
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v4

    .line 46
    invoke-virtual {v1}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v5

    .line 45
    invoke-virtual {v4, p0, v5}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;I)V

    .line 47
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v4

    invoke-virtual {v4, p0, v3}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;I)V

    goto :goto_84

    .line 49
    :cond_69
    sget-object v5, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    .line 50
    invoke-virtual {v5}, Lcom/baidu/mobstat/SendStrategyEnum;->name()Ljava/lang/String;

    move-result-object v5

    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 51
    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    .line 52
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v4

    .line 53
    invoke-virtual {v1}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v5

    .line 52
    invoke-virtual {v4, p0, v5}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;I)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_82} :catch_83

    goto :goto_84

    .line 90
    :catch_83
    move-exception v4

    .line 63
    :cond_84
    :goto_84
    :try_start_84
    const-string v4, "BaiduMobAd_TIME_INTERVAL"

    invoke-static {p0, v4}, Lcom/baidu/mobstat/ds;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_ad

    .line 68
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 69
    invoke-virtual {v1}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v1

    sget-object v5, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    .line 70
    invoke-virtual {v5}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v5

    if-ne v1, v5, :cond_ad

    if-lez v4, :cond_ad

    if-gt v4, v3, :cond_ad

    .line 71
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v1

    invoke-virtual {v1, p0, v4}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;I)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_ab} :catch_ac

    goto :goto_ad

    .line 90
    :catch_ac
    move-exception v1

    .line 82
    :cond_ad
    :goto_ad
    :try_start_ad
    const-string v1, "BaiduMobAd_ONLY_WIFI"

    invoke-static {p0, v1}, Lcom/baidu/mobstat/ds;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d9

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 88
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Z)V

    goto :goto_d9

    .line 89
    :cond_c8
    const-string v0, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 90
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/baidu/mobstat/dl;->a(Landroid/content/Context;Z)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_d7} :catch_d8

    goto :goto_d9

    :catch_d8
    move-exception p0

    :cond_d9
    :goto_d9
    return-void
.end method

.method public static setAppChannel(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 6

    .line 131
    const-string v0, ""

    if-eqz p1, :cond_a

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 132
    :cond_a
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v1

    .line 133
    const-string v2, "[WARNING] The channel you have set is empty"

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    .line 135
    :cond_13
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/HeadObject;

    move-result-object v1

    iput-object p1, v1, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    if-eqz p2, :cond_36

    if-eqz p1, :cond_36

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 137
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/baidu/mobstat/dl;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v1}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Z)V

    :cond_36
    if-nez p2, :cond_47

    .line 145
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/baidu/mobstat/dl;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/baidu/mobstat/dl;->b(Landroid/content/Context;Z)V

    :cond_47
    return-void
.end method

.method public static setAppChannel(Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_a

    .line 113
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 114
    :cond_a
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    .line 115
    const-string v1, "[WARNING] The channel you have set is empty"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->c(Ljava/lang/String;)V

    .line 118
    :cond_13
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/HeadObject;

    move-result-object v0

    iput-object p0, v0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    return-void
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .registers 2

    .line 100
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/HeadObject;

    move-result-object v0

    iput-object p0, v0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    return-void
.end method
