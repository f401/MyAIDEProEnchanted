.class public Lorg/dom4j/tree/DefaultDocument;
.super Lorg/dom4j/tree/AbstractDocument;


# static fields
.field protected static final EMPTY_ITERATOR:Ljava/util/Iterator;

.field protected static final EMPTY_LIST:Ljava/util/List;


# instance fields
.field private content:Ljava/util/List;

.field private docType:Lorg/dom4j/DocumentType;

.field private documentFactory:Lorg/dom4j/DocumentFactory;

.field private transient entityResolver:Lorg/xml/sax/EntityResolver;

.field private name:Ljava/lang/String;

.field private rootElement:Lorg/dom4j/Element;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lorg/dom4j/tree/DefaultDocument;->EMPTY_LIST:Ljava/util/List;

    sget-object v0, Lorg/dom4j/tree/DefaultDocument;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sput-object v0, Lorg/dom4j/tree/DefaultDocument;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractDocument;-><init>()V

    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->documentFactory:Lorg/dom4j/DocumentFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractDocument;-><init>()V

    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->documentFactory:Lorg/dom4j/DocumentFactory;

    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/Element;Lorg/dom4j/DocumentType;)V
    .registers 5

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractDocument;-><init>()V

    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->documentFactory:Lorg/dom4j/DocumentFactory;

    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    iput-object p3, p0, Lorg/dom4j/tree/DefaultDocument;->docType:Lorg/dom4j/DocumentType;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentType;)V
    .registers 3

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractDocument;-><init>()V

    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->documentFactory:Lorg/dom4j/DocumentFactory;

    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->docType:Lorg/dom4j/DocumentType;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Element;)V
    .registers 3

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractDocument;-><init>()V

    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->documentFactory:Lorg/dom4j/DocumentFactory;

    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Element;Lorg/dom4j/DocumentType;)V
    .registers 4

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractDocument;-><init>()V

    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->documentFactory:Lorg/dom4j/DocumentFactory;

    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    iput-object p2, p0, Lorg/dom4j/tree/DefaultDocument;->docType:Lorg/dom4j/DocumentType;

    return-void
.end method


# virtual methods
.method public addDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Document;
    .registers 5

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/dom4j/DocumentFactory;->createDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/DocumentType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultDocument;->setDocType(Lorg/dom4j/DocumentType;)V

    return-object p0
.end method

.method protected addNode(ILorg/dom4j/Node;)V
    .registers 7

    if-eqz p2, :cond_2d

    invoke-interface {p2}, Lorg/dom4j/Node;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    if-eqz v0, :cond_23

    if-eq v0, p0, :cond_23

    new-instance v1, Lorg/dom4j/IllegalAddException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "The Node already has an existing document: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, p2, v0}, Lorg/dom4j/IllegalAddException;-><init>(Lorg/dom4j/Branch;Lorg/dom4j/Node;Ljava/lang/String;)V

    throw v1

    :cond_23
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p2}, Lorg/dom4j/tree/DefaultDocument;->childAdded(Lorg/dom4j/Node;)V

    :cond_2d
    return-void
.end method

.method protected addNode(Lorg/dom4j/Node;)V
    .registers 6

    if-eqz p1, :cond_2d

    invoke-interface {p1}, Lorg/dom4j/Node;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    if-eqz v0, :cond_23

    if-eq v0, p0, :cond_23

    new-instance v1, Lorg/dom4j/IllegalAddException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "The Node already has an existing document: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0}, Lorg/dom4j/IllegalAddException;-><init>(Lorg/dom4j/Branch;Lorg/dom4j/Node;Ljava/lang/String;)V

    throw v1

    :cond_23
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultDocument;->childAdded(Lorg/dom4j/Node;)V

    :cond_2d
    return-void
.end method

