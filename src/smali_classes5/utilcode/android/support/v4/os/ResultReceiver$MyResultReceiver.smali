.class Lutilcode/android/support/v4/os/ResultReceiver$MyResultReceiver;
.super Lutilcode/android/support/v4/os/IResultReceiver$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutilcode/android/support/v4/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyResultReceiver"
.end annotation


# instance fields
.field final this$0:Lutilcode/android/support/v4/os/ResultReceiver;


# direct methods
.method constructor <init>(Lutilcode/android/support/v4/os/ResultReceiver;)V
    .registers 2

    iput-object p1, p0, Lutilcode/android/support/v4/os/ResultReceiver$MyResultReceiver;->this$0:Lutilcode/android/support/v4/os/ResultReceiver;

    invoke-direct {p0}, Lutilcode/android/support/v4/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Lutilcode/android/support/v4/os/ResultReceiver$MyResultReceiver;->this$0:Lutilcode/android/support/v4/os/ResultReceiver;

    iget-object v0, v0, Lutilcode/android/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lutilcode/android/support/v4/os/ResultReceiver$MyResultReceiver;->this$0:Lutilcode/android/support/v4/os/ResultReceiver;

    iget-object v0, v0, Lutilcode/android/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lutilcode/android/support/v4/os/ResultReceiver$MyRunnable;

    iget-object v2, p0, Lutilcode/android/support/v4/os/ResultReceiver$MyResultReceiver;->this$0:Lutilcode/android/support/v4/os/ResultReceiver;

    invoke-direct {v1, v2, p1, p2}, Lutilcode/android/support/v4/os/ResultReceiver$MyRunnable;-><init>(Lutilcode/android/support/v4/os/ResultReceiver;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lutilcode/android/support/v4/os/ResultReceiver$MyResultReceiver;->this$0:Lutilcode/android/support/v4/os/ResultReceiver;

    invoke-virtual {v0, p1, p2}, Lutilcode/android/support/v4/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    goto :goto_14
.end method
