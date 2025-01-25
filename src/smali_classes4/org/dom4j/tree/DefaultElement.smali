.class public Lorg/dom4j/tree/DefaultElement;
.super Lorg/dom4j/tree/AbstractElement;


# static fields
.field private static final transient DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;


# instance fields
.field private attributes:Ljava/lang/Object;

.field private content:Ljava/lang/Object;

.field private parentBranch:Lorg/dom4j/Branch;

.field private qname:Lorg/dom4j/QName;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    sput-object v0, Lorg/dom4j/tree/DefaultElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractElement;-><init>()V

    sget-object v0, Lorg/dom4j/tree/DefaultElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V
    .registers 4

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractElement;-><init>()V

    sget-object v0, Lorg/dom4j/tree/DefaultElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;)V
    .registers 2

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractElement;-><init>()V

    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;I)V
    .registers 4

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractElement;-><init>()V

    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    const/4 v0, 0x1

    if-le p2, v0, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    :cond_f
    return-void
.end method


# virtual methods
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

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->remove(Lorg/dom4j/Attribute;)Z

    :cond_40
    :goto_40
    return-void

    :cond_41
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    if-nez v0, :cond_4b

    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    :goto_47
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->childAdded(Lorg/dom4j/Node;)V

    goto :goto_40

    :cond_4b
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->attributeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47
.end method

.method protected addNewNode(Lorg/dom4j/Node;)V
    .registers 4

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    if-nez v0, :cond_a

    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    :goto_6
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->childAdded(Lorg/dom4j/Node;)V

    return-void

    :cond_a
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_14

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_14
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createContentList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    goto :goto_6
.end method

.method public additionalNamespaces()Ljava/util/List;
    .registers 7

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2f

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v2

    const/4 v1, 0x0

    move v3, v1

    :goto_12
    if-ge v3, v4, :cond_4e

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Lorg/dom4j/Namespace;

    if-eqz v5, :cond_2b

    check-cast v1, Lorg/dom4j/Namespace;

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/dom4j/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    invoke-virtual {v2, v1}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    :cond_2b
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_12

    :cond_2f
    instance-of v1, v0, Lorg/dom4j/Namespace;

    if-eqz v1, :cond_49

    check-cast v0, Lorg/dom4j/Namespace;

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/dom4j/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createEmptyList()Ljava/util/List;

    move-result-object v0

    :goto_43
    return-object v0

    :cond_44
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->createSingleResultList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_43

    :cond_49
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createEmptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_43

    :cond_4e
    move-object v0, v2

    goto :goto_43
.end method

