.class public Lorg/dom4j/xpath/DefaultNamespaceContext;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jaxen/NamespaceContext;
.implements Ljava/io/Serializable;


# instance fields
.field private final element:Lorg/dom4j/Element;


# direct methods
.method public constructor <init>(Lorg/dom4j/Element;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/dom4j/xpath/DefaultNamespaceContext;->element:Lorg/dom4j/Element;

    return-void
.end method

.method public static create(Ljava/lang/Object;)Lorg/dom4j/xpath/DefaultNamespaceContext;
    .registers 3

    const/4 v0, 0x0

    instance-of v1, p0, Lorg/dom4j/Element;

    if-eqz v1, :cond_f

    check-cast p0, Lorg/dom4j/Element;

    :goto_7
    if-eqz p0, :cond_e

    new-instance v0, Lorg/dom4j/xpath/DefaultNamespaceContext;

    invoke-direct {v0, p0}, Lorg/dom4j/xpath/DefaultNamespaceContext;-><init>(Lorg/dom4j/Element;)V

    :cond_e
    return-object v0

    :cond_f
    instance-of v1, p0, Lorg/dom4j/Document;

    if-eqz v1, :cond_1a

    check-cast p0, Lorg/dom4j/Document;

    invoke-interface {p0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object p0

    goto :goto_7

    :cond_1a
    instance-of v1, p0, Lorg/dom4j/Node;

    if-eqz v1, :cond_25

    check-cast p0, Lorg/dom4j/Node;

    invoke-interface {p0}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object p0

    goto :goto_7

    :cond_25
    move-object p0, v0

    goto :goto_7
.end method


# virtual methods
.method public translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    iget-object v0, p0, Lorg/dom4j/xpath/DefaultNamespaceContext;->element:Lorg/dom4j/Element;

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method
