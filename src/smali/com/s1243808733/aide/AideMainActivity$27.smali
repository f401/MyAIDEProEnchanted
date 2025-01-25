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
    .registers 2

    .line 1382
    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$27;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1422
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$27;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1424
    const-string v0, "请求权限"

    const-string v1, "Request permission"

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 1425
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "由于没有读写权限，软件无法正常使用。"

    goto :goto_20

    :cond_1e
    const-string v0, "Without storage permissions, the application cannot be used properly"

    :goto_20
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 1427
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "授权"

    goto :goto_2f

    :cond_2d
    const-string v0, "Authorize"

    :goto_2f
    new-instance v1, Lcom/s1243808733/aide/AideMainActivity$27$1;

    invoke-direct {v1, p0, p1}, Lcom/s1243808733/aide/AideMainActivity$27$1;-><init>(Lcom/s1243808733/aide/AideMainActivity$27;Ljava/util/List;)V

    .line 1426
    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1439
    const/high16 p2, 0x1040000

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1440
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1441
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onGranted(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1387
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getOpenFileService()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1388
    const-string v0, "CurrentFiles_"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1389
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, ""

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CurrentFiles"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1390
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1393
    :cond_2a
    iget-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$27;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-virtual {p1}, Lcom/s1243808733/aide/AideMainActivity;->checkOpenFile()V

    .line 1394
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentFiles()Ljava/util/List;

    move-result-object p1

    .line 1395
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 1398
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/s1243808733/aide/util/AIDEUtils;->openProject(Ljava/lang/String;Ljava/util/List;)V

    .line 1399
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_4e

    const-string v1, "打开工程："

    goto :goto_50

    :cond_4e
    const-string v1, "Open project: "

    :goto_50
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/util/Toasty;->info(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_6b

    :cond_66
    if-eqz p1, :cond_6b

    .line 1401
    invoke-static {p1}, Lcom/s1243808733/aide/util/AIDEUtils;->openFile(Ljava/util/List;)V

    .line 1404
    :cond_6b
    :goto_6b
    iget-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$27;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-virtual {p1}, Lcom/s1243808733/aide/AideMainActivity;->setFileTabVisible()V

    .line 1405
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->reLoadFileBrowser()V

    .line 1407
    iget-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$27;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-static {p1}, Lcom/s1243808733/aide/AideMainActivity;->-$$Nest$fgetmDrawer(Lcom/s1243808733/aide/AideMainActivity;)Landroidj/support/v4/widget/DrawerLayout;

    move-result-object p1

    if-eqz p1, :cond_7c

    goto :goto_80

    .line 1410
    :cond_7c
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/s1243808733/aide/util/AIDEUtils;->closeSplit(Z)V

    :goto_80
    return-void
.end method
