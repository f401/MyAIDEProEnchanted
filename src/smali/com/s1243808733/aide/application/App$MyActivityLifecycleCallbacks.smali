.class Lcom/s1243808733/aide/application/App$MyActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyActivityLifecycleCallbacks"
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/App;


# direct methods
.method private constructor <init>(Lcom/s1243808733/aide/application/App;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/s1243808733/aide/application/App$MyActivityLifecycleCallbacks;->this$0:Lcom/s1243808733/aide/application/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/aide/application/App;Lcom/s1243808733/aide/application/App$MyActivityLifecycleCallbacks-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/s1243808733/aide/application/App$MyActivityLifecycleCallbacks;-><init>(Lcom/s1243808733/aide/application/App;)V

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
    .registers 2

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    .line 232
    instance-of v0, p1, Lcom/s1243808733/util/CrashUtils$CrashActiviy;

    if-nez v0, :cond_7

    .line 236
    invoke-static {p1}, Lcom/s1243808733/app/base/BaseActivity;->setStatusBar(Landroid/app/Activity;)V

    :cond_7
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
