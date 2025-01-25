.class public Lorg/dom4j/tree/BaseElement;
.super Lorg/dom4j/tree/AbstractElement;


# instance fields
.field protected attributes:Ljava/util/List;

.field protected content:Ljava/util/List;

.field private parentBranch:Lorg/dom4j/Branch;

.field private qname:Lorg/dom4j/QName;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractElement;-><init>()V

    invoke-virtual {p0}, Lorg/dom4j/tree/BaseElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/BaseElement;->qname:Lorg/dom4j/QName;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V
    .registers 4

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractElement;-><init>()V

    invoke-virtual {p0}, Lorg/dom4j/tree/BaseElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/BaseElement;->qname:Lorg/dom4j/QName;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;)V
    .registers 2

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractElement;-><init>()V

    iput-object p1, p0, Lorg/dom4j/tree/BaseElement;->qname:Lorg/dom4j/QName;

    return-void
.end method


# virtual methods
.method protected attributeList()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->attributes:Ljava/util/List;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lorg/dom4j/tree/BaseElement;->createAttributeList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/BaseElement;->attributes:Ljava/util/List;

    :cond_a
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->attributes:Ljava/util/List;

    return-object v0
.end method

.method protected attributeList(I)Ljava/util/List;
    .registers 3

    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->attributes:Ljava/util/List;

    if-nez v0, :cond_a

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/BaseElement;->createAttributeList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/BaseElement;->attributes:Ljava/util/List;

    :cond_a
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->attributes:Ljava/util/List;

    return-object v0
.end method

.method public clearContent()V
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/tree/BaseElement;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected contentList()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->content:Ljava/util/List;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lorg/dom4j/tree/BaseElement;->createContentList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/BaseElement;->content:Ljava/util/List;

    :cond_a
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->content:Ljava/util/List;

    return-object v0
.end method

.method public getDocument()Lorg/dom4j/Document;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Document;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    check-cast v0, Lorg/dom4j/Document;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Element;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    check-cast v0, Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    goto :goto_a

    :cond_1a
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getParent()Lorg/dom4j/Element;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v1, v1, Lorg/dom4j/Element;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    check-cast v0, Lorg/dom4j/Element;

    :cond_b
    return-object v0
.end method

.method public getQName()Lorg/dom4j/QName;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->qname:Lorg/dom4j/QName;

    return-object v0
.end method

.method protected setAttributeList(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/tree/BaseElement;->attributes:Ljava/util/List;

    return-void
.end method

.method public setAttributes(Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lorg/dom4j/tree/BaseElement;->attributes:Ljava/util/List;

    instance-of v0, p1, Lorg/dom4j/tree/ContentListFacade;

    if-eqz v0, :cond_e

    check-cast p1, Lorg/dom4j/tree/ContentListFacade;

    invoke-virtual {p1}, Lorg/dom4j/tree/ContentListFacade;->getBackingList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/BaseElement;->attributes:Ljava/util/List;

    :cond_e
    return-void
.end method

.method public setContent(Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lorg/dom4j/tree/BaseElement;->content:Ljava/util/List;

    instance-of v0, p1, Lorg/dom4j/tree/ContentListFacade;

    if-eqz v0, :cond_e

    check-cast p1, Lorg/dom4j/tree/ContentListFacade;

    invoke-virtual {p1}, Lorg/dom4j/tree/ContentListFacade;->getBackingList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/BaseElement;->content:Ljava/util/List;

    :cond_e
    return-void
.end method

.method public setDocument(Lorg/dom4j/Document;)V
    .registers 3

    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Document;

    if-nez v0, :cond_8

    if-eqz p1, :cond_a

    :cond_8
    iput-object p1, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    :cond_a
    return-void
.end method

.method public setParent(Lorg/dom4j/Element;)V
    .registers 3

    iget-object v0, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Element;

    if-nez v0, :cond_8

    if-eqz p1, :cond_a

    :cond_8
    iput-object p1, p0, Lorg/dom4j/tree/BaseElement;->parentBranch:Lorg/dom4j/Branch;

    :cond_a
    return-void
.end method

.method public setQName(Lorg/dom4j/QName;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/tree/BaseElement;->qname:Lorg/dom4j/QName;

    return-void
.end method

.method public supportsParent()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
