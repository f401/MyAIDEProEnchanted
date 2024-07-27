.class Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;
.super Ljava/lang/Object;
.source "Replace.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Replace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileOutput"
.end annotation


# instance fields
.field private inputBuffer:Ljava/lang/StringBuffer;

.field private final os:Ljava/io/OutputStream;

.field final this$0:Lorg/apache/tools/ant/taskdefs/Replace;

.field private writer:Ljava/io/Writer;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/Replace;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->this$0:Lorg/apache/tools/ant/taskdefs/Replace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->os:Ljava/io/OutputStream;

    .line 432
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    .line 433
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Replace;->access$400(Lorg/apache/tools/ant/taskdefs/Replace;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Replace;->access$400(Lorg/apache/tools/ant/taskdefs/Replace;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 434
    :goto_0
    invoke-direct {v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->writer:Ljava/io/Writer;

    .line 436
    return-void

    .line 434
    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 436
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->writer:Ljava/io/Writer;

    if-nez v1, :cond_1

    .line 437
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->os:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 439
    :cond_1
    throw v0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 483
    return-void
.end method

.method flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->process()Z

    .line 473
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 474
    return-void
.end method

.method process()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 462
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 464
    return v2
.end method

.method setInputBuffer(Ljava/lang/StringBuffer;)V
    .registers 2

    .line 451
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->inputBuffer:Ljava/lang/StringBuffer;

    .line 452
    return-void
.end method
