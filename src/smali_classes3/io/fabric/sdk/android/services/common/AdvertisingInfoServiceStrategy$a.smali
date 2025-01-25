.class final Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final DW:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private j6:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$a;->j6:Z

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$a;->DW:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lio/fabric/sdk/android/services/common/d;)V
    .registers 2

    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$a;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()Landroid/os/IBinder;
    .registers 5

    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$a;->j6:Z

    if-eqz v0, :cond_f

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "getBinder already called"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->DW(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$a;->j6:Z

    :try_start_12
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$a;->DW:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    :try_start_0
    iget-object p1, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$a;->DW:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception p1

    :goto_7
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    iget-object p1, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$a;->DW:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    return-void
.end method
