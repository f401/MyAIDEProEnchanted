.class public Lorg/dom4j/util/AttributeHelper;
.super Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static booleanValue(Lorg/dom4j/Attribute;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Lorg/dom4j/Attribute;->getData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_2
    const-string v1, "true"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static booleanValue(Lorg/dom4j/Element;Ljava/lang/String;)Z
    .locals 1

    invoke-interface {p0, p1}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/util/AttributeHelper;->booleanValue(Lorg/dom4j/Attribute;)Z

    move-result v0

    return v0
.end method

.method public static booleanValue(Lorg/dom4j/Element;Lorg/dom4j/QName;)Z
    .locals 1

    invoke-interface {p0, p1}, Lorg/dom4j/Element;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/util/AttributeHelper;->booleanValue(Lorg/dom4j/Attribute;)Z

    move-result v0

    return v0
.end method
