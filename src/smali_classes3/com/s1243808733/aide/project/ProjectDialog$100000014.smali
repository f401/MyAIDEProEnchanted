.class Lcom/s1243808733/aide/project/ProjectDialog$100000014;
.super Ljava/lang/Object;
.source "ProjectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field isAddcrashhandler:Z

.field private packageName:Ljava/lang/String;

.field private packageNameJNI:Ljava/lang/String;

.field private projectInfo:Lcom/s1243808733/aide/project/jsonbean/Project;

.field private projectName:Ljava/lang/String;

.field private final val$act:Landroid/app/Activity;

.field private final val$createLocation:Ljava/io/File;

.field private final val$dialog:Landroid/app/AlertDialog;

.field private final val$input_packageName:Landroid/widget/EditText;

.field private final val$input_projectName:Landroid/widget/EditText;

.field private final val$templates:Lcom/s1243808733/aide/project/jsonbean/Category$Templates;

.field private final val$view:Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;Lcom/s1243808733/aide/project/jsonbean/Category$Templates;Landroid/app/AlertDialog;Landroid/app/Activity;Ljava/io/File;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->val$input_projectName:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->val$input_packageName:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->val$view:Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;

    iput-object p4, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->val$templates:Lcom/s1243808733/aide/project/jsonbean/Category$Templates;

    iput-object p5, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->val$dialog:Landroid/app/AlertDialog;

    iput-object p6, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->val$act:Landroid/app/Activity;

    iput-object p7, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->val$createLocation:Ljava/io/File;

    return-void
.end method

.method static synthetic access$1000028(Lcom/s1243808733/aide/project/ProjectDialog$100000014;Ljava/io/File;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->replaces(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$L1000018(Lcom/s1243808733/aide/project/ProjectDialog$100000014;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->projectName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$L1000019(Lcom/s1243808733/aide/project/ProjectDialog$100000014;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$L1000021(Lcom/s1243808733/aide/project/ProjectDialog$100000014;)Lcom/s1243808733/aide/project/jsonbean/Project;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->projectInfo:Lcom/s1243808733/aide/project/jsonbean/Project;

    return-object v0
.end method

.method static synthetic access$S1000018(Lcom/s1243808733/aide/project/ProjectDialog$100000014;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->projectName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000019(Lcom/s1243808733/aide/project/ProjectDialog$100000014;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->packageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000021(Lcom/s1243808733/aide/project/ProjectDialog$100000014;Lcom/s1243808733/aide/project/jsonbean/Project;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->projectInfo:Lcom/s1243808733/aide/project/jsonbean/Project;

    return-void
.end method

.method private canWrite(Ljava/io/File;)Z
    .registers 8

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

    move-result v3

    if-eqz v3, :cond_1

    .line 373
    invoke-static {v2}, Lcom/blankj/utilcode/util/FileUtils;->delete(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    :goto_0
    return v0

    .line 373
    :catch_0
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
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    :cond_1
    invoke-static {v2}, Lcom/blankj/utilcode/util/FileUtils;->delete(Ljava/io/File;)Z

    move v0, v1

    .line 375
    goto :goto_0

    .line 371
    :catchall_0
    move-exception v0

    .line 373
    invoke-static {v2}, Lcom/blankj/utilcode/util/FileUtils;->delete(Ljava/io/File;)Z

    throw v0
.end method

.method private replaces(Ljava/io/File;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 473
    new-instance v0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$100000013;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/project/ProjectDialog$100000014$100000013;-><init>(Lcom/s1243808733/aide/project/ProjectDialog$100000014;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 489
    if-nez v3, :cond_1

    .line 514
    :cond_0
    return-void

    .line 490
    :cond_1
    const/4 v0, 0x0

    .line 514
    :goto_0
    array-length v1, v3

    if-ge v0, v1, :cond_0

    .line 490
    aget-object v2, v3, v0

    .line 492
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "$package_name$"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 493
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->packageName:Ljava/lang/String;

    const-string v4, "."

    const-string v5, "/"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 494
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "$package_name$"

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 495
    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v1, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 496
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 497
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 501
    :goto_2
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 505
    :goto_3
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 506
    invoke-static {v1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 507
    invoke-static {v2}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 508
    const-string v4, "$package_name$"

    iget-object v5, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "$project_name$"

    iget-object v5, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->projectName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "$package_name_jni$"

    iget-object v5, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->packageNameJNI:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 511
    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    .line 514
    :cond_2
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 493
    :cond_3
    iget-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 499
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    goto :goto_2

    .line 514
    :cond_5
    invoke-direct {p0, v1}, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->replaces(Ljava/io/File;)V

    goto :goto_4

    :cond_6
    move-object v1, v2

    goto :goto_3
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->val$input_projectName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->projectName:Ljava/lang/String;

    .line 353
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->val$input_packageName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->packageName:Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->packageName:Ljava/lang/String;

    const-string v1, "."

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->packageNameJNI:Ljava/lang/String;

    .line 355
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->val$view:Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;

    invoke-static {v0}, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->access$L1000033(Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->isAddcrashhandler:Z

    .line 357
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->val$templates:Lcom/s1243808733/aide/project/jsonbean/Category$Templates;

    invoke-virtual {v0}, Lcom/s1243808733/aide/project/jsonbean/Category$Templates;->getProject()Lcom/s1243808733/aide/project/jsonbean/Project;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->projectInfo:Lcom/s1243808733/aide/project/jsonbean/Project;

    .line 358
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 359
    new-instance v0, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;

    iget-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->val$act:Landroid/app/Activity;

    iget-object v2, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000014;->val$createLocation:Ljava/io/File;

    invoke-direct {v0, p0, v1, v2}, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;-><init>(Lcom/s1243808733/aide/project/ProjectDialog$100000014;Landroid/app/Activity;Ljava/io/File;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/aide/project/ProjectDialog$100000014$CreateTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
