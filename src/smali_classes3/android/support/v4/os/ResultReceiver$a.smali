.class Landroid/support/v4/os/ResultReceiver$a;
.super Landroid/support/v4/os/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final j6:Landroid/support/v4/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/support/v4/os/ResultReceiver;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/os/ResultReceiver$a;->j6:Landroid/support/v4/os/ResultReceiver;

    invoke-direct {p0}, Landroid/support/v4/os/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(ILandroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/os/ResultReceiver$a;->j6:Landroid/support/v4/os/ResultReceiver;

    iget-object v1, v0, Landroid/support/v4/os/ResultReceiver;->DW:Landroid/os/Handler;

    if-eqz v1, :cond_f

    new-instance v2, Landroid/support/v4/os/ResultReceiver$b;

    invoke-direct {v2, v0, p1, p2}, Landroid/support/v4/os/ResultReceiver$b;-><init>(Landroid/support/v4/os/ResultReceiver;ILandroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_12

    :cond_f
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/os/ResultReceiver;->j6(ILandroid/os/Bundle;)V

    :goto_12
    return-void
.end method
