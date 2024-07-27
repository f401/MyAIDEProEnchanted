.class public Lorg/apache/tools/ant/util/ConcatFileInputStream;
.super Ljava/io/InputStream;
.source "ConcatFileInputStream.java"


# static fields
.field private static final EOF:I = -0x1


# instance fields
.field private currentIndex:I

.field private currentStream:Ljava/io/InputStream;

.field private eof:Z

.field private file:[Ljava/io/File;

.field private managingPc:Lorg/apache/tools/ant/ProjectComponent;


# direct methods
.method public constructor <init>([Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->currentIndex:I

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->eof:Z

    .line 51
    iput-object p1, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->file:[Ljava/io/File;

    .line 52
    return-void
.end method

.method private closeCurrent()V
    .registers 2

    .line 135
    iget-object v0, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->currentStream:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->currentStream:Ljava/io/InputStream;

    .line 137
    return-void
.end method

.method private openFile(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 119
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ConcatFileInputStream;->closeCurrent()V

    .line 120
    iget-object v0, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->file:[Ljava/io/File;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opening "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->file:[Ljava/io/File;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/util/ConcatFileInputStream;->log(Ljava/lang/String;I)V

    .line 123
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->file:[Ljava/io/File;

    aget-object v1, v1, p1

    .line 124
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->currentStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->file:[Ljava/io/File;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lorg/apache/tools/ant/util/ConcatFileInputStream;->log(Ljava/lang/String;I)V

    .line 127
    throw v0

    .line 130
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->eof:Z

    goto :goto_0
.end method

.method private readCurrent()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->eof:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->currentStream:Ljava/io/InputStream;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ConcatFileInputStream;->closeCurrent()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->eof:Z

    .line 62
    return-void
.end method

.method public log(Ljava/lang/String;I)V
    .registers 4

    .line 103
    iget-object v0, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->managingPc:Lorg/apache/tools/ant/ProjectComponent;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    .line 112
    :goto_0
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    .line 107
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ConcatFileInputStream;->readCurrent()I

    move-result v0

    .line 72
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->eof:Z

    if-nez v1, :cond_0

    .line 73
    iget v0, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->currentIndex:I

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/util/ConcatFileInputStream;->openFile(I)V

    .line 74
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ConcatFileInputStream;->readCurrent()I

    move-result v0

    .line 76
    :cond_0
    return v0
.end method

.method public setManagingComponent(Lorg/apache/tools/ant/ProjectComponent;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->managingPc:Lorg/apache/tools/ant/ProjectComponent;

    .line 95
    return-void
.end method

.method public setManagingTask(Lorg/apache/tools/ant/Task;)V
    .registers 2

    .line 85
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/ConcatFileInputStream;->setManagingComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    .line 86
    return-void
.end method
