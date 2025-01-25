.class public abstract Lorg/dom4j/tree/AbstractElement;
.super Lorg/dom4j/tree/AbstractBranch;

# interfaces
.implements Lorg/dom4j/Element;


# static fields
.field private static final DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

.field protected static final EMPTY_ITERATOR:Ljava/util/Iterator;

.field protected static final EMPTY_LIST:Ljava/util/List;

.field protected static final USE_STRINGVALUE_SEPARATOR:Z

.field protected static final VERBOSE_TOSTRING:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    sput-object v0, Lorg/dom4j/tree/AbstractElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lorg/dom4j/tree/AbstractElement;->EMPTY_LIST:Ljava/util/List;

    sget-object v0, Lorg/dom4j/tree/AbstractElement;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sput-object v0, Lorg/dom4j/tree/AbstractElement;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractBranch;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/dom4j/Visitor;)V
    .registers 6

    const/4 v0, 0x0

    invoke-interface {p1, p0}, Lorg/dom4j/Visitor;->visit(Lorg/dom4j/Element;)V

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeCount()I

    move-result v2

    move v1, v0

    :goto_9
    if-ge v1, v2, :cond_15

    invoke-virtual {p0, v1}, Lorg/dom4j/tree/AbstractElement;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/dom4j/Visitor;->visit(Lorg/dom4j/Attribute;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_15
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->nodeCount()I

    move-result v1

    :goto_19
    if-ge v0, v1, :cond_25

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->node(I)Lorg/dom4j/Node;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/dom4j/Node;->accept(Lorg/dom4j/Visitor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_25
    return-void
.end method

.method public add(Lorg/dom4j/Attribute;)V
    .registers 5

    invoke-interface {p1}, Lorg/dom4j/Attribute;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_2d

    new-instance v0, Lorg/dom4j/IllegalAddException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The Attribute already has an existing parent \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p1}, Lorg/dom4j/Attribute;->getParent()Lorg/dom4j/Element;

    move-result-object v2

    invoke-interface {v2}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/dom4j/IllegalAddException;-><init>(Lorg/dom4j/Element;Lorg/dom4j/Node;Ljava/lang/String;)V

    throw v0

    :cond_2d
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_41

    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Attribute;)Z

    :cond_40
    :goto_40
    return-void

    :cond_41
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->childAdded(Lorg/dom4j/Node;)V

    goto :goto_40
.end method

.method public add(Lorg/dom4j/CDATA;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->addNode(Lorg/dom4j/Node;)V

    return-void
.end method

.method public add(Lorg/dom4j/Comment;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->addNode(Lorg/dom4j/Node;)V

    return-void
.end method

.method public add(Lorg/dom4j/Element;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->addNode(Lorg/dom4j/Node;)V

    return-void
.end method

.method public add(Lorg/dom4j/Entity;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->addNode(Lorg/dom4j/Node;)V

    return-void
.end method

.method public add(Lorg/dom4j/Namespace;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->addNode(Lorg/dom4j/Node;)V

    return-void
.end method

.method public add(Lorg/dom4j/Node;)V
    .registers 3

    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_3c

    :pswitch_7  #0x6, 0x9, 0xa, 0xb, 0xc
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->invalidNodeTypeAddException(Lorg/dom4j/Node;)V

    :goto_a
    return-void

    :pswitch_b  #0x1
    check-cast p1, Lorg/dom4j/Element;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Element;)V

    goto :goto_a

    :pswitch_11  #0x2
    check-cast p1, Lorg/dom4j/Attribute;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Attribute;)V

    goto :goto_a

    :pswitch_17  #0x3
    check-cast p1, Lorg/dom4j/Text;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Text;)V

    goto :goto_a

    :pswitch_1d  #0x4
    check-cast p1, Lorg/dom4j/CDATA;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/CDATA;)V

    goto :goto_a

    :pswitch_23  #0x5
    check-cast p1, Lorg/dom4j/Entity;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Entity;)V

    goto :goto_a

    :pswitch_29  #0x7
    check-cast p1, Lorg/dom4j/ProcessingInstruction;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/ProcessingInstruction;)V

    goto :goto_a

    :pswitch_2f  #0x8
    check-cast p1, Lorg/dom4j/Comment;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Comment;)V

    goto :goto_a

    :pswitch_35  #0xd
    check-cast p1, Lorg/dom4j/Namespace;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Namespace;)V

    goto :goto_a

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_b  #00000001
        :pswitch_11  #00000002
        :pswitch_17  #00000003
        :pswitch_1d  #00000004
        :pswitch_23  #00000005
        :pswitch_7  #00000006
        :pswitch_29  #00000007
        :pswitch_2f  #00000008
        :pswitch_7  #00000009
        :pswitch_7  #0000000a
        :pswitch_7  #0000000b
        :pswitch_7  #0000000c
        :pswitch_35  #0000000d
    .end packed-switch
