.class public Lcom/baidu/mobstat/bz$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 76
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/baidu/mobstat/cy;->b()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 77
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object p2

    const-string v0, "onActivityCreated"

    invoke-virtual {p2, v0}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 80
    :cond_13
    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/ch;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 4

    .line 106
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 107
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    const-string v1, "onActivityPaused"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 110
    :cond_13
    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ch;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    .line 93
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 94
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    const-string v1, "onActivityResumed"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 97
    :cond_13
    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ch;->b(Landroid/app/Activity;)V

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
