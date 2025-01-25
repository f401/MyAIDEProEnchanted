.class public Lorg/dom4j/io/DOMWriter;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_DOM_DOCUMENT_CLASSES:[Ljava/lang/String;

.field static class$org$dom4j$io$DOMWriter:Ljava/lang/Class;

.field private static loggedWarning:Z


# instance fields
.field private domDocumentClass:Ljava/lang/Class;

.field private namespaceStack:Lorg/dom4j/tree/NamespaceStack;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    sput-boolean v2, Lorg/dom4j/io/DOMWriter;->loggedWarning:Z

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "org.apache.xerces.dom.DocumentImpl"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "gnu.xml.dom.DomDocument"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "org.apache.crimson.tree.XmlDocument"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.sun.xml.tree.XmlDocument"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "oracle.xml.parser.v2.XMLDocument"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "oracle.xml.parser.XMLDocument"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "org.dom4j.dom.DOMDocument"

    aput-object v2, v0, v1

    sput-object v0, Lorg/dom4j/io/DOMWriter;->DEFAULT_DOM_DOCUMENT_CLASSES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    iput-object p1, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .registers 5

    invoke-interface {p1, p3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/util/List;)V
    .registers 8

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_59

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lorg/dom4j/Element;

    if-eqz v3, :cond_19

    check-cast v0, Lorg/dom4j/Element;

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/Element;)V

    :cond_15
    :goto_15
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_19
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_23

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/lang/String;)V

    goto :goto_15

    :cond_23
    instance-of v3, v0, Lorg/dom4j/Text;

    if-eqz v3, :cond_31

    check-cast v0, Lorg/dom4j/Text;

    invoke-interface {v0}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/lang/String;)V

    goto :goto_15

    :cond_31
    instance-of v3, v0, Lorg/dom4j/CDATA;

    if-eqz v3, :cond_3b

    check-cast v0, Lorg/dom4j/CDATA;

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/CDATA;)V

    goto :goto_15

    :cond_3b
    instance-of v3, v0, Lorg/dom4j/Comment;

    if-eqz v3, :cond_45

    check-cast v0, Lorg/dom4j/Comment;

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/Comment;)V

    goto :goto_15

    :cond_45
    instance-of v3, v0, Lorg/dom4j/Entity;

    if-eqz v3, :cond_4f

    check-cast v0, Lorg/dom4j/Entity;

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/Entity;)V

    goto :goto_15

    :cond_4f
    instance-of v3, v0, Lorg/dom4j/ProcessingInstruction;

    if-eqz v3, :cond_15

    check-cast v0, Lorg/dom4j/ProcessingInstruction;

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/ProcessingInstruction;)V

    goto :goto_15

    :cond_59
    return-void
.end method

