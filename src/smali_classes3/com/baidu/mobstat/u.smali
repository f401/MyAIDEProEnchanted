.class Lcom/baidu/mobstat/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/a;


# instance fields
.field private a:Lcom/baidu/mobstat/x;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/baidu/mobstat/x;->a:Lcom/baidu/mobstat/x;

    iput-object v0, p0, Lcom/baidu/mobstat/u;->a:Lcom/baidu/mobstat/x;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;J)V
    .registers 6

    .line 40
    iget-object v0, p0, Lcom/baidu/mobstat/u;->a:Lcom/baidu/mobstat/x;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/mobstat/x;->a(Landroid/content/Context;J)V

    .line 41
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 30
    iget-object v0, p0, Lcom/baidu/mobstat/u;->a:Lcom/baidu/mobstat/x;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/x;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 4

    .line 25
    iget-object v0, p0, Lcom/baidu/mobstat/u;->a:Lcom/baidu/mobstat/x;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/x;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 26
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/baidu/mobstat/u;->a:Lcom/baidu/mobstat/x;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/x;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 35
    iget-object v0, p0, Lcom/baidu/mobstat/u;->a:Lcom/baidu/mobstat/x;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/x;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public b(Landroid/content/Context;)Z
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/baidu/mobstat/u;->a:Lcom/baidu/mobstat/x;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/x;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
