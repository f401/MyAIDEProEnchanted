.class public abstract Lorg/dom4j/tree/AbstractDocumentType;
.super Lorg/dom4j/tree/AbstractNode;

# interfaces
.implements Lorg/dom4j/DocumentType;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractNode;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/dom4j/Visitor;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/dom4j/Visitor;->visit(Lorg/dom4j/DocumentType;)V

    return-void
.end method

.method public asXML()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, "<!DOCTYPE "

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->getPublicID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_29

    const-string v0, " PUBLIC \""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    :cond_29
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->getSystemID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_49

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_49

    if-nez v0, :cond_3c

    const-string v0, " SYSTEM"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3c
    const-string v0, " \""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_49
    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->getElementName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    const/16 v0, 0xa

    return v0
.end method

.method public getPath(Lorg/dom4j/Element;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->getInternalDeclarations()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_42

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_26

    :cond_3d
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_41
    return-object v0

    :cond_42
    const-string v0, ""

    goto :goto_41
.end method

.method public getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractDocumentType;->setElementName(Ljava/lang/String;)V

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

    const-string v1, " [DocumentType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->asXML()Ljava/lang/String;

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
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<!DOCTYPE "

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->getPublicID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_27

    const-string v0, " PUBLIC \""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_27
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->getSystemID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_47

    if-nez v0, :cond_3a

    const-string v0, " SYSTEM"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_3a
    const-string v0, " \""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_47
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocumentType;->getInternalDeclarations()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_78

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_78

    const-string v1, " ["

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\n  "

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_5c

    :cond_73
    const-string v0, "\n]"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_78
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
