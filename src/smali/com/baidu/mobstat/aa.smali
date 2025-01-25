.class public Lcom/baidu/mobstat/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/aa;->a:Z

    .line 21
    const-string v1, ""

    iput-object v1, p0, Lcom/baidu/mobstat/aa;->b:Ljava/lang/String;

    .line 23
    iput-boolean v0, p0, Lcom/baidu/mobstat/aa;->c:Z

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/aa;->a:Z

    .line 21
    const-string v1, ""

    iput-object v1, p0, Lcom/baidu/mobstat/aa;->b:Ljava/lang/String;

    .line 23
    iput-boolean v0, p0, Lcom/baidu/mobstat/aa;->c:Z

    .line 30
    :try_start_c
    const-string v0, "SDK_BPLUS_SERVICE"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/mobstat/aa;->a:Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception v0

    .line 32
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V

    .line 36
    :goto_1d
    :try_start_1d
    const-string v0, "SDK_PRODUCT_LY"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/aa;->b:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_26

    goto :goto_2e

    :catch_26
    move-exception v0

    .line 38
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V

    .line 42
    :goto_2e
    :try_start_2e
    const-string v0, "SDK_LOCAL_SERVER"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/baidu/mobstat/aa;->c:Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_36} :catch_37

    goto :goto_3f

    :catch_37
    move-exception p1

    .line 44
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V

    :goto_3f
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 4

    .line 49
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 52
    :try_start_5
    const-string v1, "SDK_BPLUS_SERVICE"

    iget-boolean v2, p0, Lcom/baidu/mobstat/aa;->a:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception v1

    .line 54
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V

    .line 58
    :goto_15
    :try_start_15
    const-string v1, "SDK_PRODUCT_LY"

    iget-object v2, p0, Lcom/baidu/mobstat/aa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1c} :catch_1d

    goto :goto_25

    :catch_1d
    move-exception v1

    .line 60
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V

    .line 64
    :goto_25
    :try_start_25
    const-string v1, "SDK_LOCAL_SERVER"

    iget-boolean v2, p0, Lcom/baidu/mobstat/aa;->c:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_2c} :catch_2d

    goto :goto_35

    :catch_2d
    move-exception v1

    .line 66
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V

    :goto_35
    return-object v0
.end method
