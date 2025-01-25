.class public Lcom/s1243808733/aide/ZipalignEvent;
.super Lcom/s1243808733/aide/api/MainActivityEventWrapper;
.source "ZipalignEvent.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/s1243808733/aide/api/MainActivityEventWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeSigningAPK(Ljava/io/File;Ljava/lang/Object;)V
    .registers 10

    .line 16
    invoke-super {p0, p1, p2}, Lcom/s1243808733/aide/api/MainActivityEventWrapper;->onBeforeSigningAPK(Ljava/io/File;Ljava/lang/Object;)V

    .line 17
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "advanced_setting_enable_zipalign"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 21
    :cond_11
    const-string v0, "Zipalign..."

    invoke-virtual {p0, p2, v0}, Lcom/s1243808733/aide/ZipalignEvent;->updateBuildDialog(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/libzipalign.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    new-instance v3, Ljava/io/File;

    const-string v4, "input"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    new-instance v4, Ljava/io/File;

    const-string v5, "out"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    invoke-static {p1, v3}, Lcom/blankj/utilcode/util/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    const-string v0, " -p -f -v 4"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v0, v3

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd(Ljava/lang/String;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    move-result-object v0

    .line 41
    iget v5, v0, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;->result:I

    if-nez v5, :cond_a1

    .line 42
    invoke-static {v4, p1}, Lcom/blankj/utilcode/util/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_bc

    .line 44
    :cond_a1
    const-string p1, "Zipalign 失败..."

    const-string v4, "Zipalign failed..."

    invoke-static {p1, v4}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/s1243808733/aide/ZipalignEvent;->updateBuildDialog(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-array p1, v2, [Ljava/lang/Object;

    aput-object v0, p1, v3

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 48
    const-wide/16 p1, 0x3e8

    :try_start_b7
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_ba
    .catch Ljava/lang/InterruptedException; {:try_start_b7 .. :try_end_ba} :catch_bb

    goto :goto_bc

    .line 52
    :catch_bb
    move-exception p1

    :goto_bc
    invoke-static {v1}, Lcom/blankj/utilcode/util/FileUtils;->deleteFilesInDir(Ljava/io/File;)Z

    return-void
.end method
