.class Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;
.super Landroid/os/AsyncTask;
.source "ProjectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/project/ProjectDialog$100000014;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CreateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private dest:Ljava/io/File;

.field ex:Ljava/io/IOException;

.field private pd:Landroid/app/ProgressDialog;

.field private final this$0:Lcom/s1243808733/aide/project/ProjectDialog$100000014;

.field private final val$act:Landroid/app/Activity;

.field private final val$createLocation:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/project/ProjectDialog$100000014;Landroid/app/Activity;Ljava/io/File;)V
    .registers 9

    .line 387
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$100000014;

    iput-object p2, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->val$act:Landroid/app/Activity;

    iput-object p3, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->val$createLocation:Ljava/io/File;

    .line 388
    iget-object v2, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->val$act:Landroid/app/Activity;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "\u6b63\u5728\u521b\u5efa\u5de5\u7a0b\u4e2d..."

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v0, v1, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->pd:Landroid/app/ProgressDialog;

    return-void

    :cond_0
    const-string v1, "Createing Project..."

    goto :goto_0
.end method

.method static access$0(Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;)Lcom/s1243808733/aide/project/ProjectDialog$100000014;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$100000014;

    return-object v0
.end method


# virtual methods
.method protected bridge doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 395
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableCustomTemplate()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 397
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->getAutoCustomTemplateDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$100000014;

    invoke-static {v3}, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->access$L1000021(Lcom/s1243808733/aide/project/ProjectDialog$100000014;)Lcom/s1243808733/aide/project/jsonbean/Project;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/aide/project/jsonbean/Project;->getTemplate()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v1

    .line 404
    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->val$createLocation:Ljava/io/File;

    iget-object v4, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$100000014;

    invoke-static {v4}, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->access$L1000018(Lcom/s1243808733/aide/project/ProjectDialog$100000014;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->dest:Ljava/io/File;

    .line 405
    iget-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->dest:Ljava/io/File;

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/ZipUtils;->unzipFile(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    .line 406
    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$100000014;

    iget-boolean v0, v0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->isAddcrashhandler:Z

    if-eqz v0, :cond_2

    .line 409
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->dest:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$100000014;

    invoke-static {v3}, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->access$L1000021(Lcom/s1243808733/aide/project/ProjectDialog$100000014;)Lcom/s1243808733/aide/project/jsonbean/Project;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/aide/project/jsonbean/Project;->getMain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "/src/main/java/$package_name$/GlobalApplication.java"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 410
    const-string v1, "GlobalApplication.java"

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/ResourceUtils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)Z

    .line 413
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->dest:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$100000014;

    invoke-static {v3}, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->access$L1000021(Lcom/s1243808733/aide/project/ProjectDialog$100000014;)Lcom/s1243808733/aide/project/jsonbean/Project;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/aide/project/jsonbean/Project;->getMain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "/src/main/AndroidManifest.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 415
    :try_start_1
    new-instance v1, Lcom/s1243808733/aide/util/AndroidManifestRead;

    invoke-direct {v1, v0}, Lcom/s1243808733/aide/util/AndroidManifestRead;-><init>(Ljava/io/File;)V

    .line 416
    invoke-virtual {v1}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    .line 417
    new-instance v3, Lcom/s1243808733/aide/util/FActivityInfo;

    const-string v4, ".GlobalApplication$CrashActivity"

    invoke-direct {v3, v4}, Lcom/s1243808733/aide/util/FActivityInfo;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v1, v3}, Lcom/s1243808733/aide/util/AndroidManifestRead;->addActivity(Lcom/s1243808733/aide/util/FActivityInfo;)V

    .line 420
    invoke-static {v2}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 421
    iget-object v2, v1, Lcom/s1243808733/aide/util/AndroidManifestRead;->applicaton:Lorg/w3c/dom/Element;

    const-string v3, "android:name"

    const-string v4, ".GlobalApplication"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_1
    invoke-virtual {v1}, Lcom/s1243808733/aide/util/AndroidManifestRead;->Save()V

    .line 425
    iget-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->val$act:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/s1243808733/aide/util/AndroidManifestRead;->format(Landroid/app/Activity;Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 432
    :cond_2
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$100000014;

    iget-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->dest:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->access$1000028(Lcom/s1243808733/aide/project/ProjectDialog$100000014;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 436
    :goto_2
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    return-object v0

    .line 399
    :cond_3
    :try_start_3
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->val$act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v3, "templates_temp.zip"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$100000014;

    invoke-static {v0}, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->access$L1000021(Lcom/s1243808733/aide/project/ProjectDialog$100000014;)Lcom/s1243808733/aide/project/jsonbean/Project;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/project/jsonbean/Project;->getTemplate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/project/PUtils;->getAssetsFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/blankj/utilcode/util/ResourceUtils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)Z

    move v0, v1

    .line 401
    goto/16 :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 427
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 432
    :catch_1
    move-exception v0

    .line 434
    iput-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->ex:Ljava/io/IOException;

    goto :goto_2
.end method

.method protected bridge onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 441
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 442
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->ex:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->val$act:Landroid/app/Activity;

    iget-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->ex:Ljava/io/IOException;

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 467
    :goto_0
    return-void

    .line 447
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->dest:Ljava/io/File;

    .line 448
    iget-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$100000014;

    invoke-static {v1}, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->access$L1000021(Lcom/s1243808733/aide/project/ProjectDialog$100000014;)Lcom/s1243808733/aide/project/jsonbean/Project;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/aide/project/jsonbean/Project;->getMain()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 449
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->dest:Ljava/io/File;

    iget-object v2, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$100000014;

    invoke-static {v2}, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->access$L1000021(Lcom/s1243808733/aide/project/ProjectDialog$100000014;)Lcom/s1243808733/aide/project/jsonbean/Project;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/aide/project/jsonbean/Project;->getMain()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    .line 451
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 452
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$100000014;

    invoke-static {v0}, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->access$L1000021(Lcom/s1243808733/aide/project/ProjectDialog$100000014;)Lcom/s1243808733/aide/project/jsonbean/Project;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/project/jsonbean/Project;->getOpenFile()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 457
    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 461
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/s1243808733/aide/util/AIDEUtils;->openProject(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    :goto_3
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/view/Window;)V

    .line 467
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 452
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 453
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 454
    const-string v4, "$package_name$"

    iget-object v5, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$100000014;

    invoke-static {v5}, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->access$L1000019(Lcom/s1243808733/aide/project/ProjectDialog$100000014;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    const-string v7, "/"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 455
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 456
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 461
    :catch_0
    move-exception v0

    .line 464
    :try_start_2
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->error(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 466
    iget-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/view/Window;)V

    .line 467
    iget-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    throw v0

    :cond_3
    move-object v1, v0

    goto/16 :goto_1
.end method
