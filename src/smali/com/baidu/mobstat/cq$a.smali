.class public Lcom/baidu/mobstat/cq$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/cq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .registers 4

    .line 161
    invoke-static {}, Lcom/baidu/mobstat/bz;->a()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 165
    :cond_7
    invoke-static {}, Lcom/baidu/mobstat/cs;->a()Lcom/baidu/mobstat/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cs;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 169
    :cond_12
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 170
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    const-string v1, "onActivityPaused"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 173
    :cond_25
    invoke-static {}, Lcom/baidu/mobstat/cu;->a()Lcom/baidu/mobstat/cu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/cu;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    .line 139
    invoke-static {}, Lcom/baidu/mobstat/bz;->a()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 143
    :cond_7
    invoke-static {}, Lcom/baidu/mobstat/cs;->a()Lcom/baidu/mobstat/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cs;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 147
    :cond_12
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 148
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    const-string v1, "onActivityResumed"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 151
    :cond_25
    invoke-static {}, Lcom/baidu/mobstat/cu;->a()Lcom/baidu/mobstat/cu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/cu;->a(Landroid/app/Activity;)V

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
