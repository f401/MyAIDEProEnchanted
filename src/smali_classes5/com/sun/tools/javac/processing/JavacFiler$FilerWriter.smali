.class Lcom/sun/tools/javac/processing/JavacFiler$FilerWriter;
.super Ljava/io/FilterWriter;
.source "JavacFiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/processing/JavacFiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilerWriter"
.end annotation


# instance fields
.field closed:Z

.field fileObject:Ljavax/tools/FileObject;

.field final this$0:Lcom/sun/tools/javac/processing/JavacFiler;

.field typeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/processing/JavacFiler;Ljava/lang/String;Ljavax/tools/FileObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    iput-object p1, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerWriter;->this$0:Lcom/sun/tools/javac/processing/JavacFiler;

    .line 294
    invoke-interface {p3}, Ljavax/tools/FileObject;->openWriter()Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerWriter;->closed:Z

    .line 295
    iput-object p2, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerWriter;->typeName:Ljava/lang/String;

    .line 296
    iput-object p3, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerWriter;->fileObject:Ljavax/tools/FileObject;

    .line 297
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 300
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerWriter;->closed:Z

    if-nez v0, :cond_16

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerWriter;->closed:Z

    .line 307
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerWriter;->this$0:Lcom/sun/tools/javac/processing/JavacFiler;

    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerWriter;->typeName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerWriter;->fileObject:Ljavax/tools/FileObject;

    invoke-static {v0, v1, v2}, Lcom/sun/tools/javac/processing/JavacFiler;->access$000(Lcom/sun/tools/javac/processing/JavacFiler;Ljava/lang/String;Ljavax/tools/FileObject;)V

    .line 308
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 310
    :cond_16
    monitor-exit p0

    return-void

    .line 299
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method
