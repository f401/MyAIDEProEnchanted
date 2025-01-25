.class public Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;
.super Lcom/sun/tools/javac/file/BaseFileObject;
.source "ZipArchive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/file/ZipArchive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZipFileObject"
.end annotation


# instance fields
.field entry:Ljava/util/zip/ZipEntry;

.field private name:Ljava/lang/String;

.field zarch:Lcom/sun/tools/javac/file/ZipArchive;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/file/ZipArchive;Ljava/lang/String;Ljava/util/zip/ZipEntry;)V
    .registers 5

    .line 168
    iget-object v0, p1, Lcom/sun/tools/javac/file/ZipArchive;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/file/BaseFileObject;-><init>(Lcom/sun/tools/javac/file/JavacFileManager;)V

    .line 169
    iput-object p1, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->zarch:Lcom/sun/tools/javac/file/ZipArchive;

    .line 170
    iput-object p2, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->name:Ljava/lang/String;

    .line 171
    iput-object p3, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->entry:Ljava/util/zip/ZipEntry;

    .line 172
    return-void
.end method


# virtual methods
.method public delete()Z
    .registers 2

    .line 240
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 271
    if-ne p0, p1, :cond_5

    .line 278
    :cond_4
    :goto_4
    return v0

    .line 274
    :cond_5
    instance-of v2, p1, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;

    if-nez v2, :cond_b

    move v0, v1

    .line 275
    goto :goto_4

    .line 277
    :cond_b
    check-cast p1, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;

    .line 278
    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->zarch:Lcom/sun/tools/javac/file/ZipArchive;

    invoke-static {v2}, Lcom/sun/tools/javac/file/ZipArchive;->access$000(Lcom/sun/tools/javac/file/ZipArchive;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p1, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->zarch:Lcom/sun/tools/javac/file/ZipArchive;

    invoke-static {v3}, Lcom/sun/tools/javac/file/ZipArchive;->access$000(Lcom/sun/tools/javac/file/ZipArchive;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->name:Ljava/lang/String;

    .line 279
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_29
    move v0, v1

    goto :goto_4
.end method

.method public bridge synthetic getCharContent(Z)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->getCharContent(Z)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getCharContent(Z)Ljava/nio/CharBuffer;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    invoke-virtual {v0, p0}, Lcom/sun/tools/javac/file/JavacFileManager;->getCachedContent(Ljavax/tools/JavaFileObject;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 207
    if-nez v0, :cond_3c

    .line 208
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->zarch:Lcom/sun/tools/javac/file/ZipArchive;

    iget-object v0, v0, Lcom/sun/tools/javac/file/ZipArchive;->zfile:Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 210
    :try_start_12
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/file/JavacFileManager;->makeByteBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 211
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    iget-object v0, v0, Lcom/sun/tools/javac/file/JavacFileManager;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, p0}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_46

    move-result-object v3

    .line 213
    :try_start_20
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    invoke-virtual {v0, v2, p1}, Lcom/sun/tools/javac/file/JavacFileManager;->decode(Ljava/nio/ByteBuffer;Z)Ljava/nio/CharBuffer;
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_3d

    move-result-object v0

    .line 215
    :try_start_26
    iget-object v4, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    iget-object v4, v4, Lcom/sun/tools/javac/file/JavacFileManager;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v4, v3}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 216
    iget-object v3, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/file/JavacFileManager;->recycleByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 218
    if-nez p1, :cond_39

    .line 219
    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    invoke-virtual {v2, p0, v0}, Lcom/sun/tools/javac/file/JavacFileManager;->cache(Ljavax/tools/JavaFileObject;Ljava/nio/CharBuffer;)V
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_46

    .line 222
    :cond_39
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 225
    :cond_3c
    return-object v0

    .line 215
    :catchall_3d
    move-exception v0

    :try_start_3e
    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    iget-object v2, v2, Lcom/sun/tools/javac/file/JavacFileManager;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 216
    throw v0
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_46

    .line 222
    :catchall_46
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 223
    throw v0
.end method

.method protected getDecoder(Z)Ljava/nio/charset/CharsetDecoder;
    .registers 4

    .line 245
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    invoke-virtual {v1}, Lcom/sun/tools/javac/file/JavacFileManager;->getEncodingName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sun/tools/javac/file/JavacFileManager;->getDecoder(Ljava/lang/String;Z)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Ljavax/tools/JavaFileObject$Kind;
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->getKind(Ljava/lang/String;)Ljavax/tools/JavaFileObject$Kind;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()J
    .registers 3

    .line 235
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->zarch:Lcom/sun/tools/javac/file/ZipArchive;

    iget-object v1, v1, Lcom/sun/tools/javac/file/ZipArchive;->zfile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .registers 4

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->zarch:Lcom/sun/tools/javac/file/ZipArchive;

    iget-object v2, v2, Lcom/sun/tools/javac/file/ZipArchive;->zfile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 284
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->zarch:Lcom/sun/tools/javac/file/ZipArchive;

    invoke-static {v0}, Lcom/sun/tools/javac/file/ZipArchive;->access$000(Lcom/sun/tools/javac/file/ZipArchive;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected inferBinaryName(Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {v0}, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNameCompatible(Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;)Z
    .registers 6

    .line 256
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    sget-object v0, Ljavax/tools/JavaFileObject$Kind;->OTHER:Ljavax/tools/JavaFileObject$Kind;

    if-ne p2, v0, :cond_f

    invoke-virtual {p0}, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->getKind()Ljavax/tools/JavaFileObject$Kind;

    move-result-object v0

    if-eq v0, p2, :cond_f

    .line 259
    const/4 v0, 0x0

    .line 261
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Ljavax/tools/JavaFileObject$Kind;->extension:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_e
.end method

.method public openInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->zarch:Lcom/sun/tools/javac/file/ZipArchive;

    iget-object v0, v0, Lcom/sun/tools/javac/file/ZipArchive;->zfile:Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public openWriter()Ljava/io/Writer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toUri()Ljava/net/URI;
    .registers 3

    .line 175
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->zarch:Lcom/sun/tools/javac/file/ZipArchive;

    iget-object v1, v1, Lcom/sun/tools/javac/file/ZipArchive;->zfile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;->createJarUri(Ljava/io/File;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method
