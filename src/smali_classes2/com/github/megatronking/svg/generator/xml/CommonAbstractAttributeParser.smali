.class public abstract Lcom/github/megatronking/svg/generator/xml/CommonAbstractAttributeParser;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/github/megatronking/svg/generator/xml/IAttributeParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/megatronking/svg/generator/xml/IAttributeParser",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseBoolean(Lorg/dom4j/Element;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/github/megatronking/svg/generator/xml/CommonAbstractAttributeParser;->parseBoolean(Lorg/dom4j/Element;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected parseBoolean(Lorg/dom4j/Element;Ljava/lang/String;Z)Z
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/github/megatronking/svg/generator/xml/CommonAbstractAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected parseColor(Lorg/dom4j/Element;Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/github/megatronking/svg/generator/xml/CommonAbstractAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/megatronking/svg/generator/utils/Color;->convert(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected parseColor(Lorg/dom4j/Element;Ljava/lang/String;I)I
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/github/megatronking/svg/generator/xml/CommonAbstractAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/github/megatronking/svg/generator/utils/Color;->convert(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected parseDimen(Lorg/dom4j/Element;Ljava/lang/String;)F
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/github/megatronking/svg/generator/xml/CommonAbstractAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/megatronking/svg/generator/utils/Dimen;->convert(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method protected parseFloat(Lorg/dom4j/Element;Ljava/lang/String;)F
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/github/megatronking/svg/generator/xml/CommonAbstractAttributeParser;->parseFloat(Lorg/dom4j/Element;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method protected parseFloat(Lorg/dom4j/Element;Ljava/lang/String;F)F
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/github/megatronking/svg/generator/xml/CommonAbstractAttributeParser;->parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/github/megatronking/svg/generator/utils/SCU;->parseFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method protected parseString(Lorg/dom4j/Element;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-interface {p1, p2}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected parseString(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-interface {p1, p2}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return-object p3

    :cond_1
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object p3, v0

    goto :goto_1
.end method
