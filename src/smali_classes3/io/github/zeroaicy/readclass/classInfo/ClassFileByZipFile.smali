.class public Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;
.super Ljava/lang/Object;
.source "ClassFileByZipFile.java"

# interfaces
.implements Lio/github/zeroaicy/readclass/classInfo/ClassFile;


# instance fields
.field private zipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
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

    .line 24
    :cond_1
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->zipFile:Ljava/util/zip/ZipFile;

    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipFile;)V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->zipFile:Ljava/util/zip/ZipFile;

    return-void
.end method

.method private getClassFile(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 5

    .line 49
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->zipFile:Ljava/util/zip/ZipFile;

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

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Ljava/util/zip/ZipEntry;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .registers 2
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

    .line 57
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    :cond_0
    return-void
.end method

.method public hasClassFile(Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 28
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
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    .line 32
    iget-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->zipFile:Ljava/util/zip/ZipFile;

    if-nez v1, :cond_0

    .line 33
    check-cast v0, [B

    .line 45
    :goto_0
    return-object v0

    .line 36
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->getClassFile(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    iget-object v2, p0, Lio/github/zeroaicy/readclass/classInfo/ClassFileByZipFile;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 39
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lio/github/zeroaicy/readclass/classInfo/util/Util;->readStream(Ljava/io/InputStream;Z)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    :cond_1
    check-cast v0, [B

    goto :goto_0
.end method