.method public additionalNamespaces(Ljava/lang/String;)Ljava/util/List;
    .registers 8

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_31

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, 0x0

    move v3, v1

    :goto_12
    if-ge v3, v4, :cond_2f

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Lorg/dom4j/Namespace;

    if-eqz v5, :cond_2b

    check-cast v1, Lorg/dom4j/Namespace;

    invoke-virtual {v1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    invoke-virtual {v2, v1}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    :cond_2b
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_12

    :cond_2f
    move-object v0, v2

    :goto_30
    return-object v0

    :cond_31
    instance-of v1, v0, Lorg/dom4j/Namespace;

    if-eqz v1, :cond_46

    check-cast v0, Lorg/dom4j/Namespace;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->createSingleResultList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_30

    :cond_46
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createEmptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_30
.end method

.method public attribute(I)Lorg/dom4j/Attribute;
    .registers 4

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    :goto_e
    return-object v0

    :cond_f
    if-eqz v0, :cond_16

    if-nez p1, :cond_16

    check-cast v0, Lorg/dom4j/Attribute;

    goto :goto_e

    :cond_16
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;
    .registers 7

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_25

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, v3, :cond_35

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Attribute;

    invoke-interface {v1}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    :goto_20
    return-object v1

    :cond_21
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_e

    :cond_25
    if-eqz v0, :cond_35

    check-cast v0, Lorg/dom4j/Attribute;

    invoke-interface {v0}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move-object v1, v0

    goto :goto_20

    :cond_35
    const/4 v1, 0x0

    goto :goto_20
.end method

.method public attribute(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/Attribute;
    .registers 4

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;
    .registers 7

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_25

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, v3, :cond_35

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Attribute;

    invoke-interface {v1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    :goto_20
    return-object v1

    :cond_21
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_e

    :cond_25
    if-eqz v0, :cond_35

    check-cast v0, Lorg/dom4j/Attribute;

    invoke-interface {v0}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move-object v1, v0

    goto :goto_20

    :cond_35
    const/4 v1, 0x0

    goto :goto_20
.end method

.method public attributeCount()I
    .registers 3

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_d

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_c

    :cond_11
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public attributeIterator()Ljava/util/Iterator;
    .registers 3

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_d

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->createSingleIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    goto :goto_c

    :cond_14
    sget-object v0, Lorg/dom4j/tree/DefaultElement;->EMPTY_ITERATOR:Ljava/util/Iterator;

    goto :goto_c
.end method

.method protected attributeList()Ljava/util/List;
    .registers 3

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/util/List;

    :goto_8
    return-object v0

    :cond_9
    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createAttributeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    move-object v0, v1

    goto :goto_8

    :cond_16
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createAttributeList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    goto :goto_8
.end method

.method protected attributeList(I)Ljava/util/List;
    .registers 4

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/util/List;

    :goto_8
    return-object v0

    :cond_9
    if-eqz v0, :cond_16

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->createAttributeList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    move-object v0, v1

    goto :goto_8

    :cond_16
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->createAttributeList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    goto :goto_8
.end method

.method public attributes()Ljava/util/List;
    .registers 3

    new-instance v0, Lorg/dom4j/tree/ContentListFacade;

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->attributeList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/dom4j/tree/ContentListFacade;-><init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;)V

    return-object v0
.end method

.method public clearContent()V
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentRemoved()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    :cond_a
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lorg/dom4j/tree/AbstractElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/tree/DefaultElement;

    if-eq v0, p0, :cond_13

    iput-object v1, v0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    iput-object v1, v0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lorg/dom4j/tree/DefaultElement;->appendAttributes(Lorg/dom4j/Element;)V

    invoke-virtual {v0, p0}, Lorg/dom4j/tree/DefaultElement;->appendContent(Lorg/dom4j/Branch;)V

    :cond_13
    return-object v0
.end method

.method protected contentList()Ljava/util/List;
    .registers 3

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/util/List;

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createContentList()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_12

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    iput-object v1, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    move-object v0, v1

    goto :goto_8
.end method

.method public declaredNamespaces()Ljava/util/List;
    .registers 7

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v2

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_21

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v3, :cond_28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lorg/dom4j/Namespace;

    if-eqz v5, :cond_1e

    invoke-virtual {v2, v4}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_21
    instance-of v1, v0, Lorg/dom4j/Namespace;

    if-eqz v1, :cond_28

    invoke-virtual {v2, v0}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    :cond_28
    return-object v2
.end method

.method public element(Ljava/lang/String;)Lorg/dom4j/Element;
    .registers 7

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_29

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, v3, :cond_3b

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lorg/dom4j/Element;

    if-eqz v4, :cond_25

    check-cast v1, Lorg/dom4j/Element;

    invoke-interface {v1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    :goto_24
    return-object v1

    :cond_25
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_e

    :cond_29
    instance-of v1, v0, Lorg/dom4j/Element;

    if-eqz v1, :cond_3b

    check-cast v0, Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    move-object v1, v0

    goto :goto_24

    :cond_3b
    const/4 v1, 0x0

    goto :goto_24
.end method

.method public element(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/Element;
    .registers 4

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method public element(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .registers 7

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_29

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, v3, :cond_3b

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lorg/dom4j/Element;

    if-eqz v4, :cond_25

    check-cast v1, Lorg/dom4j/Element;

    invoke-interface {v1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    :goto_24
    return-object v1

    :cond_25
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_e

    :cond_29
    instance-of v1, v0, Lorg/dom4j/Element;

    if-eqz v1, :cond_3b

    check-cast v0, Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    move-object v1, v0

    goto :goto_24

    :cond_3b
    const/4 v1, 0x0

    goto :goto_24
.end method

.method public getDocument()Lorg/dom4j/Document;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Document;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    check-cast v0, Lorg/dom4j/Document;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Element;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    check-cast v0, Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    goto :goto_a

    :cond_1a
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    invoke-virtual {v0}, Lorg/dom4j/QName;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    if-eqz v0, :cond_9

    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lorg/dom4j/tree/DefaultElement;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    goto :goto_8
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;
    .registers 7

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v1

    :cond_12
    :goto_12
    return-object v1

    :cond_13
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v1, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    goto :goto_12

    :cond_1e
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_46

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_2c
    if-ge v2, v3, :cond_58

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lorg/dom4j/Namespace;

    if-eqz v4, :cond_42

    check-cast v1, Lorg/dom4j/Namespace;

    invoke-virtual {v1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    :cond_42
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2c

    :cond_46
    instance-of v1, v0, Lorg/dom4j/Namespace;

    if-eqz v1, :cond_58

    check-cast v0, Lorg/dom4j/Namespace;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    move-object v1, v0

    goto :goto_12

    :cond_58
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_64

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    if-nez v1, :cond_12

    :cond_64
    if-eqz p1, :cond_6c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_6f

    :cond_6c
    sget-object v1, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    goto :goto_12

    :cond_6f
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getNamespaceForURI(Ljava/lang/String;)Lorg/dom4j/Namespace;
    .registers 7

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_b

    :cond_8
    sget-object v1, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    :cond_a
    :goto_a
    return-object v1

    :cond_b
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v1

    goto :goto_a

    :cond_1a
    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_42

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_28
    if-ge v2, v3, :cond_54

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lorg/dom4j/Namespace;

    if-eqz v4, :cond_3e

    check-cast v1, Lorg/dom4j/Namespace;

    invoke-virtual {v1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_3e
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_28

    :cond_42
    instance-of v1, v0, Lorg/dom4j/Namespace;

    if-eqz v1, :cond_54

    check-cast v0, Lorg/dom4j/Namespace;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    move-object v1, v0

    goto :goto_a

    :cond_54
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_5f

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->getNamespaceForURI(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    goto :goto_a

    :cond_5f
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getParent()Lorg/dom4j/Element;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v1, v1, Lorg/dom4j/Element;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    check-cast v0, Lorg/dom4j/Element;

    :cond_b
    return-object v0
.end method

.method public getQName()Lorg/dom4j/QName;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_3b

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_42

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->getContentAsStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    return-object v0

    :cond_1b
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :goto_20
    if-ge v1, v2, :cond_36

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/dom4j/tree/DefaultElement;->getContentAsStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_33

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_36
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_3b
    if-eqz v0, :cond_42

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->getContentAsStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_42
    const-string v0, ""

    goto :goto_1a
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_b

    invoke-super {p0}, Lorg/dom4j/tree/AbstractElement;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    if-eqz v0, :cond_12

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->getContentAsText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_12
    const-string v0, ""

    goto :goto_a
.end method

.method public indexOf(Lorg/dom4j/Node;)I
    .registers 4

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_d

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_c
    return v0

    :cond_d
    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    goto :goto_c

    :cond_17
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public node(I)Lorg/dom4j/Node;
    .registers 5

    const/4 v1, 0x0

    if-ltz p1, :cond_2f

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_20

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_13

    move-object v0, v1

    :goto_12
    return-object v0

    :cond_13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :cond_17
    :goto_17
    if-eqz v0, :cond_2f

    instance-of v1, v0, Lorg/dom4j/Node;

    if-eqz v1, :cond_24

    check-cast v0, Lorg/dom4j/Node;

    goto :goto_12

    :cond_20
    if-eqz p1, :cond_17

    move-object v0, v1

    goto :goto_17

    :cond_24
    new-instance v1, Lorg/dom4j/tree/DefaultText;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/dom4j/tree/DefaultText;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_12

    :cond_2f
    move-object v0, v1

    goto :goto_12
.end method

.method public nodeCount()I
    .registers 3

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_d

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_c

    :cond_11
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public nodeIterator()Ljava/util/Iterator;
    .registers 3

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_d

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->createSingleIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    goto :goto_c

    :cond_14
    sget-object v0, Lorg/dom4j/tree/DefaultElement;->EMPTY_ITERATOR:Ljava/util/Iterator;

    goto :goto_c
.end method

.method public processingInstruction(Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;
    .registers 7

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_29

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, v3, :cond_3b

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lorg/dom4j/ProcessingInstruction;

    if-eqz v4, :cond_25

    check-cast v1, Lorg/dom4j/ProcessingInstruction;

    invoke-interface {v1}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    :goto_24
    return-object v1

    :cond_25
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_e

    :cond_29
    instance-of v1, v0, Lorg/dom4j/ProcessingInstruction;

    if-eqz v1, :cond_3b

    check-cast v0, Lorg/dom4j/ProcessingInstruction;

    invoke-interface {v0}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    move-object v1, v0

    goto :goto_24

    :cond_3b
    const/4 v1, 0x0

    goto :goto_24
.end method

.method public processingInstructions()Ljava/util/List;
    .registers 7

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_21

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v3, :cond_2f

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lorg/dom4j/ProcessingInstruction;

    if-eqz v5, :cond_1e

    invoke-virtual {v1, v4}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_21
    instance-of v1, v0, Lorg/dom4j/ProcessingInstruction;

    if-eqz v1, :cond_2a

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->createSingleResultList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_29
    return-object v0

    :cond_2a
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createEmptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_29

    :cond_2f
    move-object v0, v1

    goto :goto_29
.end method

.method public processingInstructions(Ljava/lang/String;)Ljava/util/List;
    .registers 8

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_31

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, 0x0

    move v3, v1

    :goto_12
    if-ge v3, v4, :cond_2f

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Lorg/dom4j/ProcessingInstruction;

    if-eqz v5, :cond_2b

    check-cast v1, Lorg/dom4j/ProcessingInstruction;

    invoke-interface {v1}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-virtual {v2, v1}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    :cond_2b
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_12

    :cond_2f
    move-object v0, v2

    :goto_30
    return-object v0

    :cond_31
    instance-of v1, v0, Lorg/dom4j/ProcessingInstruction;

    if-eqz v1, :cond_46

    check-cast v0, Lorg/dom4j/ProcessingInstruction;

    invoke-interface {v0}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->createSingleResultList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_30

    :cond_46
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->createEmptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_30
.end method

.method public remove(Lorg/dom4j/Attribute;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_24

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/tree/DefaultElement;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v3

    if-eqz v3, :cond_46

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move v0, v1

    :goto_1e
    if-eqz v0, :cond_23

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->childRemoved(Lorg/dom4j/Node;)V

    :cond_23
    return v0

    :cond_24
    if-eqz v0, :cond_44

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    iput-object v3, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    move v0, v1

    goto :goto_1e

    :cond_30
    check-cast v0, Lorg/dom4j/Attribute;

    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v2

    invoke-interface {v0}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    iput-object v3, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    move v0, v1

    goto :goto_1e

    :cond_44
    const/4 v0, 0x0

    goto :goto_1e

    :cond_46
    move v0, v2

    goto :goto_1e
.end method

.method protected removeNode(Lorg/dom4j/Node;)Z
    .registers 4

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    if-eqz v0, :cond_1b

    if-ne v0, p1, :cond_10

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_a
    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultElement;->childRemoved(Lorg/dom4j/Node;)V

    :cond_f
    return v0

    :cond_10
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1b

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_a

    :cond_1b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public removeProcessingInstruction(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_2c

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lorg/dom4j/ProcessingInstruction;

    if-eqz v3, :cond_d

    check-cast v0, Lorg/dom4j/ProcessingInstruction;

    invoke-interface {v0}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move v0, v1

    :goto_2b
    return v0

    :cond_2c
    instance-of v2, v0, Lorg/dom4j/ProcessingInstruction;

    if-eqz v2, :cond_41

    check-cast v0, Lorg/dom4j/ProcessingInstruction;

    invoke-interface {v0}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    move v0, v1

    goto :goto_2b

    :cond_41
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method protected setAttributeList(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    return-void
.end method

.method public setAttributes(Ljava/util/List;)V
    .registers 3

    instance-of v0, p1, Lorg/dom4j/tree/ContentListFacade;

    if-eqz v0, :cond_a

    check-cast p1, Lorg/dom4j/tree/ContentListFacade;

    invoke-virtual {p1}, Lorg/dom4j/tree/ContentListFacade;->getBackingList()Ljava/util/List;

    move-result-object p1

    :cond_a
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->attributes:Ljava/lang/Object;

    return-void
.end method

.method public setContent(Ljava/util/List;)V
    .registers 7

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->contentRemoved()V

    instance-of v0, p1, Lorg/dom4j/tree/ContentListFacade;

    if-eqz v0, :cond_d

    check-cast p1, Lorg/dom4j/tree/ContentListFacade;

    invoke-virtual {p1}, Lorg/dom4j/tree/ContentListFacade;->getBackingList()Ljava/util/List;

    move-result-object p1

    :cond_d
    if-nez p1, :cond_13

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    :goto_12
    return-void

    :cond_13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/dom4j/tree/DefaultElement;->createContentList(I)Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1d
    if-ge v1, v2, :cond_56

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lorg/dom4j/Node;

    if-eqz v4, :cond_41

    check-cast v0, Lorg/dom4j/Node;

    invoke-interface {v0}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v4

    if-eqz v4, :cond_37

    if-eq v4, p0, :cond_37

    invoke-interface {v0}, Lorg/dom4j/Node;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    :cond_37
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->childAdded(Lorg/dom4j/Node;)V

    :cond_3d
    :goto_3d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    :cond_41
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/dom4j/DocumentFactory;->createText(Ljava/lang/String;)Lorg/dom4j/Text;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultElement;->childAdded(Lorg/dom4j/Node;)V

    goto :goto_3d

    :cond_56
    iput-object v3, p0, Lorg/dom4j/tree/DefaultElement;->content:Ljava/lang/Object;

    goto :goto_12
.end method

.method public setDocument(Lorg/dom4j/Document;)V
    .registers 3

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Document;

    if-nez v0, :cond_8

    if-eqz p1, :cond_a

    :cond_8
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    :cond_a
    return-void
.end method

.method public setParent(Lorg/dom4j/Element;)V
    .registers 3

    iget-object v0, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    instance-of v0, v0, Lorg/dom4j/Element;

    if-nez v0, :cond_8

    if-eqz p1, :cond_a

    :cond_8
    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->parentBranch:Lorg/dom4j/Branch;

    :cond_a
    return-void
.end method

.method public setQName(Lorg/dom4j/QName;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/tree/DefaultElement;->qname:Lorg/dom4j/QName;

    return-void
.end method

.method public supportsParent()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