.end method

.method public add(Lorg/dom4j/ProcessingInstruction;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->addNode(Lorg/dom4j/Node;)V

    return-void
.end method

.method public add(Lorg/dom4j/Text;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->addNode(Lorg/dom4j/Node;)V

    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    .registers 5

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    if-eqz p2, :cond_2d

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Attribute;)V

    :cond_13
    :goto_13
    return-object p0

    :cond_14
    invoke-interface {v0}, Lorg/dom4j/Attribute;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Attribute;)Z

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Attribute;)V

    goto :goto_13

    :cond_29
    invoke-interface {v0, p2}, Lorg/dom4j/Attribute;->setValue(Ljava/lang/String;)V

    goto :goto_13

    :cond_2d
    if-eqz v0, :cond_13

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Attribute;)Z

    goto :goto_13
.end method

.method public addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;
    .registers 5

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    if-eqz p2, :cond_2d

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Attribute;)V

    :cond_13
    :goto_13
    return-object p0

    :cond_14
    invoke-interface {v0}, Lorg/dom4j/Attribute;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Attribute;)Z

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Attribute;)V

    goto :goto_13

    :cond_29
    invoke-interface {v0, p2}, Lorg/dom4j/Attribute;->setValue(Ljava/lang/String;)V

    goto :goto_13

    :cond_2d
    if-eqz v0, :cond_13

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Attribute;)Z

    goto :goto_13
.end method

.method public addCDATA(Ljava/lang/String;)Lorg/dom4j/Element;
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createCDATA(Ljava/lang/String;)Lorg/dom4j/CDATA;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->addNewNode(Lorg/dom4j/Node;)V

    return-object p0
.end method

.method public addComment(Ljava/lang/String;)Lorg/dom4j/Element;
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createComment(Ljava/lang/String;)Lorg/dom4j/Comment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->addNewNode(Lorg/dom4j/Node;)V

    return-object p0
.end method

.method public addElement(Ljava/lang/String;)Lorg/dom4j/Element;
    .registers 6

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v2

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4a

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3}, Lorg/dom4j/tree/AbstractElement;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    if-nez v1, :cond_51

    new-instance v0, Lorg/dom4j/IllegalAddException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No such namespace prefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is in scope on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " so cannot add element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/dom4j/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    move-object v0, p1

    :cond_51
    if-eqz v1, :cond_5f

    invoke-virtual {v2, v0, v1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    :goto_5b
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->addNewNode(Lorg/dom4j/Node;)V

    return-object v0

    :cond_5f
    invoke-virtual {v2, p1}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    goto :goto_5b
.end method

.method public addEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    .registers 4

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Entity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->addNewNode(Lorg/dom4j/Node;)V

    return-object p0
.end method

.method public addNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    .registers 4

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->addNewNode(Lorg/dom4j/Node;)V

    return-object p0
.end method

.method protected addNewNode(ILorg/dom4j/Node;)V
    .registers 4

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p2}, Lorg/dom4j/tree/AbstractElement;->childAdded(Lorg/dom4j/Node;)V

    return-void
.end method

.method protected addNewNode(Lorg/dom4j/Node;)V
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->childAdded(Lorg/dom4j/Node;)V

    return-void
.end method

