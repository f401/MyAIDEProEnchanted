.class public Lcom/s1243808733/aide/DexMergerEvent;
.super Lcom/s1243808733/aide/api/MainActivityEventWrapper;
.source "DexMergerEvent.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/s1243808733/aide/api/MainActivityEventWrapper;-><init>()V

    return-void
.end method

.method private d8Merger(Ljava/io/File;Ljava/lang/Object;)V
    .registers 8

    .line 53
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "useing d8Merger"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 56
    :try_start_b
    invoke-static {p1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->getClassesDexPathsFormApk(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_14

    goto :goto_16

    :catchall_14
    move-exception v1

    const/4 v1, 0x0

    :goto_16
    if-le v1, v0, :cond_72

    .line 60
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "使用D8重新合并Dex中.."

    goto :goto_23

    :cond_21
    const-string v1, "Mergeing Dex.."

    :goto_23
    invoke-virtual {p0, p2, v1}, Lcom/s1243808733/aide/DexMergerEvent;->updateBuildDialog(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    :try_start_26
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v1

    const-string v2, "d8_merger.log"

    invoke-static {v1, v2}, Lcom/s1243808733/aide/util/ProjectUtils;->getBin(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 64
    new-instance v2, Lcom/s1243808733/aide/functions/r8merger/R8Log;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Lcom/s1243808733/aide/functions/r8merger/R8Log;-><init>(Ljava/io/FileOutputStream;)V
    :try_end_3a
    .catchall {:try_start_26 .. :try_end_3a} :catchall_48

    .line 65
    :try_start_3a
    new-instance v1, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;

    invoke-direct {v1, v2, p1}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;-><init>(Lcom/s1243808733/aide/functions/r8merger/R8Log;Ljava/io/File;)V

    .line 66
    invoke-virtual {v1, p1}, Lcom/s1243808733/aide/functions/r8merger/ApkDexMerger;->merger(Ljava/io/File;)V
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_46

    .line 75
    :goto_42
    invoke-virtual {v2}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->close()V

    goto :goto_72

    :catchall_46
    move-exception p1

    goto :goto_4a

    :catchall_48
    move-exception p1

    const/4 v2, 0x0

    .line 68
    :goto_4a
    :try_start_4a
    const-string v1, "DexMerger Fail"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->iTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p1
    :try_end_57
    .catchall {:try_start_4a .. :try_end_57} :catchall_6b

    if-eqz p1, :cond_5c

    const-string p1, "合并Dex失败，请到cache/log查看原因"

    goto :goto_5e

    :cond_5c
    const-string p1, "Failed to merge Dex"

    :goto_5e
    :try_start_5e
    invoke-virtual {p0, p2, p1}, Lcom/s1243808733/aide/DexMergerEvent;->updateBuildDialog(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_6b

    .line 71
    const-wide/16 p1, 0xbb8

    :try_start_63
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_66
    .catch Ljava/lang/InterruptedException; {:try_start_63 .. :try_end_66} :catch_67
    .catchall {:try_start_63 .. :try_end_66} :catchall_6b

    goto :goto_68

    :catch_67
    move-exception p1

    :goto_68
    if-eqz v2, :cond_72

    .line 75
    goto :goto_42

    :catchall_6b
    move-exception p1

    if-eqz v2, :cond_71

    invoke-virtual {v2}, Lcom/s1243808733/aide/functions/r8merger/R8Log;->close()V

    .line 77
    :cond_71
    throw p1

    :cond_72
    :goto_72
    return-void
.end method


# virtual methods
.method public onBeforeSigningAPK(Ljava/io/File;Ljava/lang/Object;)V
    .registers 7

    .line 17
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "adset_use_dexmerger"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 18
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "adset_use_dexmerger_d8"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/aide/DexMergerEvent;->d8Merger(Ljava/io/File;Ljava/lang/Object;)V

    goto :goto_71

    .line 23
    :cond_1e
    :try_start_1e
    invoke-static {p1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->getClassesDexPathsFormApk(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_27

    goto :goto_32

    :catchall_27
    move-exception v0

    .line 25
    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "GetDexCountError"

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->iTag(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_32
    if-le v0, v2, :cond_71

    .line 28
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "重新合并Dex.."

    goto :goto_3f

    :cond_3d
    const-string v0, "Mergeing Dex.."

    :goto_3f
    invoke-virtual {p0, p2, v0}, Lcom/s1243808733/aide/DexMergerEvent;->updateBuildDialog(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    :try_start_42
    new-instance v0, Lcom/s1243808733/android/dx/command/dexer/DxContext;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/command/dexer/DxContext;-><init>()V

    .line 32
    new-instance v1, Lcom/s1243808733/android/dexmerger/ApkDexMerger;

    invoke-direct {v1, v0, p1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;-><init>(Lcom/s1243808733/android/dx/command/dexer/DxContext;Ljava/io/File;)V

    .line 33
    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dexmerger/ApkDexMerger;->merger(Ljava/io/File;)V
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_50

    goto :goto_71

    :catchall_50
    move-exception p1

    .line 35
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "DexMerger Fail"

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->iTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_63

    const-string p1, "合并Dex失败，请到cache/log查看原因"

    goto :goto_65

    :cond_63
    const-string p1, "Failed to merge Dex"

    :goto_65
    invoke-virtual {p0, p2, p1}, Lcom/s1243808733/aide/DexMergerEvent;->updateBuildDialog(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    const-wide/16 p1, 0xbb8

    :try_start_6a
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6d
    .catch Ljava/lang/InterruptedException; {:try_start_6a .. :try_end_6d} :catch_70
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    goto :goto_71

    :catchall_6e
    move-exception p1

    .line 44
    throw p1

    :catch_70
    move-exception p1

    :cond_71
    :goto_71
    return-void
.end method
