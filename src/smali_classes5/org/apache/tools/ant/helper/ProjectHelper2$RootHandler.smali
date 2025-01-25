.class public Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ProjectHelper2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/helper/ProjectHelper2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RootHandler"
.end annotation


# instance fields
.field private antHandlers:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;",
            ">;"
        }
    .end annotation
.end field

.field private context:Lorg/apache/tools/ant/helper/AntXMLContext;

.field private currentHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/helper/AntXMLContext;Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;)V
    .registers 5

    .line 499
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 489
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->antHandlers:Ljava/util/Stack;

    .line 490
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->currentHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    .line 500
    iput-object p2, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->currentHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    .line 501
    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iput-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    .line 503
    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;)Lorg/apache/tools/ant/helper/AntXMLContext;
    .registers 2

    .line 488
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    return-object v0
.end method


# virtual methods
.method public characters([CII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 619
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->currentHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;->characters([CIILorg/apache/tools/ant/helper/AntXMLContext;)V

    .line 620
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 602
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->currentHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;->onEndElement(Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/helper/AntXMLContext;)V

    .line 603
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->antHandlers:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    iput-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->currentHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    .line 604
    if-eqz v0, :cond_18

    .line 605
    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;->onEndChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/helper/AntXMLContext;)V

    .line 607
    :cond_18
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .registers 3

    .line 640
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/helper/AntXMLContext;->endPrefixMapping(Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method public getCurrentAntHandler()Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
    .registers 2

    .line 510
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->currentHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    return-object v0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .registers 11

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 526
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-virtual {v0}, Lorg/apache/tools/ant/helper/AntXMLContext;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolving systemId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 528
    const-string v0, "file:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 529
    invoke-static {}, Lorg/apache/tools/ant/helper/ProjectHelper2;->access$100()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/util/FileUtils;->fromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 531
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v2

    if-nez v2, :cond_83

    .line 533
    invoke-static {}, Lorg/apache/tools/ant/helper/ProjectHelper2;->access$100()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-virtual {v2}, Lorg/apache/tools/ant/helper/AntXMLContext;->getBuildFileParent()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 534
    iget-object v2, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-virtual {v2}, Lorg/apache/tools/ant/helper/AntXMLContext;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    .line 535
    invoke-virtual {v4}, Lorg/apache/tools/ant/helper/AntXMLContext;->getBuildFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " should be expressed simply as \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    const/16 v4, 0x5c

    const/16 v5, 0x2f

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' for compliance with other XML tools"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 534
    invoke-virtual {v2, v1, v6}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 539
    :cond_83
    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-virtual {v1}, Lorg/apache/tools/ant/helper/AntXMLContext;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 541
    :try_start_9d
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 542
    invoke-static {}, Lorg/apache/tools/ant/helper/ProjectHelper2;->access$100()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/util/FileUtils;->toURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_bc} :catch_be

    move-object v0, v1

    .line 552
    :goto_bd
    return-object v0

    .line 544
    :catch_be
    move-exception v1

    .line 545
    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-virtual {v1}, Lorg/apache/tools/ant/helper/AntXMLContext;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " could not be found"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 551
    :cond_dd
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-virtual {v0}, Lorg/apache/tools/ant/helper/AntXMLContext;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "could not resolve systemId"

    invoke-virtual {v0, v1, v7}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 552
    const/4 v0, 0x0

    goto :goto_bd
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 3

    .line 586
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/helper/AntXMLContext;->setLocator(Lorg/xml/sax/Locator;)V

    .line 587
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 572
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->currentHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    iget-object v5, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;->onStartChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/tools/ant/helper/AntXMLContext;)Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    move-result-object v0

    .line 573
    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->antHandlers:Ljava/util/Stack;

    iget-object v2, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->currentHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    iput-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->currentHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    .line 575
    iget-object v5, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;->onStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/tools/ant/helper/AntXMLContext;)V

    .line 576
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 630
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/helper/AntXMLContext;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    return-void
.end method
