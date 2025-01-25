.class public interface abstract Ljavax/tools/StandardJavaFileManager;
.super Ljava/lang/Object;
.source "StandardJavaFileManager.java"

# interfaces
.implements Ljavax/tools/JavaFileManager;


# virtual methods
.method public varargs abstract getJavaFileObjects([Ljava/io/File;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract getJavaFileObjects([Ljava/lang/String;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getJavaFileObjectsFromFiles(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getJavaFileObjectsFromStrings(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocation(Ljavax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/tools/JavaFileManager$Location;",
            ")",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isSameFile(Ljavax/tools/FileObject;Ljavax/tools/FileObject;)Z
.end method

.method public abstract setLocation(Ljavax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/tools/JavaFileManager$Location;",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
