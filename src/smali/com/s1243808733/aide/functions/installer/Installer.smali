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
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Error(Ljava/lang/Throwable;)V
    .registers 4

    .line 156
    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "安装时发生错误："

    goto :goto_14

    :cond_12
    const-string v2, "An error occurred during installation:"

    :goto_14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThrowableUtils;->getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/aide/ui/build/d;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public static InstallSystem(Ljava/lang/String;)V
    .registers 7

    .line 67
    :try_start_0
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/aide/ui/U;->ei()Lcom/aide/ui/trainer/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/e;->FH()Z

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_fc

    if-eqz v0, :cond_103

    .line 70
    :cond_10
    :try_start_10
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_3a

    .line 73
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Labcd/FileSystemUtils;->getContextFileProvider()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/support/v4/content/FileProvider;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 74
    const v2, 0x10000001

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_43

    .line 76
    :cond_3a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 78
    :goto_43
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8b

    .line 80
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_8b

    .line 81
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 83
    :cond_62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_69

    goto :goto_8b

    .line 86
    :cond_69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 87
    const-string v4, "com.android.packageinstaller"

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 88
    new-instance v1, Landroid/content/ComponentName;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 93
    :cond_8b
    :goto_8b
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_92} :catch_fa

    .line 100
    :try_start_92
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v1

    const-class v3, Lcom/s1243808733/aide/functions/installer/InstallationResultReceiver;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    const-string v1, "com.s1243808733.aide.functions.installer.INSTALL_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    const/16 v4, 0x29a

    if-lt v1, v3, :cond_b5

    .line 104
    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v1

    const/high16 v3, 0x2000000

    invoke-static {v1, v4, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_bf

    .line 106
    :cond_b5
    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v1

    const/high16 v3, 0x8000000

    invoke-static {v1, v4, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_bf} :catch_fc

    :goto_bf
    nop

    .line 109
    const/4 v1, 0x0

    :try_start_c1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/s1243808733/aide/functions/installer/MySessionCallback;->getInstance()Lcom/s1243808733/aide/functions/installer/MySessionCallback;

    move-result-object p0

    .line 111
    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/aide/application/App;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v4

    .line 112
    invoke-virtual {v4, p0}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    .line 113
    new-instance p0, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {p0, v2}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 114
    invoke-virtual {v4, p0}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result p0

    .line 115
    invoke-virtual {v4, p0}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v1

    .line 116
    invoke-static {v1, v3}, Lcom/s1243808733/aide/functions/installer/Installer;->addToSession(Landroid/content/pm/PackageInstaller$Session;Ljava/io/File;)V

    .line 117
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_f0} :catch_f8
    .catch Ljava/lang/RuntimeException; {:try_start_c1 .. :try_end_f0} :catch_f1
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_f0} :catch_fc

    goto :goto_103

    :catch_f1
    move-exception p0

    if-eqz v1, :cond_f7

    .line 122
    :try_start_f4
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->abandon()V

    .line 124
    :cond_f7
    throw p0

    :catch_f8
    move-exception p0

    .line 119
    throw p0

    :catch_fa
    move-exception p0

    .line 95
    throw p0
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_fc} :catch_fc

    :catch_fc
    move-exception p0

    .line 128
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    invoke-static {p0}, Lcom/s1243808733/aide/functions/installer/Installer;->Error(Ljava/lang/Throwable;)V

    :cond_103
    :goto_103
    return-void
.end method

.method private static addToSession(Landroid/content/pm/PackageInstaller$Session;Ljava/io/File;)V
    .registers 8

    .line 134
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-eqz v2, :cond_32

    .line 139
    :try_start_a
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object p0

    .line 140
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 141
    const/16 p1, 0x2000

    new-array p1, p1, [B

    .line 142
    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    :goto_22
    if-ltz v1, :cond_31

    .line 145
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 146
    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2c} :catch_2d

    goto :goto_22

    :catch_2d
    move-exception p0

    .line 150
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_31
    return-void

    .line 136
    :cond_32
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "File is empty (has length 0)"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3b

    :goto_3a
    throw p0

    :goto_3b
    goto :goto_3a
.end method

.method public static installApk(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

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

    if-eqz v1, :cond_1b

    .line 47
    invoke-static {p0}, Lcom/s1243808733/aide/functions/installer/Installer;->InstallSystem(Ljava/lang/String;)V

    goto :goto_2d

    .line 49
    :cond_1b
    new-instance v1, Lcom/s1243808733/aide/functions/installer/ShellInstall;

    sget-object v2, Lcom/s1243808733/aide/functions/installer/Installer$TYPE;->ROOT:Lcom/s1243808733/aide/functions/installer/Installer$TYPE;

    invoke-virtual {v2}, Lcom/s1243808733/aide/functions/installer/Installer$TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {v1, p0, p1, v0}, Lcom/s1243808733/aide/functions/installer/ShellInstall;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/s1243808733/aide/functions/installer/ShellInstall;->start()V

    :goto_2d
    return-void
.end method


# virtual methods
.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 36
    invoke-static {p1, p2}, Lcom/s1243808733/aide/functions/installer/Installer;->installApk(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
