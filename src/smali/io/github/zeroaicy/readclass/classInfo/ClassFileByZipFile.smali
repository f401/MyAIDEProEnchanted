.class public Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;
.super Ljava/lang/Object;
.source "ClassFileByZipFile.java"

# interfaces
.implements Lio/github/zeroaicy/readclass/classInfo/ClassFile;


# instance fields
.field private zipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
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

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 25
    new-instance p1, Ljava/util/zip/ZipFile;

    invoke-direct {p1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->zipFile:Ljava/util/zip/ZipFile;

    return-void

    .line 23
    :cond_1c
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " ZipFile not found or zipFile is a directory"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/zip/ZipFile;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->zipFile:Ljava/util/zip/ZipFile;

    return-void
.end method

.method private getClassFile(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 4

    .line 52
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_1c

    .line 53
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, ".class"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    return-object p1

    .line 55
    :cond_1c
    const/4 p1, 0x0

    move-object v0, p1

    check-cast v0, Ljava/util/zip/ZipEntry;

    return-object p1
.end method


# virtual methods
.method public close()V
    .registers 3
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

    .line 60
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_d

    .line 61
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 62
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/util/zip/ZipFile;

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->zipFile:Ljava/util/zip/ZipFile;

    :cond_d
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasClassFile(Ljava/lang/String;)Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->getClassFile(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_9

    :cond_8
    const/4 p1, 0x1

    :goto_9
    return p1
.end method

.method public loadClassFileData(Ljava/lang/String;)[B
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 35
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->zipFile:Ljava/util/zip/ZipFile;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 36
    move-object p1, v1

    check-cast p1, [B

    return-object v1

    .line 39
    :cond_9
    :try_start_9
    invoke-direct {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->getClassFile(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 41
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    .line 42
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/github/zeroaicy/readclass/classInfo/util/Util;->readStream(Ljava/io/InputStream;Z)[B

    move-result-object p1
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1b

    return-object p1

    :catchall_1b
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    :cond_1f
    move-object p1, v1

    check-cast p1, [B

    return-object v1
.end method
