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
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/baidu/mobstat/cr$3;->b:Lcom/baidu/mobstat/cr;

    iput-object p2, p0, Lcom/baidu/mobstat/cr$3;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 380
    iget-object v0, p0, Lcom/baidu/mobstat/cr$3;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/cr$3;->b:Lcom/baidu/mobstat/cr;

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->a(Lcom/baidu/mobstat/cr;)Lorg/json/JSONArray;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/cr$3;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/cr;->a(Lcom/baidu/mobstat/cr;Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/cr;->a(Lcom/baidu/mobstat/cr;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    goto :goto_0
.end method
