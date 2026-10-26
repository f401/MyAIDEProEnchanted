.class public Lcom/s1243808733/aide/functions/installer/Installer;
.super Ljava/lang/Object;
.source "Installer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/functions/installer/Installer$TYPE;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Error(Ljava/lang/Throwable;)V
    .locals 3

    .line 156
    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5b89\u88c5\u65f6\u53d1\u751f\u9519\u8bef\uff1a"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThrowableUtils;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aide/ui/build/d;->j6(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "An error occurred during installation:"

    goto :goto_0
.end method

.method public static InstallSystem(Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x1

    .line 67
    :try_start_0
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/aide/ui/U;->ei()Lcom/aide/ui/trainer/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/e;->FH()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_4

    .line 73
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Labcd/FileSystemUtils;->getContextFileProvider()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 74
    const v2, 0x10000001

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    :goto_0
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 80
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_2

    .line 81
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 83
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 93
    :cond_2
    :goto_1
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v1

    const-class v2, Lcom/s1243808733/aide/functions/installer/InstallationResultReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    const-string v1, "com.s1243808733.aide.functions.installer.INSTALL_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_6

    .line 104
    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v1

    const/16 v2, 0x29a

    const/high16 v3, 0x2000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 109
    :goto_2
    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->getInstance()Lcom/s1243808733/aide/functions/installer/MySessionCallback;

    move-result-object v3

    .line 111
    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/aide/application/App;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v4

    .line 112
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    .line 113
    new-instance v3, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 114
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v3

    .line 115
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v1

    .line 116
    invoke-static {v1, v2}, Lcom/s1243808733/aide/functions/installer/Installer;->addToSession(Landroid/content/pm/PackageInstaller$Session;Ljava/io/File;)V

    .line 117
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 129
    :cond_3
    :goto_3
    return-void

    .line 76
    :cond_4
    :try_start_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 86
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 87
    const-string v3, "com.android.packageinstaller"

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 119
    :catch_0
    move-exception v0

    .line 95
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    invoke-static {v0}, Lcom/s1243808733/aide/functions/installer/Installer;->Error(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 106
    :cond_6
    :try_start_6
    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v1

    const/16 v2, 0x29a

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_2

    .line 117
    :catch_2
    move-exception v0

    if-eqz v1, :cond_7

    .line 122
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->abandon()V

    .line 124
    :cond_7
    throw v0

    :catch_3
    move-exception v0

    .line 119
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
.end method

.method private static addToSession(Landroid/content/pm/PackageInstaller$Session;Ljava/io/File;)V
    .locals 6

    const-wide/16 v0, 0x0

    .line 134
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-eqz v0, :cond_1

    .line 139
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v1

    .line 140
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 141
    const/16 v0, 0x2000

    new-array v3, v0, [B

    .line 142
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    .line 145
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 146
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void

    .line 136
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "File is empty (has length 0)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static installApk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 43
    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/debugger/Debugger;->Ws()V

    .line 45
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->getInstallType()Ljava/lang/String;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/s1243808733/aide/functions/installer/Installer$TYPE;->SYSTEM:Lcom/s1243808733/aide/functions/installer/Installer$TYPE;

    invoke-virtual {v1}, Lcom/s1243808733/aide/functions/installer/Installer$TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-static {p0}, Lcom/s1243808733/aide/functions/installer/Installer;->InstallSystem(Ljava/lang/String;)V

    .line 49
    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/s1243808733/aide/functions/installer/ShellInstall;

    sget-object v2, Lcom/s1243808733/aide/functions/installer/Installer$TYPE;->ROOT:Lcom/s1243808733/aide/functions/installer/Installer$TYPE;

    invoke-virtual {v2}, Lcom/s1243808733/aide/functions/installer/Installer$TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {v1, p0, p1, v0}, Lcom/s1243808733/aide/functions/installer/ShellInstall;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/s1243808733/aide/functions/installer/ShellInstall;->start()V

    goto :goto_0
.end method


# virtual methods
.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-static {p1, p2}, Lcom/s1243808733/aide/functions/installer/Installer;->installApk(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
