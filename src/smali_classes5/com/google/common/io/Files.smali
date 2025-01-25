.class public final Lcom/google/common/io/Files;
.super Ljava/lang/Object;
.source "Files.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/Files$FileByteSink;,
        Lcom/google/common/io/Files$FileByteSource;,
        Lcom/google/common/io/Files$FilePredicate;
    }
.end annotation


# static fields
.field private static final FILE_TREE:Lcom/google/common/graph/SuccessorsFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/SuccessorsFunction",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILE_TREE_TRAVERSER:Lcom/google/common/collect/TreeTraverser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeTraverser",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEMP_DIR_ATTEMPTS:I = 0x2710


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 800
    new-instance v0, Lcom/google/common/io/Files$2;

    invoke-direct {v0}, Lcom/google/common/io/Files$2;-><init>()V

    sput-object v0, Lcom/google/common/io/Files;->FILE_TREE_TRAVERSER:Lcom/google/common/collect/TreeTraverser;

    .line 838
    new-instance v0, Lcom/google/common/io/Files$3;

    invoke-direct {v0}, Lcom/google/common/io/Files$3;-><init>()V

    sput-object v0, Lcom/google/common/io/Files;->FILE_TREE:Lcom/google/common/graph/SuccessorsFunction;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Ljava/io/File;)Ljava/lang/Iterable;
    .registers 2

    .line 68
    invoke-static {p0}, Lcom/google/common/io/Files;->fileTreeChildren(Ljava/io/File;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/io/File;Ljava/nio/charset/Charset;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 351
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/io/FileWriteMode;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/common/io/FileWriteMode;->APPEND:Lcom/google/common/io/FileWriteMode;

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lcom/google/common/io/Files;->asCharSink(Ljava/io/File;Ljava/nio/charset/Charset;[Lcom/google/common/io/FileWriteMode;)Lcom/google/common/io/CharSink;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/io/CharSink;->write(Ljava/lang/CharSequence;)V

    .line 352
    return-void
.end method

.method public static varargs asByteSink(Ljava/io/File;[Lcom/google/common/io/FileWriteMode;)Lcom/google/common/io/ByteSink;
    .registers 4

    .line 177
    new-instance v0, Lcom/google/common/io/Files$FileByteSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/io/Files$FileByteSink;-><init>(Ljava/io/File;[Lcom/google/common/io/FileWriteMode;Lcom/google/common/io/Files$1;)V

    return-object v0
.end method

.method public static asByteSource(Ljava/io/File;)Lcom/google/common/io/ByteSource;
    .registers 3

    .line 116
    new-instance v0, Lcom/google/common/io/Files$FileByteSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/io/Files$FileByteSource;-><init>(Ljava/io/File;Lcom/google/common/io/Files$1;)V

    return-object v0
.end method

.method public static varargs asCharSink(Ljava/io/File;Ljava/nio/charset/Charset;[Lcom/google/common/io/FileWriteMode;)Lcom/google/common/io/CharSink;
    .registers 4

    .line 220
    invoke-static {p0, p2}, Lcom/google/common/io/Files;->asByteSink(Ljava/io/File;[Lcom/google/common/io/FileWriteMode;)Lcom/google/common/io/ByteSink;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/io/ByteSink;->asCharSink(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSink;

    move-result-object v0

    return-object v0
.end method

.method public static asCharSource(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;
    .registers 3

    .line 208
    invoke-static {p0}, Lcom/google/common/io/Files;->asByteSource(Ljava/io/File;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/io/ByteSource;->asCharSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object v0

    return-object v0
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Source %s and destination %s must be different"

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 319
    invoke-static {p0}, Lcom/google/common/io/Files;->asByteSource(Ljava/io/File;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/common/io/FileWriteMode;

    invoke-static {p1, v1}, Lcom/google/common/io/Files;->asByteSink(Ljava/io/File;[Lcom/google/common/io/FileWriteMode;)Lcom/google/common/io/ByteSink;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/ByteSource;->copyTo(Lcom/google/common/io/ByteSink;)J

    .line 320
    return-void
.end method

.method public static copy(Ljava/io/File;Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    invoke-static {p0}, Lcom/google/common/io/Files;->asByteSource(Ljava/io/File;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/io/ByteSource;->copyTo(Ljava/io/OutputStream;)J

    .line 296
    return-void
.end method

.method public static copy(Ljava/io/File;Ljava/nio/charset/Charset;Ljava/lang/Appendable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 335
    invoke-static {p0, p1}, Lcom/google/common/io/Files;->asCharSource(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/common/io/CharSource;->copyTo(Ljava/lang/Appendable;)J

    .line 336
    return-void
.end method

.method public static createParentDirs(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 445
    if-nez v0, :cond_e

    .line 458
    :cond_d
    return-void

    .line 454
    :cond_e
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 455
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_d

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create parent directories of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createTempDir()Ljava/io/File;
    .registers 5

    .line 399
    new-instance v1, Ljava/io/File;

    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    const/4 v0, 0x0

    :goto_21
    const/16 v3, 0x2710

    if-ge v0, v3, :cond_43

    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 404
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 405
    return-object v4

    .line 402
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 408
    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create directory within 10000 attempts (tried "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0 to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x270f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static equal(Ljava/io/File;Ljava/io/File;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    .line 360
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    if-eq p0, p1, :cond_10

    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 363
    :cond_10
    const/4 v0, 0x1

    .line 376
    :goto_11
    return v0

    .line 371
    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 372
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 373
    cmp-long v4, v0, v6

    if-eqz v4, :cond_28

    cmp-long v4, v2, v6

    if-eqz v4, :cond_28

    cmp-long v0, v0, v2

    if-eqz v0, :cond_28

    .line 374
    const/4 v0, 0x0

    goto :goto_11

    .line 376
    :cond_28
    invoke-static {p0}, Lcom/google/common/io/Files;->asByteSource(Ljava/io/File;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/io/Files;->asByteSource(Ljava/io/File;)Lcom/google/common/io/ByteSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/ByteSource;->contentEquals(Lcom/google/common/io/ByteSource;)Z

    move-result v0

    goto :goto_11
.end method

.method public static fileTraverser()Lcom/google/common/graph/Traverser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/Traverser",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 835
    sget-object v0, Lcom/google/common/io/Files;->FILE_TREE:Lcom/google/common/graph/SuccessorsFunction;

    invoke-static {v0}, Lcom/google/common/graph/Traverser;->forTree(Lcom/google/common/graph/SuccessorsFunction;)Lcom/google/common/graph/Traverser;

    move-result-object v0

    return-object v0
.end method

.method private static fileTreeChildren(Ljava/io/File;)Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 848
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 849
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 850
    if-eqz v0, :cond_15

    .line 851
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 855
    :goto_14
    return-object v0

    :cond_15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_14
.end method

.method static fileTreeTraverser()Lcom/google/common/collect/TreeTraverser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeTraverser",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 797
    sget-object v0, Lcom/google/common/io/Files;->FILE_TREE_TRAVERSER:Lcom/google/common/collect/TreeTraverser;

    return-object v0
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 760
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 762
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 763
    const/4 v2, -0x1

    if-ne v1, v2, :cond_18

    const-string v0, ""

    :goto_17
    return-object v0

    :cond_18
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method public static getNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 777
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 779
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 780
    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    :goto_15
    return-object v0

    :cond_16
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method public static hash(Ljava/io/File;Lcom/google/common/hash/HashFunction;)Lcom/google/common/hash/HashCode;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 593
    invoke-static {p0}, Lcom/google/common/io/Files;->asByteSource(Ljava/io/File;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/io/ByteSource;->hash(Lcom/google/common/hash/HashFunction;)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public static isDirectory()Lcom/google/common/base/Predicate;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 864
    sget-object v0, Lcom/google/common/io/Files$FilePredicate;->IS_DIRECTORY:Lcom/google/common/io/Files$FilePredicate;

    return-object v0
.end method

.method public static isFile()Lcom/google/common/base/Predicate;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 873
    sget-object v0, Lcom/google/common/io/Files$FilePredicate;->IS_FILE:Lcom/google/common/io/Files$FilePredicate;

    return-object v0
.end method

.method public static map(Ljava/io/File;)Ljava/nio/MappedByteBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 612
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    sget-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-static {p0, v0}, Lcom/google/common/io/Files;->map(Ljava/io/File;Ljava/nio/channels/FileChannel$MapMode;)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static map(Ljava/io/File;Ljava/nio/channels/FileChannel$MapMode;)Ljava/nio/MappedByteBuffer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 634
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/io/Files;->mapInternal(Ljava/io/File;Ljava/nio/channels/FileChannel$MapMode;J)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static map(Ljava/io/File;Ljava/nio/channels/FileChannel$MapMode;J)Ljava/nio/MappedByteBuffer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 657
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_11

    const/4 v0, 0x1

    :goto_7
    const-string v1, "size (%s) may not be negative"

    invoke-static {v0, v1, p2, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 658
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/io/Files;->mapInternal(Ljava/io/File;Ljava/nio/channels/FileChannel$MapMode;J)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    return-object v0

    .line 657
    :cond_11
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static mapInternal(Ljava/io/File;Ljava/nio/channels/FileChannel$MapMode;J)Ljava/nio/MappedByteBuffer;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 663
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v6

    .line 668
    :try_start_a
    new-instance v1, Ljava/io/RandomAccessFile;

    sget-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_3d

    if-ne p1, v0, :cond_3a

    const-string v0, "r"

    :goto_12
    :try_start_12
    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 669
    invoke-virtual {v6, v1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/RandomAccessFile;

    .line 670
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/FileChannel;

    .line 671
    const-wide/16 v2, -0x1

    cmp-long v1, p2, v2

    if-nez v1, :cond_48

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    :goto_2f
    const-wide/16 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_35
    .catchall {:try_start_12 .. :try_end_35} :catchall_3d

    move-result-object v0

    .line 675
    invoke-virtual {v6}, Lcom/google/common/io/Closer;->close()V

    .line 671
    return-object v0

    .line 668
    :cond_3a
    const-string v0, "rw"

    goto :goto_12

    .line 672
    :catchall_3d
    move-exception v0

    .line 673
    :try_start_3e
    invoke-virtual {v6, v0}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_43

    .line 675
    :catchall_43
    move-exception v0

    invoke-virtual {v6}, Lcom/google/common/io/Closer;->close()V

    .line 676
    throw v0

    :cond_48
    move-wide v4, p2

    goto :goto_2f
.end method

.method public static move(Ljava/io/File;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Source %s and destination %s must be different"

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 477
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 478
    invoke-static {p0, p1}, Lcom/google/common/io/Files;->copy(Ljava/io/File;Ljava/io/File;)V

    .line 479
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_54

    .line 480
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 483
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 486
    :cond_54
    return-void
.end method

.method public static newReader(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 87
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public static newWriter(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/BufferedWriter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 105
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method public static readBytes(Ljava/io/File;Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Lcom/google/common/io/ByteProcessor",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 577
    invoke-static {p0}, Lcom/google/common/io/Files;->asByteSource(Ljava/io/File;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/io/ByteSource;->read(Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readFirstLine(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 502
    invoke-static {p0, p1}, Lcom/google/common/io/Files;->asCharSource(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/CharSource;->readFirstLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readLines(Ljava/io/File;Ljava/nio/charset/Charset;Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            "Lcom/google/common/io/LineProcessor",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 559
    invoke-static {p0, p1}, Lcom/google/common/io/Files;->asCharSource(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/common/io/CharSource;->readLines(Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    invoke-static {p0, p1}, Lcom/google/common/io/Files;->asCharSource(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object v0

    new-instance v1, Lcom/google/common/io/Files$1;

    invoke-direct {v1}, Lcom/google/common/io/Files$1;-><init>()V

    .line 525
    invoke-virtual {v0, v1}, Lcom/google/common/io/CharSource;->readLines(Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 524
    return-object v0
.end method

.method public static simplifyPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v7, 0x2f

    .line 700
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_10

    .line 702
    const-string v0, "."

    .line 742
    :cond_f
    :goto_f
    return-object v0

    .line 706
    :cond_10
    invoke-static {v7}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->omitEmptyStrings()Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    .line 707
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 710
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_25
    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 711
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v6, 0x2e

    if-eq v1, v6, :cond_50

    const/16 v6, 0x5c0

    if-eq v1, v6, :cond_46

    :cond_3d
    const/4 v1, -0x1

    :goto_3e
    if-eqz v1, :cond_25

    if-eq v1, v2, :cond_5a

    .line 722
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 711
    :cond_46
    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    move v1, v2

    goto :goto_3e

    :cond_50
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    move v1, v3

    goto :goto_3e

    .line 715
    :cond_5a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7e

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 716
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_25

    .line 718
    :cond_7e
    const-string v0, ".."

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 728
    :cond_84
    invoke-static {v7}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 729
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_a3

    .line 730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 733
    :cond_a3
    :goto_a3
    const-string v1, "/../"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 734
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a3

    .line 736
    :cond_b1
    const-string v1, "/.."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 737
    const-string v0, "/"

    goto/16 :goto_f

    .line 738
    :cond_bd
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 739
    const-string v0, "."

    goto/16 :goto_f
.end method

.method public static toByteArray(Ljava/io/File;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    invoke-static {p0}, Lcom/google/common/io/Files;->asByteSource(Ljava/io/File;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/ByteSource;->read()[B

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    invoke-static {p0, p1}, Lcom/google/common/io/Files;->asCharSource(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/CharSource;->read()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static touch(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 431
    :cond_13
    return-void

    .line 429
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to update modification time of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static write(Ljava/lang/CharSequence;Ljava/io/File;Ljava/nio/charset/Charset;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 281
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/io/FileWriteMode;

    invoke-static {p1, p2, v0}, Lcom/google/common/io/Files;->asCharSink(Ljava/io/File;Ljava/nio/charset/Charset;[Lcom/google/common/io/FileWriteMode;)Lcom/google/common/io/CharSink;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/io/CharSink;->write(Ljava/lang/CharSequence;)V

    .line 282
    return-void
.end method

.method public static write([BLjava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/io/FileWriteMode;

    invoke-static {p1, v0}, Lcom/google/common/io/Files;->asByteSink(Ljava/io/File;[Lcom/google/common/io/FileWriteMode;)Lcom/google/common/io/ByteSink;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/io/ByteSink;->write([B)V

    .line 266
    return-void
.end method