.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/CDATA;)V
    .registers 5

    invoke-interface {p3}, Lorg/dom4j/CDATA;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/Comment;)V
    .registers 5

    invoke-interface {p3}, Lorg/dom4j/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/Element;)V
    .registers 12

    const/4 v1, 0x0

    invoke-interface {p3}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    iget-object v0, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v4

    invoke-interface {p3}, Lorg/dom4j/Element;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/DOMWriter;->isNamespaceDeclaration(Lorg/dom4j/Namespace;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v2, v0}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    invoke-virtual {p0, v3, v0}, Lorg/dom4j/io/DOMWriter;->writeNamespace(Lorg/w3c/dom/Element;Lorg/dom4j/Namespace;)V

    :cond_25
    invoke-interface {p3}, Lorg/dom4j/Element;->declaredNamespaces()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v2, v1

    :goto_2e
    if-ge v2, v6, :cond_48

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Namespace;

    invoke-virtual {p0, v0}, Lorg/dom4j/io/DOMWriter;->isNamespaceDeclaration(Lorg/dom4j/Namespace;)Z

    move-result v7

    if-eqz v7, :cond_44

    iget-object v7, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v7, v0}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    invoke-virtual {p0, v3, v0}, Lorg/dom4j/io/DOMWriter;->writeNamespace(Lorg/w3c/dom/Element;Lorg/dom4j/Namespace;)V

    :cond_44
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2e

    :cond_48
    invoke-interface {p3}, Lorg/dom4j/Element;->attributeCount()I

    move-result v2

    move v0, v1

    :goto_4d
    if-ge v0, v2, :cond_65

    invoke-interface {p3, v0}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v1

    invoke-interface {v1}, Lorg/dom4j/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lorg/dom4j/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v5, v6, v1}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    :cond_65
    invoke-interface {p3}, Lorg/dom4j/Element;->content()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v3, v0}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/util/List;)V

    invoke-interface {p2, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :goto_6f
    iget-object v0, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v0

    if-le v0, v4, :cond_7d

    iget-object v0, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->pop()Lorg/dom4j/Namespace;

    goto :goto_6f

    :cond_7d
    return-void
.end method

.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/Entity;)V
    .registers 5

    invoke-interface {p3}, Lorg/dom4j/Entity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/ProcessingInstruction;)V
    .registers 6

    invoke-interface {p3}, Lorg/dom4j/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lorg/dom4j/ProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method protected attributeNameForNamespace(Lorg/dom4j/Namespace;)Ljava/lang/String;
    .registers 5

    const-string v0, "xmlns"

    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_25

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "xmlns"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_25
    return-object v0
.end method

.method protected createDomDocument(Lorg/dom4j/Document;)Lorg/w3c/dom/Document;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;

    if-eqz v0, :cond_2d

    :try_start_4
    iget-object v0, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Document;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-object v0

    :catch_d
    move-exception v0

    new-instance v1, Lorg/dom4j/DocumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not instantiate an instance of DOM Document with class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2d
    invoke-virtual {p0}, Lorg/dom4j/io/DOMWriter;->createDomDocumentViaJAXP()Lorg/w3c/dom/Document;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lorg/dom4j/io/DOMWriter;->getDomDocumentClass()Ljava/lang/Class;

    move-result-object v1

    :try_start_37
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Document;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3d} :catch_3e

    goto :goto_c

    :catch_3e
    move-exception v0

    new-instance v2, Lorg/dom4j/DocumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Could not instantiate an instance of DOM Document with class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected createDomDocument(Lorg/dom4j/Document;Lorg/w3c/dom/DOMImplementation;)Lorg/w3c/dom/Document;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p2, v0, v0, v0}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method protected createDomDocumentViaJAXP()Lorg/w3c/dom/Document;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_3
    invoke-static {v0, v1}, Lorg/dom4j/io/JAXPHelper;->createDocument(ZZ)Lorg/w3c/dom/Document;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_8

    move-result-object v0

    :goto_7
    return-object v0

    :catch_8
    move-exception v0

    sget-boolean v1, Lorg/dom4j/io/DOMWriter;->loggedWarning:Z

    if-nez v1, :cond_37

    sput-boolean v2, Lorg/dom4j/io/DOMWriter;->loggedWarning:Z

    invoke-static {}, Lorg/dom4j/io/SAXHelper;->isVerboseErrorReporting()Z

    move-result v1

    if-eqz v1, :cond_39

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Warning: Caught exception attempting to use JAXP to create a W3C DOM document"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Warning: Exception was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_37
    :goto_37
    const/4 v0, 0x0

    goto :goto_7

    :cond_39
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Warning: Error occurred using JAXP to create a DOM document."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_37
.end method

