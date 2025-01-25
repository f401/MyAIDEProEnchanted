.class public Lorg/apache/tools/ant/listener/MailLogger;
.super Lorg/apache/tools/ant/DefaultLogger;
.source "MailLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/listener/MailLogger$Values;
    }
.end annotation


# static fields
.field private static final DEFAULT_MIME_TYPE:Ljava/lang/String; = "text/plain"


# instance fields
.field private buffer:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 97
    invoke-direct {p0}, Lorg/apache/tools/ant/DefaultLogger;-><init>()V

    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/listener/MailLogger;->buffer:Ljava/lang/StringBuffer;

    return-void
.end method

.method private getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MailLogger."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 330
    if-nez v0, :cond_33

    .line 334
    :goto_19
    if-eqz p3, :cond_1c

    .line 338
    return-object p3

    .line 335
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing required parameter: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_33
    move-object p3, v0

    goto :goto_19
.end method

.method static synthetic lambda$buildFinished$0(Ljava/util/Map;Lorg/apache/tools/ant/Project;Ljava/util/Properties;Ljava/lang/String;)V
    .registers 5

    .line 132
    invoke-virtual {p2, p3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private sendMail(Lorg/apache/tools/ant/listener/MailLogger$Values;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    .line 349
    new-instance v0, Lorg/apache/tools/mail/MailMessage;

    invoke-virtual {p1}, Lorg/apache/tools/ant/listener/MailLogger$Values;->mailhost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/tools/ant/listener/MailLogger$Values;->port()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/mail/MailMessage;-><init>(Ljava/lang/String;I)V

    .line 351
    const-string v1, "Date"

    invoke-static {}, Lorg/apache/tools/ant/util/DateUtils;->getDateForHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/mail/MailMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1}, Lorg/apache/tools/ant/listener/MailLogger$Values;->from()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/mail/MailMessage;->from(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1}, Lorg/apache/tools/ant/listener/MailLogger$Values;->replytoList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_41

    .line 355
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Lorg/apache/tools/ant/listener/MailLogger$Values;->replytoList()Ljava/lang/String;

    move-result-object v2

    const-string v3, ", "

    invoke-direct {v1, v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 357
    :goto_33
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 358
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/mail/MailMessage;->replyto(Ljava/lang/String;)V

    goto :goto_33

    .line 361
    :cond_41
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Lorg/apache/tools/ant/listener/MailLogger$Values;->toList()Ljava/lang/String;

    move-result-object v2

    const-string v3, ", "

    invoke-direct {v1, v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 362
    :goto_4c
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 363
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/mail/MailMessage;->to(Ljava/lang/String;)V

    goto :goto_4c

    .line 366
    :cond_5a
    invoke-virtual {p1}, Lorg/apache/tools/ant/listener/MailLogger$Values;->subject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/mail/MailMessage;->setSubject(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p1}, Lorg/apache/tools/ant/listener/MailLogger$Values;->charset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_89

    .line 369
    const-string v1, "Content-Type"

    invoke-virtual {p1}, Lorg/apache/tools/ant/listener/MailLogger$Values;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/mail/MailMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :goto_74
    invoke-virtual {v0}, Lorg/apache/tools/mail/MailMessage;->getPrintStream()Ljava/io/PrintStream;

    move-result-object v1

    .line 376
    invoke-virtual {p1}, Lorg/apache/tools/ant/listener/MailLogger$Values;->body()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b0

    :goto_82
    invoke-virtual {v1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0}, Lorg/apache/tools/mail/MailMessage;->sendAndClose()V

    .line 379
    return-void

    .line 371
    :cond_89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/tools/ant/listener/MailLogger$Values;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; charset=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {p1}, Lorg/apache/tools/ant/listener/MailLogger$Values;->charset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    const-string v2, "Content-Type"

    invoke-virtual {v0, v2, v1}, Lorg/apache/tools/mail/MailMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_74

    .line 376
    :cond_b0
    invoke-virtual {p1}, Lorg/apache/tools/ant/listener/MailLogger$Values;->body()Ljava/lang/String;

    move-result-object p2

    goto :goto_82
.end method

.method private sendMimeMail(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/listener/MailLogger$Values;Ljava/lang/String;)V
    .registers 8

    .line 387
    :try_start_0
    const-class v0, Lorg/apache/tools/ant/listener/MailLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 389
    const-string v1, "org.apache.tools.ant.taskdefs.email.MimeMailer"

    const-class v2, Lorg/apache/tools/ant/taskdefs/email/Mailer;

    invoke-static {v1, v0, v2}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/email/Mailer;
    :try_end_10
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_10} :catch_be

    .line 396
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->replytoList()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/listener/MailLogger;->splitEmailAddresses(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    .line 399
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->mailhost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setHost(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->port()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setPort(I)V

    .line 401
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->user()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setUser(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->password()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setPassword(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->ssl()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setSSL(Z)V

    .line 404
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->starttls()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setEnableStartTLS(Z)V

    .line 405
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->body()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_50

    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->body()Ljava/lang/String;

    move-result-object p3

    :cond_50
    new-instance v2, Lorg/apache/tools/ant/taskdefs/email/Message;

    invoke-direct {v2, p3}, Lorg/apache/tools/ant/taskdefs/email/Message;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v2, p1}, Lorg/apache/tools/ant/taskdefs/email/Message;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 408
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->mimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/email/Message;->setMimeType(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->charset()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_70

    .line 410
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->charset()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/email/Message;->setCharset(Ljava/lang/String;)V

    .line 412
    :cond_70
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setMessage(Lorg/apache/tools/ant/taskdefs/email/Message;)V

    .line 413
    new-instance v2, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->from()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setFrom(Lorg/apache/tools/ant/taskdefs/email/EmailAddress;)V

    .line 414
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setReplyToList(Ljava/util/Vector;)V

    .line 415
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->toList()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/listener/MailLogger;->splitEmailAddresses(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    .line 416
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setToList(Ljava/util/Vector;)V

    .line 417
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->toCcList()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/listener/MailLogger;->splitEmailAddresses(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    .line 418
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setCcList(Ljava/util/Vector;)V

    .line 419
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->toBccList()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/listener/MailLogger;->splitEmailAddresses(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    .line 420
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setBccList(Ljava/util/Vector;)V

    .line 421
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setFiles(Ljava/util/Vector;)V

    .line 422
    invoke-virtual {p2}, Lorg/apache/tools/ant/listener/MailLogger$Values;->subject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setSubject(Ljava/lang/String;)V

    .line 423
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setHeaders(Ljava/util/Vector;)V

    .line 424
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->send()V

    .line 425
    :goto_bd
    return-void

    .line 392
    :catch_be
    move-exception v0

    .line 393
    invoke-virtual {v0}, Lorg/apache/tools/ant/BuildException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_de

    .line 394
    :goto_c5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to initialise MIME mail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/listener/MailLogger;->log(Ljava/lang/String;)V

    goto :goto_bd

    .line 393
    :cond_de
    invoke-virtual {v0}, Lorg/apache/tools/ant/BuildException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_c5
.end method

.method private splitEmailAddresses(Ljava/lang/String;)Ljava/util/Vector;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/taskdefs/email/EmailAddress;",
            ">;"
        }
    .end annotation

    .line 428
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/listener/MailLogger$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/listener/MailLogger$$ExternalSyntheticLambda1;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/listener/MailLogger$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/listener/MailLogger$$ExternalSyntheticLambda2;

    .line 429
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 428
    return-object v0
.end method


# virtual methods
.method public buildFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 110
    invoke-super {p0, p1}, Lorg/apache/tools/ant/DefaultLogger;->buildFinished(Lorg/apache/tools/ant/BuildEvent;)V

    .line 112
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    .line 113
    invoke-virtual {v3}, Lorg/apache/tools/ant/Project;->getProperties()Ljava/util/Hashtable;

    move-result-object v4

    .line 117
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 118
    const-string v0, "MailLogger.properties.file"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    if-eqz v0, :cond_30

    .line 122
    const/4 v6, 0x0

    :try_start_1d
    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v0, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v6}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_29} :catch_1d2
    .catchall {:try_start_1d .. :try_end_29} :catchall_66

    move-result-object v0

    .line 123
    :try_start_2a
    invoke-virtual {v5, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_1d6
    .catchall {:try_start_2a .. :try_end_2d} :catchall_1d9

    .line 127
    :goto_2d
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 131
    :cond_30
    invoke-virtual {v5}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    new-instance v2, Lorg/apache/tools/ant/listener/MailLogger$$ExternalSyntheticLambda0;

    invoke-direct {v2, v4, v3, v5}, Lorg/apache/tools/ant/listener/MailLogger$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;Lorg/apache/tools/ant/Project;Ljava/util/Properties;)V

    .line 132
    invoke-interface {v0, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 134
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_44

    const/4 v0, 0x1

    move v1, v0

    .line 135
    :cond_44
    if-eqz v1, :cond_6c

    const-string v0, "success"

    .line 138
    :goto_48
    :try_start_48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".notify"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-direct {p0, v4, v2, v3}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_62} :catch_1b0

    move-result v2

    .line 141
    if-nez v2, :cond_6f

    .line 179
    :goto_65
    return-void

    .line 127
    :catchall_66
    move-exception v0

    move-object v1, v0

    :goto_68
    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 128
    throw v1

    .line 135
    :cond_6c
    const-string v0, "failure"

    goto :goto_48

    .line 144
    :cond_6f
    :try_start_6f
    new-instance v2, Lorg/apache/tools/ant/listener/MailLogger$Values;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/tools/ant/listener/MailLogger$Values;-><init>(Lorg/apache/tools/ant/listener/MailLogger$1;)V

    .line 145
    const-string v3, "mailhost"

    const-string v5, "localhost"

    invoke-direct {p0, v4, v3, v5}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/listener/MailLogger$Values;->mailhost(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v2

    .line 149
    const-string v3, "port"

    const/16 v5, 0x19

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v3, v5}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/listener/MailLogger$Values;->port(I)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v2

    .line 150
    const-string v3, "user"

    const-string v5, ""

    invoke-direct {p0, v4, v3, v5}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/listener/MailLogger$Values;->user(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v2

    .line 151
    const-string v3, "password"

    const-string v5, ""

    invoke-direct {p0, v4, v3, v5}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/listener/MailLogger$Values;->password(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v2

    .line 152
    const-string v3, "ssl"

    const-string v5, "off"

    invoke-direct {p0, v4, v3, v5}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/listener/MailLogger$Values;->ssl(Z)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v2

    .line 154
    const-string v3, "starttls.enable"

    const-string v5, "off"

    invoke-direct {p0, v4, v3, v5}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/listener/MailLogger$Values;->starttls(Z)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v2

    .line 156
    const-string v3, "from"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v3, v5}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/listener/MailLogger$Values;->from(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v2

    .line 157
    const-string v3, "replyto"

    const-string v5, ""

    invoke-direct {p0, v4, v3, v5}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/listener/MailLogger$Values;->replytoList(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".to"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    const/4 v5, 0x0

    invoke-direct {p0, v4, v3, v5}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/listener/MailLogger$Values;->toList(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".cc"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    const-string v5, ""

    invoke-direct {p0, v4, v3, v5}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/listener/MailLogger$Values;->toCcList(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".bcc"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 160
    const-string v5, ""

    invoke-direct {p0, v4, v3, v5}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/listener/MailLogger$Values;->toBccList(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v2

    .line 161
    const-string v3, "mimeType"

    const-string v5, "text/plain"

    invoke-direct {p0, v4, v3, v5}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/listener/MailLogger$Values;->mimeType(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v2

    .line 162
    const-string v3, "charset"

    const-string v5, ""

    invoke-direct {p0, v4, v3, v5}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/listener/MailLogger$Values;->charset(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".body"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 163
    const-string v5, ""

    invoke-direct {p0, v4, v3, v5}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/listener/MailLogger$Values;->body(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".subject"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_177} :catch_1b0

    move-result-object v3

    .line 166
    if-eqz v1, :cond_1bf

    const-string v0, "Build Success"

    .line 164
    :goto_17c
    :try_start_17c
    invoke-direct {p0, v4, v3, v0}, Lorg/apache/tools/ant/listener/MailLogger;->getValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/listener/MailLogger$Values;->subject(Ljava/lang/String;)Lorg/apache/tools/ant/listener/MailLogger$Values;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lorg/apache/tools/ant/listener/MailLogger$Values;->user()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c2

    .line 168
    invoke-virtual {v0}, Lorg/apache/tools/ant/listener/MailLogger$Values;->password()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c2

    .line 169
    invoke-virtual {v0}, Lorg/apache/tools/ant/listener/MailLogger$Values;->ssl()Z

    move-result v1

    if-nez v1, :cond_1c2

    invoke-virtual {v0}, Lorg/apache/tools/ant/listener/MailLogger$Values;->starttls()Z

    move-result v1

    if-nez v1, :cond_1c2

    .line 170
    iget-object v1, p0, Lorg/apache/tools/ant/listener/MailLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/listener/MailLogger;->sendMail(Lorg/apache/tools/ant/listener/MailLogger$Values;Ljava/lang/String;)V
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_1ae} :catch_1b0

    goto/16 :goto_65

    .line 175
    :catch_1b0
    move-exception v0

    .line 176
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MailLogger failed to send e-mail!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 177
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto/16 :goto_65

    .line 166
    :cond_1bf
    const-string v0, "Build Failure"

    goto :goto_17c

    .line 172
    :cond_1c2
    :try_start_1c2
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/listener/MailLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lorg/apache/tools/ant/listener/MailLogger;->sendMimeMail(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/listener/MailLogger$Values;Ljava/lang/String;)V
    :try_end_1d0
    .catch Ljava/lang/Exception; {:try_start_1c2 .. :try_end_1d0} :catch_1b0

    goto/16 :goto_65

    .line 124
    :catch_1d2
    move-exception v0

    move-object v0, v2

    goto/16 :goto_2d

    :catch_1d6
    move-exception v2

    goto/16 :goto_2d

    .line 127
    :catchall_1d9
    move-exception v1

    move-object v2, v0

    goto/16 :goto_68
.end method

.method protected log(Ljava/lang/String;)V
    .registers 4

    .line 311
    iget-object v0, p0, Lorg/apache/tools/ant/listener/MailLogger;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    return-void
.end method
