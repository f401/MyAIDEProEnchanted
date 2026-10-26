.class public Lorg/dom4j/util/NonLazyElement;
.super Lorg/dom4j/tree/BaseElement;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/dom4j/tree/BaseElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/dom4j/util/NonLazyElement;->createAttributeList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/util/NonLazyElement;->attributes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/dom4j/util/NonLazyElement;->createContentList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/util/NonLazyElement;->content:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/dom4j/tree/BaseElement;-><init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V

    invoke-virtual {p0}, Lorg/dom4j/util/NonLazyElement;->createAttributeList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/util/NonLazyElement;->attributes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/dom4j/util/NonLazyElement;->createContentList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/util/NonLazyElement;->content:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/dom4j/tree/BaseElement;-><init>(Lorg/dom4j/QName;)V

    invoke-virtual {p0}, Lorg/dom4j/util/NonLazyElement;->createAttributeList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/util/NonLazyElement;->attributes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/dom4j/util/NonLazyElement;->createContentList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/util/NonLazyElement;->content:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;I)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/dom4j/tree/BaseElement;-><init>(Lorg/dom4j/QName;)V

    invoke-virtual {p0, p2}, Lorg/dom4j/util/NonLazyElement;->createAttributeList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/util/NonLazyElement;->attributes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/dom4j/util/NonLazyElement;->createContentList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/util/NonLazyElement;->content:Ljava/util/List;

    return-void
.end method
