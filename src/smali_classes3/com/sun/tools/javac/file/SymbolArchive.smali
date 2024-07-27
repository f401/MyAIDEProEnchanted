.class public Lcom/sun/tools/javac/file/SymbolArchive;
.super Lcom/sun/tools/javac/file/ZipArchive;
.source "SymbolArchive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/file/SymbolArchive$SymbolFileObject;
    }
.end annotation


# instance fields
.field final origFile:Ljava/io/File;

.field final prefix:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/file/JavacFileManager;Ljava/io/File;Ljava/util/zip/ZipFile;Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/sun/tools/javac/file/ZipArchive;-><init>(Lcom/sun/tools/javac/file/JavacFileManager;Ljava/util/zip/ZipFile;Z)V

    .line 52
    iput-object p2, p0, Lcom/sun/tools/javac/file/SymbolArchive;->origFile:Ljava/io/File;

    .line 53
    iput-object p4, p0, Lcom/sun/tools/javac/file/SymbolArchive;->prefix:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    .line 54
    invoke-virtual {p0}, Lcom/sun/tools/javac/file/SymbolArchive;->initMap()V

    .line 55
    return-void
.end method


# virtual methods
.method addZipEntry(Ljava/util/zip/ZipEntry;)V
    .registers 7

    .line 59
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/sun/tools/javac/file/SymbolArchive;->prefix:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    iget-object v1, v1, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/sun/tools/javac/file/SymbolArchive;->prefix:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    iget-object v1, v1, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 65
    new-instance v2, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    const/4 v3, 0x0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;-><init>(Ljava/lang/String;)V

    .line 66
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/sun/tools/javac/file/SymbolArchive;->map:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/List;

    .line 71
    if-nez v0, :cond_2

    .line 72
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 73
    :cond_2
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/sun/tools/javac/file/SymbolArchive;->map:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getFileObject(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)Ljavax/tools/JavaFileObject;
    .registers 6

    .line 79
    new-instance v0, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    iget-object v1, p0, Lcom/sun/tools/javac/file/SymbolArchive;->prefix:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    iget-object v2, p1, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->path:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;-><init>(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)V

    .line 80
    new-instance v1, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;

    invoke-direct {v1, v0, p2}, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;-><init>(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/tools/javac/file/SymbolArchive;->zfile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;->getZipEntry(Ljava/util/zip/ZipFile;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 81
    new-instance v1, Lcom/sun/tools/javac/file/SymbolArchive$SymbolFileObject;

    invoke-direct {v1, p0, p2, v0}, Lcom/sun/tools/javac/file/SymbolArchive$SymbolFileObject;-><init>(Lcom/sun/tools/javac/file/SymbolArchive;Ljava/lang/String;Ljava/util/zip/ZipEntry;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SymbolArchive["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/file/SymbolArchive;->zfile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
