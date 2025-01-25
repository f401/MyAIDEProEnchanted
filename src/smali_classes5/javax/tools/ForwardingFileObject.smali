.class public Ljavax/tools/ForwardingFileObject;
.super Ljava/lang/Object;
.source "ForwardingFileObject.java"

# interfaces
.implements Ljavax/tools/FileObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F::",
        "Ljavax/tools/FileObject;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/tools/FileObject;"
    }
.end annotation


# instance fields
.field protected final fileObject:Ljavax/tools/FileObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljavax/tools/FileObject;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    iput-object p1, p0, Ljavax/tools/ForwardingFileObject;->fileObject:Ljavax/tools/FileObject;

    .line 58
    return-void
.end method


# virtual methods
.method public delete()Z
    .registers 2

    .line 118
    iget-object v0, p0, Ljavax/tools/ForwardingFileObject;->fileObject:Ljavax/tools/FileObject;

    invoke-interface {v0}, Ljavax/tools/FileObject;->delete()Z

    move-result v0

    return v0
.end method

.method public getCharContent(Z)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Ljavax/tools/ForwardingFileObject;->fileObject:Ljavax/tools/FileObject;

    invoke-interface {v0, p1}, Ljavax/tools/FileObject;->getCharContent(Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()J
    .registers 3

    .line 114
    iget-object v0, p0, Ljavax/tools/ForwardingFileObject;->fileObject:Ljavax/tools/FileObject;

    invoke-interface {v0}, Ljavax/tools/FileObject;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Ljavax/tools/ForwardingFileObject;->fileObject:Ljavax/tools/FileObject;

    invoke-interface {v0}, Ljavax/tools/FileObject;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Ljavax/tools/ForwardingFileObject;->fileObject:Ljavax/tools/FileObject;

    invoke-interface {v0}, Ljavax/tools/FileObject;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Ljavax/tools/ForwardingFileObject;->fileObject:Ljavax/tools/FileObject;

    invoke-interface {v0}, Ljavax/tools/FileObject;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public openReader(Z)Ljava/io/Reader;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Ljavax/tools/ForwardingFileObject;->fileObject:Ljavax/tools/FileObject;

    invoke-interface {v0, p1}, Ljavax/tools/FileObject;->openReader(Z)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public openWriter()Ljava/io/Writer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Ljavax/tools/ForwardingFileObject;->fileObject:Ljavax/tools/FileObject;

    invoke-interface {v0}, Ljavax/tools/FileObject;->openWriter()Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Ljava/net/URI;
    .registers 2

    .line 61
    iget-object v0, p0, Ljavax/tools/ForwardingFileObject;->fileObject:Ljavax/tools/FileObject;

    invoke-interface {v0}, Ljavax/tools/FileObject;->toUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method
