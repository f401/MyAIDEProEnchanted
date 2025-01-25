.class public Lorg/apache/tools/ant/types/resources/ZipResource;
.super Lorg/apache/tools/ant/types/resources/ArchiveResource;
.source "ZipResource.java"


# instance fields
.field private encoding:Ljava/lang/String;

.field private extras:[Lorg/apache/tools/zip/ZipExtraField;

.field private method:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lorg/apache/tools/zip/ZipEntry;)V
    .registers 5

    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;-><init>(Ljava/io/File;Z)V

    .line 60
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/types/resources/ZipResource;->setEncoding(Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, p3}, Lorg/apache/tools/ant/types/resources/ZipResource;->setEntry(Lorg/apache/tools/zip/ZipEntry;)V

    .line 62
    return-void
.end method

.method public static getZipEntryStream(Lorg/apache/tools/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/ZipFile;->getEntry(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_10

    .line 191
    new-instance v1, Lorg/apache/tools/ant/types/resources/ZipResource$1;

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipFile;->getInputStream(Lorg/apache/tools/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/apache/tools/ant/types/resources/ZipResource$1;-><init>(Ljava/io/InputStream;Lorg/apache/tools/zip/ZipFile;)V

    return-object v1

    .line 188
    :cond_10
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipFile;->close()V

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no entry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setEntry(Lorg/apache/tools/zip/ZipEntry;)V
    .registers 5

    const/4 v2, 0x1

    .line 228
    if-nez p1, :cond_8

    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/ZipResource;->setExists(Z)V

    .line 240
    :goto_7
    return-void

    .line 232
    :cond_8
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/ZipResource;->setName(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/resources/ZipResource;->setExists(Z)V

    .line 234
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/types/resources/ZipResource;->setLastModified(J)V

    .line 235
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->isDirectory()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/ZipResource;->setDirectory(Z)V

    .line 236
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/types/resources/ZipResource;->setSize(J)V

    .line 237
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getUnixMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/ZipResource;->setMode(I)V

    .line 238
    invoke-virtual {p1, v2}, Lorg/apache/tools/zip/ZipEntry;->getExtraFields(Z)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/ZipResource;->extras:[Lorg/apache/tools/zip/ZipExtraField;

    .line 239
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/types/resources/ZipResource;->method:I

    goto :goto_7
.end method


# virtual methods
.method public addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 4

    .line 87
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 88
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->isFilesystemOnly()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 91
    return-void

    .line 89
    :cond_a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "only filesystem resources are supported"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected fetchEntry()V
    .registers 5

    const/4 v2, 0x0

    .line 210
    .line 212
    :try_start_1
    new-instance v1, Lorg/apache/tools/zip/ZipFile;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getZipfile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_1d
    .catchall {:try_start_1 .. :try_end_e} :catchall_34

    .line 213
    :try_start_e
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/zip/ZipFile;->getEntry(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/resources/ZipResource;->setEntry(Lorg/apache/tools/zip/ZipEntry;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_19} :catch_32
    .catchall {:try_start_e .. :try_end_19} :catchall_2d

    .line 218
    invoke-static {v1}, Lorg/apache/tools/zip/ZipFile;->closeQuietly(Lorg/apache/tools/zip/ZipFile;)V

    .line 219
    return-void

    .line 214
    :catch_1d
    move-exception v0

    move-object v1, v2

    .line 215
    :goto_1f
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/types/resources/ZipResource;->log(Ljava/lang/String;I)V

    .line 216
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_2d

    .line 218
    :catchall_2d
    move-exception v0

    :goto_2e
    invoke-static {v1}, Lorg/apache/tools/zip/ZipFile;->closeQuietly(Lorg/apache/tools/zip/ZipFile;)V

    .line 219
    throw v0

    .line 214
    :catch_32
    move-exception v0

    goto :goto_1f

    .line 218
    :catchall_34
    move-exception v0

    move-object v1, v2

    goto :goto_2e
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .line 107
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 108
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getRef()Lorg/apache/tools/ant/types/resources/ZipResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_e
    return-object v0

    .line 108
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ZipResource;->encoding:Ljava/lang/String;

    goto :goto_e
.end method

.method public getExtraFields()[Lorg/apache/tools/zip/ZipExtraField;
    .registers 2

    .line 157
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 158
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getRef()Lorg/apache/tools/ant/types/resources/ZipResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getExtraFields()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    .line 164
    :cond_e
    :goto_e
    return-object v0

    .line 160
    :cond_f
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->checkEntry()V

    .line 161
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ZipResource;->extras:[Lorg/apache/tools/zip/ZipExtraField;

    if-nez v0, :cond_e

    .line 162
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/tools/zip/ZipExtraField;

    goto :goto_e
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 130
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getRef()Lorg/apache/tools/ant/types/resources/ZipResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 132
    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Lorg/apache/tools/zip/ZipFile;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getZipfile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/tools/ant/types/resources/ZipResource;->getZipEntryStream(Lorg/apache/tools/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_e
.end method

.method public getMethod()I
    .registers 2

    .line 173
    iget v0, p0, Lorg/apache/tools/ant/types/resources/ZipResource;->method:I

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 145
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getRef()Lorg/apache/tools/ant/types/resources/ZipResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 147
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use the zip task for zip output."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic getRef()Lorg/apache/tools/ant/types/Resource;
    .registers 2

    .line 39
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getRef()Lorg/apache/tools/ant/types/resources/ZipResource;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getRef()Lorg/apache/tools/ant/types/resources/ArchiveResource;
    .registers 2

    .line 39
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getRef()Lorg/apache/tools/ant/types/resources/ZipResource;

    move-result-object v0

    return-object v0
.end method

.method protected getRef()Lorg/apache/tools/ant/types/resources/ZipResource;
    .registers 2

    .line 224
    const-class v0, Lorg/apache/tools/ant/types/resources/ZipResource;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/ZipResource;

    return-object v0
.end method

.method public getZipfile()Ljava/io/File;
    .registers 3

    .line 77
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->getArchive()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 78
    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    .line 98
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->checkAttributesAllowed()V

    .line 99
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/ZipResource;->encoding:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 116
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ZipResource;->encoding:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 119
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 120
    return-void

    .line 117
    :cond_8
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setZipfile(Ljava/io/File;)V
    .registers 2

    .line 69
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/ZipResource;->setArchive(Ljava/io/File;)V

    .line 70
    return-void
.end method
