.class Lcom/s1243808733/aide/AideMainActivity$27;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Lcom/blankj/utilcode/util/PermissionUtils$FullCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/AideMainActivity;->requestPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/AideMainActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity;)V
    .locals 0

    .line 1382
    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$27;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Ljava/util/List;)V
    .locals 3
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

    .line 1422
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$27;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1424
    const-string v0, "\u8bf7\u6c42\u6743\u9650"

    const-string v2, "Request permission"

    invoke-static {v0, v2}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1425
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u7531\u4e8e\u6ca1\u6709\u8bfb\u5199\u6743\u9650\uff0c\u8f6f\u4ef6\u65e0\u6cd5\u6b63\u5e38\u4f7f\u7528\u3002"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1427
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u6388\u6743"

    :goto_1
    new-instance v2, Lcom/s1243808733/aide/AideMainActivity$27$1;

    invoke-direct {v2, p0, p1}, Lcom/s1243808733/aide/AideMainActivity$27$1;-><init>(Lcom/s1243808733/aide/AideMainActivity$27;Ljava/util/List;)V

    .line 1426
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1439
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1440
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1441
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 1425
    :cond_0
    const-string v0, "Without storage permissions, the application cannot be used properly"

    goto :goto_0

    .line 1427
    :cond_1
    const-string v0, "Authorize"

    goto :goto_1
.end method

.method public onGranted(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1387
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getOpenFileService()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1388
    const-string v1, "CurrentFiles_"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1389
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

    .line 1390
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurrentFiles_"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1393
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$27;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-virtual {v0}, Lcom/s1243808733/aide/AideMainActivity;->checkOpenFile()V

    .line 1394
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentFiles()Ljava/util/List;

    move-result-object v0

    .line 1395
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1398
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/s1243808733/aide/util/AIDEUtils;->openProject(Ljava/lang/String;Ljava/util/List;)V

    .line 1399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u6253\u5f00\u5de5\u7a0b\uff1a"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->info(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1404
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$27;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-virtual {v0}, Lcom/s1243808733/aide/AideMainActivity;->setFileTabVisible()V

    .line 1405
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->reLoadFileBrowser()V

    .line 1407
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$27;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/AideMainActivity;->-$$Nest$fgetmDrawer(Lcom/s1243808733/aide/AideMainActivity;)Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1410
    :goto_2
    return-void

    .line 1399
    :cond_2
    const-string v0, "Open project: "

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_1

    .line 1401
    invoke-static {v0}, Lcom/s1243808733/aide/util/AIDEUtils;->openFile(Ljava/util/List;)V

    goto :goto_1

    .line 1410
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/s1243808733/aide/util/AIDEUtils;->closeSplit(Z)V

    goto :goto_2
.end method
