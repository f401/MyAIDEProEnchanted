.class public Lorg/dom4j/io/DOMReader;
.super Ljava/lang/Object;


# instance fields
.field private factory:Lorg/dom4j/DocumentFactory;

.field private namespaceStack:Lorg/dom4j/tree/NamespaceStack;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/DOMReader;->factory:Lorg/dom4j/DocumentFactory;

    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    iget-object v1, p0, Lorg/dom4j/io/DOMReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-direct {v0, v1}, Lorg/dom4j/tree/NamespaceStack;-><init>(Lorg/dom4j/DocumentFactory;)V

    iput-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/dom4j/io/DOMReader;->factory:Lorg/dom4j/DocumentFactory;

    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0, p1}, Lorg/dom4j/tree/NamespaceStack;-><init>(Lorg/dom4j/DocumentFactory;)V

    iput-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    return-void
.end method

.method private getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x3a

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const-string v0, ""

    goto :goto_10
.end method


# virtual methods
.method protected clearNamespaceStack()V
    .registers 3

    iget-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->clear()V

    iget-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->contains(Lorg/dom4j/Namespace;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    :cond_16
    return-void
.end method

.method protected createDocument()Lorg/dom4j/Document;
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/io/DOMReader;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/io/DOMReader;->factory:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method protected getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;
    .registers 4

    invoke-virtual {p0}, Lorg/dom4j/io/DOMReader;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public read(Lorg/w3c/dom/Document;)Lorg/dom4j/Document;
    .registers 7

    instance-of v0, p1, Lorg/dom4j/Document;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/dom4j/Document;

    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {p0}, Lorg/dom4j/io/DOMReader;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/io/DOMReader;->clearNamespaceStack()V

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v1, 0x0

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    :goto_17
    if-ge v1, v3, :cond_23

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lorg/dom4j/io/DOMReader;->readTree(Lorg/w3c/dom/Node;Lorg/dom4j/Branch;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_23
    move-object p1, v0

    goto :goto_6
.end method

.method protected readElement(Lorg/w3c/dom/Node;Lorg/dom4j/Branch;)V
    .registers 14

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    :cond_11
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    if-eqz v2, :cond_25

    if-nez v0, :cond_25

    const-string v4, "xmlns"

    invoke-interface {v2, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_25

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    :cond_25
    iget-object v4, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Lorg/dom4j/tree/NamespaceStack;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/dom4j/Branch;->addElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v4

    if-eqz v2, :cond_97

    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_43
    if-ge v0, v5, :cond_6d

    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "xmlns"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_69

    invoke-direct {p0, v8}, Lorg/dom4j/io/DOMReader;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v9, v8, v7}, Lorg/dom4j/tree/NamespaceStack;->addNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/dom4j/Element;->add(Lorg/dom4j/Namespace;)V

    :goto_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :cond_69
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_66

    :cond_6d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    move v2, v1

    :goto_72
    if-ge v2, v5, :cond_97

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    iget-object v7, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lorg/dom4j/tree/NamespaceStack;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v7

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v7, v0}, Lorg/dom4j/Element;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_72

    :cond_97
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    move v0, v1

    :goto_a0
    if-ge v0, v5, :cond_ac

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lorg/dom4j/io/DOMReader;->readTree(Lorg/w3c/dom/Node;Lorg/dom4j/Branch;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a0

    :cond_ac
    :goto_ac
    iget-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v0

    if-le v0, v3, :cond_ba

    iget-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->pop()Lorg/dom4j/Namespace;

    goto :goto_ac

    :cond_ba
    return-void
.end method

.method protected readTree(Lorg/w3c/dom/Node;Lorg/dom4j/Branch;)V
    .registers 7

    const/4 v2, 0x0

    instance-of v0, p2, Lorg/dom4j/Element;

    if-eqz v0, :cond_2e

    move-object v0, p2

    check-cast v0, Lorg/dom4j/Element;

    move-object v1, v2

    move-object v3, v0

    :goto_a
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_bc

    :pswitch_11  #0x2, 0x9
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "WARNING: Unknown DOM node type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2d
    return-void

    :cond_2e
    move-object v0, p2

    check-cast v0, Lorg/dom4j/Document;

    move-object v1, v0

    move-object v3, v2

    goto :goto_a

    :pswitch_34  #0x1
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/io/DOMReader;->readElement(Lorg/w3c/dom/Node;Lorg/dom4j/Branch;)V

    goto :goto_2d

    :pswitch_38  #0x7
    instance-of v0, p2, Lorg/dom4j/Element;

    if-eqz v0, :cond_4a

    check-cast p2, Lorg/dom4j/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/dom4j/Element;->addProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_2d

    :cond_4a
    check-cast p2, Lorg/dom4j/Document;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/dom4j/Document;->addProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Document;

    goto :goto_2d

    :pswitch_58  #0x8
    instance-of v0, p2, Lorg/dom4j/Element;

    if-eqz v0, :cond_66

    check-cast p2, Lorg/dom4j/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/dom4j/Element;->addComment(Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_2d

    :cond_66
    check-cast p2, Lorg/dom4j/Document;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/dom4j/Document;->addComment(Ljava/lang/String;)Lorg/dom4j/Document;

    goto :goto_2d

    :pswitch_70  #0xa
    check-cast p1, Lorg/w3c/dom/DocumentType;

    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lorg/dom4j/Document;->addDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Document;

    goto :goto_2d

    :pswitch_82  #0x3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_2d

    :pswitch_8a  #0x4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/dom4j/Element;->addCDATA(Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_2d

    :pswitch_92  #0x5
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_a4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Lorg/dom4j/Element;->addEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_2d

    :cond_a4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Lorg/dom4j/Element;->addEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_2d

    :pswitch_ae  #0x6
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lorg/dom4j/Element;->addEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    goto/16 :goto_2d

    nop

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_34  #00000001
        :pswitch_11  #00000002
        :pswitch_82  #00000003
        :pswitch_8a  #00000004
        :pswitch_92  #00000005
        :pswitch_ae  #00000006
        :pswitch_38  #00000007
        :pswitch_58  #00000008
        :pswitch_11  #00000009
        :pswitch_70  #0000000a
    .end packed-switch
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .registers 4

    iput-object p1, p0, Lorg/dom4j/io/DOMReader;->factory:Lorg/dom4j/DocumentFactory;

    iget-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    iget-object v1, p0, Lorg/dom4j/io/DOMReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->setDocumentFactory(Lorg/dom4j/DocumentFactory;)V

    return-void
.end method
