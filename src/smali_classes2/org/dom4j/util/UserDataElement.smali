.class public Lorg/dom4j/util/UserDataElement;
.super Lorg/dom4j/tree/DefaultElement;


# instance fields
.field private data:Ljava/lang/Object;


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


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    invoke-super {p0}, Lorg/dom4j/tree/DefaultElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/util/UserDataElement;

    if-eq v0, p0, :cond_0

    invoke-virtual {p0}, Lorg/dom4j/util/UserDataElement;->getCopyOfUserData()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lorg/dom4j/util/UserDataElement;->data:Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method protected createElement(Ljava/lang/String;)Lorg/dom4j/Element;
    .registers 4

    invoke-virtual {p0}, Lorg/dom4j/util/UserDataElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/util/UserDataElement;->getCopyOfUserData()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setData(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .registers 4

    invoke-virtual {p0}, Lorg/dom4j/util/UserDataElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/util/UserDataElement;->getCopyOfUserData()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setData(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected getCopyOfUserData()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/util/UserDataElement;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/util/UserDataElement;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/util/UserDataElement;->data:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Lorg/dom4j/tree/DefaultElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " userData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/util/UserDataElement;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
