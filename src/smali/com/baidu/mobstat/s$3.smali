.class final enum Lcom/baidu/mobstat/s$3;
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

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/mobstat/s;-><init>(Ljava/lang/String;IILcom/baidu/mobstat/s$1;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 6

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    invoke-static {p1}, Lcom/baidu/mobstat/t;->a(Landroid/content/Context;)Lcom/baidu/mobstat/a;

    move-result-object p1

    .line 61
    new-instance v1, Lcom/baidu/mobstat/aa;

    invoke-direct {v1}, Lcom/baidu/mobstat/aa;-><init>()V

    .line 62
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/baidu/mobstat/aa;->a:Z

    .line 63
    const-string v3, "R"

    iput-object v3, v1, Lcom/baidu/mobstat/aa;->b:Ljava/lang/String;

    .line 64
    iput-boolean v2, v1, Lcom/baidu/mobstat/aa;->c:Z

    .line 67
    invoke-virtual {v1}, Lcom/baidu/mobstat/aa;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/baidu/mobstat/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method
