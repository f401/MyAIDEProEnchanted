.class public final Lorg/dom4j/DocumentHelper;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAttribute(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;
    .registers 4

    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public static createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;
    .registers 4

    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public static createCDATA(Ljava/lang/String;)Lorg/dom4j/CDATA;
    .registers 2

    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/DocumentFactory;->createCDATA(Ljava/lang/String;)Lorg/dom4j/CDATA;

    move-result-object v0

    return-object v0
.end method

.method public static createComment(Ljava/lang/String;)Lorg/dom4j/Comment;
    .registers 2

    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/DocumentFactory;->createComment(Ljava/lang/String;)Lorg/dom4j/Comment;

    move-result-object v0

    return-object v0
.end method

.method public static createDocument()Lorg/dom4j/Document;
    .registers 1

    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public static createDocument(Lorg/dom4j/Element;)Lorg/dom4j/Document;
    .registers 2

    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/DocumentFactory;->createDocument(Lorg/dom4j/Element;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public static createElement(Ljava/lang/String;)Lorg/dom4j/Element;
    .registers 2

    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method public static createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .registers 2

    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method public static createEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Entity;
    .registers 3

    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/dom4j/DocumentFactory;->createEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Entity;

    move-result-object v0

    return-object v0
.end method

.method public static createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;
    .registers 3

    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/dom4j/DocumentFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public static createPattern(Ljava/lang/String;)Lorg/dom4j/rule/Pattern;
    .registers 2

    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/DocumentFactory;->createPattern(Ljava/lang/String;)Lorg/dom4j/rule/Pattern;

    move-result-object v0

    return-object v0
.end method

.method public static createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;
    .registers 3

    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/dom4j/DocumentFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public static createProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/dom4j/ProcessingInstruction;
    .registers 3

    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/dom4j/DocumentFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public static createQName(Ljava/lang/String;)Lorg/dom4j/QName;
    .registers 2

    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public static createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;
    .registers 3

    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public static createText(Ljava/lang/String;)Lorg/dom4j/Text;
    .registers 2

    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/DocumentFactory;->createText(Ljava/lang/String;)Lorg/dom4j/Text;

    move-result-object v0

    return-object v0
.end method

.method public static createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/InvalidXPathException;
        }
    .end annotation

    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/DocumentFactory;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    return-object v0
.end method

.method public static createXPath(Ljava/lang/String;Lorg/jaxen/VariableContext;)Lorg/dom4j/XPath;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/InvalidXPathException;
        }
    .end annotation

    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/dom4j/DocumentFactory;->createXPath(Ljava/lang/String;Lorg/jaxen/VariableContext;)Lorg/dom4j/XPath;

    move-result-object v0

    return-object v0
.end method

.method public static createXPathFilter(Ljava/lang/String;)Lorg/dom4j/NodeFilter;
    .registers 2

    invoke-static {}, Lorg/dom4j/DocumentHelper;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/DocumentFactory;->createXPathFilter(Ljava/lang/String;)Lorg/dom4j/NodeFilter;

    move-result-object v0

    return-object v0
.end method

.method private static getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .registers 1

    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    return-object v0
.end method

.method private static getEncoding(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<?xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    new-instance v2, Ljava/util/StringTokenizer;

    const/4 v3, 0x0

    const-string v4, "?>"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, " =\"\'"

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string v1, "encoding"

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    :cond_3b
    return-object v0
.end method

.method public static makeElement(Lorg/dom4j/Branch;Ljava/lang/String;)Lorg/dom4j/Element;
    .registers 5

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v0, "/"

    invoke-direct {v2, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p0, Lorg/dom4j/Document;

    if-eqz v0, :cond_40

    check-cast p0, Lorg/dom4j/Document;

    invoke-interface {p0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_49

    invoke-interface {p0, v1}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object p0

    :goto_1b
    const/4 v0, 0x0

    move-object v1, v0

    :goto_1d
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_43

    invoke-interface {p0, v1}, Lorg/dom4j/Element;->getQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/dom4j/Element;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    :goto_37
    if-nez v0, :cond_3d

    invoke-interface {p0, v1}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    :cond_3d
    move-object p0, v0

    move-object v1, v0

    goto :goto_1d

    :cond_40
    check-cast p0, Lorg/dom4j/Element;

    goto :goto_1b

    :cond_43
    invoke-interface {p0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    goto :goto_37

    :cond_48
    return-object v1

    :cond_49
    move-object p0, v0

    goto :goto_1b
.end method

.method public static parseText(Ljava/lang/String;)Lorg/dom4j/Document;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    invoke-static {p0}, Lorg/dom4j/DocumentHelper;->getEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2, v1}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/dom4j/Document;->getXMLEncoding()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_23

    invoke-interface {v0, v1}, Lorg/dom4j/Document;->setXMLEncoding(Ljava/lang/String;)V

    :cond_23
    return-object v0
.end method

.method public static selectNodes(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 3

    invoke-static {p0}, Lorg/dom4j/DocumentHelper;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/dom4j/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static selectNodes(Ljava/lang/String;Lorg/dom4j/Node;)Ljava/util/List;
    .registers 3

    invoke-static {p0}, Lorg/dom4j/DocumentHelper;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/dom4j/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static sort(Ljava/util/List;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lorg/dom4j/DocumentHelper;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/dom4j/XPath;->sort(Ljava/util/List;)V

    return-void
.end method

.method public static sort(Ljava/util/List;Ljava/lang/String;Z)V
    .registers 4

    invoke-static {p1}, Lorg/dom4j/DocumentHelper;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lorg/dom4j/XPath;->sort(Ljava/util/List;Z)V

    return-void
.end method
