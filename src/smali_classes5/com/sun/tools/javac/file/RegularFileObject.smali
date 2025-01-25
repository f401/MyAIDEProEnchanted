.class Lcom/sun/tools/javac/file/RegularFileObject;
.super Lcom/sun/tools/javac/file/BaseFileObject;
.source "RegularFileObject.java"


# instance fields
.field private absFileRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final file:Ljava/io/File;

.field private hasParents:Z

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/file/JavacFileManager;Ljava/io/File;)V
    .registers 4

    .line 64
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/sun/tools/javac/file/RegularFileObject;-><init>(Lcom/sun/tools/javac/file/JavacFileManager;Ljava/lang/String;Ljava/io/File;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/file/JavacFileManager;Ljava/lang/String;Ljava/io/File;)V
    .registers 6

    .line 68
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/file/BaseFileObject;-><init>(Lcom/sun/tools/javac/file/JavacFileManager;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/file/RegularFileObject;->hasParents:Z

    .line 69
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_11

    .line 72
    iput-object p2, p0, Lcom/sun/tools/javac/file/RegularFileObject;->name:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/sun/tools/javac/file/RegularFileObject;->file:Ljava/io/File;

    .line 74
    return-void

    .line 70
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "directories not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureParentDirectoriesExist()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    iget-boolean v0, p0, Lcom/sun/tools/javac/file/RegularFileObject;->hasParents:Z

    if-nez v0, :cond_27

    .line 195
    iget-object v0, p0, Lcom/sun/tools/javac/file/RegularFileObject;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_24

    .line 197
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_24

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 203
    :cond_24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/tools/javac/file/RegularFileObject;->hasParents:Z

    .line 205
    :cond_27
    return-void

    .line 199
    :cond_28
    new-instance v0, Ljava/io/IOException;

    const-string v1, "could not create parent directories"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAbsoluteFile()Ljava/io/File;
    .registers 3

    .line 230
    iget-object v0, p0, Lcom/sun/tools/javac/file/RegularFileObject;->absFileRef:Ljava/lang/ref/Reference;

    if-nez v0, :cond_15

    const/4 v0, 0x0

    .line 231
    :goto_5
    if-nez v0, :cond_14

    .line 232
    iget-object v0, p0, Lcom/sun/tools/javac/file/RegularFileObject;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 233
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sun/tools/javac/file/RegularFileObject;->absFileRef:Ljava/lang/ref/Reference;

    .line 235
    :cond_14
    return-object v0

    .line 230
    :cond_15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    goto :goto_5
.end method


# virtual methods
.method public delete()Z
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/sun/tools/javac/file/RegularFileObject;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 214
    if-ne p0, p1, :cond_4

    .line 215
    const/4 v0, 0x1

    .line 221
    :goto_3
    return v0

    .line 217
    :cond_4
    instance-of v0, p1, Lcom/sun/tools/javac/file/RegularFileObject;

    if-nez v0, :cond_a

    .line 218
    const/4 v0, 0x0

    goto :goto_3

    .line 220
    :cond_a
    check-cast p1, Lcom/sun/tools/javac/file/RegularFileObject;

    .line 221
    invoke-direct {p0}, Lcom/sun/tools/javac/file/RegularFileObject;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p1}, Lcom/sun/tools/javac/file/RegularFileObject;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public bridge synthetic getCharContent(Z)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/file/RegularFileObject;->getCharContent(Z)Ljava/nio/CharBuffer;

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

    .line 109
    iget-object v0, p0, Lcom/sun/tools/javac/file/RegularFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    invoke-virtual {v0, p0}, Lcom/sun/tools/javac/file/JavacFileManager;->getCachedContent(Ljavax/tools/JavaFileObject;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 110
    if-nez v0, :cond_39

    .line 111
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/sun/tools/javac/file/RegularFileObject;->file:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 113
    :try_start_f
    iget-object v0, p0, Lcom/sun/tools/javac/file/RegularFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/file/JavacFileManager;->makeByteBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 114
    iget-object v0, p0, Lcom/sun/tools/javac/file/RegularFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    iget-object v0, v0, Lcom/sun/tools/javac/file/JavacFileManager;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, p0}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_43

    move-result-object v3

    .line 116
    :try_start_1d
    iget-object v0, p0, Lcom/sun/tools/javac/file/RegularFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    invoke-virtual {v0, v2, p1}, Lcom/sun/tools/javac/file/JavacFileManager;->decode(Ljava/nio/ByteBuffer;Z)Ljava/nio/CharBuffer;
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_3a

    move-result-object v0

    .line 118
    :try_start_23
    iget-object v4, p0, Lcom/sun/tools/javac/file/RegularFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    iget-object v4, v4, Lcom/sun/tools/javac/file/JavacFileManager;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v4, v3}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 119
    iget-object v3, p0, Lcom/sun/tools/javac/file/RegularFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/file/JavacFileManager;->recycleByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 121
    if-nez p1, :cond_36

    .line 122
    iget-object v2, p0, Lcom/sun/tools/javac/file/RegularFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    invoke-virtual {v2, p0, v0}, Lcom/sun/tools/javac/file/JavacFileManager;->cache(Ljavax/tools/JavaFileObject;Ljava/nio/CharBuffer;)V
    :try_end_36
    .catchall {:try_start_23 .. :try_end_36} :catchall_43

    .line 125
    :cond_36
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 128
    :cond_39
    return-object v0

    .line 118
    :catchall_3a
    move-exception v0

    :try_start_3b
    iget-object v2, p0, Lcom/sun/tools/javac/file/RegularFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    iget-object v2, v2, Lcom/sun/tools/javac/file/JavacFileManager;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 119
    throw v0
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_43

    .line 125
    :catchall_43
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 126
    throw v0
