.class public Lorg/dom4j/xpath/DefaultXPath;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/dom4j/XPath;
.implements Lorg/dom4j/NodeFilter;
.implements Ljava/io/Serializable;


# instance fields
.field private namespaceContext:Lorg/jaxen/NamespaceContext;

.field private text:Ljava/lang/String;

.field private xpath:Lorg/jaxen/XPath;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/InvalidXPathException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/dom4j/xpath/DefaultXPath;->text:Ljava/lang/String;

    invoke-static {p1}, Lorg/dom4j/xpath/DefaultXPath;->parse(Ljava/lang/String;)Lorg/jaxen/XPath;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    return-void
.end method

.method protected static parse(Ljava/lang/String;)Lorg/jaxen/XPath;
    .registers 3

    :try_start_0
    new-instance v0, Lorg/jaxen/dom4j/Dom4jXPath;

    invoke-direct {v0, p0}, Lorg/jaxen/dom4j/Dom4jXPath;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_11

    return-object v0

    :catch_6
    move-exception v0

    new-instance v1, Lorg/dom4j/InvalidXPathException;

    invoke-virtual {v0}, Lorg/jaxen/JaxenException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/dom4j/InvalidXPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :catch_11
    move-exception v0

    new-instance v1, Lorg/dom4j/InvalidXPathException;

    invoke-direct {v1, p0, v0}, Lorg/dom4j/InvalidXPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public booleanValueOf(Ljava/lang/Object;)Z
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->booleanValueOf(Ljava/lang/Object;)Z
    :try_end_8
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_8} :catch_a

    move-result v0

    :goto_9
    return v0

    :catch_a
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    const/4 v0, 0x0

    goto :goto_9
.end method

.method public evaluate(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_16
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v0

    :cond_17
    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    const/4 v0, 0x0

    goto :goto_17
.end method

.method protected getCompareValue(Lorg/dom4j/Node;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFunctionContext()Lorg/jaxen/FunctionContext;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0}, Lorg/jaxen/XPath;->getFunctionContext()Lorg/jaxen/FunctionContext;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceContext()Lorg/jaxen/NamespaceContext;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->namespaceContext:Lorg/jaxen/NamespaceContext;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getVariableContext()Lorg/jaxen/VariableContext;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0}, Lorg/jaxen/XPath;->getVariableContext()Lorg/jaxen/VariableContext;

    move-result-object v0

    return-object v0
.end method

.method protected handleJaxenException(Lorg/jaxen/JaxenException;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/XPathException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/XPathException;

    iget-object v1, p0, Lorg/dom4j/xpath/DefaultXPath;->text:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lorg/dom4j/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public matches(Lorg/dom4j/Node;)Z
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_27

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_22

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_21
    return v0

    :cond_22
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_25
    .catch Lorg/jaxen/JaxenException; {:try_start_1 .. :try_end_25} :catch_29

    move-result v0

    goto :goto_21

    :cond_27
    move v0, v1

    goto :goto_21

    :catch_29
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    move v0, v1

    goto :goto_21
.end method

.method public numberValueOf(Ljava/lang/Object;)Ljava/lang/Number;
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->numberValueOf(Ljava/lang/Object;)Ljava/lang/Number;
    :try_end_8
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v0

    :goto_9
    return-object v0

    :catch_a
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected removeDuplicates(Ljava/util/List;Ljava/util/Map;)V
    .registers 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    :cond_21
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_25
    return-void
.end method

.method public selectNodes(Ljava/lang/Object;)Ljava/util/List;
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;
    :try_end_8
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v0

    :goto_9
    return-object v0

    :catch_a
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_9
.end method

.method public selectNodes(Ljava/lang/Object;Lorg/dom4j/XPath;)Ljava/util/List;
    .registers 4

    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/dom4j/XPath;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public selectNodes(Ljava/lang/Object;Lorg/dom4j/XPath;Z)Ljava/util/List;
    .registers 5

    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0, p3}, Lorg/dom4j/XPath;->sort(Ljava/util/List;Z)V

    return-object v0
.end method

.method public selectObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->evaluate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public selectSingleNode(Ljava/lang/Object;)Lorg/dom4j/Node;
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->selectSingleNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lorg/dom4j/Node;

    if-eqz v2, :cond_11

    check-cast v0, Lorg/dom4j/Node;

    :goto_10
    return-object v0

    :cond_11
    if-nez v0, :cond_15

    move-object v0, v1

    goto :goto_10

    :cond_15
    new-instance v2, Lorg/dom4j/XPathException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "The result of the XPath expression is not a Node. It was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " of type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/dom4j/XPathException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_40
    .catch Lorg/jaxen/JaxenException; {:try_start_1 .. :try_end_40} :catch_40

    :catch_40
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    move-object v0, v1

    goto :goto_10
.end method

.method public setFunctionContext(Lorg/jaxen/FunctionContext;)V
    .registers 3

    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->setFunctionContext(Lorg/jaxen/FunctionContext;)V

    return-void
.end method

.method protected setNSContext(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->namespaceContext:Lorg/jaxen/NamespaceContext;

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-static {p1}, Lorg/dom4j/xpath/DefaultNamespaceContext;->create(Ljava/lang/Object;)Lorg/dom4j/xpath/DefaultNamespaceContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jaxen/XPath;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V

    :cond_d
    return-void
.end method

.method public setNamespaceContext(Lorg/jaxen/NamespaceContext;)V
    .registers 3

    iput-object p1, p0, Lorg/dom4j/xpath/DefaultXPath;->namespaceContext:Lorg/jaxen/NamespaceContext;

    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V

    return-void
.end method

.method public setNamespaceURIs(Ljava/util/Map;)V
    .registers 3

    new-instance v0, Lorg/jaxen/SimpleNamespaceContext;

    invoke-direct {v0, p1}, Lorg/jaxen/SimpleNamespaceContext;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V

    return-void
.end method

.method public setVariableContext(Lorg/jaxen/VariableContext;)V
    .registers 3

    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->setVariableContext(Lorg/jaxen/VariableContext;)V

    return-void
.end method

.method public sort(Ljava/util/List;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/xpath/DefaultXPath;->sort(Ljava/util/List;Z)V

    return-void
.end method

.method protected sort(Ljava/util/List;Ljava/util/Map;)V
    .registers 4

    new-instance v0, Lorg/dom4j/xpath/DefaultXPath$1;

    invoke-direct {v0, p0, p2}, Lorg/dom4j/xpath/DefaultXPath$1;-><init>(Lorg/dom4j/xpath/DefaultXPath;Ljava/util/Map;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public sort(Ljava/util/List;Z)V
    .registers 8

    if-eqz p1, :cond_32

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_13
    if-ge v1, v2, :cond_2a

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lorg/dom4j/Node;

    if-eqz v4, :cond_26

    check-cast v0, Lorg/dom4j/Node;

    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->getCompareValue(Lorg/dom4j/Node;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    :cond_2a
    invoke-virtual {p0, p1, v3}, Lorg/dom4j/xpath/DefaultXPath;->sort(Ljava/util/List;Ljava/util/Map;)V

    if-eqz p2, :cond_32

    invoke-virtual {p0, p1, v3}, Lorg/dom4j/xpath/DefaultXPath;->removeDuplicates(Ljava/util/List;Ljava/util/Map;)V

    :cond_32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[XPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->stringValueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_8
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v0

    :goto_9
    return-object v0

    :catch_a
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    const-string v0, ""

    goto :goto_9
.end method
