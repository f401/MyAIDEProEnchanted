.class Lcom/s1243808733/android/multidex/Path;
.super Ljava/lang/Object;
.source "Path.java"


# static fields
.field static final $assertionsDisabled:Z = false


# instance fields
.field private final baos:Ljava/io/ByteArrayOutputStream;

.field private final definition:Ljava/lang/String;

.field elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/s1243808733/android/multidex/ClassPathElement;",
            ">;"
        }
    .end annotation
.end field

.field private final readBuffer:[B


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 6
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

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_28
    if-ge v1, v0, :cond_54

    aget-object v2, p1, v1

    .line 57
    :try_start_2c
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/s1243808733/android/multidex/Path;->getClassPathElement(Ljava/io/File;)Lcom/s1243808733/android/multidex/ClassPathElement;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/s1243808733/android/multidex/Path;->addElement(Lcom/s1243808733/android/multidex/ClassPathElement;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_38} :catch_3b

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :catch_3b
    move-exception p1

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong classpath: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_54
    return-void
.end method

.method private addElement(Lcom/s1243808733/android/multidex/ClassPathElement;)V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/s1243808733/android/multidex/Path;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static getClassPathElement(Ljava/io/File;)Lcom/s1243808733/android/multidex/ClassPathElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 37
    new-instance v0, Lcom/s1243808733/android/multidex/FolderPathElement;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/multidex/FolderPathElement;-><init>(Ljava/io/File;)V

    return-object v0

    .line 38
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 39
    new-instance v0, Lcom/s1243808733/android/multidex/ArchivePathElement;

    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lcom/s1243808733/android/multidex/ArchivePathElement;-><init>(Ljava/util/zip/ZipFile;)V

    return-object v0

    .line 40
    :cond_1d
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" is not a directory neither a zip file"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44
    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "File \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" not found"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readStream(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    nop

    :goto_1
    :try_start_1
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_14

    if-gez v0, :cond_f

    .line 76
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 78
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 73
    :cond_f
    const/4 v1, 0x0

    :try_start_10
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_1

    :catchall_14
    move-exception p1

    .line 76
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 77
    goto :goto_1a

    :goto_19
    throw p1

    :goto_1a
    goto :goto_19
.end method


# virtual methods
.method getClass(Ljava/lang/String;)Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 97
    :try_start_1
    iget-object v0, p0, Lcom/s1243808733/android/multidex/Path;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/multidex/ClassPathElement;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_65

    .line 99
    :try_start_14
    invoke-interface {v2, p1}, Lcom/s1243808733/android/multidex/ClassPathElement;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_18} :catch_43
    .catchall {:try_start_14 .. :try_end_18} :catchall_65

    .line 101
    :try_start_18
    iget-object v3, p0, Lcom/s1243808733/android/multidex/Path;->baos:Ljava/io/ByteArrayOutputStream;

    iget-object v4, p0, Lcom/s1243808733/android/multidex/Path;->readBuffer:[B

    invoke-static {v2, v3, v4}, Lcom/s1243808733/android/multidex/Path;->readStream(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;[B)[B

    move-result-object v3

    .line 102
    iget-object v4, p0, Lcom/s1243808733/android/multidex/Path;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 103
    new-instance v4, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    const/4 v5, 0x0

    invoke-direct {v4, v3, p1, v5}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;-><init>([BLjava/lang/String;Z)V
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_3c

    .line 104
    :try_start_2b
    sget-object v1, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->THE_ONE:Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;

    invoke-virtual {v4, v1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->setAttributeFactory(Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_38

    .line 107
    :try_start_30
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_35
    .catchall {:try_start_30 .. :try_end_33} :catchall_65

    move-object v1, v4

    goto :goto_45

    .line 108
    :catch_35
    move-exception v1

    move-object v1, v4

    goto :goto_8

    .line 107
    :catchall_38
    move-exception v1

    move-object v3, v1

    move-object v1, v4

    goto :goto_3d

    :catchall_3c
    move-exception v3

    :goto_3d
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 108
    throw v3
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_41} :catch_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_65

    :catch_41
    move-exception v2

    goto :goto_8

    .line 114
    :catch_43
    move-exception v2

    goto :goto_8

    .line 108
    :cond_45
    :goto_45
    if-eqz v1, :cond_49

    .line 116
    monitor-exit p0

    return-object v1

    .line 114
    :cond_49
    :try_start_49
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" not found"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_65
    .catchall {:try_start_49 .. :try_end_65} :catchall_65

    :catchall_65
    move-exception p1

    monitor-exit p0

    goto :goto_69

    :goto_68
    throw p1

    :goto_69
    goto :goto_68
.end method

.method getElements()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/s1243808733/android/multidex/ClassPathElement;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/s1243808733/android/multidex/Path;->elements:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/s1243808733/android/multidex/Path;->definition:Ljava/lang/String;

    return-object v0
.end method
