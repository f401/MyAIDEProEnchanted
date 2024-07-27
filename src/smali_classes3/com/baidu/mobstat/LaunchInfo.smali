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
    .registers 6

    .line 91
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :try_start_1
    const-string v1, "type"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    if-eqz p1, :cond_0

    :goto_0
    const-string v1, "referer"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    if-eqz p2, :cond_1

    :goto_1
    const-string v1, "info"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v1, "content"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    :goto_2
    return-object v0

    .line 96
    :cond_0
    const-string p1, ""

    goto :goto_0

    .line 97
    :cond_1
    const-string p2, ""

    goto :goto_1

    .line 101
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static getLauncherHomePkgName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 109
    invoke-static {p0}, Lcom/baidu/mobstat/de;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public getLaunchType(Landroid/content/Context;)I
    .registers 5

    const/4 v0, 0x1

    .line 62
    iget-object v1, p0, Lcom/baidu/mobstat/LaunchInfo;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    const/4 v0, 0x2

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    const-string v1, ""

    .line 67
    if-eqz p1, :cond_2

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 71
    :cond_2
    iget-object v2, p0, Lcom/baidu/mobstat/LaunchInfo;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/baidu/mobstat/LaunchInfo;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 72
    invoke-static {p1}, Lcom/baidu/mobstat/de;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 76
    iget-object v2, p0, Lcom/baidu/mobstat/LaunchInfo;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 81
    :cond_4
    iget-object v1, p0, Lcom/baidu/mobstat/LaunchInfo;->c:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/baidu/mobstat/de;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public getPushContent()Ljava/lang/String;
    .registers 3

    .line 29
    const-string v0, ""

    .line 31
    iget-object v1, p0, Lcom/baidu/mobstat/LaunchInfo;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/baidu/mobstat/LaunchInfo;->b:Ljava/lang/String;

    .line 35
    :cond_0
    return-object v0
.end method

.method public getPushLandingPage()Ljava/lang/String;
    .registers 3

    .line 19
    const-string v0, ""

    .line 21
    iget-object v1, p0, Lcom/baidu/mobstat/LaunchInfo;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 22
    iget-object v0, p0, Lcom/baidu/mobstat/LaunchInfo;->a:Ljava/lang/String;

    .line 25
    :cond_0
    return-object v0
.end method

.method public getRefererPkgName()Ljava/lang/String;
    .registers 3

    .line 39
    const-string v0, ""

    .line 41
    iget-object v1, p0, Lcom/baidu/mobstat/LaunchInfo;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/baidu/mobstat/LaunchInfo;->c:Ljava/lang/String;

    .line 45
    :cond_0
    return-object v0
.end method

.method public setPushInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 49
    iput-object p1, p0, Lcom/baidu/mobstat/LaunchInfo;->a:Ljava/lang/String;

    .line 52
    const/16 v0, 0x400

    invoke-static {p2, v0}, Lcom/baidu/mobstat/dt;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/baidu/mobstat/LaunchInfo;->b:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setRefererPkgName(Ljava/lang/String;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/baidu/mobstat/LaunchInfo;->c:Ljava/lang/String;

    .line 59
    return-void
.end method
