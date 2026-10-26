.class Lcom/s1243808733/android/multidex/Path;
.super Ljava/lang/Object;
.source "Path.java"


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field private final baos:Ljava/io/ByteArrayOutputStream;

.field private final definition:Ljava/lang/String;

.field elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/android/multidex/ClassPathElement;",
            ">;"
        }
    .end annotation
.end field

.field private final readBuffer:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/multidex/Path;->elements:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const v1, 0xa000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/multidex/Path;->baos:Ljava/io/ByteArrayOutputStream;

    .line 51
    const/16 v0, 0x5000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/s1243808733/android/multidex/Path;->readBuffer:[B

    .line 54
    iput-object p1, p0, Lcom/s1243808733/android/multidex/Path;->definition:Ljava/lang/String;

    .line 55
    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 57
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/s1243808733/android/multidex/Path;->getClassPathElement(Ljava/io/File;)Lcom/s1243808733/android/multidex/ClassPathElement;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/s1243808733/android/multidex/Path;->addElement(Lcom/s1243808733/android/multidex/ClassPathElement;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong classpath: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    return-void
.end method

.method private addElement(Lcom/s1243808733/android/multidex/ClassPathElement;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/s1243808733/android/multidex/Path;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static getClassPathElement(Ljava/io/File;)Lcom/s1243808733/android/multidex/ClassPathElement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lcom/s1243808733/android/multidex/FolderPathElement;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/multidex/FolderPathElement;-><init>(Ljava/io/File;)V

    .line 39
    :goto_0
    return-object v0

    .line 38
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    new-instance v0, Lcom/s1243808733/android/multidex/ArchivePathElement;

    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lcom/s1243808733/android/multidex/ArchivePathElement;-><init>(Ljava/util/zip/ZipFile;)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" is not a directory neither a zip file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "File \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static readStream(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    :goto_0
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 78
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 76
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 77
    throw v0
.end method


# virtual methods
.method getClass(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/multidex/Path;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/multidex/ClassPathElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 99
    :try_start_1
    invoke-interface {v0, p1}, Lcom/s1243808733/android/multidex/ClassPathElement;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    .line 101
    :try_start_2
    iget-object v0, p0, Lcom/s1243808733/android/multidex/Path;->baos:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lcom/s1243808733/android/multidex/Path;->readBuffer:[B

    invoke-static {v4, v0, v2}, Lcom/s1243808733/android/multidex/Path;->readStream(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;[B)[B

    move-result-object v2

    .line 102
    iget-object v0, p0, Lcom/s1243808733/android/multidex/Path;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 103
    new-instance v0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    const/4 v5, 0x0

    invoke-direct {v0, v2, p1, v5}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;-><init>([BLjava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    :try_start_3
    sget-object v1, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->THE_ONE:Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->setAttributeFactory(Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 108
    :goto_1
    if-eqz v0, :cond_0

    .line 116
    monitor-exit p0

    return-object v0

    .line 108
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v1

    move-object v2, v1

    :goto_2
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 108
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_0

    .line 107
    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    .line 114
    :cond_0
    :try_start_6
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2
    move-exception v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method getElements()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/s1243808733/android/multidex/ClassPathElement;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/s1243808733/android/multidex/Path;->elements:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/s1243808733/android/multidex/Path;->definition:Ljava/lang/String;

    return-object v0
.end method
