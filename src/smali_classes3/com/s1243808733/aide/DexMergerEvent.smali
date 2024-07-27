.class public Lcom/s1243808733/aide/DexMergerEvent;
.super Lcom/s1243808733/aide/api/MainActivityEventWrapper;
.source "DexMergerEvent.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Lcom/s1243808733/aide/api/MainActivityEventWrapper;-><init>()V

    return-void
.end method

.method private d8Merger(Ljava/io/File;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 53
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "useing d8Merger"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 56
    :try_start_0
    invoke-static {p1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->getClassesDexPathsFormApk(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    .line 59
    :goto_0
    if-le v0, v3, :cond_0

    .line 60
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u4f7f\u7528D8\u91cd\u65b0\u5408\u5e76Dex\u4e2d.."

    :goto_1
    invoke-virtual {p0, p2, v0}, Lcom/s1243808733/aide/DexMergerEvent;->updateBuildDialog(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/aide/functions/r8merger/R8Log;

    .line 63
    :try_start_1
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v1

    const-string v2, "d8_merger.log"

    invoke-static {v1, v2}, Lcom/s1243808733/aide/util/ProjectUtils;->getBin(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 64
    new-instance v2, Lcom/s1243808733/aide/functions/r8merger/R8Log;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Lcom/s1243808733/aide/functions/r8merger/R8Log;-><init>(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :try_start_2
    new-instance v0, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;

    invoke-direct {v0, v2, p1}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;-><init>(Lcom/s1243808733/aide/functions/r8merger/R8Log;Ljava/io/File;)V

    .line 66
    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->merger(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    :goto_2
    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {v2}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->close()V

    :cond_0
    return-void

    .line 60
    :cond_1
    const-string v0, "Mergeing Dex.."

    goto :goto_1

    .line 66
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 68
    :goto_3
    :try_start_3
    const-string v0, "DexMerger Fail"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Lcom/blankj/utilcode/util/LogUtils;->iTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u5408\u5e76Dex\u5931\u8d25\uff0c\u8bf7\u5230cache/log\u67e5\u770b\u539f\u56e0"

    :goto_4
    :try_start_4
    invoke-virtual {p0, p2, v0}, Lcom/s1243808733/aide/DexMergerEvent;->updateBuildDialog(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 71
    const/16 v0, 0xbb8

    int-to-long v0, v0

    :try_start_5
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    .line 69
    :cond_2
    const-string v0, "Failed to merge Dex"

    goto :goto_4

    .line 71
    :catchall_0
    move-exception v1

    move-object v2, v0

    .line 74
    :goto_5
    if-eqz v2, :cond_3

    .line 75
    invoke-virtual {v2}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->close()V

    :cond_3
    throw v1

    .line 71
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_5

    .line 66
    :catch_2
    move-exception v0

    move-object v1, v0

    goto :goto_3

    .line 56
    :catch_3
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onBeforeSigningAPK(Ljava/io/File;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 17
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "adset_use_dexmerger"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "adset_use_dexmerger_d8"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/aide/DexMergerEvent;->d8Merger(Ljava/io/File;Ljava/lang/Object;)V

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->getClassesDexPathsFormApk(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 27
    :goto_1
    if-le v0, v4, :cond_0

    .line 28
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u91cd\u65b0\u5408\u5e76Dex.."

    :goto_2
    invoke-virtual {p0, p2, v0}, Lcom/s1243808733/aide/DexMergerEvent;->updateBuildDialog(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;

    .line 31
    :try_start_1
    new-instance v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;

    invoke-direct {v1}, Lcom/s1243808733/android/dx/command/dexer/DxContext;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    new-instance v0, Lcom/s1243808733/android/dexmerger/ApkDexMerger;

    invoke-direct {v0, v1, p1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;-><init>(Lcom/s1243808733/android/dx/command/dexer/DxContext;Ljava/io/File;)V

    .line 33
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->merger(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    .line 41
    :goto_3
    if-eqz v0, :cond_0

    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 25
    const-string v2, "GetDexCountError"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/LogUtils;->iTag(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_1

    .line 28
    :cond_2
    const-string v0, "Mergeing Dex.."

    goto :goto_2

    .line 33
    :catch_1
    move-exception v1

    move-object v2, v1

    .line 35
    :goto_4
    :try_start_3
    const-string v1, "DexMerger Fail"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lcom/blankj/utilcode/util/LogUtils;->iTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "\u5408\u5e76Dex\u5931\u8d25\uff0c\u8bf7\u5230cache/log\u67e5\u770b\u539f\u56e0"

    :goto_5
    :try_start_4
    invoke-virtual {p0, p2, v1}, Lcom/s1243808733/aide/DexMergerEvent;->updateBuildDialog(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 38
    const/16 v1, 0xbb8

    int-to-long v2, v1

    :try_start_5
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_3

    .line 36
    :cond_3
    const-string v1, "Failed to merge Dex"

    goto :goto_5

    .line 38
    :catchall_0
    move-exception v1

    move-object v2, v1

    .line 41
    :goto_6
    if-eqz v0, :cond_4

    :cond_4
    throw v2

    .line 38
    :catchall_1
    move-exception v2

    move-object v0, v1

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v2, v1

    goto :goto_6

    .line 33
    :catch_3
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    goto :goto_4
.end method
