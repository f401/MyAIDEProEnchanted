.class Lorg/apache/tools/ant/taskdefs/email/PlainMailer;
.super Lorg/apache/tools/ant/taskdefs/email/Mailer;
.source "PlainMailer.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/email/Mailer;-><init>()V

    return-void
.end method

.method private badRecipient(Lorg/apache/tools/ant/taskdefs/email/EmailAddress;Ljava/io/IOException;)V
    .registers 6

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to send mail to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->shouldIgnoreInvalidRecipients()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " because of :"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->task:Lorg/apache/tools/ant/Task;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->task:Lorg/apache/tools/ant/Task;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    .line 165
    :goto_0
    return-void

    .line 160
    :cond_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_1
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected attach(Ljava/io/File;Ljava/io/PrintStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 121
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 127
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->includeFileNames:Z

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p2}, Ljava/io/PrintStream;->println()V

    .line 130
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 133
    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    .line 134
    :goto_0
    if-ge v0, v2, :cond_0

    .line 135
    const/16 v3, 0x3d

    invoke-virtual {p2, v3}, Ljava/io/PrintStream;->print(C)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintStream;->println()V

    .line 140
    :cond_1
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 143
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1

    .line 144
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    array-length v3, v0

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 147
    :goto_1
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 148
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4, v3}, Ljava/io/PrintStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 143
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_2
    :goto_3
    throw v0

    .line 150
    :cond_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 151
    :cond_4
    return-void

    .line 122
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "File \"%s\" does not exist or is not readable."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 143
    :catchall_2
    move-exception v2

    goto :goto_2

    :catchall_3
    move-exception v1

    goto :goto_3
.end method

.method public send()V
    .registers 7

    const/4 v1, 0x1

    .line 44
    :try_start_0
    new-instance v4, Lorg/apache/tools/mail/MailMessage;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->host:Ljava/lang/String;

    iget v2, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->port:I

    invoke-direct {v4, v0, v2}, Lorg/apache/tools/mail/MailMessage;-><init>(Ljava/lang/String;I)V

    .line 46
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->from:Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/tools/mail/MailMessage;->from(Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->replyToList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lorg/apache/tools/ant/taskdefs/email/PlainMailer$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/email/PlainMailer$$ExternalSyntheticLambda1;

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/apache/tools/ant/taskdefs/email/PlainMailer$$ExternalSyntheticLambda0;

    invoke-direct {v3, v4}, Lorg/apache/tools/ant/taskdefs/email/PlainMailer$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/mail/MailMessage;)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 52
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->toList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 54
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/apache/tools/mail/MailMessage;->to(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    :goto_1
    move v2, v0

    .line 59
    goto :goto_0

    .line 56
    :catch_0
    move-exception v3

    .line 57
    :try_start_2
    invoke-direct {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->badRecipient(Lorg/apache/tools/ant/taskdefs/email/EmailAddress;Ljava/io/IOException;)V

    move v0, v2

    goto :goto_1

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->ccList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 63
    :try_start_3
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/apache/tools/mail/MailMessage;->cc(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move v0, v1

    :goto_3
    move v2, v0

    .line 68
    goto :goto_2

    .line 65
    :catch_1
    move-exception v3

    .line 66
    :try_start_4
    invoke-direct {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->badRecipient(Lorg/apache/tools/ant/taskdefs/email/EmailAddress;Ljava/io/IOException;)V

    move v0, v2

    goto :goto_3

    .line 70
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->bccList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 72
    :try_start_5
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/apache/tools/mail/MailMessage;->bcc(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move v0, v1

    :goto_5
    move v2, v0

    .line 77
    goto :goto_4

    .line 74
    :catch_2
    move-exception v3

    .line 75
    :try_start_6
    invoke-direct {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->badRecipient(Lorg/apache/tools/ant/taskdefs/email/EmailAddress;Ljava/io/IOException;)V

    move v0, v2

    goto :goto_5

    .line 79
    :cond_2
    if-eqz v2, :cond_7

    .line 82
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->subject:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 83
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->subject:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lorg/apache/tools/mail/MailMessage;->setSubject(Ljava/lang/String;)V

    .line 85
    :cond_3
    const-string v0, "Date"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/apache/tools/mail/MailMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/email/Message;->getCharset()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/email/Message;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; charset=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    .line 88
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/email/Message;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "Content-Type"

    invoke-virtual {v4, v1, v0}, Lorg/apache/tools/mail/MailMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_6
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->headers:Ljava/util/Vector;

    if-eqz v0, :cond_5

    .line 93
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->headers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/email/Header;

    .line 94
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/email/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/email/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Lorg/apache/tools/mail/MailMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_7

    .line 106
    :catch_3
    move-exception v0

    .line 107
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "IO error sending mail"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 90
    :cond_4
    :try_start_7
    const-string v0, "Content-Type"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/email/Message;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/apache/tools/mail/MailMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 97
    :cond_5
    invoke-virtual {v4}, Lorg/apache/tools/mail/MailMessage;->getPrintStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 98
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/email/Message;->print(Ljava/io/PrintStream;)V

    .line 100
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->files:Ljava/util/Vector;

    if-eqz v0, :cond_6

    .line 101
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->files:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 102
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;->attach(Ljava/io/File;Ljava/io/PrintStream;)V

    goto :goto_8

    .line 105
    :cond_6
    invoke-virtual {v4}, Lorg/apache/tools/mail/MailMessage;->sendAndClose()V

    .line 108
    return-void

    .line 80
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Couldn\'t reach any recipient"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
.end method
