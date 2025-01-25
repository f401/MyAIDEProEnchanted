.class public Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/AutoTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyActivityLifeCallback"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;->a:I

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 5

    .line 40
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    iget v1, p0, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 43
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result p1

    if-nez p1, :cond_43

    .line 45
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/baidu/mobstat/BDStatCore;->autoTrackSessionEndTime(Landroid/content/Context;)V

    goto :goto_43

    :cond_1b
    const/4 v2, 0x2

    if-ne v1, v2, :cond_43

    .line 51
    :try_start_1e
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 52
    invoke-static {}, Lcom/baidu/mobstat/ActivityLifeObserver;->instance()Lcom/baidu/mobstat/ActivityLifeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->clearObservers()V

    .line 53
    invoke-static {}, Lcom/baidu/mobstat/ActivityLifeObserver;->instance()Lcom/baidu/mobstat/ActivityLifeObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ActivityLifeObserver;->unRegister(Landroid/content/Context;)V

    goto :goto_43

    .line 55
    :cond_37
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/baidu/mobstat/BDStatCore;->doSendLogCheck(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_3e} :catch_3f

    goto :goto_43

    :catch_3f
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_43
    :goto_43
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    .line 23
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 25
    iget v0, p0, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 27
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/BDStatCore;->autoTrackSessionStartTime(Landroid/content/Context;)V

    goto :goto_1b

    :cond_11
    const/4 p1, 0x2

    if-ne v0, p1, :cond_1b

    .line 29
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mobstat/BDStatCore;->cancelSendLogCheck()V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
