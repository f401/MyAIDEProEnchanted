.class Lcom/baidu/android/common/util/DeviceId$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/android/common/util/DeviceId$CuidChangeReceivedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/common/util/DeviceId$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/baidu/android/common/util/DeviceId$1;


# direct methods
.method constructor <init>(Lcom/baidu/android/common/util/DeviceId$1;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/common/util/DeviceId$1$1;->a:Lcom/baidu/android/common/util/DeviceId$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCuidChangeReceived()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/android/common/util/DeviceId$1$1;->a:Lcom/baidu/android/common/util/DeviceId$1;

    iget-object v0, v0, Lcom/baidu/android/common/util/DeviceId$1;->b:Lcom/baidu/android/common/util/DeviceId;

    iget-object v1, p0, Lcom/baidu/android/common/util/DeviceId$1$1;->a:Lcom/baidu/android/common/util/DeviceId$1;

    iget-object v1, v1, Lcom/baidu/android/common/util/DeviceId$1;->a:Lcom/baidu/mobstat/bw$a;

    invoke-static {v0, v1}, Lcom/baidu/android/common/util/DeviceId;->a(Lcom/baidu/android/common/util/DeviceId;Lcom/baidu/mobstat/bw$a;)V

    return-void
.end method
