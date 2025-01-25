.class public Lcom/baidu/mobstat/ExtraInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->a:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->b:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->c:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->d:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->e:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->f:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->g:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->h:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->i:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->j:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    move-object p0, v1

    .line 40
    :cond_9
    const/16 v0, 0x400

    invoke-static {p0, v0}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_13

    :cond_12
    move-object v1, p0

    :goto_13
    return-object v1
.end method

.method private static a(Ljava/lang/String;I)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 27
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_c

    :catch_a
    move-exception p0

    const/4 p0, 0x0

    :goto_c
    if-le p0, p1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method


# virtual methods
.method public dumpToJson()Lorg/json/JSONObject;
    .registers 4

    .line 129
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 131
    :try_start_5
    iget-object v1, p0, Lcom/baidu/mobstat/ExtraInfo;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 132
    const-string v1, "v1"

    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    :cond_14
    iget-object v1, p0, Lcom/baidu/mobstat/ExtraInfo;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 135
    const-string v1, "v2"

    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    :cond_23
    iget-object v1, p0, Lcom/baidu/mobstat/ExtraInfo;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 138
    const-string v1, "v3"

    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    :cond_32
    iget-object v1, p0, Lcom/baidu/mobstat/ExtraInfo;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 141
    const-string v1, "v4"

    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    :cond_41
    iget-object v1, p0, Lcom/baidu/mobstat/ExtraInfo;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 144
    const-string v1, "v5"

    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    :cond_50
    iget-object v1, p0, Lcom/baidu/mobstat/ExtraInfo;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 147
    const-string v1, "v6"

    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    :cond_5f
    iget-object v1, p0, Lcom/baidu/mobstat/ExtraInfo;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6e

    .line 150
    const-string v1, "v7"

    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    :cond_6e
    iget-object v1, p0, Lcom/baidu/mobstat/ExtraInfo;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7d

    .line 153
    const-string v1, "v8"

    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    :cond_7d
    iget-object v1, p0, Lcom/baidu/mobstat/ExtraInfo;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8c

    .line 156
    const-string v1, "v9"

    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    :cond_8c
    iget-object v1, p0, Lcom/baidu/mobstat/ExtraInfo;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9d

    .line 159
    const-string v1, "v10"

    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_9b} :catch_9c

    goto :goto_9d

    :catch_9c
    move-exception v1

    :cond_9d
    :goto_9d
    return-object v0
.end method

.method public getV1()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getV10()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getV2()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getV3()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getV4()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getV5()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getV6()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getV7()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getV8()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getV9()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public setV1(Ljava/lang/String;)V
    .registers 2

    .line 53
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/ExtraInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setV10(Ljava/lang/String;)V
    .registers 2

    .line 125
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/ExtraInfo;->j:Ljava/lang/String;

    return-void
.end method

.method public setV2(Ljava/lang/String;)V
    .registers 2

    .line 61
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/ExtraInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setV3(Ljava/lang/String;)V
    .registers 2

    .line 69
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/ExtraInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setV4(Ljava/lang/String;)V
    .registers 2

    .line 77
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/ExtraInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public setV5(Ljava/lang/String;)V
    .registers 2

    .line 85
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/ExtraInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public setV6(Ljava/lang/String;)V
    .registers 2

    .line 93
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/ExtraInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public setV7(Ljava/lang/String;)V
    .registers 2

    .line 101
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/ExtraInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public setV8(Ljava/lang/String;)V
    .registers 2

    .line 109
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/ExtraInfo;->h:Ljava/lang/String;

    return-void
.end method

.method public setV9(Ljava/lang/String;)V
    .registers 2

    .line 117
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/ExtraInfo;->i:Ljava/lang/String;

    return-void
.end method
