.class public Lorg/dom4j/dtd/AttributeDecl;
.super Ljava/lang/Object;


# instance fields
.field private attributeName:Ljava/lang/String;

.field private elementName:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/String;

.field private valueDefault:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/dom4j/dtd/AttributeDecl;->elementName:Ljava/lang/String;

    iput-object p2, p0, Lorg/dom4j/dtd/AttributeDecl;->attributeName:Ljava/lang/String;

    iput-object p3, p0, Lorg/dom4j/dtd/AttributeDecl;->type:Ljava/lang/String;

    iput-object p5, p0, Lorg/dom4j/dtd/AttributeDecl;->value:Ljava/lang/String;

    iput-object p4, p0, Lorg/dom4j/dtd/AttributeDecl;->valueDefault:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAttributeName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/dtd/AttributeDecl;->attributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/dtd/AttributeDecl;->elementName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/dtd/AttributeDecl;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/dtd/AttributeDecl;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getValueDefault()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/dtd/AttributeDecl;->valueDefault:Ljava/lang/String;

    return-object v0
.end method

.method public setAttributeName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/dtd/AttributeDecl;->attributeName:Ljava/lang/String;

    return-void
.end method

.method public setElementName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/dtd/AttributeDecl;->elementName:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/dtd/AttributeDecl;->type:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/dtd/AttributeDecl;->value:Ljava/lang/String;

    return-void
.end method

.method public setValueDefault(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/dtd/AttributeDecl;->valueDefault:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "<!ATTLIST "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/dom4j/dtd/AttributeDecl;->elementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/dom4j/dtd/AttributeDecl;->attributeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/dom4j/dtd/AttributeDecl;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/dom4j/dtd/AttributeDecl;->valueDefault:Ljava/lang/String;

    if-eqz v1, :cond_51

    iget-object v1, p0, Lorg/dom4j/dtd/AttributeDecl;->valueDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/dom4j/dtd/AttributeDecl;->valueDefault:Ljava/lang/String;

    const-string v2, "#FIXED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/dom4j/dtd/AttributeDecl;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_47
    :goto_47
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_51
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/dom4j/dtd/AttributeDecl;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_47
.end method
