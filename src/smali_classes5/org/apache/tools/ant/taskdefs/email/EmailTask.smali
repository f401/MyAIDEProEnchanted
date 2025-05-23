.class public Lorg/apache/tools/ant/taskdefs/email/EmailTask;
.super Lorg/apache/tools/ant/Task;
.source "EmailTask.java"


# static fields
.field public static final AUTO:Ljava/lang/String; = "auto"

.field public static final MIME:Ljava/lang/String; = "mime"

.field public static final PLAIN:Ljava/lang/String; = "plain"

.field private static final SMTP_PORT:I = 0x19

.field public static final UU:Ljava/lang/String; = "uu"


# instance fields
.field private attachments:Lorg/apache/tools/ant/types/Path;

.field private bccList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/taskdefs/email/EmailAddress;",
            ">;"
        }
    .end annotation
.end field

.field private ccList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/taskdefs/email/EmailAddress;",
            ">;"
        }
    .end annotation
.end field

.field private charset:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private failOnError:Z

.field private from:Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

.field private headers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/taskdefs/email/Header;",
            ">;"
        }
    .end annotation
.end field

.field private host:Ljava/lang/String;

.field private ignoreInvalidRecipients:Z

.field private includeFileNames:Z

.field private message:Lorg/apache/tools/ant/taskdefs/email/Message;

.field private messageFileInputEncoding:Ljava/lang/String;

.field private messageMimeType:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private port:Ljava/lang/Integer;

.field private replyToList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/taskdefs/email/EmailAddress;",
            ">;"
        }
    .end annotation
.end field

.field private ssl:Z

.field private starttls:Z

.field private subject:Ljava/lang/String;

.field private toList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/taskdefs/email/EmailAddress;",
            ">;"
        }
    .end annotation
.end field

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 68
    const-string v0, "auto"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->encoding:Ljava/lang/String;

    .line 70
    const-string v0, "localhost"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->host:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->port:Ljava/lang/Integer;

    .line 73
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->subject:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->failOnError:Z

    .line 78
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->includeFileNames:Z

    .line 79
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->messageMimeType:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->from:Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    .line 85
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->replyToList:Ljava/util/Vector;

    .line 87
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->toList:Ljava/util/Vector;

    .line 89
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->ccList:Ljava/util/Vector;

    .line 91
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->bccList:Ljava/util/Vector;

    .line 94
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->headers:Ljava/util/Vector;

    .line 97
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->attachments:Lorg/apache/tools/ant/types/Path;

    .line 99
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->charset:Ljava/lang/String;

    .line 101
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->user:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->password:Ljava/lang/String;

    .line 105
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->ssl:Z

    .line 107
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->starttls:Z

    .line 110
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->ignoreInvalidRecipients:Z

    return-void
.end method

.method private logBuildException(Ljava/lang/String;Lorg/apache/tools/ant/BuildException;)V
    .registers 5

    .line 604
    invoke-virtual {p2}, Lorg/apache/tools/ant/BuildException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 605
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->log(Ljava/lang/String;I)V

    .line 606
    return-void

    .line 604
    :cond_1e
    invoke-virtual {p2}, Lorg/apache/tools/ant/BuildException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_6
.end method


# virtual methods
.method public addBcc(Lorg/apache/tools/ant/taskdefs/email/EmailAddress;)V
    .registers 3

    .line 335
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->bccList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 336
    return-void
.end method

.method public addCc(Lorg/apache/tools/ant/taskdefs/email/EmailAddress;)V
    .registers 3

    .line 313
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->ccList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 314
    return-void
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 3

    .line 380
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->createAttachments()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 381
    return-void
.end method

.method public addFrom(Lorg/apache/tools/ant/taskdefs/email/EmailAddress;)V
    .registers 4

    .line 247
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->from:Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    if-nez v0, :cond_7

    .line 250
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->from:Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    .line 251
    return-void

    .line 248
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Emails can only be from one address"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addMessage(Lorg/apache/tools/ant/taskdefs/email/Message;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    if-nez v0, :cond_7

    .line 238
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    .line 239
    return-void

    .line 235
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one message can be sent in an email"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addReplyTo(Lorg/apache/tools/ant/taskdefs/email/EmailAddress;)V
    .registers 3

    .line 272
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->replyToList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 273
    return-void
