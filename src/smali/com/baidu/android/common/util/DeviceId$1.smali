.class Lcom/baidu/android/common/util/DeviceId$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/common/util/DeviceId;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/bw$a;

.field final b:Lcom/baidu/android/common/util/DeviceId;


# direct methods
.method constructor <init>(Lcom/baidu/android/common/util/DeviceId;Lcom/baidu/mobstat/bw$a;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/android/common/util/DeviceId$1;->b:Lcom/baidu/android/common/util/DeviceId;

    iput-object p2, p0, Lcom/baidu/android/common/util/DeviceId$1;->a:Lcom/baidu/mobstat/bw$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    invoke-static {}, Lcom/baidu/android/common/util/DeviceId;->b()Lcom/baidu/android/common/util/DeviceId$CuidChangeCallback;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/baidu/android/common/util/DeviceId$1;->a:Lcom/baidu/mobstat/bw$a;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lcom/baidu/mobstat/bw$a;->f()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/baidu/android/common/util/DeviceId$1;->a:Lcom/baidu/mobstat/bw$a;

    invoke-virtual {v0}, Lcom/baidu/mobstat/bw$a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_37

    :cond_1e
    invoke-static {}, Lcom/baidu/android/common/util/DeviceId;->b()Lcom/baidu/android/common/util/DeviceId$CuidChangeCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/common/util/DeviceId$1;->a:Lcom/baidu/mobstat/bw$a;

    invoke-virtual {v1}, Lcom/baidu/mobstat/bw$a;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/common/util/DeviceId$1;->a:Lcom/baidu/mobstat/bw$a;

    invoke-virtual {v2}, Lcom/baidu/mobstat/bw$a;->g()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/android/common/util/DeviceId$1$1;

    invoke-direct {v3, p0}, Lcom/baidu/android/common/util/DeviceId$1$1;-><init>(Lcom/baidu/android/common/util/DeviceId$1;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/android/common/util/DeviceId$CuidChangeCallback;->onCuidChanged(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/common/util/DeviceId$CuidChangeReceivedCallback;)V

    return-void

    :cond_37
    :goto_37
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/baidu/android/common/util/DeviceId;->a(Lcom/baidu/android/common/util/DeviceId$CuidChangeCallback;)Lcom/baidu/android/common/util/DeviceId$CuidChangeCallback;

    return-void
.end method
