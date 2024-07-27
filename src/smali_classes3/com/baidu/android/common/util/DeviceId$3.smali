.class Lcom/baidu/android/common/util/DeviceId$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/common/util/DeviceId;->d(Lcom/baidu/mobstat/bw$a;)Ljava/lang/Runnable;
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

    iput-object p1, p0, Lcom/baidu/android/common/util/DeviceId$3;->b:Lcom/baidu/android/common/util/DeviceId;

    iput-object p2, p0, Lcom/baidu/android/common/util/DeviceId$3;->a:Lcom/baidu/mobstat/bw$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/common/util/DeviceId$3;->b:Lcom/baidu/android/common/util/DeviceId;

    iget-object v1, p0, Lcom/baidu/android/common/util/DeviceId$3;->a:Lcom/baidu/mobstat/bw$a;

    invoke-static {v0, v1}, Lcom/baidu/android/common/util/DeviceId;->b(Lcom/baidu/android/common/util/DeviceId;Lcom/baidu/mobstat/bw$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/baidu/android/common/util/DeviceId$3;->b:Lcom/baidu/android/common/util/DeviceId;

    invoke-static {v0}, Lcom/baidu/android/common/util/DeviceId;->a(Lcom/baidu/android/common/util/DeviceId;)Lcom/baidu/mobstat/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/bw;->d()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/android/common/util/DeviceId$3;->b:Lcom/baidu/android/common/util/DeviceId;

    invoke-static {v1}, Lcom/baidu/android/common/util/DeviceId;->a(Lcom/baidu/android/common/util/DeviceId;)Lcom/baidu/mobstat/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/bw;->d()V

    throw v0
.end method
