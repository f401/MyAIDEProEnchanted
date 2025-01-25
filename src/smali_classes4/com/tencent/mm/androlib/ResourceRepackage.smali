.class public Lcom/tencent/mm/androlib/ResourceRepackage;
.super Ljava/lang/Object;


# instance fields
.field private m7zipOutPutDir:Ljava/io/File;

.field private mAlignedWith7ZipApk:Ljava/io/File;

.field private mApkName:Ljava/lang/String;

.field private mOutDir:Ljava/io/File;

.field private mSignedApk:Ljava/io/File;

.field private mSignedWith7ZipApk:Ljava/io/File;

.field private mStoredOutPutDir:Ljava/io/File;

.field private final sevenZipPath:Ljava/lang/String;

.field private final zipalignPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->zipalignPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->sevenZipPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mSignedApk:Ljava/io/File;

    return-void
.end method

.method private addStoredFileIn7Zip(Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V^",
            "Ljava/io/IOException;",
            "^",
            "Ljava/lang/InterruptedException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[addStoredFileIn7Zip]rewrite the stored file into the 7zip, file count:%d\n"

    new-array v2, v8, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mStoredOutPutDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->m7zipOutPutDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->sevenZipPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/util/Utils;->isPresent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fe

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->sevenZipPath:Ljava/lang/String;

    :goto_84
    new-instance v2, Ljava/lang/ProcessBuilder;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v7

    const-string v0, "a"

    aput-object v0, v3, v8

    const/4 v0, 0x2

    const-string v4, "-tzip"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    iget-object v4, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mSignedWith7ZipApk:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string v1, "-mx0"

    aput-object v1, v3, v0

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    new-instance v1, Ljava/io/LineNumberReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    :cond_ba
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_ba

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    return-void

    :cond_c7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/tencent/mm/util/FileOperation;->copyFileUsingStream(Ljava/io/File;Ljava/io/File;)V

    goto/16 :goto_4e

    :cond_fe
    const-string v0, "7za"

    goto :goto_84
.end method

.method private alignApk()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;",
            "^",
            "Ljava/lang/InterruptedException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mSignedWith7ZipApk:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mSignedWith7ZipApk:Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mAlignedWith7ZipApk:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/androlib/ResourceRepackage;->alignApk(Ljava/io/File;Ljava/io/File;)V

    :cond_f
    return-void
.end method

.method private alignApk(Ljava/io/File;Ljava/io/File;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V^",
            "Ljava/io/IOException;",
            "^",
            "Ljava/lang/InterruptedException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "zipaligning apk: %s\n"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2b

    new-instance v0, Ljava/io/IOException;

    const-string v1, "can not found the raw apk file to zipalign, path=%s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->zipalignPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/util/Utils;->isPresent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->zipalignPath:Ljava/lang/String;

    :goto_35
    new-instance v1, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v4

    const-string v0, "4"

    aput-object v0, v2, v5

    const/4 v0, 0x2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    return-void

    :cond_5c
    const-string v0, "zipalign"

    goto :goto_35
.end method

.method private deleteUnusedFiles()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->m7zipOutPutDir:Ljava/io/File;

    invoke-static {v0}, Lcom/tencent/mm/util/FileOperation;->deleteDir(Ljava/io/File;)Z

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mStoredOutPutDir:Ljava/io/File;

    invoke-static {v0}, Lcom/tencent/mm/util/FileOperation;->deleteDir(Ljava/io/File;)Z

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mSignedWith7ZipApk:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mSignedWith7ZipApk:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_17
    return-void
.end method

.method private generalRaw7zip()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;",
            "^",
            "Ljava/lang/InterruptedException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v4, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "general the raw 7zip file\n"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->m7zipOutPutDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->sevenZipPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/util/Utils;->isPresent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->sevenZipPath:Ljava/lang/String;

    :goto_44
    new-instance v2, Ljava/lang/ProcessBuilder;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const-string v4, "a"

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const-string v4, "-tzip"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    iget-object v4, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mSignedWith7ZipApk:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string v1, "-mx9"

    aput-object v1, v3, v0

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    new-instance v1, Ljava/io/LineNumberReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    :cond_7b
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7b

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    return-void

    :cond_88
    const-string v0, "7za"

    goto :goto_44
.end method

.method private insureFileName()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mSignedApk:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_33

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "can not found the signed apk file to repackage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", path=%s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mSignedApk:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mSignedApk:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mApkName:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mOutDir:Ljava/io/File;

    if-nez v0, :cond_5c

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mSignedApk:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mApkName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mOutDir:Ljava/io/File;

    :cond_5c
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mOutDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mApkName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_channel_7zip.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mSignedWith7ZipApk:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mOutDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mApkName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_channel_7zip_aligned.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mAlignedWith7ZipApk:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mOutDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "out_7zip"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->m7zipOutPutDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mOutDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "storefiles"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mStoredOutPutDir:Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->m7zipOutPutDir:Ljava/io/File;

    invoke-static {v0}, Lcom/tencent/mm/util/FileOperation;->deleteDir(Ljava/io/File;)Z

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mStoredOutPutDir:Ljava/io/File;

    invoke-static {v0}, Lcom/tencent/mm/util/FileOperation;->deleteDir(Ljava/io/File;)Z

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mSignedWith7ZipApk:Ljava/io/File;

    invoke-static {v0}, Lcom/tencent/mm/util/FileOperation;->deleteDir(Ljava/io/File;)Z

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mAlignedWith7ZipApk:Ljava/io/File;

    invoke-static {v0}, Lcom/tencent/mm/util/FileOperation;->deleteDir(Ljava/io/File;)Z

    return-void
.end method

.method private repackageWith7z()V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;",
            "^",
            "Ljava/lang/InterruptedException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "use 7zip to repackage: %s, will cost much more time\n"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mSignedWith7ZipApk:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mSignedApk:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->m7zipOutPutDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/util/FileOperation;->unZipAPk(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0}, Lcom/tencent/mm/androlib/ResourceRepackage;->generalRaw7zip()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_35
    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5c

    invoke-direct {p0, v3}, Lcom/tencent/mm/androlib/ResourceRepackage;->addStoredFileIn7Zip(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mSignedWith7ZipApk:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_83

    new-instance v0, Ljava/io/IOException;

    const-string v1, "[repackageWith7z]7z repackage signed apk fail,you must install 7z command line version first, linux: p7zip, window: 7za, path=%s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mSignedWith7ZipApk:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->m7zipOutPutDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_83
    return-void
.end method


# virtual methods
.method public repackageApk()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;",
            "^",
            "Ljava/lang/InterruptedException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/tencent/mm/androlib/ResourceRepackage;->insureFileName()V

    invoke-direct {p0}, Lcom/tencent/mm/androlib/ResourceRepackage;->repackageWith7z()V

    invoke-direct {p0}, Lcom/tencent/mm/androlib/ResourceRepackage;->alignApk()V

    invoke-direct {p0}, Lcom/tencent/mm/androlib/ResourceRepackage;->deleteUnusedFiles()V

    return-void
.end method

.method public setOutDir(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/mm/androlib/ResourceRepackage;->mOutDir:Ljava/io/File;

    return-void
.end method
