.class Lcom/s1243808733/aide/AideMainActivity$100000028;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Lcom/blankj/utilcode/util/PermissionUtils$FullCallback;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/AideMainActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$100000028;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/AideMainActivity$100000028;)Lcom/s1243808733/aide/AideMainActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$100000028;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    return-object v0
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1420
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$100000028;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "\u8bf7\u6c42\u6743\u9650"

    const-string v2, "Request permission"

    invoke-static {v0, v2}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u7531\u4e8e\u6ca1\u6709\u8bfb\u5199\u6743\u9650\uff0c\u8f6f\u4ef6\u65e0\u6cd5\u6b63\u5e38\u4f7f\u7528\u3002"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u6388\u6743"

    :goto_1
    new-instance v2, Lcom/s1243808733/aide/AideMainActivity$100000028$100000027;

    invoke-direct {v2, p0, p1}, Lcom/s1243808733/aide/AideMainActivity$100000028$100000027;-><init>(Lcom/s1243808733/aide/AideMainActivity$100000028;Ljava/util/List;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1439
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 1420
    :cond_0
    const-string v0, "Without storage permissions, the application cannot be used properly"

    goto :goto_0

    :cond_1
    const-string v0, "Authorize"

    goto :goto_1
.end method

.method public onGranted(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1385
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getOpenFileService()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1386
    const-string v1, "CurrentFiles_"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1387
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "CurrentFiles"

    const-string v3, "CurrentFiles_"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1388
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurrentFiles_"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1391
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$100000028;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-virtual {v0}, Lcom/s1243808733/aide/AideMainActivity;->checkOpenFile()V

    .line 1392
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentFiles()Ljava/util/List;

    move-result-object v0

    .line 1393
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v1

    .line 1395
    if-eqz v1, :cond_3

    .line 1396
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/s1243808733/aide/util/AIDEUtils;->openProject(Ljava/lang/String;Ljava/util/List;)V

    .line 1397
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u6253\u5f00\u5de5\u7a0b\uff1a"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->info(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1402
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$100000028;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-virtual {v0}, Lcom/s1243808733/aide/AideMainActivity;->setFileTabVisible()V

    .line 1403
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->reLoadFileBrowser()V

    .line 1405
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$100000028;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/AideMainActivity;->access$L1000001(Lcom/s1243808733/aide/AideMainActivity;)Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1408
    :goto_2
    return-void

    .line 1397
    :cond_2
    const-string v0, "Open project: "

    goto :goto_0

    .line 1398
    :cond_3
    if-eqz v0, :cond_1

    .line 1399
    invoke-static {v0}, Lcom/s1243808733/aide/util/AIDEUtils;->openFile(Ljava/util/List;)V

    goto :goto_1

    .line 1408
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/s1243808733/aide/util/AIDEUtils;->closeSplit(Z)V

    goto :goto_2
.end method
