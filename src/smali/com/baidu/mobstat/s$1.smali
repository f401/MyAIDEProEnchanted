.class final enum Lcom/baidu/mobstat/s$1;
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

    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/mobstat/s;-><init>(Ljava/lang/String;IILcom/baidu/mobstat/s$1;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 5

    .line 20
    invoke-static {p1}, Lcom/baidu/mobstat/t;->a(Landroid/content/Context;)Lcom/baidu/mobstat/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/mobstat/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 26
    :cond_b
    :try_start_b
    const-string v0, "com.baidu.bottom.service.BottomService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 27
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    const-string v0, "SDK_PRODUCT_LY"

    const-string v2, "MS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_21

    goto :goto_29

    :catchall_21
    move-exception p1

    .line 32
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V

    :goto_29
    return-void
.end method
