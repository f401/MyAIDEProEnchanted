.class public Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;
.super Ljava/lang/Object;
.source "XMLValidateTask.java"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ValidatorErrorHandler"
.end annotation


# instance fields
.field protected currentFile:Ljava/io/File;

.field protected failed:Z

.field protected lastErrorMessage:Ljava/lang/String;

.field final this$0:Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;


# direct methods
.method protected constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;)V
    .registers 3

    const/4 v0, 0x0

    .line 577
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->this$0:Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->currentFile:Ljava/io/File;

    .line 581
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->lastErrorMessage:Ljava/lang/String;

    .line 582
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->failed:Z

    return-void
.end method

.method private doLog(Lorg/xml/sax/SAXParseException;I)V
    .registers 5

    .line 630
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->this$0:Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->getMessage(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->log(Ljava/lang/String;I)V

    .line 631
    return-void
.end method

.method private getMessage(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;
    .registers 9

    const/4 v6, -0x1

    .line 634
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v0

    .line 635
    if-eqz v0, :cond_3

    .line 637
    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->access$000()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/util/FileUtils;->fromURI(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 644
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v1

    .line 645
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v2

    .line 646
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    const-string v0, ""

    if-ne v1, v6, :cond_1

    .line 649
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 653
    :goto_2
    return-object v0

    .line 649
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ne v2, v6, :cond_2

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 653
    :cond_3
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 640
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .registers 3

    .line 613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->failed:Z

    .line 614
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->doLog(Lorg/xml/sax/SAXParseException;I)V

    .line 615
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .registers 3

    .line 605
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->failed:Z

    .line 606
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->doLog(Lorg/xml/sax/SAXParseException;I)V

    .line 607
    return-void
.end method

.method public getFailure()Z
    .registers 2

    .line 597
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->failed:Z

    return v0
.end method

.method public init(Ljava/io/File;)V
    .registers 3

    .line 589
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->currentFile:Ljava/io/File;

    .line 590
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->failed:Z

    .line 591
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .registers 3

    .line 623
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->this$0:Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;

    iget-boolean v0, v0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;->warn:Z

    if-eqz v0, :cond_0

    .line 624
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$ValidatorErrorHandler;->doLog(Lorg/xml/sax/SAXParseException;I)V

    .line 626
    :cond_0
    return-void
.end method
