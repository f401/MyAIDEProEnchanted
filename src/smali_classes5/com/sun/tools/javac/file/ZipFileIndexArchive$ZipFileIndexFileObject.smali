.class public Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;
.super Lcom/sun/tools/javac/file/BaseFileObject;
.source "ZipFileIndexArchive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/file/ZipFileIndexArchive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZipFileIndexFileObject"
.end annotation


# instance fields
.field entry:Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

.field inputStream:Ljava/io/InputStream;

.field private name:Ljava/lang/String;

.field zfIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

.field zipName:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/file/JavacFileManager;Lcom/sun/tools/javac/file/ZipFileIndex;Lcom/sun/tools/javac/file/ZipFileIndex$Entry;Ljava/io/File;)V
    .registers 6

    .line 120
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/file/BaseFileObject;-><init>(Lcom/sun/tools/javac/file/JavacFileManager;)V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->inputStream:Ljava/io/InputStream;

    .line 121
    invoke-virtual {p3}, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->name:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->zfIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    .line 123
    iput-object p3, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->entry:Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    .line 124
    iput-object p4, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->zipName:Ljava/io/File;

    .line 125
    return-void
.end method

.method private getPrefixedEntryName()Ljava/lang/String;
    .registers 3

    .line 247
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->zfIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    iget-object v0, v0, Lcom/sun/tools/javac/file/ZipFileIndex;->symbolFilePrefix:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    if-eqz v0, :cond_22

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->zfIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    iget-object v1, v1, Lcom/sun/tools/javac/file/ZipFileIndex;->symbolFilePrefix:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    iget-object v1, v1, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->entry:Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    invoke-virtual {v1}, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    :goto_21
    return-object v0

    :cond_22
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->entry:Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    invoke-virtual {v0}, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_21
.end method


# virtual methods
.method public delete()Z
    .registers 2

    .line 196
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 230
    if-ne p0, p1, :cond_5

    .line 237
    :cond_4
    :goto_4
    return v0

    .line 233
    :cond_5
    instance-of v2, p1, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;

    if-nez v2, :cond_b

    move v0, v1

    .line 234
    goto :goto_4

    .line 236
    :cond_b
    check-cast p1, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;

    .line 237
    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->zfIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    invoke-virtual {v2}, Lcom/sun/tools/javac/file/ZipFileIndex;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    iget-object v3, p1, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->zfIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    invoke-virtual {v3}, Lcom/sun/tools/javac/file/ZipFileIndex;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->name:Ljava/lang/String;

    .line 238
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

    .line 96
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->getCharContent(Z)Ljava/nio/CharBuffer;

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

    .line 163
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    invoke-virtual {v0, p0}, Lcom/sun/tools/javac/file/JavacFileManager;->getCachedContent(Ljavax/tools/JavaFileObject;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 164
    if-nez v0, :cond_3f

    .line 165
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->zfIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->entry:Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/file/ZipFileIndex;->read(Lcom/sun/tools/javac/file/ZipFileIndex$Entry;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 167
    :try_start_15
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/file/JavacFileManager;->makeByteBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 168
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    iget-object v0, v0, Lcom/sun/tools/javac/file/JavacFileManager;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, p0}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_49

    move-result-object v3

    .line 170
    :try_start_23
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    invoke-virtual {v0, v2, p1}, Lcom/sun/tools/javac/file/JavacFileManager;->decode(Ljava/nio/ByteBuffer;Z)Ljava/nio/CharBuffer;
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_40

    move-result-object v0

    .line 172
    :try_start_29
    iget-object v4, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    iget-object v4, v4, Lcom/sun/tools/javac/file/JavacFileManager;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v4, v3}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 173
    iget-object v3, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/file/JavacFileManager;->recycleByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 175
    if-nez p1, :cond_3c

    .line 176
    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    invoke-virtual {v2, p0, v0}, Lcom/sun/tools/javac/file/JavacFileManager;->cache(Ljavax/tools/JavaFileObject;Ljava/nio/CharBuffer;)V
    :try_end_3c
    .catchall {:try_start_29 .. :try_end_3c} :catchall_49

    .line 178
    :cond_3c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 181
    :cond_3f
    return-object v0

    .line 172
    :catchall_40
    move-exception v0

    :try_start_41
    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    iget-object v2, v2, Lcom/sun/tools/javac/file/JavacFileManager;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 173
    throw v0
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_49

    .line 178
    :catchall_49
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 179
    throw v0
.end method

.method protected getDecoder(Z)Ljava/nio/charset/CharsetDecoder;
    .registers 4

    .line 201
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    invoke-virtual {v1}, Lcom/sun/tools/javac/file/JavacFileManager;->getEncodingName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sun/tools/javac/file/JavacFileManager;->getDecoder(Ljava/lang/String;Z)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Ljavax/tools/JavaFileObject$Kind;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->entry:Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    invoke-virtual {v0}, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->getKind(Ljava/lang/String;)Ljavax/tools/JavaFileObject$Kind;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()J
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->entry:Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    invoke-virtual {v0}, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->zipName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->getPrefixedEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .registers 3

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->zipName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->entry:Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    invoke-virtual {v1}, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->zfIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    invoke-virtual {v0}, Lcom/sun/tools/javac/file/ZipFileIndex;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->name:Ljava/lang/String;

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

    .line 206
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->entry:Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    invoke-virtual {v0}, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->zfIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    iget-object v1, v1, Lcom/sun/tools/javac/file/ZipFileIndex;->symbolFilePrefix:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    if-eqz v1, :cond_20

    .line 208
    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->zfIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    iget-object v1, v1, Lcom/sun/tools/javac/file/ZipFileIndex;->symbolFilePrefix:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    iget-object v1, v1, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->path:Ljava/lang/String;

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 210
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    :cond_20
    invoke-static {v0}, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNameCompatible(Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;)Z
    .registers 6

    .line 217
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    sget-object v0, Ljavax/tools/JavaFileObject$Kind;->OTHER:Ljavax/tools/JavaFileObject$Kind;

    if-ne p2, v0, :cond_f

    invoke-virtual {p0}, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->getKind()Ljavax/tools/JavaFileObject$Kind;

    move-result-object v0

    if-eq v0, p2, :cond_f

    .line 219
    const/4 v0, 0x0

    .line 220
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->name:Ljava/lang/String;

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
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_18

    .line 150
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->entry:Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->zfIndex:Lcom/sun/tools/javac/file/ZipFileIndex;

    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->entry:Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/file/ZipFileIndex;->read(Lcom/sun/tools/javac/file/ZipFileIndex$Entry;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->inputStream:Ljava/io/InputStream;

    .line 153
    :cond_18
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
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

    .line 186
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toUri()Ljava/net/URI;
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->zipName:Ljava/io/File;

    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->getPrefixedEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/tools/javac/file/ZipFileIndexArchive$ZipFileIndexFileObject;->createJarUri(Ljava/io/File;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method
