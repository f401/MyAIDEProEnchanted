.class public Lorg/apache/tools/mail/MailMessage;
.super Ljava/lang/Object;
.source "MailMessage.java"


# static fields
.field public static final DEFAULT_HOST:Ljava/lang/String; = "localhost"

.field public static final DEFAULT_PORT:I = 0x19

.field private static final OK_DATA:I = 0x162

.field private static final OK_DOT:I = 0xfa

.field private static final OK_FROM:I = 0xfa

.field private static final OK_HELO:I = 0xfa

.field private static final OK_QUIT:I = 0xdd

.field private static final OK_RCPT_1:I = 0xfa

.field private static final OK_RCPT_2:I = 0xfb

.field private static final OK_READY:I = 0xdc


# instance fields
.field private final cc:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private from:Ljava/lang/String;

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private host:Ljava/lang/String;

.field private in:Lorg/apache/tools/mail/SmtpResponseReader;

.field private out:Lorg/apache/tools/mail/MailPrintStream;

.field private port:I

.field private final replyto:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private socket:Ljava/net/Socket;

.field private final to:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    const-string v0, "localhost"

    const/16 v1, 0x19

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/mail/MailMessage;-><init>(Ljava/lang/String;I)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    const/16 v0, 0x19

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/mail/MailMessage;-><init>(Ljava/lang/String;I)V

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/16 v0, 0x19

    iput v0, p0, Lorg/apache/tools/mail/MailMessage;->port:I

    .line 117
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/mail/MailMessage;->replyto:Ljava/util/Vector;

    .line 120
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/mail/MailMessage;->to:Ljava/util/Vector;

    .line 123
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/mail/MailMessage;->cc:Ljava/util/Vector;

    .line 126
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/mail/MailMessage;->headers:Ljava/util/Map;

    .line 173
    iput p2, p0, Lorg/apache/tools/mail/MailMessage;->port:I

    .line 174
    iput-object p1, p0, Lorg/apache/tools/mail/MailMessage;->host:Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Lorg/apache/tools/mail/MailMessage;->connect()V

    .line 176
    invoke-virtual {p0}, Lorg/apache/tools/mail/MailMessage;->sendHelo()V

    .line 177
    return-void
.end method

