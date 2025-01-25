.class public Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;
.super Ljava/lang/Object;
.source "jlink.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final VECTOR_INIT_SIZE:I = 0xa


# instance fields
.field private addfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field buffer:[B

.field private compression:Z

.field private mergefiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private outfile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/16 v1, 0xa

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->outfile:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->mergefiles:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addfiles:Ljava/util/List;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->compression:Z

    .line 59
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->buffer:[B

    return-void
.end method

.method private addDirContents(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    invoke-virtual {p2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_33

    aget-object v3, v1, v0

    .line 259
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 262
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v4, v3, p4}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addDirContents(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Z)V

    .line 258
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 264
    :cond_2f
    invoke-direct {p0, p1, v4, p3, p4}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addFile(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Z)V

    goto :goto_2c

    .line 267
    :cond_33
    return-void
.end method

.method private addFile(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 313
    :goto_6
    return-void

    .line 305
    :cond_7
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {p0, p2, p3}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->getEntryName(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 308
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 309
    if-nez p4, :cond_27

    .line 310
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->calcChecksum(Ljava/io/File;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 312
    :cond_27
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addToOutputStream(Ljava/util/zip/ZipOutputStream;Ljava/io/InputStream;Ljava/util/zip/ZipEntry;)V

    goto :goto_6
.end method

.method private addToOutputStream(Ljava/util/zip/ZipOutputStream;Ljava/io/InputStream;Ljava/util/zip/ZipEntry;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    :try_start_0
    invoke-virtual {p1, p3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_3
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_3} :catch_19

    .line 326
    :goto_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->buffer:[B

    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_12

    .line 331
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->buffer:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_3

    .line 333
    :cond_12
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 334
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 335
    :goto_18
    return-void

    .line 322
    :catch_19
    move-exception v0

    .line 324
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    goto :goto_18
.end method

.method private calcChecksum(Ljava/io/File;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->calcChecksum(Ljava/io/InputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method private calcChecksum(Ljava/io/InputStream;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    .line 399
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 400
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->buffer:[B

    array-length v1, v1

    .line 403
    :goto_9
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->buffer:[B

    invoke-virtual {p1, v2, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_17

    .line 404
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->buffer:[B

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_9

    .line 406
    :cond_17
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 407
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private getEntryName(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v6, 0x0

    .line 275
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 277
    const-string v0, ".class"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 279
    :try_start_d
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_6f

    move-result-object v2

    .line 280
    :try_start_18
    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/optional/jlink/ClassNameReader;->getClassName(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_3d

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".class"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_36
    .catchall {:try_start_18 .. :try_end_36} :catchall_68

    move-result-object v0

    .line 285
    if-eqz v2, :cond_3c

    :try_start_39
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 292
    :cond_3c
    :goto_3c
    return-object v0

    .line 285
    :cond_3d
    if-eqz v2, :cond_42

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_42} :catch_6f

    .line 289
    :cond_42
    :goto_42
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 291
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 289
    const-string v3, "From %1$s and prefix %2$s, creating entry %2$s%3$s%n"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    const/4 v2, 0x1

    aput-object p2, v4, v2

    const/4 v2, 0x2

    aput-object v1, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    .line 279
    :catchall_68
    move-exception v0

    if-eqz v2, :cond_6e

    :try_start_6b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_71

    :cond_6e
    :goto_6e
    :try_start_6e
    throw v0
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_6f} :catch_6f

    .line 285
    :catch_6f
    move-exception v0

    goto :goto_42

    .line 279
    :catchall_71
    move-exception v2

    goto :goto_6e
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    .line 181
    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_f

    .line 182
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "usage: jlink output input1 ... inputN"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 183
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 185
    :cond_f
    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;-><init>()V

    .line 187
    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->setOutfile(Ljava/lang/String;)V

    .line 190
    :goto_1a
    array-length v2, p0

    if-ge v0, v2, :cond_25

    .line 191
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addMergeFile(Ljava/lang/String;)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 194
    :cond_25
    :try_start_25
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->link()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    .line 198
    :goto_28
    return-void

    .line 195
    :catch_29
    move-exception v0

    .line 196
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_28
.end method

.method private mergeZipJarContents(Ljava/util/zip/ZipOutputStream;Ljava/io/File;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 251
    :goto_6
    return-void

    .line 209
    :cond_7
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 210
    :try_start_c
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 211
    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 212
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 216
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 217
    const-string v4, "META-INF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_4d

    move-result v3

    .line 219
    if-gez v3, :cond_10

    .line 222
    :try_start_28
    invoke-direct {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->processEntry(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_2f
    .catch Ljava/util/zip/ZipException; {:try_start_28 .. :try_end_2f} :catch_5b
    .catchall {:try_start_28 .. :try_end_2f} :catchall_4d

    .line 237
    :try_start_2f
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_4d

    move-result-object v3

    .line 240
    :try_start_33
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->buffer:[B

    array-length v0, v0

    .line 241
    :goto_36
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->buffer:[B

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_52

    .line 244
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->buffer:[B

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_45
    .catchall {:try_start_33 .. :try_end_45} :catchall_46

    goto :goto_36

    .line 239
    :catchall_46
    move-exception v0

    if-eqz v3, :cond_4c

    :try_start_49
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_6d

    :cond_4c
    :goto_4c
    :try_start_4c
    throw v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    .line 209
    :catchall_4d
    move-exception v0

    :try_start_4e
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_6f

    :goto_51
    throw v0

    .line 246
    :cond_52
    :try_start_52
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_46

    .line 247
    if-eqz v3, :cond_10

    :try_start_57
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_10

    .line 223
    :catch_5b
    move-exception v0

    .line 230
    invoke-virtual {v0}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "duplicate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 236
    throw v0
    :try_end_69
    .catchall {:try_start_57 .. :try_end_69} :catchall_4d

    .line 250
    :cond_69
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    goto :goto_6

    .line 239
    :catchall_6d
    move-exception v2

    goto :goto_4c

    .line 209
    :catchall_6f
    move-exception v1

    goto :goto_51
.end method

.method private processEntry(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Ljava/util/zip/ZipEntry;
    .registers 9

    .line 355
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3e

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 358
    :try_start_12
    invoke-virtual {p1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_19} :catch_70

    move-result-object v2

    .line 359
    :try_start_1a
    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/optional/jlink/ClassNameReader;->getClassName(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 361
    if-eqz v1, :cond_39

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".class"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_38
    .catchall {:try_start_1a .. :try_end_38} :catchall_69

    move-result-object v0

    .line 364
    :cond_39
    if-eqz v2, :cond_3e

    :try_start_3b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_70

    .line 368
    :cond_3e
    :goto_3e
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 371
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 372
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 374
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->compression:Z

    if-eqz v0, :cond_72

    .line 375
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 382
    :goto_68
    return-object v1

    .line 358
    :catchall_69
    move-exception v1

    if-eqz v2, :cond_6f

    :try_start_6c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_85

    :cond_6f
    :goto_6f
    :try_start_6f
    throw v1
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_70} :catch_70

    .line 364
    :catch_70
    move-exception v1

    goto :goto_3e

    .line 378
    :cond_72
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 379
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 380
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/zip/ZipEntry;->setSize(J)V

    goto :goto_68

    .line 358
    :catchall_85
    move-exception v2

    goto :goto_6f
.end method


# virtual methods
.method public addAddFile(Ljava/lang/String;)V
    .registers 3

    .line 88
    if-nez p1, :cond_3

    .line 92
    :goto_2
    return-void

    .line 91
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public varargs addAddFiles([Ljava/lang/String;)V
    .registers 5

    .line 112
    if-nez p1, :cond_3

    .line 118
    :cond_2
    return-void

    .line 115
    :cond_3
    array-length v1, p1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    .line 116
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addAddFile(Ljava/lang/String;)V

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public addMergeFile(Ljava/lang/String;)V
    .registers 3

    .line 78
    if-nez p1, :cond_3

    .line 82
    :goto_2
    return-void

    .line 81
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->mergefiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public varargs addMergeFiles([Ljava/lang/String;)V
    .registers 5

    .line 99
    if-nez p1, :cond_3

    .line 105
    :cond_2
    return-void

    .line 102
    :cond_3
    array-length v1, p1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    .line 103
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addMergeFile(Ljava/lang/String;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public link()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x0

    .line 141
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->outfile:Ljava/lang/String;

    .line 142
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v2, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 144
    :try_start_14
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->compression:Z

    if-eqz v0, :cond_59

    .line 145
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    .line 146
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 150
    :goto_21
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->mergefiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".jar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 154
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 156
    :cond_50
    invoke-direct {p0, v1, v3}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->mergeZipJarContents(Ljava/util/zip/ZipOutputStream;Ljava/io/File;)V
    :try_end_53
    .catchall {:try_start_14 .. :try_end_53} :catchall_54

    goto :goto_27

    .line 141
    :catchall_54
    move-exception v0

    :try_start_55
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_a6

    :goto_58
    throw v0

    .line 148
    :cond_59
    const/4 v0, 0x0

    :try_start_5a
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    goto :goto_21

    .line 160
    :cond_5e
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addAddFile(Ljava/lang/String;)V

    goto :goto_27

    .line 163
    :cond_62
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_68
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->compression:Z

    invoke-direct {p0, v1, v3, v0, v4}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addDirContents(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Z)V

    goto :goto_68

    .line 169
    :cond_9a
    const-string v0, ""

    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->compression:Z

    invoke-direct {p0, v1, v3, v0, v4}, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->addFile(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_a1
    .catchall {:try_start_5a .. :try_end_a1} :catchall_54

    goto :goto_68

    .line 172
    :cond_a2
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 173
    return-void

    .line 141
    :catchall_a6
    move-exception v1

    goto :goto_58
.end method

.method public setCompression(Z)V
    .registers 2

    .line 125
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->compression:Z

    .line 126
    return-void
.end method

.method public setOutfile(Ljava/lang/String;)V
    .registers 2

    .line 67
    if-nez p1, :cond_3

    .line 71
    :goto_2
    return-void

    .line 70
    :cond_3
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/jlink;->outfile:Ljava/lang/String;

    goto :goto_2
.end method
