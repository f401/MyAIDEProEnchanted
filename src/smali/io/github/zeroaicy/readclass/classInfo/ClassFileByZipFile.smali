.class public Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;
.super Ljava/lang/Object;
.source "ClassFileByZipFile.java"

# interfaces
.implements Lio/github/zeroaicy/readclass/classInfo/ClassFile;


# instance fields
.field private zipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->zipFile:Ljava/util/zip/ZipFile;

    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ZipFile not found or zipFile is a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/zip/ZipFile;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->zipFile:Ljava/util/zip/ZipFile;

    return-void
.end method

.method private getClassFile(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 3

    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    .line 53
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 55
    :goto_0
    return-object v1

    :cond_0
    move-object v0, v1

    check-cast v0, Ljava/util/zip/ZipEntry;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
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

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 60
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    move-object v0, v1

    .line 62
    check-cast v0, Ljava/util/zip/ZipFile;

    iput-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->zipFile:Ljava/util/zip/ZipFile;

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasClassFile(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->getClassFile(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadClassFileData(Ljava/lang/String;)[B
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 35
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->zipFile:Ljava/util/zip/ZipFile;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 36
    check-cast v0, [B

    .line 48
    :goto_0
    return-object v1

    .line 39
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->getClassFile(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 42
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lio/github/zeroaicy/readclass/classInfo/util/Util;->readStream(Ljava/io/InputStream;Z)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    move-object v0, v1

    .line 48
    check-cast v0, [B

    goto :goto_0
.end method