.end method

.method protected getDecoder(Z)Ljava/nio/charset/CharsetDecoder;
    .registers 4

    .line 149
    iget-object v0, p0, Lcom/sun/tools/javac/file/RegularFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    iget-object v1, p0, Lcom/sun/tools/javac/file/RegularFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    invoke-virtual {v1}, Lcom/sun/tools/javac/file/JavacFileManager;->getEncodingName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sun/tools/javac/file/JavacFileManager;->getDecoder(Ljava/lang/String;Z)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Ljavax/tools/JavaFileObject$Kind;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/sun/tools/javac/file/RegularFileObject;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/sun/tools/javac/file/RegularFileObject;->getKind(Ljava/lang/String;)Ljavax/tools/JavaFileObject$Kind;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()J
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/sun/tools/javac/file/RegularFileObject;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/sun/tools/javac/file/RegularFileObject;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/sun/tools/javac/file/RegularFileObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 226
    invoke-direct {p0}, Lcom/sun/tools/javac/file/RegularFileObject;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    return v0
.end method

.method protected inferBinaryName(Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 9
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

    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lcom/sun/tools/javac/file/RegularFileObject;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 158
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_27

    .line 160
    const-string v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    :cond_27
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7b

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 161
    :goto_40
    const/4 v1, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 164
    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 165
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v0}, Lcom/sun/tools/javac/file/RegularFileObject;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_78
    return-object v0

    :cond_79
    const/4 v0, 0x0

    goto :goto_78

    :cond_7b
    move-object v3, v1

    goto :goto_40
.end method

.method public isNameCompatible(Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;)Z
    .registers 6

    const/4 v0, 0x0

    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    sget-object v1, Ljavax/tools/JavaFileObject$Kind;->OTHER:Ljavax/tools/JavaFileObject$Kind;

    if-ne p2, v1, :cond_f

    invoke-virtual {p0}, Lcom/sun/tools/javac/file/RegularFileObject;->getKind()Ljavax/tools/JavaFileObject$Kind;

    move-result-object v1

    if-eq v1, p2, :cond_f

    .line 190
    :cond_e
    :goto_e
    return v0

    .line 179
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Ljavax/tools/JavaFileObject$Kind;->extension:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    iget-object v2, p0, Lcom/sun/tools/javac/file/RegularFileObject;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 181
    const/4 v0, 0x1

    goto :goto_e

    .line 183
    :cond_2a
    iget-object v2, p0, Lcom/sun/tools/javac/file/RegularFileObject;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 186
    :try_start_32
    iget-object v2, p0, Lcom/sun/tools/javac/file/RegularFileObject;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3f} :catch_41

    move-result v0

    goto :goto_e

    .line 187
    :catch_41
    move-exception v1

    goto :goto_e
.end method

.method public openInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/sun/tools/javac/file/RegularFileObject;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lcom/sun/tools/javac/file/RegularFileObject;->ensureParentDirectoriesExist()V

    .line 104
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/sun/tools/javac/file/RegularFileObject;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public openWriter()Ljava/io/Writer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Lcom/sun/tools/javac/file/RegularFileObject;->ensureParentDirectoriesExist()V

    .line 134
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/sun/tools/javac/file/RegularFileObject;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lcom/sun/tools/javac/file/RegularFileObject;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    invoke-virtual {v2}, Lcom/sun/tools/javac/file/JavacFileManager;->getEncodingName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public toUri()Ljava/net/URI;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/sun/tools/javac/file/RegularFileObject;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method
