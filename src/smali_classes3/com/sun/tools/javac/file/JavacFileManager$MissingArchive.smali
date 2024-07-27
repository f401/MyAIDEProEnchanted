.class public Lcom/sun/tools/javac/file/JavacFileManager$MissingArchive;
.super Ljava/lang/Object;
.source "JavacFileManager.java"

# interfaces
.implements Lcom/sun/tools/javac/file/JavacFileManager$Archive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/file/JavacFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MissingArchive"
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/file/JavacFileManager;

.field final zipFileName:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/file/JavacFileManager;Ljava/io/File;)V
    .registers 3

    .line 914
    iput-object p1, p0, Lcom/sun/tools/javac/file/JavacFileManager$MissingArchive;->this$0:Lcom/sun/tools/javac/file/JavacFileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 915
    iput-object p2, p0, Lcom/sun/tools/javac/file/JavacFileManager$MissingArchive;->zipFileName:Ljava/io/File;

    .line 916
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 923
    return-void
.end method

.method public contains(Lcom/sun/tools/javac/file/RelativePath;)Z
    .registers 3

    .line 919
    const/4 v0, 0x0

    return v0
.end method

.method public getFileObject(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)Ljavax/tools/JavaFileObject;
    .registers 4

    .line 926
    const/4 v0, 0x0

    return-object v0
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

    .line 930
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

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

    .line 934
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MissingArchive["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/file/JavacFileManager$MissingArchive;->zipFileName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
