.class Lcom/baidu/mobstat/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    const-string v0, ""

    if-nez p1, :cond_8

    move-object p1, v0

    :cond_8
    iput-object p1, p0, Lcom/baidu/mobstat/f$a;->a:Ljava/lang/String;

    if-nez p2, :cond_d

    move-object p2, v0

    .line 298
    :cond_d
    iput-object p2, p0, Lcom/baidu/mobstat/f$a;->b:Ljava/lang/String;

    if-nez p3, :cond_12

    move-object p3, v0

    .line 299
    :cond_12
    iput-object p3, p0, Lcom/baidu/mobstat/f$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 4

    .line 303
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 305
    :try_start_5
    const-string v1, "n"

    iget-object v2, p0, Lcom/baidu/mobstat/f$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    const-string v1, "v"

    iget-object v2, p0, Lcom/baidu/mobstat/f$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    const-string v1, "w"

    iget-object v2, p0, Lcom/baidu/mobstat/f$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    move-exception v0

    .line 311
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 318
    iget-object v0, p0, Lcom/baidu/mobstat/f$a;->a:Ljava/lang/String;

    return-object v0
.end method
