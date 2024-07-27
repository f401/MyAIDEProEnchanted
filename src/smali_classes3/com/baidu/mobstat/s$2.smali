.class final enum Lcom/baidu/mobstat/s$2;
.super Lcom/baidu/mobstat/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 5

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/mobstat/s;-><init>(Ljava/lang/String;IILcom/baidu/mobstat/s$1;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 7

    const/4 v4, 0x0

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    invoke-static {p1}, Lcom/baidu/mobstat/t;->a(Landroid/content/Context;)Lcom/baidu/mobstat/a;

    move-result-object v1

    .line 44
    new-instance v2, Lcom/baidu/mobstat/aa;

    invoke-direct {v2}, Lcom/baidu/mobstat/aa;-><init>()V

    .line 45
    iput-boolean v4, v2, Lcom/baidu/mobstat/aa;->a:Z

    .line 46
    const-string v3, "M"

    iput-object v3, v2, Lcom/baidu/mobstat/aa;->b:Ljava/lang/String;

    .line 47
    iput-boolean v4, v2, Lcom/baidu/mobstat/aa;->c:Z

    .line 50
    invoke-virtual {v2}, Lcom/baidu/mobstat/aa;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/baidu/mobstat/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 51
    return-void
.end method
