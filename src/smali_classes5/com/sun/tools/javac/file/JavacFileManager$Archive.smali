.class public interface abstract Lcom/sun/tools/javac/file/JavacFileManager$Archive;
.super Ljava/lang/Object;
.source "JavacFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/file/JavacFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Archive"
.end annotation


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract contains(Lcom/sun/tools/javac/file/RelativePath;)Z
.end method

.method public abstract getFileObject(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)Ljavax/tools/JavaFileObject;
.end method

.method public abstract getFiles(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;)Lcom/sun/tools/javac/util/List;
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
.end method

.method public abstract getSubdirectories()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;",
            ">;"
        }
    .end annotation
.end method
