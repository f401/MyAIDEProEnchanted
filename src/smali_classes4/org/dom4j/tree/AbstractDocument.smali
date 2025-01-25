.class public abstract Lorg/dom4j/tree/AbstractDocument;
.super Lorg/dom4j/tree/AbstractBranch;

# interfaces
.implements Lorg/dom4j/Document;


# instance fields
.field protected encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractBranch;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/dom4j/Visitor;)V
    .registers 5

    invoke-interface {p1, p0}, Lorg/dom4j/Visitor;->visit(Lorg/dom4j/Document;)V

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {p1, v0}, Lorg/dom4j/Visitor;->visit(Lorg/dom4j/DocumentType;)V

    :cond_c
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->content()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_32

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/dom4j/DocumentFactory;->createText(Ljava/lang/String;)Lorg/dom4j/Text;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/dom4j/Visitor;->visit(Lorg/dom4j/Text;)V

    goto :goto_16

    :cond_32
    check-cast v0, Lorg/dom4j/Node;

    invoke-interface {v0, p1}, Lorg/dom4j/Node;->accept(Lorg/dom4j/Visitor;)V

    goto :goto_16

    :cond_38
    return-void
.end method

.method public add(Lorg/dom4j/Element;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractDocument;->checkAddElementAllowed(Lorg/dom4j/Element;)V

    invoke-super {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/Element;)V

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractDocument;->rootElementAdded(Lorg/dom4j/Element;)V

    return-void
.end method

.method public addComment(Ljava/lang/String;)Lorg/dom4j/Document;
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createComment(Ljava/lang/String;)Lorg/dom4j/Comment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractDocument;->add(Lorg/dom4j/Comment;)V

    return-object p0
.end method

.method public addElement(Ljava/lang/String;)Lorg/dom4j/Element;
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractDocument;->add(Lorg/dom4j/Element;)V

    return-object v0
.end method

.method public addElement(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    .registers 4

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractDocument;->add(Lorg/dom4j/Element;)V

    return-object v0
.end method

.method public addElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractDocument;->add(Lorg/dom4j/Element;)V

    return-object v0
.end method

.method public addProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Document;
    .registers 4

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractDocument;->add(Lorg/dom4j/ProcessingInstruction;)V

    return-object p0
.end method

.method public addProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/dom4j/Document;
    .registers 4

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractDocument;->add(Lorg/dom4j/ProcessingInstruction;)V

    return-object p0
.end method

.method public asXML()Ljava/lang/String;
    .registers 5

    new-instance v0, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v0}, Lorg/dom4j/io/OutputFormat;-><init>()V

    iget-object v1, p0, Lorg/dom4j/tree/AbstractDocument;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setEncoding(Ljava/lang/String;)V

    :try_start_a
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v2, v1, v0}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    invoke-virtual {v2, p0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    invoke-virtual {v2}, Lorg/dom4j/io/XMLWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1d} :catch_1f

    move-result-object v0

    return-object v0

    :catch_1f
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

.method public asXPathResult(Lorg/dom4j/Element;)Lorg/dom4j/Node;
    .registers 2

    return-object p0
.end method

.method protected checkAddElementAllowed(Lorg/dom4j/Element;)V
    .registers 6

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_23

    new-instance v1, Lorg/dom4j/IllegalAddException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cannot add another element to this Document as it already has a root element of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {v0}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0}, Lorg/dom4j/IllegalAddException;-><init>(Lorg/dom4j/Branch;Lorg/dom4j/Node;Ljava/lang/String;)V

    throw v1

    :cond_23
    return-void
.end method

.method protected childAdded(Lorg/dom4j/Node;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-interface {p1, p0}, Lorg/dom4j/Node;->setDocument(Lorg/dom4j/Document;)V

    :cond_5
    return-void
.end method

.method protected childRemoved(Lorg/dom4j/Node;)V
    .registers 3

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/dom4j/Node;->setDocument(Lorg/dom4j/Document;)V

    :cond_6
    return-void
.end method

.method public getDocument()Lorg/dom4j/Document;
    .registers 1

    return-object p0
.end method

.method public getNodeType()S
    .registers 2

    const/16 v0, 0x9

    return v0
.end method

.method public getPath(Lorg/dom4j/Element;)Ljava/lang/String;
    .registers 3

    const-string v0, "/"

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lorg/dom4j/Element;->getStringValue()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;
    .registers 3

    const-string v0, "/"

    return-object v0
.end method

.method public getXMLEncoding()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public normalize()V
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lorg/dom4j/Element;->normalize()V

    :cond_9
    return-void
.end method

.method public remove(Lorg/dom4j/Element;)Z
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->remove(Lorg/dom4j/Element;)Z

    move-result v0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getRootElement()Lorg/dom4j/Element;

    move-result-object v1

    if-eqz v1, :cond_10

    if-eqz v0, :cond_10

    invoke-virtual {p0, v2}, Lorg/dom4j/tree/AbstractDocument;->setRootElement(Lorg/dom4j/Element;)V

    :cond_10
    invoke-interface {p1, v2}, Lorg/dom4j/Element;->setDocument(Lorg/dom4j/Document;)V

    return v0
.end method

.method protected abstract rootElementAdded(Lorg/dom4j/Element;)V
.end method

.method public setRootElement(Lorg/dom4j/Element;)V
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->clearContent()V

    if-eqz p1, :cond_b

    invoke-super {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/Element;)V

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractDocument;->rootElementAdded(Lorg/dom4j/Element;)V

    :cond_b
    return-void
.end method

.method public setXMLEncoding(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/tree/AbstractDocument;->encoding:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " [Document: name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v0}, Lorg/dom4j/io/OutputFormat;-><init>()V

    iget-object v1, p0, Lorg/dom4j/tree/AbstractDocument;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setEncoding(Ljava/lang/String;)V

    new-instance v1, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v1, p1, v0}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    invoke-virtual {v1, p0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    return-void
.end method
