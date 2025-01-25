.class public Lcom/baidu/mobstat/du;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/baidu/mobstat/dx;)V
    .registers 4

    .line 16
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    const-string v1, "com.huawei.hwid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    new-instance v1, Lcom/baidu/mobstat/du$1;

    invoke-direct {v1, p1}, Lcom/baidu/mobstat/du$1;-><init>(Lcom/baidu/mobstat/dx;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
