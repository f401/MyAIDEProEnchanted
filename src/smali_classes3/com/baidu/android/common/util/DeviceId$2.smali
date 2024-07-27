.class Lcom/baidu/android/common/util/DeviceId$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/common/util/DeviceId;->b(Lcom/baidu/mobstat/bw$a;)V
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

    iput-object p1, p0, Lcom/baidu/android/common/util/DeviceId$2;->b:Lcom/baidu/android/common/util/DeviceId;

    iput-object p2, p0, Lcom/baidu/android/common/util/DeviceId$2;->a:Lcom/baidu/mobstat/bw$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-class v0, Lcom/baidu/mobstat/br;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/baidu/android/common/util/DeviceId;->b()Lcom/baidu/android/common/util/DeviceId$CuidChangeCallback;

    move-result-object v0

    if-nez v0, :cond_0

    const-class v0, Lcom/baidu/mobstat/br;

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/android/common/util/DeviceId$2;->b:Lcom/baidu/android/common/util/DeviceId;

    invoke-static {v0}, Lcom/baidu/android/common/util/DeviceId;->a(Lcom/baidu/android/common/util/DeviceId;)Lcom/baidu/mobstat/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/bw;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/android/common/util/DeviceId$2;->a:Lcom/baidu/mobstat/bw$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/bw$a;->a(Z)V

    iget-object v0, p0, Lcom/baidu/android/common/util/DeviceId$2;->b:Lcom/baidu/android/common/util/DeviceId;

    invoke-static {v0}, Lcom/baidu/android/common/util/DeviceId;->a(Lcom/baidu/android/common/util/DeviceId;)Lcom/baidu/mobstat/bw;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/common/util/DeviceId$2;->a:Lcom/baidu/mobstat/bw$a;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mobstat/bw;->a(Lcom/baidu/mobstat/bw$a;ZZ)Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/baidu/android/common/util/DeviceId;->a(Lcom/baidu/android/common/util/DeviceId$CuidChangeCallback;)Lcom/baidu/android/common/util/DeviceId$CuidChangeCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/baidu/android/common/util/DeviceId$2;->b:Lcom/baidu/android/common/util/DeviceId;

    invoke-static {v0}, Lcom/baidu/android/common/util/DeviceId;->a(Lcom/baidu/android/common/util/DeviceId;)Lcom/baidu/mobstat/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/bw;->d()V

    const-class v0, Lcom/baidu/mobstat/br;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/baidu/mobstat/br;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/baidu/android/common/util/DeviceId$2;->b:Lcom/baidu/android/common/util/DeviceId;

    invoke-static {v1}, Lcom/baidu/android/common/util/DeviceId;->a(Lcom/baidu/android/common/util/DeviceId;)Lcom/baidu/mobstat/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/bw;->d()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
