.class public Lio/fabric/sdk/android/services/common/SafeToast;
.super Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic j6(Lio/fabric/sdk/android/services/common/SafeToast;)V
    .registers 1

    invoke-super {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public show()V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    invoke-super {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1f

    :cond_e
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/fabric/sdk/android/services/common/B;

    invoke-direct {v1, p0}, Lio/fabric/sdk/android/services/common/B;-><init>(Lio/fabric/sdk/android/services/common/SafeToast;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1f
    return-void
.end method
