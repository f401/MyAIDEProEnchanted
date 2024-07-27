.class public Lorg/apache/tools/ant/util/XMLFragment;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "XMLFragment.java"

# interfaces
.implements Lorg/apache/tools/ant/DynamicElementNS;


# instance fields
.field private doc:Lorg/w3c/dom/Document;

.field private fragment:Lorg/w3c/dom/DocumentFragment;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    .line 50
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/XMLFragment;->doc:Lorg/w3c/dom/Document;

    .line 51
    invoke-interface {v0}, Lorg/w3c/dom/Document;->createDocumentFragment()Lorg/w3c/dom/DocumentFragment;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/XMLFragment;->fragment:Lorg/w3c/dom/DocumentFragment;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/util/XMLFragment;Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/util/XMLFragment;->addText(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/util/XMLFragment;)Lorg/w3c/dom/Document;
    .registers 2

    .line 41
    iget-object v0, p0, Lorg/apache/tools/ant/util/XMLFragment;->doc:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method private addText(Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .registers 5

    .line 95
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/XMLFragment;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lorg/apache/tools/ant/util/XMLFragment;->doc:Lorg/w3c/dom/Document;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    .line 99
    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .registers 3

    .line 67
    iget-object v0, p0, Lorg/apache/tools/ant/util/XMLFragment;->fragment:Lorg/w3c/dom/DocumentFragment;

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/util/XMLFragment;->addText(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public createDynamicElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/apache/tools/ant/util/XMLFragment;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 85
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/util/XMLFragment;->fragment:Lorg/w3c/dom/DocumentFragment;

    invoke-interface {v1, v0}, Lorg/w3c/dom/DocumentFragment;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 86
    new-instance v1, Lorg/apache/tools/ant/util/XMLFragment$Child;

    invoke-direct {v1, p0, v0}, Lorg/apache/tools/ant/util/XMLFragment$Child;-><init>(Lorg/apache/tools/ant/util/XMLFragment;Lorg/w3c/dom/Element;)V

    return-object v1

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/XMLFragment;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    goto :goto_0
.end method

.method public getFragment()Lorg/w3c/dom/DocumentFragment;
    .registers 2

    .line 59
    iget-object v0, p0, Lorg/apache/tools/ant/util/XMLFragment;->fragment:Lorg/w3c/dom/DocumentFragment;

    return-object v0
.end method
