.class public Lorg/dom4j/bean/BeanAttributeList;
.super Ljava/util/AbstractList;


# instance fields
.field private attributes:[Lorg/dom4j/bean/BeanAttribute;

.field private beanMetaData:Lorg/dom4j/bean/BeanMetaData;

.field private parent:Lorg/dom4j/bean/BeanElement;


# direct methods
.method public constructor <init>(Lorg/dom4j/bean/BeanElement;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lorg/dom4j/bean/BeanAttributeList;->parent:Lorg/dom4j/bean/BeanElement;

    invoke-virtual {p1}, Lorg/dom4j/bean/BeanElement;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/dom4j/bean/BeanMetaData;->get(Ljava/lang/Class;)Lorg/dom4j/bean/BeanMetaData;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->beanMetaData:Lorg/dom4j/bean/BeanMetaData;

    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->beanMetaData:Lorg/dom4j/bean/BeanMetaData;

    invoke-virtual {v0}, Lorg/dom4j/bean/BeanMetaData;->attributeCount()I

    move-result v0

    new-array v0, v0, [Lorg/dom4j/bean/BeanAttribute;

    iput-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/dom4j/bean/BeanElement;Lorg/dom4j/bean/BeanMetaData;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lorg/dom4j/bean/BeanAttributeList;->parent:Lorg/dom4j/bean/BeanElement;

    iput-object p2, p0, Lorg/dom4j/bean/BeanAttributeList;->beanMetaData:Lorg/dom4j/bean/BeanMetaData;

    invoke-virtual {p2}, Lorg/dom4j/bean/BeanMetaData;->attributeCount()I

    move-result v0

    new-array v0, v0, [Lorg/dom4j/bean/BeanAttribute;

    iput-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add(int,Object) unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add(Object) unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 1

    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->beanMetaData:Lorg/dom4j/bean/BeanMetaData;

    invoke-virtual {v0, p1}, Lorg/dom4j/bean/BeanMetaData;->getIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/dom4j/bean/BeanAttributeList;->attribute(I)Lorg/dom4j/bean/BeanAttribute;

    move-result-object v0

    return-object v0
.end method

.method public attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;
    .locals 1

    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->beanMetaData:Lorg/dom4j/bean/BeanMetaData;

    invoke-virtual {v0, p1}, Lorg/dom4j/bean/BeanMetaData;->getIndex(Lorg/dom4j/QName;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/dom4j/bean/BeanAttributeList;->attribute(I)Lorg/dom4j/bean/BeanAttribute;

    move-result-object v0

    return-object v0
.end method

.method public attribute(I)Lorg/dom4j/bean/BeanAttribute;
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    array-length v0, v0

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->parent:Lorg/dom4j/bean/BeanElement;

    invoke-virtual {p0, v0, p1}, Lorg/dom4j/bean/BeanAttributeList;->createAttribute(Lorg/dom4j/bean/BeanElement;I)Lorg/dom4j/bean/BeanAttribute;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    aput-object v0, v1, p1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/dom4j/bean/BeanAttribute;->setValue(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected createAttribute(Lorg/dom4j/bean/BeanElement;I)Lorg/dom4j/bean/BeanAttribute;
    .locals 1

    new-instance v0, Lorg/dom4j/bean/BeanAttribute;

    invoke-direct {v0, p0, p2}, Lorg/dom4j/bean/BeanAttribute;-><init>(Lorg/dom4j/bean/BeanAttributeList;I)V

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->parent:Lorg/dom4j/bean/BeanElement;

    invoke-virtual {p0, v0, p1}, Lorg/dom4j/bean/BeanAttributeList;->createAttribute(Lorg/dom4j/bean/BeanElement;I)Lorg/dom4j/bean/BeanAttribute;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    aput-object v0, v1, p1

    :cond_0
    return-object v0
.end method

.method public getData(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->beanMetaData:Lorg/dom4j/bean/BeanMetaData;

    iget-object v1, p0, Lorg/dom4j/bean/BeanAttributeList;->parent:Lorg/dom4j/bean/BeanElement;

    invoke-virtual {v1}, Lorg/dom4j/bean/BeanElement;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/dom4j/bean/BeanMetaData;->getData(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/dom4j/bean/BeanElement;
    .locals 1

    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->parent:Lorg/dom4j/bean/BeanElement;

    return-object v0
.end method

.method public getQName(I)Lorg/dom4j/QName;
    .locals 1

    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->beanMetaData:Lorg/dom4j/bean/BeanMetaData;

    invoke-virtual {v0, p1}, Lorg/dom4j/bean/BeanMetaData;->getQName(I)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lorg/dom4j/bean/BeanAttributeList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/bean/BeanAttribute;

    invoke-virtual {v0}, Lorg/dom4j/bean/BeanAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/dom4j/bean/BeanAttribute;->setValue(Ljava/lang/String;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "set(int,Object) unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setData(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->beanMetaData:Lorg/dom4j/bean/BeanMetaData;

    iget-object v1, p0, Lorg/dom4j/bean/BeanAttributeList;->parent:Lorg/dom4j/bean/BeanElement;

    invoke-virtual {v1}, Lorg/dom4j/bean/BeanElement;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lorg/dom4j/bean/BeanMetaData;->setData(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/dom4j/bean/BeanAttributeList;->attributes:[Lorg/dom4j/bean/BeanAttribute;

    array-length v0, v0

    return v0
.end method
