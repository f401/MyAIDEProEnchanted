.class Lcom/sun/tools/javac/processing/JavacFiler$FilerInputFileObject;
.super Ljavax/tools/ForwardingFileObject;
.source "JavacFiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/processing/JavacFiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilerInputFileObject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/tools/ForwardingFileObject",
        "<",
        "Ljavax/tools/FileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/processing/JavacFiler;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/processing/JavacFiler;Ljavax/tools/FileObject;)V
    .registers 3

    .line 198
    iput-object p1, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerInputFileObject;->this$0:Lcom/sun/tools/javac/processing/JavacFiler;

    .line 199
    invoke-direct {p0, p2}, Ljavax/tools/ForwardingFileObject;-><init>(Ljavax/tools/FileObject;)V

    .line 200
    return-void
.end method


# virtual methods
.method public delete()Z
    .registers 2

    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FileObject was not opened for writing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openWriter()Ljava/io/Writer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FileObject was not opened for writing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
