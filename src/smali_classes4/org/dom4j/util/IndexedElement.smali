.class public Lorg/dom4j/util/IndexedElement;
.super Lorg/dom4j/tree/DefaultElement;


# instance fields
.field private attributeIndex:Ljava/util/Map;

.field private elementIndex:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultElement;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultElement;-><init>(Lorg/dom4j/QName;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/dom4j/tree/DefaultElement;-><init>(Lorg/dom4j/QName;I)V

    return-void
.end method


# virtual methods
.method protected addNode(Lorg/dom4j/Node;)V
    .registers 3

    invoke-super {p0, p1}, Lorg/dom4j/tree/DefaultElement;->addNode(Lorg/dom4j/Node;)V

    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    if-eqz v0, :cond_11

    instance-of v0, p1, Lorg/dom4j/Element;

    if-eqz v0, :cond_11

    check-cast p1, Lorg/dom4j/Element;

    invoke-virtual {p0, p1}, Lorg/dom4j/util/IndexedElement;->addToElementIndex(Lorg/dom4j/Element;)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Ljava/util/Map;

    if-eqz v0, :cond_10

    instance-of v0, p1, Lorg/dom4j/Attribute;

    if-eqz v0, :cond_10

    check-cast p1, Lorg/dom4j/Attribute;

    invoke-virtual {p0, p1}, Lorg/dom4j/util/IndexedElement;->addToAttributeIndex(Lorg/dom4j/Attribute;)V

    goto :goto_10
.end method

.method protected addToAttributeIndex(Ljava/lang/Object;Lorg/dom4j/Attribute;)V
    .registers 4

    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method protected addToAttributeIndex(Lorg/dom4j/Attribute;)V
    .registers 4

    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1}, Lorg/dom4j/util/IndexedElement;->addToAttributeIndex(Ljava/lang/Object;Lorg/dom4j/Attribute;)V

    invoke-virtual {p0, v1, p1}, Lorg/dom4j/util/IndexedElement;->addToAttributeIndex(Ljava/lang/Object;Lorg/dom4j/Attribute;)V

    return-void
.end method

.method protected addToElementIndex(Ljava/lang/Object;Lorg/dom4j/Element;)V
    .registers 5

    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    return-void

    :cond_e
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_18

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_18
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->createList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d
.end method

.method protected addToElementIndex(Lorg/dom4j/Element;)V
    .registers 4

    invoke-interface {p1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1}, Lorg/dom4j/util/IndexedElement;->addToElementIndex(Ljava/lang/Object;Lorg/dom4j/Element;)V

    invoke-virtual {p0, v1, p1}, Lorg/dom4j/util/IndexedElement;->addToElementIndex(Ljava/lang/Object;Lorg/dom4j/Element;)V

    return-void
.end method

.method protected asElement(Ljava/lang/Object;)Lorg/dom4j/Element;
    .registers 4

    instance-of v0, p1, Lorg/dom4j/Element;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/dom4j/Element;

    :goto_6
    return-object p1

    :cond_7
    if-eqz p1, :cond_1b

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1b

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    move-object p1, v0

    goto :goto_6

    :cond_1b
    const/4 p1, 0x0

    goto :goto_6
.end method

.method protected asElementIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/util/IndexedElement;->asElementList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected asElementList(Ljava/lang/Object;)Ljava/util/List;
    .registers 6

    instance-of v0, p1, Lorg/dom4j/Element;

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lorg/dom4j/util/IndexedElement;->createSingleResultList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    if-eqz p1, :cond_22

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_16
    if-ge v1, v2, :cond_8

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_22
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->createEmptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_8
.end method

.method public attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->attributeIndex()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    return-object v0
.end method

.method public attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->attributeIndex()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    return-object v0
.end method

.method protected attributeIndex()Ljava/util/Map;
    .registers 3

    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Ljava/util/Map;

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->createAttributeIndex()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->attributeIterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    invoke-virtual {p0, v0}, Lorg/dom4j/util/IndexedElement;->addToAttributeIndex(Lorg/dom4j/Attribute;)V

    goto :goto_e

    :cond_1e
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Ljava/util/Map;

    return-object v0
.end method

.method protected createAttributeIndex()Ljava/util/Map;
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->createIndex()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected createElementIndex()Ljava/util/Map;
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->createIndex()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected createIndex()Ljava/util/Map;
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method protected createList()Ljava/util/List;
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public element(Ljava/lang/String;)Lorg/dom4j/Element;
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->elementIndex()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/util/IndexedElement;->asElement(Ljava/lang/Object;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method public element(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->elementIndex()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/util/IndexedElement;->asElement(Ljava/lang/Object;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method protected elementIndex()Ljava/util/Map;
    .registers 3

    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->createElementIndex()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->elementIterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    invoke-virtual {p0, v0}, Lorg/dom4j/util/IndexedElement;->addToElementIndex(Lorg/dom4j/Element;)V

    goto :goto_e

    :cond_1e
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    return-object v0
.end method

.method public elements(Ljava/lang/String;)Ljava/util/List;
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->elementIndex()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/util/IndexedElement;->asElementList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public elements(Lorg/dom4j/QName;)Ljava/util/List;
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->elementIndex()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/util/IndexedElement;->asElementList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected removeFromAttributeIndex(Ljava/lang/Object;Lorg/dom4j/Attribute;)V
    .registers 4

    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    return-void
.end method

.method protected removeFromAttributeIndex(Lorg/dom4j/Attribute;)V
    .registers 4

    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1}, Lorg/dom4j/util/IndexedElement;->removeFromAttributeIndex(Ljava/lang/Object;Lorg/dom4j/Attribute;)V

    invoke-virtual {p0, v1, p1}, Lorg/dom4j/util/IndexedElement;->removeFromAttributeIndex(Ljava/lang/Object;Lorg/dom4j/Attribute;)V

    return-void
.end method

.method protected removeFromElementIndex(Ljava/lang/Object;Lorg/dom4j/Element;)V
    .registers 5

    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_10

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method protected removeFromElementIndex(Lorg/dom4j/Element;)V
    .registers 4

    invoke-interface {p1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1}, Lorg/dom4j/util/IndexedElement;->removeFromElementIndex(Ljava/lang/Object;Lorg/dom4j/Element;)V

    invoke-virtual {p0, v1, p1}, Lorg/dom4j/util/IndexedElement;->removeFromElementIndex(Ljava/lang/Object;Lorg/dom4j/Element;)V

    return-void
.end method

.method protected removeNode(Lorg/dom4j/Node;)Z
    .registers 3

    invoke-super {p0, p1}, Lorg/dom4j/tree/DefaultElement;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    if-eqz v0, :cond_15

    instance-of v0, p1, Lorg/dom4j/Element;

    if-eqz v0, :cond_15

    check-cast p1, Lorg/dom4j/Element;

    invoke-virtual {p0, p1}, Lorg/dom4j/util/IndexedElement;->removeFromElementIndex(Lorg/dom4j/Element;)V

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Ljava/util/Map;

    if-eqz v0, :cond_13

    instance-of v0, p1, Lorg/dom4j/Attribute;

    if-eqz v0, :cond_13

    check-cast p1, Lorg/dom4j/Attribute;

    invoke-virtual {p0, p1}, Lorg/dom4j/util/IndexedElement;->removeFromAttributeIndex(Lorg/dom4j/Attribute;)V

    goto :goto_13

    :cond_23
    const/4 v0, 0x0

    goto :goto_14
.end method
