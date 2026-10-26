.class public interface abstract Ljavax/annotation/processing/Filer;
.super Ljava/lang/Object;
.source "Filer.java"


# virtual methods
.method public varargs abstract createClassFile(Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/JavaFileObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs abstract createResource(Ljavax/tools/JavaFileManager$Location;Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/FileObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs abstract createSourceFile(Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/JavaFileObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getResource(Ljavax/tools/JavaFileManager$Location;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljavax/tools/FileObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
