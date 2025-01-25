.class public Labcd/xw;
.super Ljava/lang/Object;


# static fields
.field private static j6:Landroid/os/Handler;


# direct methods
.method public static j6()V
    .registers 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Labcd/xw;->j6:Landroid/os/Handler;

    return-void
.end method

.method public static j6(IILjava/lang/String;)V
    .registers 5

    sget-object v0, Labcd/xw;->j6:Landroid/os/Handler;

    new-instance v1, Labcd/ww;

    invoke-direct {v1, p0, p1, p2}, Labcd/ww;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