.method protected addNode(ILorg/dom4j/Node;)V
    .registers 6

    invoke-interface {p2}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_2d

    new-instance v0, Lorg/dom4j/IllegalAddException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The Node already has an existing parent of \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p2}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v2

    invoke-interface {v2}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1}, Lorg/dom4j/IllegalAddException;-><init>(Lorg/dom4j/Element;Lorg/dom4j/Node;Ljava/lang/String;)V

    throw v0

    :cond_2d
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/tree/AbstractElement;->addNewNode(ILorg/dom4j/Node;)V

    return-void
.end method

.method protected addNode(Lorg/dom4j/Node;)V
    .registers 5

    invoke-interface {p1}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_2d

    new-instance v0, Lorg/dom4j/IllegalAddException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The Node already has an existing parent of \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p1}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v2

    invoke-interface {v2}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/dom4j/IllegalAddException;-><init>(Lorg/dom4j/Element;Lorg/dom4j/Node;Ljava/lang/String;)V

    throw v0

    :cond_2d
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->addNewNode(Lorg/dom4j/Node;)V

    return-void
.end method

.method public addProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    .registers 4

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->addNewNode(Lorg/dom4j/Node;)V

    return-object p0
.end method

.method public addProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/dom4j/Element;
    .registers 4

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->addNewNode(Lorg/dom4j/Node;)V

    return-object p0
.end method

.method public addText(Ljava/lang/String;)Lorg/dom4j/Element;
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createText(Ljava/lang/String;)Lorg/dom4j/Text;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->addNewNode(Lorg/dom4j/Node;)V

    return-object p0
.end method

.method public additionalNamespaces()Ljava/util/List;
    .registers 7

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v4

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, v3, :cond_2b

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lorg/dom4j/Namespace;

    if-eqz v5, :cond_27

    check-cast v0, Lorg/dom4j/Namespace;

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/dom4j/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    invoke-virtual {v4, v0}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_2b
    return-object v4
.end method

.method public additionalNamespaces(Ljava/lang/String;)Ljava/util/List;
    .registers 8

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, v4, :cond_2b

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lorg/dom4j/Namespace;

    if-eqz v5, :cond_27

    check-cast v0, Lorg/dom4j/Namespace;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    invoke-virtual {v3, v0}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_2b
    return-object v3
.end method

.method public appendAttributes(Lorg/dom4j/Element;)V
    .registers 6

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/dom4j/Element;->attributeCount()I

    move-result v1

    :goto_5
    if-ge v0, v1, :cond_23

    invoke-interface {p1, v0}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v2

    invoke-interface {v2}, Lorg/dom4j/Attribute;->supportsParent()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v3

    invoke-interface {v2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lorg/dom4j/tree/AbstractElement;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1f
    invoke-virtual {p0, v2}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Attribute;)V

    goto :goto_1c

    :cond_23
    return-void
.end method

.method public asXML()Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Lorg/dom4j/io/XMLWriter;

    new-instance v2, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v2}, Lorg/dom4j/io/OutputFormat;-><init>()V

    invoke-direct {v1, v0, v2}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    invoke-virtual {v1, p0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Element;)V

    invoke-virtual {v1}, Lorg/dom4j/io/XMLWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_1a

    move-result-object v0

    return-object v0

    :catch_1a
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "IOException while generating textual representation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public attribute(I)Lorg/dom4j/Attribute;
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    return-object v0
.end method

