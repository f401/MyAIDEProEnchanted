.class Lcom/s1243808733/aide/AppUpdater$100000000;
.super Ljava/lang/Object;
.source "AppUpdater.java"

# interfaces
.implements Lorg/xutils/common/Callback$CommonCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/xutils/common/Callback$CommonCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final this$0:Lcom/s1243808733/aide/AppUpdater;

.field private final val$currentVersionCode:J


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AppUpdater;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/AppUpdater$100000000;->this$0:Lcom/s1243808733/aide/AppUpdater;

    iput-wide p2, p0, Lcom/s1243808733/aide/AppUpdater$100000000;->val$currentVersionCode:J

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/AppUpdater$100000000;)Lcom/s1243808733/aide/AppUpdater;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/AppUpdater$100000000;->this$0:Lcom/s1243808733/aide/AppUpdater;

    return-object v0
.end method


# virtual methods
.method public onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/common/Callback$CancelledException;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onError(Ljava/lang/Throwable;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/s1243808733/aide/AppUpdater$100000000;->this$0:Lcom/s1243808733/aide/AppUpdater;

    iget v0, v0, Lcom/s1243808733/aide/AppUpdater;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 79
    const-string/jumbo v0, "\u68c0\u67e5\u66f4\u65b0\u5931\u8d25"

    const-string v1, "Failed to check for updates"

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->error(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public onFinished()V
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

.method public bridge onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/AppUpdater$100000000;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v6, 0x1

    .line 54
    :try_start_0
    const-string v0, "com.s1243808733.data.AppUpdateData"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/data/AppUpdateData;

    .line 56
    const/16 v1, 0xc8

    int-to-long v2, v1

    invoke-virtual {v0}, Lcom/s1243808733/data/AppUpdateData;->getCode()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 58
    invoke-virtual {v0}, Lcom/s1243808733/data/AppUpdateData;->getData()Lcom/s1243808733/data/AppUpdateData$Data;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/s1243808733/data/AppUpdateData$Data;->getVersionCode()J

    move-result-wide v2

    .line 60
    invoke-virtual {v1}, Lcom/s1243808733/data/AppUpdateData$Data;->getDownloadUrl()Ljava/lang/String;

    .line 61
    invoke-virtual {v1}, Lcom/s1243808733/data/AppUpdateData$Data;->getUpdateLog()Ljava/lang/String;

    .line 62
    iget-wide v4, p0, Lcom/s1243808733/aide/AppUpdater$100000000;->val$currentVersionCode:J

    cmp-long v1, v4, v2

    if-gez v1, :cond_2

    .line 64
    iget-object v1, p0, Lcom/s1243808733/aide/AppUpdater$100000000;->this$0:Lcom/s1243808733/aide/AppUpdater;

    iget v1, v1, Lcom/s1243808733/aide/AppUpdater;->mType:I

    if-eq v1, v6, :cond_0

    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "aidero_update_ignored_version"

    const/4 v5, 0x0

    int-to-long v6, v5

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/aide/AppUpdater$100000000;->this$0:Lcom/s1243808733/aide/AppUpdater;

    invoke-static {v1, v0}, Lcom/s1243808733/aide/AppUpdater;->access$1000008(Lcom/s1243808733/aide/AppUpdater;Lcom/s1243808733/data/AppUpdateData;)V

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/aide/AppUpdater$100000000;->this$0:Lcom/s1243808733/aide/AppUpdater;

    iget v0, v0, Lcom/s1243808733/aide/AppUpdater;->mType:I

    if-ne v0, v6, :cond_1

    .line 69
    const-string/jumbo v0, "\u6ca1\u6709\u53ef\u66f4\u65b0\u7684\u7248\u672c"

    const-string v1, "There is no updatable version"

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
