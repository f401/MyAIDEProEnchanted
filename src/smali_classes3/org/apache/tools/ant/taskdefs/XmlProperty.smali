.class public Lorg/apache/tools/ant/taskdefs/XmlProperty;
.super Lorg/apache/tools/ant/Task;
.source "XmlProperty.java"


# static fields
.field private static final ATTRIBUTES:[Ljava/lang/String;

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final ID:Ljava/lang/String; = "id"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field private static final PATH:Ljava/lang/String; = "path"

.field private static final PATHID:Ljava/lang/String; = "pathid"

.field private static final REF_ID:Ljava/lang/String; = "refid"

.field private static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field private addedAttributes:Ljava/util/Map;
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

.field private collapseAttributes:Z

.field private delimiter:Ljava/lang/String;

.field private includeSemanticAttribute:Z

.field private keepRoot:Z

.field private prefix:Ljava/lang/String;

.field private rootDirectory:Ljava/io/File;

.field private semanticAttributes:Z

.field private src:Lorg/apache/tools/ant/types/Resource;

.field private validate:Z

.field private xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 187
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "refid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "value"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "path"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pathid"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->ATTRIBUTES:[Ljava/lang/String;

    .line 191
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 180
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 194
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->prefix:Ljava/lang/String;

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->keepRoot:Z

    .line 196
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->validate:Z

    .line 197
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->collapseAttributes:Z

    .line 198
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->semanticAttributes:Z

    .line 199
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->includeSemanticAttribute:Z

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->rootDirectory:Ljava/io/File;

    .line 201
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->addedAttributes:Ljava/util/Map;

    .line 202
    new-instance v0, Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/XMLCatalog;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    .line 203
    const-string v0, ","

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->delimiter:Ljava/lang/String;

    return-void
.end method

.method private addNodeRecursively(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9

    .line 291
    .line 292
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 293
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 296
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 299
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->processNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 302
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 304
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 306
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 310
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-direct {p0, v4, p2, v1}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->addNodeRecursively(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_2
    return-void
.end method

.method private addProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 461
    if-eqz p3, :cond_0

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->log(Ljava/lang/String;I)V

    .line 466
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->addedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->addedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getDelimiter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 476
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/Project;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->addedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    :goto_0
    if-eqz p3, :cond_1

    .line 485
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 487
    :cond_1
    return-void

    .line 478
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 479
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->addedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 482
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override ignored for property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private getAttributeName(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 5

    .line 497
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 499
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->semanticAttributes:Z

    if-eqz v0, :cond_3

    .line 502
    const-string v0, "refid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    const-string v0, ""

    .line 511
    :goto_0
    return-object v0

    .line 506
    :cond_0
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->isSemanticAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->includeSemanticAttribute:Z

    if-eqz v0, :cond_2

    .line 507
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 509
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 511
    :cond_3
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->collapseAttributes:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private getAttributeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 5

    .line 534
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 535
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->semanticAttributes:Z

    if-eqz v1, :cond_0

    .line 536
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 537
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 538
    const-string v2, "location"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 539
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 549
    :cond_0
    :goto_0
    return-object v0

    .line 542
    :cond_1
    const-string v2, "refid"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 544
    if-eqz v1, :cond_0

    .line 545
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static isSemanticAttribute(Ljava/lang/String;)Z
    .registers 2

    .line 518
    sget-object v0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->ATTRIBUTES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private resolveFile(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 737
    sget-object v1, Lorg/apache/tools/ant/taskdefs/XmlProperty;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->rootDirectory:Ljava/io/File;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    .line 738
    :cond_0
    invoke-virtual {v1, v0, p1}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 4

    .line 580
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 584
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->setSrcResource(Lorg/apache/tools/ant/types/Resource;)V

    .line 585
    return-void

    .line 581
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "only single argument resource collections are supported as archives"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addConfiguredXMLCatalog(Lorg/apache/tools/ant/types/XMLCatalog;)V
    .registers 3

    .line 654
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->addConfiguredXMLCatalog(Lorg/apache/tools/ant/types/XMLCatalog;)V

    .line 655
    return-void
.end method

.method addNodeRecursively(Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .registers 4

    .line 316
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->addNodeRecursively(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    return-void
.end method

.method public execute()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 229
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_5

    .line 235
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->src:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->log(Ljava/lang/String;I)V

    .line 237
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 239
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 240
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->validate:Z

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 241
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 242
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 243
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 245
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->src:Lorg/apache/tools/ant/types/Resource;

    const-class v3, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 246
    if-eqz v0, :cond_1

    .line 247
    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 251
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 257
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->addedAttributes:Ljava/util/Map;

    .line 259
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->keepRoot:Z

    if-eqz v2, :cond_2

    .line 260
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->prefix:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->addNodeRecursively(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    :cond_0
    :goto_1
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->src:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 263
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    move v0, v1

    .line 264
    :goto_2
    if-ge v0, v3, :cond_0

    .line 265
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->prefix:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->addNodeRecursively(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 269
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find property resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->log(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 272
    :catch_0
    move-exception v0

    .line 275
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 276
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 278
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->src:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 282
    :catch_1
    move-exception v0

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->src:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 279
    :catch_2
    move-exception v0

    .line 281
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 232
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "XmlProperty task requires a source resource"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getCollapseAttributes()Z
    .registers 2

    .line 704
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->collapseAttributes:Z

    return v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .registers 2

    .line 761
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method protected getEntityResolver()Lorg/xml/sax/EntityResolver;
    .registers 2

    .line 218
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    return-object v0
.end method

.method protected getFile()Ljava/io/File;
    .registers 3

    .line 663
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->src:Lorg/apache/tools/ant/types/Resource;

    const-class v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 664
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getIncludeSemanticAttribute()Z
    .registers 2

    .line 729
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->includeSemanticAttribute:Z

    return v0
.end method

.method protected getIncludeSementicAttribute()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 723
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getIncludeSemanticAttribute()Z

    move-result v0

    return v0
.end method

.method protected getKeeproot()Z
    .registers 2

    .line 690
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->keepRoot:Z

    return v0
.end method

.method protected getPrefix()Ljava/lang/String;
    .registers 2

    .line 683
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method protected getResource()Lorg/apache/tools/ant/types/Resource;
    .registers 4

    .line 673
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getFile()Ljava/io/File;

    move-result-object v1

    .line 674
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->src:Lorg/apache/tools/ant/types/Resource;

    const-class v2, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 675
    if-nez v1, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->src:Lorg/apache/tools/ant/types/Resource;

    :goto_0
    return-object v0

    .line 676
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->src:Lorg/apache/tools/ant/types/Resource;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    goto :goto_0
.end method

.method protected getRootDirectory()Ljava/io/File;
    .registers 2

    .line 718
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->rootDirectory:Ljava/io/File;

    return-object v0
.end method

.method protected getSemanticAttributes()Z
    .registers 2

    .line 711
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->semanticAttributes:Z

    return v0
.end method

.method protected getValidate()Z
    .registers 2

    .line 697
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->validate:Z

    return v0
.end method

.method public init()V
    .registers 3

    .line 210
    invoke-super {p0}, Lorg/apache/tools/ant/Task;->init()V

    .line 211
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/XMLCatalog;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 212
    return-void
.end method

.method public processNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    .line 340
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 343
    const/4 v1, 0x0

    .line 345
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 347
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 350
    const-string v0, "id"

    invoke-interface {v4, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 351
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->semanticAttributes:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 354
    :goto_0
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    if-ge v3, v0, :cond_a

    .line 356
    invoke-interface {v4, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 358
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->semanticAttributes:Z

    if-nez v0, :cond_1

    .line 359
    invoke-direct {p0, v5}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getAttributeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-direct {p0, v5}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getAttributeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 361
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-direct {p0, v0, v5, v6}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->addProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 354
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move-object v2, v0

    goto :goto_1

    .line 351
    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    .line 363
    :cond_1
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 364
    invoke-direct {p0, v5}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getAttributeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    .line 366
    instance-of v0, p3, Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_2

    move-object v0, p3

    .line 367
    check-cast v0, Lorg/apache/tools/ant/types/Path;

    .line 374
    :goto_3
    const-string v8, "id"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v0, v2

    .line 376
    goto :goto_2

    .line 367
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 378
    :cond_3
    if-eqz v0, :cond_4

    const-string v8, "path"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 380
    invoke-virtual {v0, v7}, Lorg/apache/tools/ant/types/Path;->setPath(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_2

    .line 381
    :cond_4
    if-eqz v0, :cond_5

    instance-of v8, p3, Lorg/apache/tools/ant/types/Path;

    if-eqz v8, :cond_5

    .line 382
    const-string v8, "refid"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 384
    invoke-virtual {v0, v7}, Lorg/apache/tools/ant/types/Path;->setPath(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_2

    .line 385
    :cond_5
    if-eqz v0, :cond_6

    instance-of v8, p3, Lorg/apache/tools/ant/types/Path;

    if-eqz v8, :cond_6

    .line 386
    const-string v8, "location"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 389
    invoke-direct {p0, v7}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/tools/ant/types/Path;->setLocation(Ljava/io/File;)V

    move-object v0, v2

    goto :goto_2

    .line 390
    :cond_6
    const-string v0, "pathid"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 392
    if-nez p3, :cond_7

    .line 395
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 396
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v2, v7, v0}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 393
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "XmlProperty does not support nested paths"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_8
    invoke-direct {p0, v5}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getAttributeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 400
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v7, v1}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->addProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_2

    :cond_9
    move-object v2, v0

    .line 405
    :cond_a
    const/4 v3, 0x0

    .line 406
    const/4 v4, 0x0

    .line 407
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_e

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->semanticAttributes:Z

    if-eqz v0, :cond_e

    .line 409
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 410
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v5, "value"

    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_b

    .line 411
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v5, "location"

    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_b

    .line 412
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v5, "refid"

    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_b

    .line 413
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v5, "path"

    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 414
    const-string v5, "pathid"

    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_e

    :cond_b
    const/4 v0, 0x1

    .line 415
    :goto_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_f

    .line 417
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getAttributeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 439
    :goto_5
    if-eqz v0, :cond_13

    .line 441
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->semanticAttributes:Z

    if-eqz v3, :cond_c

    if-nez v1, :cond_c

    instance-of v3, p3, Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 442
    check-cast p3, Ljava/lang/String;

    move-object v1, p3

    .line 444
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz v4, :cond_13

    .line 445
    :cond_d
    invoke-direct {p0, p2, v0, v1}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->addProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 452
    :goto_6
    if-eqz v2, :cond_12

    :goto_7
    return-object v2

    .line 414
    :cond_e
    const/4 v0, 0x0

    goto :goto_4

    .line 418
    :cond_f
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_10

    .line 419
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_10

    .line 420
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_10

    .line 422
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 423
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_15

    if-nez v0, :cond_15

    .line 424
    const/4 v4, 0x1

    move-object v0, v3

    goto :goto_5

    .line 426
    :cond_10
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_11

    .line 427
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-nez v5, :cond_11

    if-nez v0, :cond_11

    .line 429
    const-string v0, ""

    .line 430
    const/4 v3, 0x1

    move v4, v3

    goto :goto_5

    .line 431
    :cond_11
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_14

    .line 432
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_14

    .line 433
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_14

    .line 434
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_14

    if-nez v0, :cond_14

    .line 436
    const-string v0, ""

    .line 437
    const/4 v3, 0x1

    move v4, v3

    goto/16 :goto_5

    :cond_12
    move-object v2, v0

    goto :goto_7

    :cond_13
    move-object v0, v1

    goto/16 :goto_6

    :cond_14
    move-object v0, v3

    goto/16 :goto_5

    :cond_15
    move-object v0, v3

    goto/16 :goto_5
.end method

.method public setCollapseAttributes(Z)V
    .registers 2

    .line 619
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->collapseAttributes:Z

    .line 620
    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .registers 2

    .line 770
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->delimiter:Ljava/lang/String;

    .line 771
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .registers 3

    .line 557
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->setSrcResource(Lorg/apache/tools/ant/types/Resource;)V

    .line 558
    return-void
.end method

.method public setIncludeSemanticAttribute(Z)V
    .registers 2

    .line 646
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->includeSemanticAttribute:Z

    .line 647
    return-void
.end method

.method public setKeeproot(Z)V
    .registers 2

    .line 602
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->keepRoot:Z

    .line 603
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 3

    .line 592
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->prefix:Ljava/lang/String;

    .line 593
    return-void
.end method

.method public setRootDirectory(Ljava/io/File;)V
    .registers 2

    .line 636
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->rootDirectory:Ljava/io/File;

    .line 637
    return-void
.end method

.method public setSemanticAttributes(Z)V
    .registers 2

    .line 627
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->semanticAttributes:Z

    .line 628
    return-void
.end method

.method public setSrcResource(Lorg/apache/tools/ant/types/Resource;)V
    .registers 4

    .line 565
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 568
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->supportsNonFileResources()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->src:Lorg/apache/tools/ant/types/Resource;

    .line 573
    return-void

    .line 571
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only FileSystem resources are supported."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "the source can\'t be a directory"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValidate(Z)V
    .registers 2

    .line 610
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->validate:Z

    .line 611
    return-void
.end method

.method protected supportsNonFileResources()Z
    .registers 3

    .line 753
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/taskdefs/XmlProperty;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
