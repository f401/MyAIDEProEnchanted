.class Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;
.super Landroid/os/AsyncTask;
.source "ProjectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/project/ProjectDialog$9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CreateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
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

.field final this$0:Lcom/s1243808733/aide/project/ProjectDialog$9;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/project/ProjectDialog$9;)V
    .registers 6

    .line 387
    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$9;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 388
    iget-object p1, p1, Lcom/s1243808733/aide/project/ProjectDialog$9;->val$act:Landroid/app/Activity;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "正在创建工程中..."

    goto :goto_12

    :cond_10
    const-string v0, "Createing Project..."

    :goto_12
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->pd:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 378
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 8

    .line 396
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableCustomTemplate()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1d

    .line 397
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->getAutoCustomTemplateDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$9;

    invoke-static {v3}, Lcom/s1243808733/aide/project/ProjectDialog$9;->-$$Nest$fgetprojectInfo(Lcom/s1243808733/aide/project/ProjectDialog$9;)Lcom/s1243808733/aide/project/jsonbean/Project;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/aide/project/jsonbean/Project;->getTemplate()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_42

    .line 399
    :cond_1d
    new-instance p1, Ljava/io/File;

    iget-object v2, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$9;

    iget-object v2, v2, Lcom/s1243808733/aide/project/ProjectDialog$9;->val$act:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "templates_temp.zip"

    invoke-direct {p1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 400
    iget-object v2, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$9;

    invoke-static {v2}, Lcom/s1243808733/aide/project/ProjectDialog$9;->-$$Nest$fgetprojectInfo(Lcom/s1243808733/aide/project/ProjectDialog$9;)Lcom/s1243808733/aide/project/jsonbean/Project;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/aide/project/jsonbean/Project;->getTemplate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/aide/project/PUtils;->getAssetsFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/ResourceUtils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v2, 0x1

    .line 404
    :goto_42
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$9;

    iget-object v4, v4, Lcom/s1243808733/aide/project/ProjectDialog$9;->val$createLocation:Ljava/io/File;

    iget-object v5, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$9;

    invoke-static {v5}, Lcom/s1243808733/aide/project/ProjectDialog$9;->-$$Nest$fgetprojectName(Lcom/s1243808733/aide/project/ProjectDialog$9;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->dest:Ljava/io/File;

    .line 405
    invoke-static {p1, v3}, Lcom/blankj/utilcode/util/ZipUtils;->unzipFile(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    if-eqz v2, :cond_5b

    .line 406
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 407
    :cond_5b
    iget-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$9;

    iget-boolean p1, p1, Lcom/s1243808733/aide/project/ProjectDialog$9;->isAddcrashhandler:Z

    if-eqz p1, :cond_e7

    .line 409
    new-instance p1, Ljava/io/File;

    iget-object v2, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->dest:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$9;

    invoke-static {v4}, Lcom/s1243808733/aide/project/ProjectDialog$9;->-$$Nest$fgetprojectInfo(Lcom/s1243808733/aide/project/ProjectDialog$9;)Lcom/s1243808733/aide/project/jsonbean/Project;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/aide/project/jsonbean/Project;->getMain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/src/main/java/$package_name$/GlobalApplication.java"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 410
    const-string v2, "GlobalApplication.java"

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/blankj/utilcode/util/ResourceUtils;->copyFileFromAssets(Ljava/lang/String;Ljava/lang/String;)Z

    .line 413
    new-instance p1, Ljava/io/File;

    iget-object v2, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->dest:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$9;

    invoke-static {v4}, Lcom/s1243808733/aide/project/ProjectDialog$9;->-$$Nest$fgetprojectInfo(Lcom/s1243808733/aide/project/ProjectDialog$9;)Lcom/s1243808733/aide/project/jsonbean/Project;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/aide/project/jsonbean/Project;->getMain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/src/main/AndroidManifest.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b2} :catch_ef

    .line 415
    :try_start_b2
    new-instance v2, Lcom/s1243808733/aide/util/AndroidManifestRead;

    invoke-direct {v2, p1}, Lcom/s1243808733/aide/util/AndroidManifestRead;-><init>(Ljava/io/File;)V

    .line 416
    invoke-virtual {v2}, Lcom/s1243808733/aide/util/AndroidManifestRead;->getApplicationName()Ljava/lang/String;

    move-result-object v3

    .line 417
    new-instance v4, Lcom/s1243808733/aide/util/FActivityInfo;

    const-string v5, ".GlobalApplication$CrashActivity"

    invoke-direct {v4, v5}, Lcom/s1243808733/aide/util/FActivityInfo;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v2, v4}, Lcom/s1243808733/aide/util/AndroidManifestRead;->addActivity(Lcom/s1243808733/aide/util/FActivityInfo;)V

    .line 420
    invoke-static {v3}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d4

    .line 421
    iget-object v3, v2, Lcom/s1243808733/aide/util/AndroidManifestRead;->applicaton:Lorg/w3c/dom/Element;

    const-string v4, "android:name"

    const-string v5, ".GlobalApplication"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_d4
    invoke-virtual {v2}, Lcom/s1243808733/aide/util/AndroidManifestRead;->Save()V

    .line 425
    iget-object v2, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$9;

    iget-object v2, v2, Lcom/s1243808733/aide/project/ProjectDialog$9;->val$act:Landroid/app/Activity;

    invoke-static {v2, p1, v1}, Lcom/s1243808733/aide/util/AndroidManifestRead;->format(Landroid/app/Activity;Ljava/io/File;Z)V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_de} :catch_df
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_de} :catch_ef

    goto :goto_e7

    :catch_df
    move-exception p1

    .line 427
    :try_start_e0
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 432
    :cond_e7
    :goto_e7
    iget-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$9;

    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->dest:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/s1243808733/aide/project/ProjectDialog$9;->-$$Nest$mreplaces(Lcom/s1243808733/aide/project/ProjectDialog$9;Ljava/io/File;)V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_ee} :catch_ef

    goto :goto_f2

    :catch_ef
    move-exception p1

    .line 434
    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->ex:Ljava/io/IOException;

    :goto_f2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 378
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 9

    .line 441
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 442
    iget-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->ex:Ljava/io/IOException;

    if-eqz p1, :cond_11

    .line 443
    iget-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$9;

    iget-object p1, p1, Lcom/s1243808733/aide/project/ProjectDialog$9;->val$act:Landroid/app/Activity;

    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->ex:Ljava/io/IOException;

    invoke-static {p1, v0}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void

    .line 447
    :cond_11
    :try_start_11
    iget-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->dest:Ljava/io/File;

    .line 448
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$9;

    invoke-static {v0}, Lcom/s1243808733/aide/project/ProjectDialog$9;->-$$Nest$fgetprojectInfo(Lcom/s1243808733/aide/project/ProjectDialog$9;)Lcom/s1243808733/aide/project/jsonbean/Project;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/project/jsonbean/Project;->getMain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 449
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->dest:Ljava/io/File;

    iget-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$9;

    invoke-static {v1}, Lcom/s1243808733/aide/project/ProjectDialog$9;->-$$Nest$fgetprojectInfo(Lcom/s1243808733/aide/project/ProjectDialog$9;)Lcom/s1243808733/aide/project/jsonbean/Project;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/aide/project/jsonbean/Project;->getMain()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 451
    :cond_34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 452
    iget-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$9;

    invoke-static {v1}, Lcom/s1243808733/aide/project/ProjectDialog$9;->-$$Nest$fgetprojectInfo(Lcom/s1243808733/aide/project/ProjectDialog$9;)Lcom/s1243808733/aide/project/jsonbean/Project;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/aide/project/jsonbean/Project;->getOpenFile()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_47
    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 453
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_47

    .line 454
    const-string v3, "$package_name$"

    iget-object v4, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->this$0:Lcom/s1243808733/aide/project/ProjectDialog$9;

    invoke-static {v4}, Lcom/s1243808733/aide/project/ProjectDialog$9;->-$$Nest$fgetpackageName(Lcom/s1243808733/aide/project/ProjectDialog$9;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    const-string v6, "/"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 455
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 456
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 457
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 461
    :cond_86
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/s1243808733/aide/util/AIDEUtils;->openProject(Ljava/lang/String;Ljava/util/List;)V
    :try_end_8d
    .catchall {:try_start_11 .. :try_end_8d} :catchall_8e

    goto :goto_9a

    :catchall_8e
    move-exception p1

    .line 464
    :try_start_8f
    invoke-static {p1}, Lcom/s1243808733/util/Utils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/util/Toasty;->error(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_9a
    .catchall {:try_start_8f .. :try_end_9a} :catchall_a9

    .line 466
    :goto_9a
    iget-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/view/Window;)V

    .line 467
    iget-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void

    :catchall_a9
    move-exception p1

    .line 466
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/view/Window;)V

    .line 467
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 468
    goto :goto_ba

    :goto_b9
    throw p1

    :goto_ba
    goto :goto_b9
.end method