.method static sanitizeAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v5, 0x0

    .line 345
    .line 348
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    move v3, v5

    move v2, v5

    move v0, v5

    move v1, v5

    .line 350
    :goto_9
    if-ge v1, v4, :cond_37

    .line 351
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 352
    const/16 v6, 0x28

    if-ne v5, v6, :cond_1b

    .line 353
    add-int/lit8 v3, v3, 0x1

    .line 354
    if-nez v2, :cond_18

    move v0, v1

    .line 350
    :cond_18
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 357
    :cond_1b
    const/16 v6, 0x29

    if-ne v5, v6, :cond_26

    .line 358
    add-int/lit8 v3, v3, -0x1

    .line 359
    if-nez v0, :cond_18

    .line 360
    add-int/lit8 v2, v1, 0x1

    goto :goto_18

    .line 362
    :cond_26
    if-nez v3, :cond_2f

    const/16 v6, 0x3c

    if-ne v5, v6, :cond_2f

    .line 363
    add-int/lit8 v2, v1, 0x1

    goto :goto_18

    .line 364
    :cond_2f
    if-nez v3, :cond_18

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_18

    move v0, v1

    .line 365
    goto :goto_18

    .line 369
    :cond_37
    if-nez v0, :cond_3a

    move v0, v4

    .line 373
    :cond_3a
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bcc(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    invoke-virtual {p0, p1}, Lorg/apache/tools/mail/MailMessage;->sendRcpt(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public cc(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    invoke-virtual {p0, p1}, Lorg/apache/tools/mail/MailMessage;->sendRcpt(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->cc:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 232
    return-void
.end method

.method connect()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lorg/apache/tools/mail/MailMessage;->host:Ljava/lang/String;

    iget v2, p0, Lorg/apache/tools/mail/MailMessage;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/apache/tools/mail/MailMessage;->socket:Ljava/net/Socket;

    .line 380
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->socket:Ljava/net/Socket;

    .line 381
    new-instance v1, Lorg/apache/tools/mail/MailPrintStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Lorg/apache/tools/mail/MailPrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/apache/tools/mail/MailMessage;->out:Lorg/apache/tools/mail/MailPrintStream;

    .line 382
    new-instance v0, Lorg/apache/tools/mail/SmtpResponseReader;

    iget-object v1, p0, Lorg/apache/tools/mail/MailMessage;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/mail/SmtpResponseReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/tools/mail/MailMessage;->in:Lorg/apache/tools/mail/SmtpResponseReader;

    .line 383
    invoke-virtual {p0}, Lorg/apache/tools/mail/MailMessage;->getReady()V

    .line 384
    return-void
.end method

.method disconnect()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->out:Lorg/apache/tools/mail/MailPrintStream;

    if-eqz v0, :cond_7

    .line 451
    invoke-virtual {v0}, Lorg/apache/tools/mail/MailPrintStream;->close()V

    .line 453
    :cond_7
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->in:Lorg/apache/tools/mail/SmtpResponseReader;

    if-eqz v0, :cond_e

    .line 455
    :try_start_b
    invoke-virtual {v0}, Lorg/apache/tools/mail/SmtpResponseReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_16

    .line 460
    :cond_e
    :goto_e
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_15

    .line 462
    :try_start_12
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_18

    .line 467
    :cond_15
    :goto_15
    return-void

    .line 456
    :catch_16
    move-exception v0

    goto :goto_e

    .line 463
    :catch_18
    move-exception v0

    goto :goto_15
.end method

.method flushHeaders()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->headers:Ljava/util/Map;

    new-instance v1, Lorg/apache/tools/mail/MailMessage$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/mail/MailMessage$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/mail/MailMessage;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 323
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->out:Lorg/apache/tools/mail/MailPrintStream;

    invoke-virtual {v0}, Lorg/apache/tools/mail/MailPrintStream;->println()V

    .line 324
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->out:Lorg/apache/tools/mail/MailPrintStream;

    invoke-virtual {v0}, Lorg/apache/tools/mail/MailPrintStream;->flush()V

    .line 325
    return-void
.end method

.method public from(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    invoke-virtual {p0, p1}, Lorg/apache/tools/mail/MailMessage;->sendFrom(Ljava/lang/String;)V

    .line 196
    iput-object p1, p0, Lorg/apache/tools/mail/MailMessage;->from:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public getPrintStream()Ljava/io/PrintStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Lorg/apache/tools/mail/MailMessage;->setFromHeader()V

    .line 278
    invoke-virtual {p0}, Lorg/apache/tools/mail/MailMessage;->setReplyToHeader()V

    .line 279
    invoke-virtual {p0}, Lorg/apache/tools/mail/MailMessage;->setToHeader()V

    .line 280
    invoke-virtual {p0}, Lorg/apache/tools/mail/MailMessage;->setCcHeader()V

    .line 281
    const-string v0, "X-Mailer"

    const-string v1, "org.apache.tools.mail.MailMessage (ant.apache.org)"

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/mail/MailMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lorg/apache/tools/mail/MailMessage;->sendData()V

    .line 284
    invoke-virtual {p0}, Lorg/apache/tools/mail/MailMessage;->flushHeaders()V

    .line 285
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->out:Lorg/apache/tools/mail/MailPrintStream;

    return-object v0
.end method

.method getReady()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->in:Lorg/apache/tools/mail/SmtpResponseReader;

    invoke-virtual {v0}, Lorg/apache/tools/mail/SmtpResponseReader;->getResponse()Ljava/lang/String;

    move-result-object v0

    .line 388
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xdc

    aput v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/mail/MailMessage;->isResponseOK(Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 393
    return-void

    .line 390
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Didn\'t get introduction from server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isResponseOK(Ljava/lang/String;[I)Z
    .registers 9

    const/4 v0, 0x0

    .line 441
    array-length v2, p2

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_1f

    aget v3, p2, v1

    .line 442
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 443
    const/4 v0, 0x1

    .line 446
    :cond_1f
    return v0

    .line 441
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public synthetic lambda$flushHeaders$0$MailMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 322
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->out:Lorg/apache/tools/mail/MailPrintStream;

    const-string v1, "%s: %s%n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/mail/MailPrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public replyto(Ljava/lang/String;)V
    .registers 3

    .line 207
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->replyto:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method send(Ljava/lang/String;[I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->out:Lorg/apache/tools/mail/MailPrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/mail/MailPrintStream;->rawPrint(Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->in:Lorg/apache/tools/mail/SmtpResponseReader;

    invoke-virtual {v0}, Lorg/apache/tools/mail/SmtpResponseReader;->getResponse()Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-virtual {p0, v0, p2}, Lorg/apache/tools/mail/MailMessage;->isResponseOK(Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 437
    return-void

    .line 434
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected reply to command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendAndClose()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/mail/MailMessage;->sendDot()V

    .line 336
    invoke-virtual {p0}, Lorg/apache/tools/mail/MailMessage;->sendQuit()V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_a

    .line 338
    invoke-virtual {p0}, Lorg/apache/tools/mail/MailMessage;->disconnect()V

    .line 339
    return-void

    .line 338
    :catchall_a
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/tools/mail/MailMessage;->disconnect()V

    .line 339
    throw v0
.end method

.method sendData()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    const-string v0, "DATA"

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x162

    aput v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/mail/MailMessage;->send(Ljava/lang/String;[I)V

    .line 414
    return-void
.end method

.method sendDot()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    const-string v0, "\r\n."

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xfa

    aput v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/mail/MailMessage;->send(Ljava/lang/String;[I)V

    .line 419
    return-void
.end method

.method sendFrom(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MAIL FROM: <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/apache/tools/mail/MailMessage;->sanitizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xfa

    aput v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/mail/MailMessage;->send(Ljava/lang/String;[I)V

    .line 404
    return-void
.end method

.method sendHelo()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HELO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xfa

    aput v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/mail/MailMessage;->send(Ljava/lang/String;[I)V

    .line 399
    return-void
.end method

.method sendQuit()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    :try_start_0
    const-string v0, "QUIT"

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xdd

    aput v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/mail/MailMessage;->send(Ljava/lang/String;[I)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    .line 427
    return-void

    .line 425
    :catch_e
    move-exception v0

    .line 426
    new-instance v1, Lorg/apache/tools/mail/ErrorInQuitException;

    invoke-direct {v1, v0}, Lorg/apache/tools/mail/ErrorInQuitException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method sendRcpt(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RCPT TO: <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/apache/tools/mail/MailMessage;->sanitizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_24

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/mail/MailMessage;->send(Ljava/lang/String;[I)V

    .line 409
    return-void

    .line 407
    :array_24
    .array-data 4
        0xfa
        0xfb
    .end array-data
.end method

.method setCcHeader()V
    .registers 3

    .line 308
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->cc:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 309
    const-string v0, "Cc"

    iget-object v1, p0, Lorg/apache/tools/mail/MailMessage;->cc:Ljava/util/Vector;

    invoke-virtual {p0, v1}, Lorg/apache/tools/mail/MailMessage;->vectorToList(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/mail/MailMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_13
    return-void
.end method

.method setFromHeader()V
    .registers 3

    .line 291
    const-string v0, "From"

    iget-object v1, p0, Lorg/apache/tools/mail/MailMessage;->from:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/mail/MailMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 263
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    return-void
.end method

.method public setPort(I)V
    .registers 2

    .line 185
    iput p1, p0, Lorg/apache/tools/mail/MailMessage;->port:I

    .line 186
    return-void
.end method

.method setReplyToHeader()V
    .registers 3

    .line 296
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->replyto:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 297
    const-string v0, "Reply-To"

    iget-object v1, p0, Lorg/apache/tools/mail/MailMessage;->replyto:Ljava/util/Vector;

    invoke-virtual {p0, v1}, Lorg/apache/tools/mail/MailMessage;->vectorToList(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/mail/MailMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_13
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .registers 3

    .line 252
    const-string v0, "Subject"

    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/mail/MailMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method setToHeader()V
    .registers 3

    .line 302
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->to:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 303
    const-string v0, "To"

    iget-object v1, p0, Lorg/apache/tools/mail/MailMessage;->to:Ljava/util/Vector;

    invoke-virtual {p0, v1}, Lorg/apache/tools/mail/MailMessage;->vectorToList(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/mail/MailMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_13
    return-void
.end method

.method public to(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-virtual {p0, p1}, Lorg/apache/tools/mail/MailMessage;->sendRcpt(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lorg/apache/tools/mail/MailMessage;->to:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 220
    return-void
.end method

.method vectorToList(Ljava/util/Vector;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 314
    const-string v0, ", "

    invoke-static {v0, p1}, Lorg/apache/tools/ant/Main$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
