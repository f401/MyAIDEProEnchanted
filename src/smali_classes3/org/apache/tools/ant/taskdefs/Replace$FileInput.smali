.class Lorg/apache/tools/ant/taskdefs/Replace$FileInput;
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
    name = "FileInput"
.end annotation


# static fields
.field private static final BUFF_SIZE:I = 0x1000


# instance fields
.field private buffer:[C

.field private final is:Ljava/io/InputStream;

.field private outputBuffer:Ljava/lang/StringBuffer;

.field private reader:Ljava/io/Reader;

.field final this$0:Lorg/apache/tools/ant/taskdefs/Replace;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/Replace;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->this$0:Lorg/apache/tools/ant/taskdefs/Replace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->outputBuffer:Ljava/lang/StringBuffer;

    .line 367
    const/16 v0, 0x1000

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->buffer:[C

    .line 368
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->is:Ljava/io/InputStream;

    .line 370
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .line 371
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Replace;->access$400(Lorg/apache/tools/ant/taskdefs/Replace;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Replace;->access$400(Lorg/apache/tools/ant/taskdefs/Replace;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 372
    :goto_0
    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->reader:Ljava/io/Reader;

    .line 374
    return-void

    .line 372
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->reader:Ljava/io/Reader;

    if-nez v1, :cond_1

    .line 375
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 377
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

    .line 409
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 410
    return-void
.end method

.method getOutputBuffer()Ljava/lang/StringBuffer;
    .registers 2

    .line 386
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->outputBuffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method readChunk()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 395
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->reader:Ljava/io/Reader;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->buffer:[C

    invoke-virtual {v1, v2}, Ljava/io/Reader;->read([C)I

    move-result v1

    .line 396
    if-gez v1, :cond_0

    .line 400
    :goto_0
    return v0

    .line 399
    :cond_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->outputBuffer:Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->buffer:[C

    invoke-direct {v3, v4, v0, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    const/4 v0, 0x1

    goto :goto_0
.end method
