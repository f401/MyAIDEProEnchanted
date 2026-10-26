.class Lorg/dom4j/io/SAXModifyElementHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/dom4j/ElementHandler;


# instance fields
.field private elemModifier:Lorg/dom4j/io/ElementModifier;

.field private modifiedElement:Lorg/dom4j/Element;


# direct methods
.method public constructor <init>(Lorg/dom4j/io/ElementModifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/dom4j/io/SAXModifyElementHandler;->elemModifier:Lorg/dom4j/io/ElementModifier;

    return-void
.end method


# virtual methods
.method protected getModifiedElement()Lorg/dom4j/Element;
    .locals 1

    iget-object v0, p0, Lorg/dom4j/io/SAXModifyElementHandler;->modifiedElement:Lorg/dom4j/Element;

    return-object v0
.end method

.method public onEnd(Lorg/dom4j/ElementPath;)V
    .locals 4

    :try_start_0
    invoke-interface {p1}, Lorg/dom4j/ElementPath;->getCurrent()Lorg/dom4j/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/dom4j/Element;->getParent()Lorg/dom4j/Element;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lorg/dom4j/Node;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    iget-object v3, p0, Lorg/dom4j/io/SAXModifyElementHandler;->elemModifier:Lorg/dom4j/io/ElementModifier;

    invoke-interface {v3, v0}, Lorg/dom4j/io/ElementModifier;->modifyElement(Lorg/dom4j/Element;)Lorg/dom4j/Element;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/SAXModifyElementHandler;->modifiedElement:Lorg/dom4j/Element;

    iget-object v0, p0, Lorg/dom4j/io/SAXModifyElementHandler;->modifiedElement:Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/io/SAXModifyElementHandler;->modifiedElement:Lorg/dom4j/Element;

    invoke-interface {v1}, Lorg/dom4j/Element;->getParent()Lorg/dom4j/Element;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/dom4j/Element;->setParent(Lorg/dom4j/Element;)V

    iget-object v0, p0, Lorg/dom4j/io/SAXModifyElementHandler;->modifiedElement:Lorg/dom4j/Element;

    invoke-interface {v1}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/dom4j/Element;->setDocument(Lorg/dom4j/Document;)V

    invoke-interface {v2, v1}, Lorg/dom4j/Element;->indexOf(Lorg/dom4j/Node;)I

    move-result v0

    invoke-interface {v2}, Lorg/dom4j/Element;->content()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/dom4j/io/SAXModifyElementHandler;->modifiedElement:Lorg/dom4j/Element;

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1}, Lorg/dom4j/Element;->detach()Lorg/dom4j/Node;

    :cond_1
    :goto_0
    instance-of v0, p1, Lorg/dom4j/io/ElementStack;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/dom4j/io/ElementStack;

    invoke-virtual {p1}, Lorg/dom4j/io/ElementStack;->popElement()Lorg/dom4j/Element;

    iget-object v0, p0, Lorg/dom4j/io/SAXModifyElementHandler;->modifiedElement:Lorg/dom4j/Element;

    invoke-virtual {p1, v0}, Lorg/dom4j/io/ElementStack;->pushElement(Lorg/dom4j/Element;)V

    :cond_2
    return-void

    :cond_3
    invoke-interface {v1}, Lorg/dom4j/Element;->isRootElement()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Lorg/dom4j/Node;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    iget-object v2, p0, Lorg/dom4j/io/SAXModifyElementHandler;->elemModifier:Lorg/dom4j/io/ElementModifier;

    invoke-interface {v2, v0}, Lorg/dom4j/io/ElementModifier;->modifyElement(Lorg/dom4j/Element;)Lorg/dom4j/Element;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/SAXModifyElementHandler;->modifiedElement:Lorg/dom4j/Element;

    iget-object v0, p0, Lorg/dom4j/io/SAXModifyElementHandler;->modifiedElement:Lorg/dom4j/Element;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/dom4j/io/SAXModifyElementHandler;->modifiedElement:Lorg/dom4j/Element;

    invoke-interface {v1}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/dom4j/Element;->setDocument(Lorg/dom4j/Document;)V

    invoke-interface {v1}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    iget-object v2, p0, Lorg/dom4j/io/SAXModifyElementHandler;->modifiedElement:Lorg/dom4j/Element;

    invoke-interface {v0, v2}, Lorg/dom4j/Document;->setRootElement(Lorg/dom4j/Element;)V

    :cond_4
    invoke-interface {v1}, Lorg/dom4j/Element;->detach()Lorg/dom4j/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/dom4j/io/SAXModifyException;

    invoke-direct {v1, v0}, Lorg/dom4j/io/SAXModifyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onStart(Lorg/dom4j/ElementPath;)V
    .locals 1

    invoke-interface {p1}, Lorg/dom4j/ElementPath;->getCurrent()Lorg/dom4j/Element;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/SAXModifyElementHandler;->modifiedElement:Lorg/dom4j/Element;

    return-void
.end method