.method public clearContent()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentRemoved()V

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->content:Ljava/util/List;

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lorg/dom4j/tree/AbstractDocument;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/tree/DefaultDocument;

    iput-object v1, v0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    iput-object v1, v0, Lorg/dom4j/tree/DefaultDocument;->content:Ljava/util/List;

    invoke-virtual {v0, p0}, Lorg/dom4j/tree/DefaultDocument;->appendContent(Lorg/dom4j/Branch;)V

    return-object v0
.end method

.method protected contentList()Ljava/util/List;
    .registers 3

    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->content:Ljava/util/List;

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->createContentList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->content:Ljava/util/List;

    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->content:Ljava/util/List;

    iget-object v1, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->content:Ljava/util/List;

    return-object v0
.end method

.method public getDocType()Lorg/dom4j/DocumentType;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->docType:Lorg/dom4j/DocumentType;

    return-object v0
.end method

.method protected getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->documentFactory:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRootElement()Lorg/dom4j/Element;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    return-object v0
.end method

.method public getXMLEncoding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public processingInstruction(Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;
    .registers 7

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

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

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->createResultList()Lorg/dom4j/tree/BackedList;

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

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1d
    return-object v2
.end method

.method public processingInstructions(Ljava/lang/String;)Ljava/util/List;
    .registers 8

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->createResultList()Lorg/dom4j/tree/BackedList;

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

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_2b
    return-object v3
.end method

.method protected removeNode(Lorg/dom4j/Node;)Z
    .registers 3

    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    if-ne p1, v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    :cond_7
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultDocument;->childRemoved(Lorg/dom4j/Node;)V

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public removeProcessingInstruction(Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

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

.method protected rootElementAdded(Lorg/dom4j/Element;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    invoke-interface {p1, p0}, Lorg/dom4j/Element;->setDocument(Lorg/dom4j/Document;)V

    return-void
.end method

.method public setContent(Ljava/util/List;)V
    .registers 7

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentRemoved()V

    instance-of v0, p1, Lorg/dom4j/tree/ContentListFacade;

    if-eqz v0, :cond_10

    check-cast p1, Lorg/dom4j/tree/ContentListFacade;

    invoke-virtual {p1}, Lorg/dom4j/tree/ContentListFacade;->getBackingList()Ljava/util/List;

    move-result-object p1

    :cond_10
    if-nez p1, :cond_15

    iput-object v1, p0, Lorg/dom4j/tree/DefaultDocument;->content:Ljava/util/List;

    :goto_14
    return-void

    :cond_15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/dom4j/tree/DefaultDocument;->createContentList(I)Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x0

    move v2, v0

    :goto_1f
    if-ge v2, v3, :cond_6b

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/dom4j/Node;

    if-eqz v1, :cond_4e

    check-cast v0, Lorg/dom4j/Node;

    invoke-interface {v0}, Lorg/dom4j/Node;->getDocument()Lorg/dom4j/Document;

    move-result-object v1

    if-eqz v1, :cond_6e

    if-eq v1, p0, :cond_6e

    invoke-interface {v0}, Lorg/dom4j/Node;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    move-object v1, v0

    :goto_3a
    nop

    instance-of v0, v1, Lorg/dom4j/Element;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    if-nez v0, :cond_52

    move-object v0, v1

    check-cast v0, Lorg/dom4j/Element;

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    :cond_48
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lorg/dom4j/tree/DefaultDocument;->childAdded(Lorg/dom4j/Node;)V

    :cond_4e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1f

    :cond_52
    new-instance v0, Lorg/dom4j/IllegalAddException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "A document may only contain one root element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/dom4j/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6b
    iput-object v4, p0, Lorg/dom4j/tree/DefaultDocument;->content:Ljava/util/List;

    goto :goto_14

    :cond_6e
    move-object v1, v0

    goto :goto_3a
.end method

.method public setDocType(Lorg/dom4j/DocumentType;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->docType:Lorg/dom4j/DocumentType;

    return-void
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->documentFactory:Lorg/dom4j/DocumentFactory;

    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->name:Ljava/lang/String;

    return-void
.end method
