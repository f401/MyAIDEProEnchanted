.class public Lorg/dom4j/tree/DefaultNamespace;
.super Lorg/dom4j/Namespace;


# instance fields
.field private parent:Lorg/dom4j/Element;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/dom4j/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lorg/dom4j/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/dom4j/tree/DefaultNamespace;->parent:Lorg/dom4j/Element;

    return-void
.end method


# virtual methods
.method protected createHashCode()I
    .registers 3

    invoke-super {p0}, Lorg/dom4j/Namespace;->createHashCode()I

    move-result v0

    iget-object v1, p0, Lorg/dom4j/tree/DefaultNamespace;->parent:Lorg/dom4j/Element;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lorg/dom4j/tree/DefaultNamespace;->parent:Lorg/dom4j/Element;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_f
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lorg/dom4j/tree/DefaultNamespace;

    if-eqz v0, :cond_12

    move-object v0, p1

    check-cast v0, Lorg/dom4j/tree/DefaultNamespace;

    iget-object v0, v0, Lorg/dom4j/tree/DefaultNamespace;->parent:Lorg/dom4j/Element;

    iget-object v1, p0, Lorg/dom4j/tree/DefaultNamespace;->parent:Lorg/dom4j/Element;

    if-ne v0, v1, :cond_12

    invoke-super {p0, p1}, Lorg/dom4j/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getParent()Lorg/dom4j/Element;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/DefaultNamespace;->parent:Lorg/dom4j/Element;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-super {p0}, Lorg/dom4j/Namespace;->hashCode()I

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setParent(Lorg/dom4j/Element;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/tree/DefaultNamespace;->parent:Lorg/dom4j/Element;

    return-void
.end method

.method public supportsParent()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