.method public attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;
    .registers 7

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, v3, :cond_21

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    invoke-interface {v0}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    :goto_1c
    return-object v0

    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_21
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public attribute(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/Attribute;
    .registers 4

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;
    .registers 7

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, v3, :cond_21

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    invoke-interface {v0}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    :goto_1c
    return-object v0

    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_21
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public attributeCount()I
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public attributeIterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected abstract attributeList()Ljava/util/List;
.end method

.method protected abstract attributeList(I)Ljava/util/List;
.end method

.method public attributeValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public attributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object p2, v0

    :cond_7
    return-object p2
.end method

.method public attributeValue(Lorg/dom4j/QName;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public attributeValue(Lorg/dom4j/QName;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->attributeValue(Lorg/dom4j/QName;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object p2, v0

    :cond_7
    return-object p2
.end method

.method public attributes()Ljava/util/List;
    .registers 3

    new-instance v0, Lorg/dom4j/tree/ContentListFacade;

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/dom4j/tree/ContentListFacade;-><init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;)V

    return-object v0
.end method

.method protected childAdded(Lorg/dom4j/Node;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-interface {p1, p0}, Lorg/dom4j/Node;->setParent(Lorg/dom4j/Element;)V

    :cond_5
    return-void
.end method

.method protected childRemoved(Lorg/dom4j/Node;)V
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-interface {p1, v0}, Lorg/dom4j/Node;->setParent(Lorg/dom4j/Element;)V

    invoke-interface {p1, v0}, Lorg/dom4j/Node;->setDocument(Lorg/dom4j/Document;)V

    :cond_9
    return-void
.end method

.method protected createAttributeList()Ljava/util/List;
    .registers 2

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->createAttributeList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected createAttributeList(I)Ljava/util/List;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public createCopy()Lorg/dom4j/Element;
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/dom4j/Element;->appendAttributes(Lorg/dom4j/Element;)V

    invoke-interface {v0, p0}, Lorg/dom4j/Element;->appendContent(Lorg/dom4j/Branch;)V

    return-object v0
.end method

.method public createCopy(Ljava/lang/String;)Lorg/dom4j/Element;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/dom4j/Element;->appendAttributes(Lorg/dom4j/Element;)V

    invoke-interface {v0, p0}, Lorg/dom4j/Element;->appendContent(Lorg/dom4j/Branch;)V

    return-object v0
.end method

.method public createCopy(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/dom4j/Element;->appendAttributes(Lorg/dom4j/Element;)V

    invoke-interface {v0, p0}, Lorg/dom4j/Element;->appendContent(Lorg/dom4j/Branch;)V

    return-object v0
.end method

.method protected createElement(Ljava/lang/String;)Lorg/dom4j/Element;
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method protected createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method protected createSingleIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .registers 3

    new-instance v0, Lorg/dom4j/tree/SingleIterator;

    invoke-direct {v0, p1}, Lorg/dom4j/tree/SingleIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public declaredNamespaces()Ljava/util/List;
    .registers 7

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v1

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v3, :cond_1d

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lorg/dom4j/Namespace;

    if-eqz v5, :cond_1a

    invoke-virtual {v1, v4}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1d
    return-object v1
.end method

.method public element(Ljava/lang/String;)Lorg/dom4j/Element;
    .registers 7

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, v3, :cond_25

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lorg/dom4j/Element;

    if-eqz v4, :cond_21

    check-cast v0, Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    :goto_20
    return-object v0

    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_25
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public element(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/Element;
    .registers 4

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method public element(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .registers 7

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, v3, :cond_25

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lorg/dom4j/Element;

    if-eqz v4, :cond_21

    check-cast v0, Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    :goto_20
    return-object v0

    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_25
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public elementIterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->elements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public elementIterator(Ljava/lang/String;)Ljava/util/Iterator;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->elements(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public elementIterator(Ljava/lang/String;Lorg/dom4j/Namespace;)Ljava/util/Iterator;
    .registers 4

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->elementIterator(Lorg/dom4j/QName;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public elementIterator(Lorg/dom4j/QName;)Ljava/util/Iterator;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->elements(Lorg/dom4j/QName;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public elementText(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public elementText(Lorg/dom4j/QName;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public elementTextTrim(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lorg/dom4j/Element;->getTextTrim()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public elementTextTrim(Lorg/dom4j/QName;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lorg/dom4j/Element;->getTextTrim()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public elements()Ljava/util/List;
    .registers 7

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v3, :cond_1d

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lorg/dom4j/Element;

    if-eqz v5, :cond_1a

    invoke-virtual {v2, v4}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1d
    return-object v2
.end method

.method public elements(Ljava/lang/String;)Ljava/util/List;
    .registers 8

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, v4, :cond_2b

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lorg/dom4j/Element;

    if-eqz v5, :cond_27

    check-cast v0, Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-virtual {v3, v0}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_2b
    return-object v3
.end method

.method public elements(Ljava/lang/String;Lorg/dom4j/Namespace;)Ljava/util/List;
    .registers 4

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->elements(Lorg/dom4j/QName;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public elements(Lorg/dom4j/QName;)Ljava/util/List;
    .registers 8

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, v4, :cond_2b

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lorg/dom4j/Element;

    if-eqz v5, :cond_27

    check-cast v0, Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-virtual {v3, v0}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_2b
    return-object v3
.end method

.method public ensureAttributesCapacity(I)V
    .registers 4

    const/4 v0, 0x1

    if-le p1, v0, :cond_10

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v0

    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_10

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :cond_10
    return-void
.end method

.method public getData()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lorg/dom4j/QName;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    if-eqz v0, :cond_d

    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lorg/dom4j/tree/AbstractElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    goto :goto_c
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Lorg/dom4j/Namespace;
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;
    .registers 7

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v0

    :cond_12
    :goto_12
    return-object v0

    :cond_13
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    goto :goto_12

    :cond_1e
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_28
    if-ge v1, v3, :cond_42

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lorg/dom4j/Namespace;

    if-eqz v4, :cond_3e

    check-cast v0, Lorg/dom4j/Namespace;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    :cond_3e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_28

    :cond_42
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    if-nez v0, :cond_12

    :cond_4e
    if-eqz p1, :cond_56

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_59

    :cond_56
    sget-object v0, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    goto :goto_12

    :cond_59
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getNamespaceForURI(Ljava/lang/String;)Lorg/dom4j/Namespace;
    .registers 7

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_b

    :cond_8
    sget-object v0, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v0

    goto :goto_a

    :cond_1a
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_24
    if-ge v1, v3, :cond_3e

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lorg/dom4j/Namespace;

    if-eqz v4, :cond_3a

    check-cast v0, Lorg/dom4j/Namespace;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_3a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    :cond_3e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getNamespacePrefix()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespacesForURI(Ljava/lang/String;)Ljava/util/List;
    .registers 8

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v3

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v0, 0x0

    move v2, v0

    :goto_e
    if-ge v2, v5, :cond_2c

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lorg/dom4j/Namespace;

    if-eqz v0, :cond_28

    move-object v0, v1

    check-cast v0, Lorg/dom4j/Namespace;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {v3, v1}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    :cond_28
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e

    :cond_2c
    return-object v3
.end method

.method public getNodeType()S
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getPath(Lorg/dom4j/Element;)Ljava/lang/String;
    .registers 4

    if-ne p0, p1, :cond_5

    const-string v0, "."

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getXPathNameStep()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_23
    if-ne v0, p1, :cond_2a

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getXPathNameStep()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_2a
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->getPath(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getXPathNameStep()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public getQName(Ljava/lang/String;)Lorg/dom4j/QName;
    .registers 4

    const-string v0, ""

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_15

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_15
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    :goto_23
    return-object v0

    :cond_24
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    goto :goto_23
.end method

.method public getQualifiedName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_37

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->getContentAsStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1c
    if-ge v0, v2, :cond_32

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/dom4j/tree/AbstractElement;->getContentAsStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_32
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_37
    const-string v0, ""

    goto :goto_16
.end method

.method public getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getXPathNameStep()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1d
    return-object v0

    :cond_1e
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eq v0, p1, :cond_31

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_31
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getXPathNameStep()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQName()Lorg/dom4j/QName;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/dom4j/Element;->elements(Lorg/dom4j/QName;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_60

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_60

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_60
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method

.method public getXPathNameStep()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_11

    :cond_c
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3b

    :cond_1d
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "*[name()=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_3b
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public getXPathResult(I)Lorg/dom4j/Node;
    .registers 4

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lorg/dom4j/Node;->supportsParent()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-interface {v0, p0}, Lorg/dom4j/Node;->asXPathResult(Lorg/dom4j/Element;)Lorg/dom4j/Node;

    move-result-object v0

    :cond_10
    return-object v0
.end method

.method public hasMixedContent()Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_15

    :cond_14
    :goto_14
    return v0

    :cond_15
    const/4 v1, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, v1, :cond_1a

    if-eqz v1, :cond_2e

    const/4 v0, 0x1

    goto :goto_14

    :cond_2e
    move-object v1, v2

    goto :goto_1a
.end method

.method public indexOf(Lorg/dom4j/Node;)I
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isRootElement()Z
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    if-ne v0, p0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isTextOnly()Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/dom4j/CharacterData;

    if-nez v3, :cond_12

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_12

    const/4 v0, 0x0

    goto :goto_d
.end method

.method public node(I)Lorg/dom4j/Node;
    .registers 5

    const/4 v1, 0x0

    if-ltz p1, :cond_29

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_f

    move-object v0, v1

    :goto_e
    return-object v0

    :cond_f
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    instance-of v1, v0, Lorg/dom4j/Node;

    if-eqz v1, :cond_1c

    check-cast v0, Lorg/dom4j/Node;

    goto :goto_e

    :cond_1c
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/dom4j/DocumentFactory;->createText(Ljava/lang/String;)Lorg/dom4j/Text;

    move-result-object v0

    goto :goto_e

    :cond_29
    move-object v0, v1

    goto :goto_e
.end method

.method public nodeCount()I
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public nodeIterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public normalize()V
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x0

    move-object v1, v2

    move v3, v0

    :goto_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4a

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    instance-of v5, v0, Lorg/dom4j/Text;

    if-eqz v5, :cond_3d

    check-cast v0, Lorg/dom4j/Text;

    if-eqz v1, :cond_29

    invoke-interface {v0}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/dom4j/Text;->appendText(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Text;)Z

    move-object v0, v1

    :goto_27
    move-object v1, v0

    goto :goto_8

    :cond_29
    invoke-interface {v0}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_35

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_3a

    :cond_35
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Text;)Z

    move-object v0, v1

    goto :goto_27

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_3d
    instance-of v1, v0, Lorg/dom4j/Element;

    if-eqz v1, :cond_46

    check-cast v0, Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->normalize()V

    :cond_46
    add-int/lit8 v3, v3, 0x1

    move-object v0, v2

    goto :goto_27

    :cond_4a
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;
    .registers 7

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, v3, :cond_25

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lorg/dom4j/ProcessingInstruction;

    if-eqz v4, :cond_21

    check-cast v0, Lorg/dom4j/ProcessingInstruction;

    invoke-interface {v0}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    :goto_20
    return-object v0

    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_25
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public processingInstructions()Ljava/util/List;
    .registers 7

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v3, :cond_1d

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lorg/dom4j/ProcessingInstruction;

    if-eqz v5, :cond_1a

    invoke-virtual {v2, v4}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1d
    return-object v2
.end method

.method public processingInstructions(Ljava/lang/String;)Ljava/util/List;
    .registers 8

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, v4, :cond_2b

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lorg/dom4j/ProcessingInstruction;

    if-eqz v5, :cond_27

    check-cast v0, Lorg/dom4j/ProcessingInstruction;

    invoke-interface {v0}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-virtual {v3, v0}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_2b
    return-object v3
.end method

.method public remove(Lorg/dom4j/Attribute;)Z
    .registers 5

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->childRemoved(Lorg/dom4j/Node;)V

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/tree/AbstractElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_d
.end method

.method public remove(Lorg/dom4j/CDATA;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/dom4j/Comment;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/dom4j/Element;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/dom4j/Entity;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/dom4j/Namespace;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/dom4j/Node;)Z
    .registers 3

    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_42

    :pswitch_7  #0x6, 0x9, 0xa, 0xb, 0xc
    const/4 v0, 0x0

    :goto_8
    return v0

    :pswitch_9  #0x1
    check-cast p1, Lorg/dom4j/Element;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Element;)Z

    move-result v0

    goto :goto_8

    :pswitch_10  #0x2
    check-cast p1, Lorg/dom4j/Attribute;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Attribute;)Z

    move-result v0

    goto :goto_8

    :pswitch_17  #0x3
    check-cast p1, Lorg/dom4j/Text;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Text;)Z

    move-result v0

    goto :goto_8

    :pswitch_1e  #0x4
    check-cast p1, Lorg/dom4j/CDATA;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/CDATA;)Z

    move-result v0

    goto :goto_8

    :pswitch_25  #0x5
    check-cast p1, Lorg/dom4j/Entity;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Entity;)Z

    move-result v0

    goto :goto_8

    :pswitch_2c  #0x7
    check-cast p1, Lorg/dom4j/ProcessingInstruction;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/ProcessingInstruction;)Z

    move-result v0

    goto :goto_8

    :pswitch_33  #0x8
    check-cast p1, Lorg/dom4j/Comment;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Comment;)Z

    move-result v0

    goto :goto_8

    :pswitch_3a  #0xd
    check-cast p1, Lorg/dom4j/Namespace;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->remove(Lorg/dom4j/Namespace;)Z

    move-result v0

    goto :goto_8

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_9  #00000001
        :pswitch_10  #00000002
        :pswitch_17  #00000003
        :pswitch_1e  #00000004
        :pswitch_25  #00000005
        :pswitch_7  #00000006
        :pswitch_2c  #00000007
        :pswitch_33  #00000008
        :pswitch_7  #00000009
        :pswitch_7  #0000000a
        :pswitch_7  #0000000b
        :pswitch_7  #0000000c
        :pswitch_3a  #0000000d
    .end packed-switch
.end method

.method public remove(Lorg/dom4j/ProcessingInstruction;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/dom4j/Text;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method protected removeNode(Lorg/dom4j/Node;)Z
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->childRemoved(Lorg/dom4j/Node;)V

    :cond_d
    return v0
.end method

.method public removeProcessingInstruction(Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lorg/dom4j/ProcessingInstruction;

    if-eqz v2, :cond_8

    check-cast v0, Lorg/dom4j/ProcessingInstruction;

    invoke-interface {v0}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public setAttributeValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/tree/AbstractElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    return-void
.end method

.method public setAttributeValue(Lorg/dom4j/QName;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/tree/AbstractElement;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    return-void
.end method

.method public setAttributes(Lorg/xml/sax/Attributes;Lorg/dom4j/tree/NamespaceStack;Z)V
    .registers 12

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lez v1, :cond_33

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_34

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    if-nez p3, :cond_1c

    const-string v3, "xmlns"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_33

    :cond_1c
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v4, v1}, Lorg/dom4j/tree/NamespaceStack;->getAttributeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v1

    invoke-virtual {v2, p0, v1, v0}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->add(Lorg/dom4j/Attribute;)V

    :cond_33
    return-void

    :cond_34
    invoke-virtual {p0, v1}, Lorg/dom4j/tree/AbstractElement;->attributeList(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :goto_3b
    if-ge v0, v1, :cond_33

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    if-nez p3, :cond_4b

    const-string v5, "xmlns"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_65

    :cond_4b
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v5, v6, v4}, Lorg/dom4j/tree/NamespaceStack;->getAttributeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v4

    invoke-virtual {v2, p0, v4, v7}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v4}, Lorg/dom4j/tree/AbstractElement;->childAdded(Lorg/dom4j/Node;)V

    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b
.end method

.method public setData(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->setQName(Lorg/dom4j/QName;)V

    return-void
.end method

.method public setNamespace(Lorg/dom4j/Namespace;)V
    .registers 4

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractElement;->setQName(Lorg/dom4j/QName;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->contentList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    invoke-interface {v0}, Lorg/dom4j/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_26

    goto :goto_a

    :pswitch_1e  #0x3, 0x4, 0x5
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_22
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractElement;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    return-void

    :pswitch_data_26
    .packed-switch 0x3
        :pswitch_1e  #00000003
        :pswitch_1e  #00000004
        :pswitch_1e  #00000005
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4a

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " [Element: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " attributes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/>]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_49
    return-object v0

    :cond_4a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " [Element: <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " attributes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractElement;->attributeList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/>]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_49
.end method

.method public write(Ljava/io/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/io/XMLWriter;

    new-instance v1, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v1}, Lorg/dom4j/io/OutputFormat;-><init>()V

    invoke-direct {v0, p1, v1}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    invoke-virtual {v0, p0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Element;)V

    return-void
.end method
