.class public Lcom/s1243808733/aide/AppUpdater;
.super Ljava/lang/Object;
.source "AppUpdater.java"


# static fields
.field public static final TYPE_RUNTIME:I = 0x0

.field public static final TYPE_USER:I = 0x1


# instance fields
.field mActivity:Landroid/app/Activity;

.field mType:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/s1243808733/aide/AppUpdater;->mActivity:Landroid/app/Activity;

    .line 31
    iput p2, p0, Lcom/s1243808733/aide/AppUpdater;->mType:I

    return-void
.end method

.method static synthetic access$1000008(Lcom/s1243808733/aide/AppUpdater;Lcom/s1243808733/data/AppUpdateData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/aide/AppUpdater;->showUpdateDialog(Lcom/s1243808733/data/AppUpdateData;)V

    return-void
.end method

.method private showUpdateDialog(Lcom/s1243808733/data/AppUpdateData;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/data/AppUpdateData;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 94
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/s1243808733/aide/AppUpdater;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u53d1\u73b0\u65b0\u7248\u672c v%s"

    const-string v4, "New Version v%s"

    invoke-static {v0, v4}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/s1243808733/data/AppUpdateData;->getData()Lcom/s1243808733/data/AppUpdateData$Data;

    move-result-object v5

    invoke-virtual {v5}, Lcom/s1243808733/data/AppUpdateData$Data;->getVersionName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/data/AppUpdateData;->getData()Lcom/s1243808733/data/AppUpdateData$Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/data/AppUpdateData$Data;->getUpdateLog()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget v0, p0, Lcom/s1243808733/aide/AppUpdater;->mType:I

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v0, "\u66f4\u65b0"

    const-string v2, "Update"

    invoke-static {v0, v2}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lcom/s1243808733/aide/AppUpdater$100000001;

    invoke-direct {v2, p0, p1}, Lcom/s1243808733/aide/AppUpdater$100000001;-><init>(Lcom/s1243808733/aide/AppUpdater;Lcom/s1243808733/data/AppUpdateData;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/s1243808733/aide/AppUpdater$100000002;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/AppUpdater$100000002;-><init>(Lcom/s1243808733/aide/AppUpdater;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 117
    iget v0, p0, Lcom/s1243808733/aide/AppUpdater;->mType:I

    if-nez v0, :cond_0

    .line 118
    const-string v0, "\u5ffd\u7565\u6b64\u7248\u672c"

    const-string v2, "Ignore"

    invoke-static {v0, v2}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lcom/s1243808733/aide/AppUpdater$100000003;

    invoke-direct {v2, p0, p1}, Lcom/s1243808733/aide/AppUpdater$100000003;-><init>(Lcom/s1243808733/aide/AppUpdater;Lcom/s1243808733/data/AppUpdateData;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    new-instance v0, Lcom/s1243808733/aide/AppUpdater$100000004;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/AppUpdater$100000004;-><init>(Lcom/s1243808733/aide/AppUpdater;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_1
    move v0, v2

    .line 94
    goto :goto_0
.end method


# virtual methods
.method public checkUpdate()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v2, 0x1

    .line 37
    iget v0, p0, Lcom/s1243808733/aide/AppUpdater;->mType:I

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "aidero_auto_update"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    :cond_0
    iget v0, p0, Lcom/s1243808733/aide/AppUpdater;->mType:I

    if-ne v0, v2, :cond_1

    .line 40
    const-string/jumbo v0, "\u68c0\u6d4b\u66f4\u65b0\u4e2d"

    const-string v1, "Detecting updates"

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->info(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 43
    :cond_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->getUpdateVersionCode()J

    move-result-wide v0

    .line 46
    new-instance v2, Lorg/xutils/http/RequestParams;

    invoke-static {}, Lcom/s1243808733/aide/application/App;->getUpdateUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lorg/xutils/x;->http()Lorg/xutils/HttpManager;

    move-result-object v3

    new-instance v4, Lcom/s1243808733/aide/AppUpdater$100000000;

    invoke-direct {v4, p0, v0, v1}, Lcom/s1243808733/aide/AppUpdater$100000000;-><init>(Lcom/s1243808733/aide/AppUpdater;J)V

    invoke-interface {v3, v2, v4}, Lorg/xutils/HttpManager;->get(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    :cond_2
    return-void
.end method
