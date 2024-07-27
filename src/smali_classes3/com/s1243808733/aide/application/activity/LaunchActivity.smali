.class public abstract Lcom/s1243808733/aide/application/activity/LaunchActivity;
.super Landroid/app/Activity;
.source "LaunchActivity.java"


# instance fields
.field private mProcess:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/Process;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 182
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/LaunchActivity;->mProcess:Ljava/util/List;

    return-void
.end method

.method static synthetic access$1000007(Lcom/s1243808733/aide/application/activity/LaunchActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/aide/application/activity/LaunchActivity;->runProcess(I)V

    return-void
.end method

.method static synthetic access$1000008(Lcom/s1243808733/aide/application/activity/LaunchActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/LaunchActivity;->jumpToMain()V

    return-void
.end method

.method private init()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/LaunchActivity;->mProcess:Ljava/util/List;

    new-instance v1, Lcom/s1243808733/aide/application/activity/LaunchActivity$100000000;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/LaunchActivity$100000000;-><init>(Lcom/s1243808733/aide/application/activity/LaunchActivity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/LaunchActivity;->mProcess:Ljava/util/List;

    new-instance v1, Lcom/s1243808733/aide/application/activity/LaunchActivity$100000002;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/LaunchActivity$100000002;-><init>(Lcom/s1243808733/aide/application/activity/LaunchActivity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private jumpToMain()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 173
    :try_start_0
    const-string v0, "com.s1243808733.aide.AideMainActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    invoke-virtual {p0, v1}, Lcom/s1243808733/aide/application/activity/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 175
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/LaunchActivity;->finish()V

    .line 176
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/LaunchActivity;->overridePendingTransition(II)V

    return-void

    .line 173
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private runProcess(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/LaunchActivity;->mProcess:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 167
    :goto_1
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/LaunchActivity;->mProcess:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/Process;

    .line 159
    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/Process;->canRun()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    new-instance v1, Lcom/s1243808733/aide/application/activity/LaunchActivity$100000003;

    invoke-direct {v1, p0, p1}, Lcom/s1243808733/aide/application/activity/LaunchActivity$100000003;-><init>(Lcom/s1243808733/aide/application/activity/LaunchActivity;I)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/Process;->run(Lcom/s1243808733/aide/application/activity/Process$Bridge;)V

    goto :goto_1

    .line 156
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, 0x0

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/LaunchActivity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 32
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "finish"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/LaunchActivity;->finish()V

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/LaunchActivity;->init()V

    .line 40
    invoke-direct {p0, v3}, Lcom/s1243808733/aide/application/activity/LaunchActivity;->runProcess(I)V

    goto :goto_0
.end method
