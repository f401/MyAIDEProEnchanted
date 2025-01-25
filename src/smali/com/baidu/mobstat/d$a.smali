.class Lcom/baidu/mobstat/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const-string v0, ""

    if-nez p1, :cond_8

    move-object p1, v0

    :cond_8
    if-nez p2, :cond_b

    move-object p2, v0

    :cond_b
    if-nez p3, :cond_e

    move-object p3, v0

    :cond_e
    if-nez p4, :cond_11

    move-object p4, v0

    .line 149
    :cond_11
    iput-object p1, p0, Lcom/baidu/mobstat/d$a;->a:Ljava/lang/String;

    .line 150
    iput-object p2, p0, Lcom/baidu/mobstat/d$a;->b:Ljava/lang/String;

    .line 151
    iput-object p3, p0, Lcom/baidu/mobstat/d$a;->c:Ljava/lang/String;

    .line 152
    iput-object p4, p0, Lcom/baidu/mobstat/d$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 4

    .line 156
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 158
    :try_start_5
    const-string v1, "n"

    iget-object v2, p0, Lcom/baidu/mobstat/d$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v1, "v"

    iget-object v2, p0, Lcom/baidu/mobstat/d$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v1, "c"

    iget-object v2, p0, Lcom/baidu/mobstat/d$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v1, "a"

    iget-object v2, p0, Lcom/baidu/mobstat/d$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_21} :catch_22

    goto :goto_2b

    :catch_22
    move-exception v0

    .line 163
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_2b
    return-object v0
.end method
