.class public Lorg/apache/tools/ant/taskdefs/email/Message;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "Message.java"


# instance fields
.field private buffer:Ljava/lang/StringBuffer;

.field private charset:Ljava/lang/String;

.field private inputEncoding:Ljava/lang/String;

.field private messageSource:Ljava/io/File;

.field private mimeType:Ljava/lang/String;

.field private specified:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    .line 40
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->messageSource:Ljava/io/File;

    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->buffer:Ljava/lang/StringBuffer;

    .line 42
    const-string v0, "text/plain"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->mimeType:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->specified:Z

    .line 44
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->charset:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 4

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    .line 40
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->messageSource:Ljava/io/File;

    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->buffer:Ljava/lang/StringBuffer;

    .line 42
    const-string v0, "text/plain"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->mimeType:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->specified:Z

    .line 44
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->charset:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->messageSource:Ljava/io/File;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    .line 40
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->messageSource:Ljava/io/File;

    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->buffer:Ljava/lang/StringBuffer;

    .line 42
    const-string v0, "text/plain"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->mimeType:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->specified:Z

    .line 44
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->charset:Ljava/lang/String;

    .line 57
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/email/Message;->addText(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private getReader(Ljava/io/File;)Ljava/io/Reader;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->inputEncoding:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 180
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1

    .line 182
    :try_start_f
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->inputEncoding:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_17

    .line 188
    :goto_16
    return-object v0

    .line 183
    :catch_17
    move-exception v0

    .line 184
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 185
    throw v0

    .line 188
    :cond_1c
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    goto :goto_16
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .registers 3

    .line 75
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    return-void
.end method

.method public getCharset()Ljava/lang/String;
    .registers 2

    .line 165
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public isMimeTypeSpecified()Z
    .registers 2

    .line 145
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->specified:Z

    return v0
.end method

.method public print(Ljava/io/PrintStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->charset:Ljava/lang/String;

    if-nez v0, :cond_37

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 120
    :goto_e
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->messageSource:Ljava/io/File;

    if-eqz v1, :cond_4b

    .line 122
    new-instance v1, Ljava/io/BufferedReader;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->messageSource:Ljava/io/File;

    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/email/Message;->getReader(Ljava/io/File;)Ljava/io/Reader;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 124
    :goto_1d
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 125
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/email/Message;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_32

    goto :goto_1d

    .line 122
    :catchall_32
    move-exception v0

    :try_start_33
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_61

    :goto_36
    throw v0

    .line 119
    :cond_37
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->charset:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    goto :goto_e

    .line 128
    :cond_44
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 133
    :goto_47
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 137
    return-void

    .line 130
    :cond_4b
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/email/Message;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->buffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_47

    .line 122
    :catchall_61
    move-exception v1

    goto :goto_36
.end method

.method public setCharset(Ljava/lang/String;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->charset:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setInputEncoding(Ljava/lang/String;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->inputEncoding:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 3

    .line 93
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->mimeType:Ljava/lang/String;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->specified:Z

    .line 95
    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->messageSource:Ljava/io/File;

    .line 85
    return-void
.end method
