.class Lcom/baidu/mobstat/cr$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/cr;->a(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lorg/json/JSONObject;

.field final b:Lcom/baidu/mobstat/cr;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/cr;Lorg/json/JSONObject;)V
    .registers 3

    .line 376
    iput-object p1, p0, Lcom/baidu/mobstat/cr$3;->b:Lcom/baidu/mobstat/cr;

    iput-object p2, p0, Lcom/baidu/mobstat/cr$3;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 380
    iget-object v0, p0, Lcom/baidu/mobstat/cr$3;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/cr$3;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/cr$3;->b:Lcom/baidu/mobstat/cr;

    iget-object v1, p0, Lcom/baidu/mobstat/cr$3;->b:Lcom/baidu/mobstat/cr;

    iget-object v2, p0, Lcom/baidu/mobstat/cr$3;->b:Lcom/baidu/mobstat/cr;

    invoke-static {v2}, Lcom/baidu/mobstat/cr;->a(Lcom/baidu/mobstat/cr;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobstat/cr$3;->a:Lorg/json/JSONObject;

    invoke-static {v1, v2, v3}, Lcom/baidu/mobstat/cr;->a(Lcom/baidu/mobstat/cr;Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/cr;->a(Lcom/baidu/mobstat/cr;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    goto :goto_0
.end method