.method public getDomDocumentClass()Ljava/lang/Class;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;

    if-nez v0, :cond_26

    sget-object v1, Lorg/dom4j/io/DOMWriter;->DEFAULT_DOM_DOCUMENT_CLASSES:[Ljava/lang/String;

    array-length v3, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v3, :cond_26

    :try_start_b
    sget-object v1, Lorg/dom4j/io/DOMWriter;->DEFAULT_DOM_DOCUMENT_CLASSES:[Ljava/lang/String;

    aget-object v4, v1, v2

    sget-object v1, Lorg/dom4j/io/DOMWriter;->class$org$dom4j$io$DOMWriter:Ljava/lang/Class;

    if-nez v1, :cond_27

    const-string v1, "org.dom4j.io.DOMWriter"

    invoke-static {v1}, Lorg/dom4j/io/DOMWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/dom4j/io/DOMWriter;->class$org$dom4j$io$DOMWriter:Ljava/lang/Class;

    :goto_1b
    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v4, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2b

    :cond_26
    return-object v0

    :cond_27
    sget-object v1, Lorg/dom4j/io/DOMWriter;->class$org$dom4j$io$DOMWriter:Ljava/lang/Class;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_29} :catch_2a

    goto :goto_1b

    :catch_2a
    move-exception v1

    :cond_2b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_9
.end method

.method protected isNamespaceDeclaration(Lorg/dom4j/Namespace;)Z
    .registers 3

    if-eqz p1, :cond_20

    sget-object v0, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    if-eq p1, v0, :cond_20

    sget-object v0, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    if-eq p1, v0, :cond_20

    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_20

    iget-object v0, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0, p1}, Lorg/dom4j/tree/NamespaceStack;->contains(Lorg/dom4j/Namespace;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method protected resetNamespaceStack()V
    .registers 3

    iget-object v0, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->clear()V

    iget-object v0, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    return-void
.end method

.method public setDomDocumentClass(Ljava/lang/Class;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;

    return-void
.end method

.method public setDomDocumentClassName(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lorg/dom4j/io/DOMWriter;->class$org$dom4j$io$DOMWriter:Ljava/lang/Class;

    if-nez v0, :cond_18

    const-string v0, "org.dom4j.io.DOMWriter"

    invoke-static {v0}, Lorg/dom4j/io/DOMWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/dom4j/io/DOMWriter;->class$org$dom4j$io$DOMWriter:Ljava/lang/Class;

    :goto_c
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;

    return-void

    :cond_18
    sget-object v0, Lorg/dom4j/io/DOMWriter;->class$org$dom4j$io$DOMWriter:Ljava/lang/Class;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_c

    :catch_1b
    move-exception v0

    new-instance v1, Lorg/dom4j/DocumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not load the DOM Document class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write(Lorg/dom4j/Document;)Lorg/w3c/dom/Document;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    instance-of v0, p1, Lorg/w3c/dom/Document;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/w3c/dom/Document;

    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {p0}, Lorg/dom4j/io/DOMWriter;->resetNamespaceStack()V

    invoke-virtual {p0, p1}, Lorg/dom4j/io/DOMWriter;->createDomDocument(Lorg/dom4j/Document;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {p1}, Lorg/dom4j/Document;->content()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v0, v1}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/util/List;)V

    iget-object v1, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v1}, Lorg/dom4j/tree/NamespaceStack;->clear()V

    move-object p1, v0

    goto :goto_6
.end method

.method public write(Lorg/dom4j/Document;Lorg/w3c/dom/DOMImplementation;)Lorg/w3c/dom/Document;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    instance-of v0, p1, Lorg/w3c/dom/Document;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/w3c/dom/Document;

    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {p0}, Lorg/dom4j/io/DOMWriter;->resetNamespaceStack()V

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/io/DOMWriter;->createDomDocument(Lorg/dom4j/Document;Lorg/w3c/dom/DOMImplementation;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {p1}, Lorg/dom4j/Document;->content()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v0, v1}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/util/List;)V

    iget-object v1, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v1}, Lorg/dom4j/tree/NamespaceStack;->clear()V

    move-object p1, v0

    goto :goto_6
.end method

.method protected writeNamespace(Lorg/w3c/dom/Element;Lorg/dom4j/Namespace;)V
    .registers 5

    invoke-virtual {p0, p2}, Lorg/dom4j/io/DOMWriter;->attributeNameForNamespace(Lorg/dom4j/Namespace;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
