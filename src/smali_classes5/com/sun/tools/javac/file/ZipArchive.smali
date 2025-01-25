.class public Lcom/sun/tools/javac/file/ZipArchive;
.super Ljava/lang/Object;
.source "ZipArchive.java"

# interfaces
.implements Lcom/sun/tools/javac/file/JavacFileManager$Archive;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;
    }
.end annotation


# instance fields
.field protected absFileRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field protected fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

.field protected final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final zfile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/file/JavacFileManager;Ljava/util/zip/ZipFile;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/tools/javac/file/ZipArchive;-><init>(Lcom/sun/tools/javac/file/JavacFileManager;Ljava/util/zip/ZipFile;Z)V

    .line 63
    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/file/JavacFileManager;Ljava/util/zip/ZipFile;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/sun/tools/javac/file/ZipArchive;->fileManager:Lcom/sun/tools/javac/file/JavacFileManager;

    .line 67
    iput-object p2, p0, Lcom/sun/tools/javac/file/ZipArchive;->zfile:Ljava/util/zip/ZipFile;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/file/ZipArchive;->map:Ljava/util/Map;

    .line 69
    if-eqz p3, :cond_13

    .line 70
    invoke-virtual {p0}, Lcom/sun/tools/javac/file/ZipArchive;->initMap()V

    .line 71
    :cond_13
    return-void
.end method

.method static synthetic access$000(Lcom/sun/tools/javac/file/ZipArchive;)Ljava/io/File;
    .registers 2

    .line 59
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipArchive;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getAbsoluteFile()Ljava/io/File;
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipArchive;->absFileRef:Ljava/lang/ref/Reference;

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    .line 134
    :goto_5
    if-nez v0, :cond_1d

    .line 135
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipArchive;->zfile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sun/tools/javac/file/ZipArchive;->absFileRef:Ljava/lang/ref/Reference;

    .line 138
    :cond_1d
    return-object v0

    .line 133
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    goto :goto_5
.end method


# virtual methods
.method addZipEntry(Ljava/util/zip/ZipEntry;)V
    .registers 7

    .line 88
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 89
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 90
    new-instance v2, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    const/4 v3, 0x0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;-><init>(Ljava/lang/String;)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_23

    .line 99
    :goto_22
    return-void

    .line 94
    :cond_23
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipArchive;->map:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/List;

    .line 95
    if-nez v0, :cond_31

    .line 96
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 97
    :cond_31
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipArchive;->map:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipArchive;->zfile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 125
    return-void
.end method

.method public contains(Lcom/sun/tools/javac/file/RelativePath;)Z
    .registers 6

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p1}, Lcom/sun/tools/javac/file/RelativePath;->dirname()Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Lcom/sun/tools/javac/file/RelativePath;->basename()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_10

    .line 107
    :goto_f
    return v1

    .line 106
    :cond_10
    iget-object v3, p0, Lcom/sun/tools/javac/file/ZipArchive;->map:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/List;

    .line 107
    if-eqz v0, :cond_23

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    :goto_21
    move v1, v0

    goto :goto_f

    :cond_23
    move v0, v1

    goto :goto_21
.end method

.method public getFileObject(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)Ljavax/tools/JavaFileObject;
    .registers 5

    .line 115
    new-instance v0, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;

    invoke-direct {v0, p1, p2}, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;-><init>(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipArchive;->zfile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;->getZipEntry(Ljava/util/zip/ZipFile;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;

    invoke-direct {v1, p0, p2, v0}, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;-><init>(Lcom/sun/tools/javac/file/ZipArchive;Ljava/lang/String;Ljava/util/zip/ZipEntry;)V

    return-object v1
.end method

.method public getFiles(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;)Lcom/sun/tools/javac/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipArchive;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public getSubdirectories()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipArchive;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected initMap()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipArchive;->zfile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 77
    :try_start_c
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;
    :try_end_12
    .catch Ljava/lang/InternalError; {:try_start_c .. :try_end_12} :catch_16

    .line 82
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/file/ZipArchive;->addZipEntry(Ljava/util/zip/ZipEntry;)V

    goto :goto_6

    .line 78
    :catch_16
    move-exception v0

    .line 79
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 80
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 81
    throw v1

    .line 85
    :cond_20
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZipArchive["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipArchive;->zfile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
