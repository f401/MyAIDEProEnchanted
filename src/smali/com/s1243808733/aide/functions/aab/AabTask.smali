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
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAab(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x0

    .line 52
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/aide/functions/aab/AabTask;->WorkDir:Ljava/io/File;

    .line 53
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/s1243808733/aide/functions/aab/AabTask;->WorkDir:Ljava/io/File;

    const-string v2, "base-proto.zip"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/s1243808733/aide/functions/aab/AabTask;->ProtoFile:Ljava/io/File;

    .line 54
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/s1243808733/aide/functions/aab/AabTask;->WorkDir:Ljava/io/File;

    const-string v2, "proto-format.zip"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/s1243808733/aide/functions/aab/AabTask;->FormatFile:Ljava/io/File;

    .line 55
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/s1243808733/aide/functions/aab/AabTask;->WorkDir:Ljava/io/File;

    const-string v2, "base.zip"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/s1243808733/aide/functions/aab/AabTask;->BaseZip:Ljava/io/File;

    .line 56
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/s1243808733/aide/functions/aab/AabTask;->WorkDir:Ljava/io/File;

    const-string v2, "app.aab"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/s1243808733/aide/functions/aab/AabTask;->AabFile:Ljava/io/File;

    .line 57
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/s1243808733/aide/functions/aab/AabTask;->WorkDir:Ljava/io/File;

    const-string v2, "app.apks"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/s1243808733/aide/functions/aab/AabTask;->ApksFile:Ljava/io/File;

    .line 58
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/s1243808733/aide/functions/aab/AabTask;->WorkDir:Ljava/io/File;

    const-string v2, "base"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/s1243808733/aide/functions/aab/AabTask;->CacheDir:Ljava/io/File;

    .line 59
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/s1243808733/aide/functions/aab/AabTask;->CacheDir:Ljava/io/File;

    const-string v2, "root"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/s1243808733/aide/functions/aab/AabTask;->RootDir:Ljava/io/File;

    .line 60
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/App;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "/tools/bundletool.jar"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/s1243808733/aide/functions/aab/AabTask;->BundleTool:Ljava/io/File;

    .line 61
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/aide/functions/aapt2/ProjectUtils;->getAapt2Path()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/s1243808733/aide/functions/aab/AabTask;->Aapt2File:Ljava/io/File;

    .line 68
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableCustomApksSign()Z

    move-result v1

    .line 70
    sget-object v0, Lcom/s1243808733/aide/functions/aab/AabTask;->CacheDir:Ljava/io/File;

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->deleteAllInDir(Ljava/io/File;)Z

    move-result v0

    .line 71
    sget-object v2, Lcom/s1243808733/aide/functions/aab/AabTask;->BaseZip:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 72
    sget-object v2, Lcom/s1243808733/aide/functions/aab/AabTask;->ProtoFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 73
    sget-object v2, Lcom/s1243808733/aide/functions/aab/AabTask;->AabFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 74
    sget-object v2, Lcom/s1243808733/aide/functions/aab/AabTask;->ApksFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 75
    if-eqz v0, :cond_10

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    const-string v2, "convert"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    const-string v2, "-o"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v2, Lcom/s1243808733/aide/functions/aab/AabTask;->FormatFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    const-string v2, "--output-format"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    const-string v2, "proto"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    const-string v2, "--enable-sparse-encoding"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    const-string v2, "--keep-raw-values"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    const-string v2, "-v"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    const/4 v2, 0x0

    sget-object v3, Lcom/s1243808733/aide/functions/aab/AabTask;->Aapt2File:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 95
    new-instance v2, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;

    invoke-direct {v2, v6}, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;-><init>(Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor-IA;)V

    .line 96
    invoke-virtual {v2, v0}, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->setCommands(Ljava/util/List;)V

    .line 97
    invoke-virtual {v2}, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->execute()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 102
    sget-object v0, Lcom/s1243808733/aide/functions/aab/AabTask;->FormatFile:Ljava/io/File;

    sget-object v2, Lcom/s1243808733/aide/functions/aab/AabTask;->RootDir:Ljava/io/File;

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/ZipUtils;->unzipFile(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 103
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 108
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/s1243808733/aide/functions/aab/AabTask;->RootDir:Ljava/io/File;

    const-string v3, "resources.pb"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/s1243808733/aide/functions/aab/AabTask;->CacheDir:Ljava/io/File;

    const-string v4, "resources.pb"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 114
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/s1243808733/aide/functions/aab/AabTask;->CacheDir:Ljava/io/File;

    const-string v3, "res"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->deleteAllInDir(Ljava/io/File;)Z

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 117
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/s1243808733/aide/functions/aab/AabTask;->RootDir:Ljava/io/File;

    const-string v4, "res"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 123
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/s1243808733/aide/functions/aab/AabTask;->CacheDir:Ljava/io/File;

    const-string v3, "assets"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/s1243808733/aide/functions/aab/AabTask;->RootDir:Ljava/io/File;

    const-string v4, "assets"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->deleteAllInDir(Ljava/io/File;)Z

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 128
    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/s1243808733/aide/functions/aab/AabTask;->RootDir:Ljava/io/File;

    const-string v3, "AndroidManifest.xml"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/s1243808733/aide/functions/aab/AabTask;->CacheDir:Ljava/io/File;

    const-string v4, "manifest/AndroidManifest.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 141
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/s1243808733/aide/functions/aab/AabTask;->CacheDir:Ljava/io/File;

    const-string v3, "lib"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/s1243808733/aide/functions/aab/AabTask;->RootDir:Ljava/io/File;

    const-string v4, "lib"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->deleteAllInDir(Ljava/io/File;)Z

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 146
    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    :cond_1
    sget-object v0, Lcom/s1243808733/aide/functions/aab/AabTask;->RootDir:Ljava/io/File;

    new-instance v2, Lcom/s1243808733/aide/functions/aab/AabTask$DexFileFilter;

    invoke-direct {v2}, Lcom/s1243808733/aide/functions/aab/AabTask$DexFileFilter;-><init>()V

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/List;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 155
    sget-object v3, Lcom/s1243808733/aide/functions/aab/AabTask;->CacheDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/dex/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v5}, Lcom/blankj/utilcode/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u79fb\u52a8\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'\u6587\u4ef6\u5931\u8d25"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u79fb\u52a8\'assets\'\u6587\u4ef6\u5939\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u79fb\u52a8\'lib\'\u6587\u4ef6\u5939\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_5
    sget-object v0, Lcom/s1243808733/aide/functions/aab/AabTask;->CacheDir:Ljava/io/File;

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->listFilesInDir(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 163
    sget-object v2, Lcom/s1243808733/aide/functions/aab/AabTask;->BaseZip:Ljava/io/File;

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/ZipUtils;->zipFiles(Ljava/util/Collection;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    const-string v2, "dalvikvm"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    const-string v2, "-Xcompiler-option"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    const-string v2, "--compiler-filter=speed"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    const-string v2, "-Xmx256m"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-Djava.io.tmpdir="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/s1243808733/aide/functions/aab/AabTask;->CacheDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    const-string v2, "-cp"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v2, Lcom/s1243808733/aide/functions/aab/AabTask;->BundleTool:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    const-string v2, "com.android.tools.build.bundletool.BundleToolMain"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    const-string v2, "build-bundle"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--modules="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/s1243808733/aide/functions/aab/AabTask;->BaseZip:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--output="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/s1243808733/aide/functions/aab/AabTask;->AabFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v2, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;

    invoke-direct {v2, v6}, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;-><init>(Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor-IA;)V

    .line 183
    invoke-virtual {v2, v0}, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->setCommands(Ljava/util/List;)V

    .line 184
    invoke-virtual {v2}, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->execute()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    const-string v2, "dalvikvm"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    const-string v2, "-Xcompiler-option"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    const-string v2, "--compiler-filter=speed"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    const-string v2, "-Xmx256m"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-Djava.io.tmpdir="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/s1243808733/aide/functions/aab/AabTask;->CacheDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    const-string v2, "-cp"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v2, Lcom/s1243808733/aide/functions/aab/AabTask;->BundleTool:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    const-string v2, "com.android.tools.build.bundletool.BundleToolMain"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    const-string v2, "build-apks"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--bundle="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/s1243808733/aide/functions/aab/AabTask;->AabFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--output="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/s1243808733/aide/functions/aab/AabTask;->ApksFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    const-string v2, "--mode=universal"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_6

    .line 205
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--ks="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--ks-pass=pass:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--ks-key-alias="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/s1243808733/aide/functions/aab/AabTask;->Key_Alias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--key-pass=pass:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--aapt2="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/s1243808733/aide/functions/aab/AabTask;->Aapt2File:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v1, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;

    invoke-direct {v1, v6}, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;-><init>(Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor-IA;)V

    .line 213
    invoke-virtual {v1, v0}, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->setCommands(Ljava/util/List;)V

    .line 214
    invoke-virtual {v1}, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->execute()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

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

    if-eqz v0, :cond_7

    .line 225
    sget-object v0, Lcom/s1243808733/aide/functions/aab/AabTask;->CacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    .line 223
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u7f13\u5b58\u5220\u9664\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->getLog()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->getLog()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u538b\u7f29\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u79fb\u52a8\'AndroidManifest.xml\'\u6587\u4ef6\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u79fb\u52a8\'res\'\u6587\u4ef6\u5939\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u79fb\u52a8\'resources.pb\'\u6587\u4ef6\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_e
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u89e3\u538b\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Lcom/s1243808733/aide/functions/aab/AabTask$BinaryExecutor;->getLog()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u7f13\u5b58\u5220\u9664\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