.end method

.method public addTo(Lorg/apache/tools/ant/taskdefs/email/EmailAddress;)V
    .registers 3

    .line 291
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->toList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 292
    return-void
.end method

.method public createAttachments()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 390
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->attachments:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_f

    .line 391
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->attachments:Lorg/apache/tools/ant/types/Path;

    .line 393
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->attachments:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createHeader()Lorg/apache/tools/ant/taskdefs/email/Header;
    .registers 3

    .line 401
    new-instance v0, Lorg/apache/tools/ant/taskdefs/email/Header;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/email/Header;-><init>()V

    .line 402
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->headers:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 403
    return-object v0
.end method

.method public execute()V
    .registers 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 444
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    .line 452
    :try_start_5
    const-string v0, "mime"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->encoding:Ljava/lang/String;

    .line 453
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_16
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_5 .. :try_end_16} :catch_152
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_16} :catch_168
    .catchall {:try_start_5 .. :try_end_16} :catchall_18c

    move-result v0

    if-eqz v0, :cond_3b

    .line 457
    :cond_19
    :try_start_19
    const-string v0, "javax.activation.DataHandler"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 458
    const-string v0, "javax.mail.internet.MimeMessage"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 460
    const-class v0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "org.apache.tools.ant.taskdefs.email.MimeMailer"

    const-class v6, Lorg/apache/tools/ant/taskdefs/email/Mailer;

    invoke-static {v1, v0, v6}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/email/Mailer;
    :try_end_33
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_19 .. :try_end_33} :catch_15f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_33} :catch_168
    .catchall {:try_start_19 .. :try_end_33} :catchall_18c

    .line 465
    :try_start_33
    const-string v1, "Using MIME mail"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->log(Ljava/lang/String;I)V
    :try_end_39
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_33 .. :try_end_39} :catch_301
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_39} :catch_168
    .catchall {:try_start_33 .. :try_end_39} :catchall_18c

    move-object v2, v0

    move v3, v4

    .line 471
    :cond_3b
    :goto_3b
    if-nez v3, :cond_59

    :try_start_3d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->user:Ljava/lang/String;

    if-nez v0, :cond_45

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->password:Ljava/lang/String;

    if-eqz v0, :cond_59

    :cond_45
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->encoding:Ljava/lang/String;

    .line 472
    const-string v1, "uu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_190

    const-string v0, "plain"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_190

    .line 476
    :cond_59
    if-nez v3, :cond_77

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->ssl:Z

    if-nez v0, :cond_63

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->starttls:Z

    if-eqz v0, :cond_77

    :cond_63
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->encoding:Ljava/lang/String;

    .line 477
    const-string v1, "uu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_198

    const-string v0, "plain"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_198

    .line 482
    :cond_77
    const-string v0, "uu"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->encoding:Ljava/lang/String;

    .line 483
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_88
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_3d .. :try_end_88} :catch_152
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_88} :catch_168
    .catchall {:try_start_3d .. :try_end_88} :catchall_18c

    move-result v0

    if-eqz v0, :cond_1a7

    if-nez v3, :cond_1a7

    .line 485
    :cond_8d
    :try_start_8d
    const-class v0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "org.apache.tools.ant.taskdefs.email.UUMailer"

    const-class v6, Lorg/apache/tools/ant/taskdefs/email/Mailer;

    invoke-static {v1, v0, v6}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/email/Mailer;
    :try_end_9d
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_8d .. :try_end_9d} :catch_1a0
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_9d} :catch_168
    .catchall {:try_start_8d .. :try_end_9d} :catchall_18c

    .line 489
    :try_start_9d
    const-string v1, "Using UU mail"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->log(Ljava/lang/String;I)V
    :try_end_a3
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_9d .. :try_end_a3} :catch_2fc
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a3} :catch_168
    .catchall {:try_start_9d .. :try_end_a3} :catchall_18c

    move v3, v4

    .line 495
    :goto_a4
    :try_start_a4
    const-string v1, "plain"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ba

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->encoding:Ljava/lang/String;

    .line 496
    const-string v2, "auto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_306

    if-nez v3, :cond_306

    .line 497
    :cond_ba
    new-instance v0, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/email/PlainMailer;-><init>()V

    .line 498
    const-string v1, "Using plain mail"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->log(Ljava/lang/String;I)V

    move-object v1, v0

    .line 502
    :goto_c6
    if-eqz v1, :cond_2eb

    .line 507
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    if-nez v0, :cond_da

    .line 508
    new-instance v0, Lorg/apache/tools/ant/taskdefs/email/Message;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/email/Message;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    .line 509
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/email/Message;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 512
    :cond_da
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->from:Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    if-eqz v0, :cond_2e3

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e3

    .line 516
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->toList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_fc

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->ccList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_fc

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->bccList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1aa

    .line 521
    :cond_fc
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->messageMimeType:Ljava/lang/String;

    if-eqz v0, :cond_10f

    .line 522
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/email/Message;->isMimeTypeSpecified()Z

    move-result v0

    if-nez v0, :cond_1b2

    .line 526
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->messageMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/email/Message;->setMimeType(Ljava/lang/String;)V

    .line 529
    :cond_10f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->charset:Ljava/lang/String;

    if-eqz v0, :cond_122

    .line 530
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/email/Message;->getCharset()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1ba

    .line 534
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->charset:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/email/Message;->setCharset(Ljava/lang/String;)V

    .line 536
    :cond_122
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->messageFileInputEncoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/email/Message;->setInputEncoding(Ljava/lang/String;)V

    .line 539
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 541
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->attachments:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_1c2

    .line 542
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_136
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 543
    const-class v6, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v6}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_151
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_a4 .. :try_end_151} :catch_152
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_151} :catch_168
    .catchall {:try_start_a4 .. :try_end_151} :catchall_18c

    goto :goto_136

    .line 588
    :catch_152
    move-exception v0

    .line 589
    :try_start_153
    const-string v1, "Failed to send email: "

    invoke-direct {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->logBuildException(Ljava/lang/String;Lorg/apache/tools/ant/BuildException;)V

    .line 590
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->failOnError:Z
    :try_end_15a
    .catchall {:try_start_153 .. :try_end_15a} :catchall_18c

    if-nez v1, :cond_2fb

    .line 599
    :cond_15c
    :goto_15c
    iput-object v5, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    .line 600
    return-void

    .line 466
    :catch_15f
    move-exception v0

    move-object v1, v0

    .line 467
    :goto_161
    :try_start_161
    const-string v0, "Failed to initialise MIME mail: "

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->logBuildException(Ljava/lang/String;Lorg/apache/tools/ant/BuildException;)V
    :try_end_166
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_161 .. :try_end_166} :catch_152
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_166} :catch_168
    .catchall {:try_start_161 .. :try_end_166} :catchall_18c

    goto/16 :goto_3b

    .line 593
    :catch_168
    move-exception v0

    .line 594
    :try_start_169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send email: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->log(Ljava/lang/String;I)V

    .line 595
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->failOnError:Z

    if-eqz v1, :cond_15c

    .line 596
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_18c
    .catchall {:try_start_169 .. :try_end_18c} :catchall_18c

    .line 599
    :catchall_18c
    move-exception v0

    iput-object v5, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    .line 600
    throw v0

    .line 473
    :cond_190
    :try_start_190
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "SMTP auth only possible with MIME mail"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_198
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "SSL and STARTTLS only possible with MIME mail"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :catch_1a0
    move-exception v0

    move-object v1, v0

    .line 491
    :goto_1a2
    const-string v0, "Failed to initialise UU mail: "

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->logBuildException(Ljava/lang/String;Lorg/apache/tools/ant/BuildException;)V

    :cond_1a7
    move-object v0, v2

    goto/16 :goto_a4

    .line 517
    :cond_1aa
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "At least one of to, cc or bcc must be supplied"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_1b2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The mime type can only be specified in one location"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_1ba
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The charset can only be specified in one location"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_1c2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending email: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->subject:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->log(Ljava/lang/String;I)V

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "From "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->from:Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->log(Ljava/lang/String;I)V

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReplyTo "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->replyToList:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->log(Ljava/lang/String;I)V

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "To "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->toList:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->log(Ljava/lang/String;I)V

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cc "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->ccList:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->log(Ljava/lang/String;I)V

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bcc "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->bccList:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->log(Ljava/lang/String;I)V

    .line 555
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->host:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setHost(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->port:Ljava/lang/Integer;

    if-eqz v0, :cond_2d6

    .line 557
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setPort(I)V

    .line 558
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setPortExplicitlySpecified(Z)V

    .line 563
    :goto_260
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->user:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setUser(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->password:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setPassword(Ljava/lang/String;)V

    .line 565
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->ssl:Z

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setSSL(Z)V

    .line 566
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->starttls:Z

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setEnableStartTLS(Z)V

    .line 567
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setMessage(Lorg/apache/tools/ant/taskdefs/email/Message;)V

    .line 568
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->from:Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setFrom(Lorg/apache/tools/ant/taskdefs/email/EmailAddress;)V

    .line 569
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->replyToList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setReplyToList(Ljava/util/Vector;)V

    .line 570
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->toList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setToList(Ljava/util/Vector;)V

    .line 571
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->ccList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setCcList(Ljava/util/Vector;)V

    .line 572
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->bccList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setBccList(Ljava/util/Vector;)V

    .line 573
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setFiles(Ljava/util/Vector;)V

    .line 574
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->subject:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setSubject(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v1, p0}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setTask(Lorg/apache/tools/ant/Task;)V

    .line 576
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->includeFileNames:Z

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setIncludeFileNames(Z)V

    .line 577
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->headers:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setHeaders(Ljava/util/Vector;)V

    .line 578
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->ignoreInvalidRecipients:Z

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setIgnoreInvalidRecipients(Z)V

    .line 581
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->send()V

    .line 584
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sent email with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " attachment"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2c5
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_190 .. :try_end_2c5} :catch_152
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_2c5} :catch_168
    .catchall {:try_start_190 .. :try_end_2c5} :catchall_18c

    .line 587
    if-ne v0, v4, :cond_2e0

    const-string v0, ""

    :goto_2c9
    :try_start_2c9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 586
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->log(Ljava/lang/String;I)V

    goto/16 :goto_15c

    .line 560
    :cond_2d6
    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setPort(I)V

    .line 561
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/email/Mailer;->setPortExplicitlySpecified(Z)V
    :try_end_2df
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_2c9 .. :try_end_2df} :catch_152
    .catch Ljava/lang/Exception; {:try_start_2c9 .. :try_end_2df} :catch_168
    .catchall {:try_start_2c9 .. :try_end_2df} :catchall_18c

    goto :goto_260

    .line 587
    :cond_2e0
    const-string v0, "s"

    goto :goto_2c9

    .line 513
    :cond_2e3
    :try_start_2e3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "A from element is required"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_2eb
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Failed to initialise encoding: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->encoding:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_2fb
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_2e3 .. :try_end_2fb} :catch_152
    .catch Ljava/lang/Exception; {:try_start_2e3 .. :try_end_2fb} :catch_168
    .catchall {:try_start_2e3 .. :try_end_2fb} :catchall_18c

    .line 591
    :cond_2fb
    :try_start_2fb
    throw v0
    :try_end_2fc
    .catchall {:try_start_2fb .. :try_end_2fc} :catchall_18c

    .line 490
    :catch_2fc
    move-exception v1

    move-object v2, v0

    move v3, v4

    goto/16 :goto_1a2

    .line 466
    :catch_301
    move-exception v1

    move-object v2, v0

    move v3, v4

    goto/16 :goto_161

    :cond_306
    move-object v1, v0

    goto/16 :goto_c6
