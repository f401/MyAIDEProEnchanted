.class public Lcom/baidu/mobstat/LaunchInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConvertedJson(ILjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5

    .line 94
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_2a

    .line 95
    :try_start_5
    const-string v1, "type"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_28

    .line 96
    const-string p0, ""

    if-eqz p1, :cond_13

    goto :goto_14

    :cond_13
    move-object p1, p0

    :goto_14
    :try_start_14
    const-string v1, "referer"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    if-eqz p2, :cond_1c

    goto :goto_1d

    :cond_1c
    move-object p2, p0

    :goto_1d
    const-string p1, "info"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string p1, "content"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception p0

    goto :goto_2c

    :catch_2a
    move-exception p0

    const/4 v0, 0x0

    :goto_2c
    return-object v0
.end method

.method public static getLauncherHomePkgName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 111
    invoke-static {p0}, Lcom/baidu/mobstat/de;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 112
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const-string p0, ""

    :goto_d
    return-object p0
.end method


# virtual methods
.method public getLaunchType(Landroid/content/Context;)I
    .registers 5

    .line 62
    iget-object v0, p0, Lcom/baidu/mobstat/LaunchInfo;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x2

    return p1

    :cond_a
    if-eqz p1, :cond_11

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 67
    :cond_11
    const-string v0, ""

    .line 71
    :goto_13
    iget-object v1, p0, Lcom/baidu/mobstat/LaunchInfo;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_40

    iget-object v1, p0, Lcom/baidu/mobstat/LaunchInfo;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 72
    invoke-static {p1}, Lcom/baidu/mobstat/de;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_37

    .line 76
    iget-object p1, p0, Lcom/baidu/mobstat/LaunchInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    return v2

    .line 81
    :cond_37
    iget-object v0, p0, Lcom/baidu/mobstat/LaunchInfo;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/baidu/mobstat/de;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_40

    return v2

    :cond_40
    const/4 p1, 0x0

    return p1
.end method

.method public getPushContent()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/baidu/mobstat/LaunchInfo;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 32
    iget-object v0, p0, Lcom/baidu/mobstat/LaunchInfo;->b:Ljava/lang/String;

    goto :goto_d

    .line 31
    :cond_b
    const-string v0, ""

    :goto_d
    return-object v0
.end method

.method public getPushLandingPage()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/baidu/mobstat/LaunchInfo;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 22
    iget-object v0, p0, Lcom/baidu/mobstat/LaunchInfo;->a:Ljava/lang/String;

    goto :goto_d

    .line 21
    :cond_b
    const-string v0, ""

    :goto_d
    return-object v0
.end method

.method public getRefererPkgName()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/baidu/mobstat/LaunchInfo;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 42
    iget-object v0, p0, Lcom/baidu/mobstat/LaunchInfo;->c:Ljava/lang/String;

    goto :goto_d

    .line 41
    :cond_b
    const-string v0, ""

    :goto_d
    return-object v0
.end method

.method public setPushInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 49
    iput-object p1, p0, Lcom/baidu/mobstat/LaunchInfo;->a:Ljava/lang/String;

    .line 52
    const/16 p1, 0x400

    invoke-static {p2, p1}, Lcom/baidu/mobstat/dt;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/baidu/mobstat/LaunchInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setRefererPkgName(Ljava/lang/String;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/baidu/mobstat/LaunchInfo;->c:Ljava/lang/String;

    return-void
.end method
