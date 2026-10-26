.class public Lorg/dom4j/tree/ElementQNameIterator;
.super Lorg/dom4j/tree/FilterIterator;


# instance fields
.field private qName:Lorg/dom4j/QName;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lorg/dom4j/QName;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/dom4j/tree/FilterIterator;-><init>(Ljava/util/Iterator;)V

    iput-object p2, p0, Lorg/dom4j/tree/ElementQNameIterator;->qName:Lorg/dom4j/QName;

    return-void
.end method


# virtual methods
.method protected matches(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/dom4j/Element;

    iget-object v0, p0, Lorg/dom4j/tree/ElementQNameIterator;->qName:Lorg/dom4j/QName;

    invoke-interface {p1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
