.class Lcom/s1243808733/aide/project/ProjectDialog$9;
.super Ljava/lang/Object;
.source "ProjectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/project/ProjectDialog;->createProject(Landroid/app/Activity;Lcom/s1243808733/aide/project/jsonbean/Category$Templates;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;
    }
.end annotation


# instance fields
.field isAddcrashhandler:Z

.field private packageName:Ljava/lang/String;

.field private packageNameJNI:Ljava/lang/String;

.field private projectInfo:Lcom/s1243808733/aide/project/jsonbean/Project;

.field private projectName:Ljava/lang/String;

.field final val$act:Landroid/app/Activity;

.field final val$createLocation:Ljava/io/File;

.field final val$dialog:Landroid/app/AlertDialog;

.field final val$input_packageName:Landroid/widget/EditText;

.field final val$input_projectName:Landroid/widget/EditText;

.field final val$templates:Lcom/s1243808733/aide/project/jsonbean/Category$Templates;

.field final val$view:Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;


# direct methods
.method static bridge synthetic -$$Nest$fgetpackageName(Lcom/s1243808733/aide/project/ProjectDialog$9;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetprojectInfo(Lcom/s1243808733/aide/project/ProjectDialog$9;)Lcom/s1243808733/aide/project/jsonbean/Project;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->projectInfo:Lcom/s1243808733/aide/project/jsonbean/Project;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetprojectName(Lcom/s1243808733/aide/project/ProjectDialog$9;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->projectName:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$mreplaces(Lcom/s1243808733/aide/project/ProjectDialog$9;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/s1243808733/aide/project/ProjectDialog$9;->replaces(Ljava/io/File;)V

    return-void
.end method

.method constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;Lcom/s1243808733/aide/project/jsonbean/Category$Templates;Landroid/app/AlertDialog;Landroid/app/Activity;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 335
    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->val$input_projectName:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->val$input_packageName:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->val$view:Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;

    iput-object p4, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->val$templates:Lcom/s1243808733/aide/project/jsonbean/Category$Templates;

    iput-object p5, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->val$dialog:Landroid/app/AlertDialog;

    iput-object p6, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->val$act:Landroid/app/Activity;

    iput-object p7, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->val$createLocation:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private canWrite(Ljava/io/File;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 363
    new-instance v2, Ljava/io/File;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    const-string v5, "_"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 365
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 367
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 373
    invoke-static {v2}, Lcom/blankj/utilcode/util/FileUtils;->delete(Ljava/io/File;)Z

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    .line 371
    :try_start_1
    const-string v3, "testCanWrite"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 373
    :cond_1
    invoke-static {v2}, Lcom/blankj/utilcode/util/FileUtils;->delete(Ljava/io/File;)Z

    move v0, v1

    .line 371
    goto :goto_0

    :catchall_1
    move-exception v0

    .line 373
    invoke-static {v2}, Lcom/blankj/utilcode/util/FileUtils;->delete(Ljava/io/File;)Z

    .line 374
    throw v0
.end method

.method private replaces(Ljava/io/File;)V
    .locals 7

    .line 473
    new-instance v0, Lcom/s1243808733/aide/project/ProjectDialog$9$1;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/project/ProjectDialog$9$1;-><init>(Lcom/s1243808733/aide/project/ProjectDialog$9;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    .line 514
    :cond_0
    return-void

    .line 490
    :cond_1
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 492
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "$package_name$"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 493
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->packageName:Ljava/lang/String;

    const-string v5, "."

    const-string v6, "/"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 494
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "$package_name$"

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 495
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v0, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 496
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 497
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 501
    :goto_2
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 505
    :goto_3
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 506
    invoke-static {v0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 507
    invoke-static {v1}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 508
    const-string v5, "$package_name$"

    iget-object v6, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->projectName:Ljava/lang/String;

    .line 509
    const-string v6, "$project_name$"

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->packageNameJNI:Ljava/lang/String;

    .line 510
    const-string v6, "$package_name_jni$"

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 511
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    .line 514
    :cond_2
    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 493
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 499
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    goto :goto_2

    .line 514
    :cond_5
    invoke-direct {p0, v0}, Lcom/s1243808733/aide/project/ProjectDialog$9;->replaces(Ljava/io/File;)V

    goto :goto_4

    :cond_6
    move-object v0, v1

    goto :goto_3
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->val$input_projectName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->projectName:Ljava/lang/String;

    .line 353
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->val$input_packageName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->packageName:Ljava/lang/String;

    .line 354
    const-string v1, "."

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->packageNameJNI:Ljava/lang/String;

    .line 355
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->val$view:Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;

    invoke-static {v0}, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->-$$Nest$fgetAddcrashhandler(Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->isAddcrashhandler:Z

    .line 357
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->val$templates:Lcom/s1243808733/aide/project/jsonbean/Category$Templates;

    invoke-virtual {v0}, Lcom/s1243808733/aide/project/jsonbean/Category$Templates;->getProject()Lcom/s1243808733/aide/project/jsonbean/Project;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->projectInfo:Lcom/s1243808733/aide/project/jsonbean/Project;

    .line 358
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 359
    new-instance v0, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;-><init>(Lcom/s1243808733/aide/project/ProjectDialog$9;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
