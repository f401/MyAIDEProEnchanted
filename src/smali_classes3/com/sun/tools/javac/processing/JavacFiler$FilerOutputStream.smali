.class Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputStream;
.super Ljava/io/FilterOutputStream;
.source "JavacFiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/processing/JavacFiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilerOutputStream"
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

    .line 258
    iput-object p1, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputStream;->this$0:Lcom/sun/tools/javac/processing/JavacFiler;

    .line 259
    invoke-interface {p3}, Ljavax/tools/FileObject;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputStream;->closed:Z

    .line 260
    iput-object p2, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputStream;->typeName:Ljava/lang/String;

    .line 261
    iput-object p3, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputStream;->fileObject:Ljavax/tools/FileObject;

    .line 262
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

    .line 265
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputStream;->closed:Z

    if-nez v0, :cond_0

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputStream;->closed:Z

    .line 272
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputStream;->this$0:Lcom/sun/tools/javac/processing/JavacFiler;

    iget-object v1, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputStream;->typeName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputStream;->fileObject:Ljavax/tools/FileObject;

    invoke-static {v0, v1, v2}, Lcom/sun/tools/javac/processing/JavacFiler;->access$000(Lcom/sun/tools/javac/processing/JavacFiler;Ljava/lang/String;Ljavax/tools/FileObject;)V

    .line 273
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :cond_0
    monitor-exit p0

    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
