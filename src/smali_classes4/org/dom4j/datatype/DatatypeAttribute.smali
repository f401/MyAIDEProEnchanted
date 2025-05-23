.class public Lorg/dom4j/datatype/DatatypeAttribute;
.super Lorg/dom4j/tree/AbstractAttribute;

# interfaces
.implements Lcom/sun/msv/datatype/SerializationContext;
.implements Lorg/relaxng/datatype/ValidationContext;


# instance fields
.field private data:Ljava/lang/Object;

.field private datatype:Lcom/sun/msv/datatype/xsd/XSDatatype;

.field private parent:Lorg/dom4j/Element;

.field private qname:Lorg/dom4j/QName;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/dom4j/QName;Lcom/sun/msv/datatype/xsd/XSDatatype;)V
    .registers 3

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractAttribute;-><init>()V

    iput-object p1, p0, Lorg/dom4j/datatype/DatatypeAttribute;->qname:Lorg/dom4j/QName;

    iput-object p2, p0, Lorg/dom4j/datatype/DatatypeAttribute;->datatype:Lcom/sun/msv/datatype/xsd/XSDatatype;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;Lcom/sun/msv/datatype/xsd/XSDatatype;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractAttribute;-><init>()V

    iput-object p1, p0, Lorg/dom4j/datatype/DatatypeAttribute;->qname:Lorg/dom4j/QName;

    iput-object p2, p0, Lorg/dom4j/datatype/DatatypeAttribute;->datatype:Lcom/sun/msv/datatype/xsd/XSDatatype;

    iput-object p3, p0, Lorg/dom4j/datatype/DatatypeAttribute;->text:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lorg/dom4j/datatype/DatatypeAttribute;->convertToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/datatype/DatatypeAttribute;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected convertToValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeAttribute;->datatype:Lcom/sun/msv/datatype/xsd/XSDatatype;

    instance-of v0, v0, Lcom/sun/msv/datatype/DatabindableDatatype;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeAttribute;->datatype:Lcom/sun/msv/datatype/xsd/XSDatatype;

    invoke-interface {v0, p1, p0}, Lcom/sun/msv/datatype/DatabindableDatatype;->createJavaObject(Ljava/lang/String;Lorg/relaxng/datatype/ValidationContext;)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeAttribute;->datatype:Lcom/sun/msv/datatype/xsd/XSDatatype;

    invoke-interface {v0, p1, p0}, Lcom/sun/msv/datatype/xsd/XSDatatype;->createValue(Ljava/lang/String;Lorg/relaxng/datatype/ValidationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
.end method

.method public getBaseUri()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeAttribute;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/datatype/DatatypeAttribute;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->getNamespaceForURI(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getParent()Lorg/dom4j/Element;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeAttribute;->parent:Lorg/dom4j/Element;

    return-object v0
.end method

.method public getQName()Lorg/dom4j/QName;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeAttribute;->qname:Lorg/dom4j/QName;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeAttribute;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getXSDatatype()Lcom/sun/msv/datatype/xsd/XSDatatype;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeAttribute;->datatype:Lcom/sun/msv/datatype/xsd/XSDatatype;

    return-object v0
.end method

.method public isNotation(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isUnparsedEntity(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public resolveNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/datatype/DatatypeAttribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lorg/dom4j/datatype/DatatypeAttribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lorg/dom4j/datatype/DatatypeAttribute;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_20
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public setData(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeAttribute;->datatype:Lcom/sun/msv/datatype/xsd/XSDatatype;

    invoke-interface {v0, p1, p0}, Lcom/sun/msv/datatype/xsd/XSDatatype;->convertToLexicalValue(Ljava/lang/Object;Lcom/sun/msv/datatype/SerializationContext;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/datatype/DatatypeAttribute;->validate(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/dom4j/datatype/DatatypeAttribute;->text:Ljava/lang/String;

    iput-object p1, p0, Lorg/dom4j/datatype/DatatypeAttribute;->data:Ljava/lang/Object;

    return-void
.end method

.method public setParent(Lorg/dom4j/Element;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/datatype/DatatypeAttribute;->parent:Lorg/dom4j/Element;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/datatype/DatatypeAttribute;->validate(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/dom4j/datatype/DatatypeAttribute;->text:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/dom4j/datatype/DatatypeAttribute;->convertToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/datatype/DatatypeAttribute;->data:Ljava/lang/Object;

    return-void
.end method

.method public supportsParent()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " [Attribute: name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/datatype/DatatypeAttribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " value \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/datatype/DatatypeAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/datatype/DatatypeAttribute;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeAttribute;->datatype:Lcom/sun/msv/datatype/xsd/XSDatatype;

    invoke-interface {v0, p1, p0}, Lcom/sun/msv/datatype/xsd/XSDatatype;->checkValid(Ljava/lang/String;Lorg/relaxng/datatype/ValidationContext;)V
    :try_end_5
    .catch Lorg/relaxng/datatype/DatatypeException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/relaxng/datatype/DatatypeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
