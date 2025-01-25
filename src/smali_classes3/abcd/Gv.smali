.class final Labcd/Gv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Hv;->u7()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field private DW:Ljava/lang/Class;

.field private j6:J


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 9

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p1, p2}, Labcd/Iv;->j6(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p2

    if-nez p2, :cond_31

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2}, Labcd/Hv;->j6(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_31

    iget-object p2, p0, Labcd/Gv;->DW:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p2, v0, :cond_29

    iget-wide v0, p0, Labcd/Gv;->j6:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    sub-long/2addr v2, v4

    cmp-long p2, v0, v2

    if-gez p2, :cond_31

    :cond_29
    new-instance p2, Lcom/appfour/backbone/api/objects/UserLaunchAction;

    invoke-direct {p2, p1}, Lcom/appfour/backbone/api/objects/UserLaunchAction;-><init>(Landroid/app/Activity;)V

    invoke-static {p2}, Labcd/kv;->j6(Lcom/appfour/backbone/api/objects/UserLaunchAction;)V

    :cond_31
    invoke-static {p1}, Labcd/kv;->j6(Landroid/app/Activity;)V
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    goto :goto_3b

    :catchall_35
    move-exception p1

    const-string p2, "Runtime Error"

    invoke-static {p2, p1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3b
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 4

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Labcd/Gv;->j6:J

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Labcd/Gv;->DW:Ljava/lang/Class;

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Labcd/iw;->j6(J)Z
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    goto :goto_18

    :catchall_12
    move-exception p1

    const-string v0, "Runtime Error"

    invoke-static {v0, p1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_18
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 4

    :try_start_0
    invoke-static {}, Labcd/Hv;->VH()Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_a

    const/4 p1, 0x0

    invoke-static {p1}, Labcd/Hv;->j6(Landroid/app/Activity;)Landroid/app/Activity;

    :cond_a
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Labcd/iw;->j6(J)Z
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    goto :goto_16

    :catchall_10
    move-exception p1

    const-string v0, "Runtime Error"

    invoke-static {v0, p1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_16
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    :try_start_0
    invoke-static {}, Labcd/Hv;->Zo()V

    invoke-static {}, Labcd/ow;->VH()V

    invoke-static {}, Labcd/sw;->DW()V

    invoke-static {p1}, Labcd/Hv;->j6(Landroid/app/Activity;)Landroid/app/Activity;
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    goto :goto_13

    :catchall_d
    move-exception p1

    const-string v0, "Runtime Error"

    invoke-static {v0, p1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_13
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    :try_start_0
    invoke-static {p1}, Labcd/kv;->DW(Landroid/app/Activity;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_a

    :catchall_4
    move-exception p1

    const-string v0, "Runtime Error"

    invoke-static {v0, p1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    :try_start_0
    invoke-static {p1}, Labcd/kv;->FH(Landroid/app/Activity;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_a

    :catchall_4
    move-exception p1

    const-string v0, "Runtime Error"

    invoke-static {v0, p1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a
    return-void
.end method