.end method

.method public getCharset()Ljava/lang/String;
    .registers 2

    .line 626
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getIncludeFileNames()Z
    .registers 2

    .line 422
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->includeFileNames:Z

    return v0
.end method

.method public setBccList(Ljava/lang/String;)V
    .registers 6

    .line 344
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :goto_7
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 347
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->bccList:Ljava/util/Vector;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 349
    :cond_1c
    return-void
.end method

.method public setCcList(Ljava/lang/String;)V
    .registers 6

    .line 322
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :goto_7
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 325
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->ccList:Ljava/util/Vector;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 327
    :cond_1c
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .registers 2

    .line 616
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->charset:Ljava/lang/String;

    .line 617
    return-void
.end method

.method public setEnableStartTLS(Z)V
    .registers 2

    .line 150
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->starttls:Z

    .line 151
    return-void
.end method

.method public setEncoding(Lorg/apache/tools/ant/taskdefs/email/EmailTask$Encoding;)V
    .registers 3

    .line 159
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/email/EmailTask$Encoding;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->encoding:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setFailOnError(Z)V
    .registers 2

    .line 357
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->failOnError:Z

    .line 358
    return-void
.end method

.method public setFiles(Ljava/lang/String;)V
    .registers 7

    .line 366
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ", "

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :goto_7
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 369
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->createAttachments()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    .line 370
    new-instance v2, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Path;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    goto :goto_7

    .line 372
    :cond_26
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .registers 4

    .line 259
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->from:Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    if-nez v0, :cond_c

    .line 262
    new-instance v0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->from:Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    .line 263
    return-void

    .line 260
    :cond_c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Emails can only be from one address"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIgnoreInvalidRecipients(Z)V
    .registers 2

    .line 436
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->ignoreInvalidRecipients:Z

    .line 437
    return-void
