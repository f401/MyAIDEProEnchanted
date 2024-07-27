.class Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputFileObject;
.super Ljavax/tools/ForwardingFileObject;
.source "JavacFiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/processing/JavacFiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilerOutputFileObject"
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
.field private name:Ljava/lang/String;

.field private opened:Z

.field final this$0:Lcom/sun/tools/javac/processing/JavacFiler;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/processing/JavacFiler;Ljava/lang/String;Ljavax/tools/FileObject;)V
    .registers 5

    .line 126
    iput-object p1, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputFileObject;->this$0:Lcom/sun/tools/javac/processing/JavacFiler;

    .line 127
    invoke-direct {p0, p3}, Ljavax/tools/ForwardingFileObject;-><init>(Ljavax/tools/FileObject;)V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputFileObject;->opened:Z

    .line 128
    iput-object p2, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputFileObject;->name:Ljava/lang/String;

    .line 129
    return-void
.end method


# virtual methods
.method public delete()Z
    .registers 2

    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public getCharContent(Z)Ljava/lang/CharSequence;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FileObject was not opened for reading."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FileObject was not opened for reading."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 133
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputFileObject;->opened:Z

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputFileObject;->opened:Z

    .line 136
    new-instance v0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputStream;

    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputFileObject;->this$0:Lcom/sun/tools/javac/processing/JavacFiler;

    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputFileObject;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputFileObject;->fileObject:Ljavax/tools/FileObject;

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputStream;-><init>(Lcom/sun/tools/javac/processing/JavacFiler;Ljava/lang/String;Ljavax/tools/FileObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 134
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Output stream or writer has already been opened."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public openReader(Z)Ljava/io/Reader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FileObject was not opened for reading."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openWriter()Ljava/io/Writer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 141
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputFileObject;->opened:Z

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputFileObject;->opened:Z

    .line 144
    new-instance v0, Lcom/sun/tools/javac/processing/JavacFiler$FilerWriter;

    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputFileObject;->this$0:Lcom/sun/tools/javac/processing/JavacFiler;

    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputFileObject;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputFileObject;->fileObject:Ljavax/tools/FileObject;

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/processing/JavacFiler$FilerWriter;-><init>(Lcom/sun/tools/javac/processing/JavacFiler;Ljava/lang/String;Ljavax/tools/FileObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 142
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Output stream or writer has already been opened."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
