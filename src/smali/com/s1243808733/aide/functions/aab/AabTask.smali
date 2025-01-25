.class public Lcom/s1243808733/aide/functions/aab/AabTask;
.super Ljava/lang/Object;
.source "AabTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;,
        Lcom/s1243808733/aide/functions/aab/AabTask$DexFileFilter;
    }
.end annotation


# static fields
.field private static AabFile:Ljava/io/File;

.field private static Aapt2File:Ljava/io/File;

.field private static ApksFile:Ljava/io/File;

.field private static BaseZip:Ljava/io/File;

.field private static BundleTool:Ljava/io/File;

.field private static CacheDir:Ljava/io/File;

.field private static FormatFile:Ljava/io/File;

.field private static Key_Alias:Ljava/lang/String;

.field private static Key_Pass:Ljava/lang/String;

.field private static ProtoFile:Ljava/io/File;

.field private static RootDir:Ljava/io/File;

.field private static WorkDir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAab(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    move-object/from16 v0, p1

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    sput-object v1, Lcom/s1243808733/aide/functions/aab/AabTask;->WorkDir:Ljava/io/File;

    .line 53
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/s1243808733/aide/functions/aab/AabTask;->WorkDir:Ljava/io/File;

    const-string v3, "base-proto.zip"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/s1243808733/aide/functions/aab/AabTask;->ProtoFile:Ljava/io/File;

    .line 54
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/s1243808733/aide/functions/aab/AabTask;->WorkDir:Ljava/io/File;

    const-string v3, "proto-format.zip"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/s1243808733/aide/functions/aab/AabTask;->FormatFile:Ljava/io/File;

    .line 55
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/s1243808733/aide/functions/aab/AabTask;->WorkDir:Ljava/io/File;

    const-string v3, "base.zip"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/s1243808733/aide/functions/aab/AabTask;->BaseZip:Ljava/io/File;

    .line 56
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/s1243808733/aide/functions/aab/AabTask;->WorkDir:Ljava/io/File;

    const-string v3, "app.aab"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/s1243808733/aide/functions/aab/AabTask;->AabFile:Ljava/io/File;

    .line 57
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/s1243808733/aide/functions/aab/AabTask;->WorkDir:Ljava/io/File;

    const-string v3, "app.apks"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/s1243808733/aide/functions/aab/AabTask;->ApksFile:Ljava/io/File;

    .line 58
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/s1243808733/aide/functions/aab/AabTask;->WorkDir:Ljava/io/File;

    const-string v3, "base"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/s1243808733/aide/functions/aab/AabTask;->CacheDir:Ljava/io/File;

    .line 59
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/s1243808733/aide/functions/aab/AabTask;->CacheDir:Ljava/io/File;

    const-string v3, "root"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/s1243808733/aide/functions/aab/AabTask;->RootDir:Ljava/io/File;

    .line 60
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/aide/application/App;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "/tools/bundletool.jar"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/s1243808733/aide/functions/aab/AabTask;->BundleTool:Ljava/io/File;

    .line 61
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/aide/functions/aapt2/ProjectUtils;->getAapt2Path()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/s1243808733/aide/functions/aab/AabTask;->Aapt2File:Ljava/io/File;

    .line 68
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableCustomApksSign()Z

    move-result v1

    .line 70
    sget-object v2, Lcom/s1243808733/aide/functions/aab/AabTask;->CacheDir:Ljava/io/File;

    invoke-static {v2}, Lcom/blankj/utilcode/util/FileUtils;->deleteAllInDir(Ljava/io/File;)Z

    move-result v2

    .line 71
    sget-object v3, Lcom/s1243808733/aide/functions/aab/AabTask;->BaseZip:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 72
    sget-object v3, Lcom/s1243808733/aide/functions/aab/AabTask;->ProtoFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 73
    sget-object v3, Lcom/s1243808733/aide/functions/aab/AabTask;->AabFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 74
    sget-object v3, Lcom/s1243808733/aide/functions/aab/AabTask;->ApksFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 75
    const-string v3, "缓存删除失败"

    if-eqz v2, :cond_3cf

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    const-string v4, "convert"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    const-string v4, "-o"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v4, Lcom/s1243808733/aide/functions/aab/AabTask;->FormatFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    const-string v4, "--output-format"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    const-string v4, "proto"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    const-string v4, "--enable-sparse-encoding"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    const-string v4, "--keep-raw-values"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    const-string v4, "-v"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v4, Lcom/s1243808733/aide/functions/aab/AabTask;->Aapt2File:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 95
    new-instance v4, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;-><init>(Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor-IA;)V

    .line 96
    invoke-virtual {v4, v2}, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->setCommands(Ljava/util/List;)V

    .line 97
    invoke-virtual {v4}, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->execute()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3c5

    .line 102
    sget-object v2, Lcom/s1243808733/aide/functions/aab/AabTask;->FormatFile:Ljava/io/File;

    sget-object v4, Lcom/s1243808733/aide/functions/aab/AabTask;->RootDir:Ljava/io/File;

    invoke-static {v2, v4}, Lcom/blankj/utilcode/util/ZipUtils;->unzipFile(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3bd

    .line 103
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3bd

    .line 108
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/s1243808733/aide/functions/aab/AabTask;->RootDir:Ljava/io/File;

    const-string v6, "resources.pb"

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    sget-object v7, Lcom/s1243808733/aide/functions/aab/AabTask;->CacheDir:Ljava/io/File;

    invoke-direct {v4, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lcom/blankj/utilcode/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3b5

    .line 114
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/s1243808733/aide/functions/aab/AabTask;->CacheDir:Ljava/io/File;

    const-string v6, "res"

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    invoke-static {v2}, Lcom/blankj/utilcode/util/FileUtils;->deleteAllInDir(Ljava/io/File;)Z

    .line 116
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 117
    new-instance v4, Ljava/io/File;

    sget-object v7, Lcom/s1243808733/aide/functions/aab/AabTask;->RootDir:Ljava/io/File;

    invoke-direct {v4, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v2}, Lcom/blankj/utilcode/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3ad

    .line 123
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/s1243808733/aide/functions/aab/AabTask;->CacheDir:Ljava/io/File;

    const-string v6, "assets"

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    new-instance v4, Ljava/io/File;

    sget-object v7, Lcom/s1243808733/aide/functions/aab/AabTask;->RootDir:Ljava/io/File;

    invoke-direct {v4, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_155

    .line 126
    invoke-static {v2}, Lcom/blankj/utilcode/util/FileUtils;->deleteAllInDir(Ljava/io/File;)Z

    .line 127
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 128
    invoke-static {v4, v2}, Lcom/blankj/utilcode/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_14d

    goto :goto_155

    .line 130
    :cond_14d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "移动\'assets\'文件夹失败"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_155
    :goto_155
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/s1243808733/aide/functions/aab/AabTask;->RootDir:Ljava/io/File;

    const-string v6, "AndroidManifest.xml"

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/s1243808733/aide/functions/aab/AabTask;->CacheDir:Ljava/io/File;

    const-string v7, "manifest/AndroidManifest.xml"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lcom/blankj/utilcode/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3a5

    .line 141
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/s1243808733/aide/functions/aab/AabTask;->CacheDir:Ljava/io/File;

    const-string v6, "lib"

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    new-instance v4, Ljava/io/File;

    sget-object v7, Lcom/s1243808733/aide/functions/aab/AabTask;->RootDir:Ljava/io/File;

    invoke-direct {v4, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_198

    .line 144
    invoke-static {v2}, Lcom/blankj/utilcode/util/FileUtils;->deleteAllInDir(Ljava/io/File;)Z

    .line 145
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 146
    invoke-static {v4, v2}, Lcom/blankj/utilcode/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_190

    goto :goto_198

    .line 148
    :cond_190
    new-instance v0, Ljava/io/IOException;

    const-string v1, "移动\'lib\'文件夹失败"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_198
    :goto_198
    sget-object v2, Lcom/s1243808733/aide/functions/aab/AabTask;->RootDir:Ljava/io/File;

    new-instance v4, Lcom/s1243808733/aide/functions/aab/AabTask$DexFileFilter;

    invoke-direct {v4}, Lcom/s1243808733/aide/functions/aab/AabTask$DexFileFilter;-><init>()V

    invoke-static {v2, v4}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/List;

    move-result-object v2

    .line 154
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 155
    sget-object v6, Lcom/s1243808733/aide/functions/aab/AabTask;->CacheDir:Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/dex/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/io/File;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v8}, Lcom/blankj/utilcode/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_1d3

    goto :goto_1a7

    .line 157
    :cond_1d3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "移动\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'文件失败"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_1f0
    sget-object v2, Lcom/s1243808733/aide/functions/aab/AabTask;->CacheDir:Ljava/io/File;

    invoke-static {v2}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDir(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    .line 163
    sget-object v4, Lcom/s1243808733/aide/functions/aab/AabTask;->BaseZip:Ljava/io/File;

    invoke-static {v2, v4}, Lcom/blankj/utilcode/util/ZipUtils;->zipFiles(Ljava/util/Collection;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_39d

    .line 170
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 171
    const-string v4, "dalvikvm"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    const-string v6, "-Xcompiler-option"

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    const-string v7, "--compiler-filter=speed"

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    const-string v8, "-Xmx256m"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "-Djava.io.tmpdir="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/s1243808733/aide/functions/aab/AabTask;->CacheDir:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    const-string v9, "-cp"

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v11, Lcom/s1243808733/aide/functions/aab/AabTask;->BundleTool:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    const-string v11, "com.android.tools.build.bundletool.BundleToolMain"

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    const-string v12, "build-bundle"

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "--modules="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Lcom/s1243808733/aide/functions/aab/AabTask;->BaseZip:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "--output="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/s1243808733/aide/functions/aab/AabTask;->AabFile:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v12, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;

    invoke-direct {v12, v5}, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;-><init>(Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor-IA;)V

    .line 183
    invoke-virtual {v12, v2}, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->setCommands(Ljava/util/List;)V

    .line 184
    invoke-virtual {v12}, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->execute()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_393

    .line 190
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/s1243808733/aide/functions/aab/AabTask;->CacheDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v4, Lcom/s1243808733/aide/functions/aab/AabTask;->BundleTool:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    const-string v4, "build-apks"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "--bundle="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/s1243808733/aide/functions/aab/AabTask;->AabFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/s1243808733/aide/functions/aab/AabTask;->ApksFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    const-string v4, "--mode=universal"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_342

    .line 205
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "--ks="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--ks-pass=pass:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--ks-key-alias="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/s1243808733/aide/functions/aab/AabTask;->Key_Alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--key-pass=pass:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_342
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--aapt2="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/s1243808733/aide/functions/aab/AabTask;->Aapt2File:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v0, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;

    invoke-direct {v0, v5}, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;-><init>(Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor-IA;)V

    .line 213
    invoke-virtual {v0, v2}, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->setCommands(Ljava/util/List;)V

    .line 214
    invoke-virtual {v0}, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->execute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_389

    .line 219
    sget-object v0, Lcom/s1243808733/aide/functions/aab/AabTask;->CacheDir:Ljava/io/File;

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->deleteAllInDir(Ljava/io/File;)Z

    move-result v0

    .line 220
    sget-object v1, Lcom/s1243808733/aide/functions/aab/AabTask;->BaseZip:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 221
    sget-object v1, Lcom/s1243808733/aide/functions/aab/AabTask;->ProtoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    if-eqz v0, :cond_383

    .line 225
    sget-object v0, Lcom/s1243808733/aide/functions/aab/AabTask;->CacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    .line 223
    :cond_383
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_389
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->getLog()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_393
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v12}, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->getLog()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_39d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "压缩失败"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_3a5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "移动\'AndroidManifest.xml\'文件失败"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_3ad
    new-instance v0, Ljava/io/IOException;

    const-string v1, "移动\'res\'文件夹失败"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_3b5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "移动\'resources.pb\'文件失败"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_3bd
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "解压失败"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_3c5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v4}, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->getLog()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_3cf
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3d6

    :goto_3d5
    throw v0

    :goto_3d6
    goto :goto_3d5
.end method