.end method

.method public setIncludefilenames(Z)V
    .registers 2

    .line 413
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->includeFileNames:Z

    .line 414
    return-void
.end method

.method public setMailhost(Ljava/lang/String;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->host:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setMailport(I)V
    .registers 3

    .line 168
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->port:Ljava/lang/Integer;

    .line 169
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 4

    .line 195
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    if-nez v0, :cond_13

    .line 199
    new-instance v0, Lorg/apache/tools/ant/taskdefs/email/Message;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/taskdefs/email/Message;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    .line 200
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/email/Message;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 201
    return-void

    .line 196
    :cond_13
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one message can be sent in an email"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMessageFile(Ljava/io/File;)V
    .registers 4

    .line 209
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    if-nez v0, :cond_13

    .line 213
    new-instance v0, Lorg/apache/tools/ant/taskdefs/email/Message;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/taskdefs/email/Message;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->message:Lorg/apache/tools/ant/taskdefs/email/Message;

    .line 214
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/email/Message;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 215
    return-void

    .line 210
    :cond_13
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one message can be sent in an email"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMessageFileInputEncoding(Ljava/lang/String;)V
    .registers 2

    .line 636
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->messageFileInputEncoding:Ljava/lang/String;

    .line 637
    return-void
.end method

.method public setMessageMimeType(Ljava/lang/String;)V
    .registers 2

    .line 224
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->messageMimeType:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->password:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setReplyTo(Ljava/lang/String;)V
    .registers 4

    .line 282
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->replyToList:Ljava/util/Vector;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 283
    return-void
.end method

.method public setSSL(Z)V
    .registers 2

    .line 139
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->ssl:Z

    .line 140
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->subject:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setToList(Ljava/lang/String;)V
    .registers 6

    .line 300
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :goto_7
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 303
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->toList:Ljava/util/Vector;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 305
    :cond_1c
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailTask;->user:Ljava/lang/String;

    .line 120
    return-void
.end method
