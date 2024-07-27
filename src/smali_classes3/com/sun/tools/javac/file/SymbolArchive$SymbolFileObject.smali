.class public Lcom/sun/tools/javac/file/SymbolArchive$SymbolFileObject;
.super Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;
.source "SymbolArchive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/file/SymbolArchive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SymbolFileObject"
.end annotation


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/file/SymbolArchive;Ljava/lang/String;Ljava/util/zip/ZipEntry;)V
    .registers 4

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/file/ZipArchive$ZipFileObject;-><init>(Lcom/sun/tools/javac/file/ZipArchive;Ljava/lang/String;Ljava/util/zip/ZipEntry;)V

    .line 95
    return-void
.end method


# virtual methods
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

    .line 99
    iget-object v0, p0, Lcom/sun/tools/javac/file/SymbolArchive$SymbolFileObject;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 100
    iget-object v0, p0, Lcom/sun/tools/javac/file/SymbolArchive$SymbolFileObject;->zarch:Lcom/sun/tools/javac/file/ZipArchive;

    check-cast v0, Lcom/sun/tools/javac/file/SymbolArchive;

    iget-object v0, v0, Lcom/sun/tools/javac/file/SymbolArchive;->prefix:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    iget-object v0, v0, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->path:Ljava/lang/String;

    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    :goto_0
    invoke-static {v0}, Lcom/sun/tools/javac/file/SymbolArchive$SymbolFileObject;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
