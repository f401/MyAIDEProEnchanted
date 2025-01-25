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
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprojectInfo(Lcom/s1243808733/aide/project/ProjectDialog$9;)Lcom/s1243808733/aide/project/jsonbean/Project;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->projectInfo:Lcom/s1243808733/aide/project/jsonbean/Project;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprojectName(Lcom/s1243808733/aide/project/ProjectDialog$9;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->projectName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mreplaces(Lcom/s1243808733/aide/project/ProjectDialog$9;Ljava/io/File;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/aide/project/ProjectDialog$9;->replaces(Ljava/io/File;)V

    return-void
.end method

.method constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;Lcom/s1243808733/aide/project/jsonbean/Category$Templates;Landroid/app/AlertDialog;Landroid/app/Activity;Ljava/io/File;)V
    .registers 8
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
    .registers 6

    .line 363
    new-instance v0, Ljava/io/File;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 365
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_22

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 367
    :cond_22
    const/4 p1, 0x0

    const/4 v1, 0x1

    :try_start_24
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v2
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_2e

    if-eqz v2, :cond_38

    .line 373
    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->delete(Ljava/io/File;)Z

    return v1

    :catchall_2e
    move-exception v2

    .line 371
    :try_start_2f
    const-string v3, "testCanWrite"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, p1

    invoke-static {v3, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_3c

    .line 373
    :cond_38
    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->delete(Ljava/io/File;)Z

    .line 371
    return p1

    :catchall_3c
    move-exception p1

    .line 373
    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->delete(Ljava/io/File;)Z

    .line 374
    throw p1
.end method

.method private replaces(Ljava/io/File;)V
    .registers 9

    .line 473
    new-instance v0, Lcom/s1243808733/aide/project/ProjectDialog$9$1;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/project/ProjectDialog$9$1;-><init>(Lcom/s1243808733/aide/project/ProjectDialog$9;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_c

    return-void

    .line 490
    :cond_c
    array-length v0, p1

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_87

    aget-object v2, p1, v1

    .line 492
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$package_name$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 493
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->packageName:Ljava/lang/String;

    const-string v5, "."

    const-string v6, "/"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_31

    :cond_2f
    iget-object v3, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->packageName:Ljava/lang/String;

    .line 494
    :goto_31
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 495
    new-instance v5, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 496
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 497
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    goto :goto_53

    .line 499
    :cond_4c
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 501
    :goto_53
    invoke-virtual {v2, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-object v2, v5

    .line 505
    :cond_57
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_81

    .line 506
    invoke-static {v2}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 507
    invoke-static {v3}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_84

    .line 508
    iget-object v5, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->projectName:Ljava/lang/String;

    .line 509
    const-string v5, "$project_name$"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->packageNameJNI:Ljava/lang/String;

    .line 510
    const-string v5, "$package_name_jni$"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 511
    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    goto :goto_84

    .line 514
    :cond_81
    invoke-direct {p0, v2}, Lcom/s1243808733/aide/project/ProjectDialog$9;->replaces(Ljava/io/File;)V

    :cond_84
    :goto_84
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_87
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 352
    iget-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->val$input_projectName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->projectName:Ljava/lang/String;

    .line 353
    iget-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->val$input_packageName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->packageName:Ljava/lang/String;

    .line 354
    const-string v0, "."

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->packageNameJNI:Ljava/lang/String;

    .line 355
    iget-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->val$view:Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;

    invoke-static {p1}, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->-$$Nest$fgetAddcrashhandler(Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->isAddcrashhandler:Z

    .line 357
    iget-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->val$templates:Lcom/s1243808733/aide/project/jsonbean/Category$Templates;

    invoke-virtual {p1}, Lcom/s1243808733/aide/project/jsonbean/Category$Templates;->getProject()Lcom/s1243808733/aide/project/jsonbean/Project;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->projectInfo:Lcom/s1243808733/aide/project/jsonbean/Project;

    .line 358
    iget-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$9;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 359
    new-instance p1, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;

    invoke-direct {p1, p0}, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;-><init>(Lcom/s1243808733/aide/project/ProjectDialog$9;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Lcom/s1243808733/aide/project/ProjectDialog$9$CreateTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
