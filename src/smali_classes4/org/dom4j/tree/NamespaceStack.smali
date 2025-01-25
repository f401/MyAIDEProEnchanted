.class public Lorg/dom4j/tree/NamespaceStack;
.super Ljava/lang/Object;


# instance fields
.field private currentNamespaceCache:Ljava/util/Map;

.field private defaultNamespace:Lorg/dom4j/Namespace;

.field private documentFactory:Lorg/dom4j/DocumentFactory;

.field private namespaceCacheList:Ljava/util/ArrayList;

.field private namespaceStack:Ljava/util/ArrayList;

.field private rootNamespaceCache:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceCacheList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->rootNamespaceCache:Ljava/util/Map;

    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->documentFactory:Lorg/dom4j/DocumentFactory;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceCacheList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->rootNamespaceCache:Ljava/util/Map;

    iput-object p1, p0, Lorg/dom4j/tree/NamespaceStack;->documentFactory:Lorg/dom4j/DocumentFactory;

    return-void
.end method


# virtual methods
.method public addNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/tree/NamespaceStack;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    return-object v0
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceCacheList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->rootNamespaceCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    return-void
.end method

.method public contains(Lorg/dom4j/Namespace;)Z
    .registers 4

    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    :cond_c
    invoke-virtual {p0}, Lorg/dom4j/tree/NamespaceStack;->getDefaultNamespace()Lorg/dom4j/Namespace;

    move-result-object v0

    :goto_10
    if-nez v0, :cond_19

    const/4 v0, 0x0

    :goto_13
    return v0

    :cond_14
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/NamespaceStack;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    goto :goto_10

    :cond_19
    if-ne v0, p1, :cond_1d

    const/4 v0, 0x1

    goto :goto_13

    :cond_1d
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_13
.end method

.method protected createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;
    .registers 4

    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->documentFactory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    return-object v0
.end method

.method protected createQName(Ljava/lang/String;Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;
    .registers 5

    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->documentFactory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1, p3}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method protected findDefaultNamespace()Lorg/dom4j/Namespace;
    .registers 4

    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_2a

    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Namespace;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_26

    :cond_25
    :goto_25
    return-object v0

    :cond_26
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_2a
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public getAttributeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;
    .registers 10

    if-nez p3, :cond_3

    move-object p3, p2

    :cond_3
    invoke-virtual {p0}, Lorg/dom4j/tree/NamespaceStack;->getNamespaceCache()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/QName;

    if-eqz v0, :cond_10

    :goto_f
    return-object v0

    :cond_10
    if-nez p2, :cond_50

    move-object v2, p3

    :goto_13
    if-nez p1, :cond_17

    const-string p1, ""

    :cond_17
    const-string v0, ""

    const-string v1, ":"

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_42

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/dom4j/tree/NamespaceStack;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3a

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_3a
    :goto_3a
    invoke-virtual {p0, v2, p3, v1, v0}, Lorg/dom4j/tree/NamespaceStack;->pushQName(Ljava/lang/String;Ljava/lang/String;Lorg/dom4j/Namespace;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-interface {v3, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_42
    sget-object v1, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3a

    move-object v2, p3

    goto :goto_3a

    :cond_50
    move-object v2, p2

    goto :goto_13
.end method

.method public getDefaultNamespace()Lorg/dom4j/Namespace;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->defaultNamespace:Lorg/dom4j/Namespace;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lorg/dom4j/tree/NamespaceStack;->findDefaultNamespace()Lorg/dom4j/Namespace;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->defaultNamespace:Lorg/dom4j/Namespace;

    :cond_a
    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->defaultNamespace:Lorg/dom4j/Namespace;

    return-object v0
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->documentFactory:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method public getNamespace(I)Lorg/dom4j/Namespace;
    .registers 3

    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Namespace;

    return-object v0
.end method

.method protected getNamespaceCache()Ljava/util/Map;
    .registers 4

    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-gez v1, :cond_15

    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->rootNamespaceCache:Ljava/util/Map;

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    :cond_12
    :goto_12
    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    return-object v0

    :cond_15
    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceCacheList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceCacheList:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_12
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;
    .registers 5

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_d
    if-ltz v1, :cond_26

    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Namespace;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    :goto_21
    return-object v0

    :cond_22
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_d

    :cond_26
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;
    .registers 9

    if-nez p2, :cond_30

    move-object v1, p3

    move-object v2, p3

    :goto_4
    if-nez p1, :cond_8

    const-string p1, ""

    :cond_8
    const-string v0, ""

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_35

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_27

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_27
    :goto_27
    invoke-virtual {p0, v0, p1}, Lorg/dom4j/tree/NamespaceStack;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3, v0}, Lorg/dom4j/tree/NamespaceStack;->pushQName(Ljava/lang/String;Ljava/lang/String;Lorg/dom4j/Namespace;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0

    :cond_30
    if-nez p3, :cond_41

    move-object v1, p2

    move-object v2, p2

    goto :goto_4

    :cond_35
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_27

    move-object v1, v2

    goto :goto_27

    :cond_41
    move-object v1, p2

    move-object v2, p3

    goto :goto_4
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/NamespaceStack;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public pop()Lorg/dom4j/Namespace;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/NamespaceStack;->remove(I)Lorg/dom4j/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public pop(Ljava/lang/String;)Lorg/dom4j/Namespace;
    .registers 6

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_d
    if-ltz v1, :cond_43

    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Namespace;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {p0, v1}, Lorg/dom4j/tree/NamespaceStack;->remove(I)Lorg/dom4j/Namespace;

    :goto_24
    if-nez v0, :cond_3e

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Warning: missing namespace prefix ignored: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3e
    return-object v0

    :cond_3f
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_d

    :cond_43
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public push(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-nez p2, :cond_4

    const-string p2, ""

    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/tree/NamespaceStack;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    return-void
.end method

.method public push(Lorg/dom4j/Namespace;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceCacheList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1b

    :cond_19
    iput-object p1, p0, Lorg/dom4j/tree/NamespaceStack;->defaultNamespace:Lorg/dom4j/Namespace;

    :cond_1b
    return-void
.end method

.method protected pushQName(Ljava/lang/String;Ljava/lang/String;Lorg/dom4j/Namespace;Ljava/lang/String;)Lorg/dom4j/QName;
    .registers 6

    if-eqz p4, :cond_8

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->defaultNamespace:Lorg/dom4j/Namespace;

    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lorg/dom4j/tree/NamespaceStack;->createQName(Ljava/lang/String;Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method protected remove(I)Lorg/dom4j/Namespace;
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Namespace;

    iget-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iput-object v2, p0, Lorg/dom4j/tree/NamespaceStack;->defaultNamespace:Lorg/dom4j/Namespace;

    iput-object v2, p0, Lorg/dom4j/tree/NamespaceStack;->currentNamespaceCache:Ljava/util/Map;

    return-object v0
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/tree/NamespaceStack;->documentFactory:Lorg/dom4j/DocumentFactory;

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " Stack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/tree/NamespaceStack;->namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
