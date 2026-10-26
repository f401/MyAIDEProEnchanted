.class public Lorg/dom4j/tree/ElementNameIterator;
.super Lorg/dom4j/tree/FilterIterator;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/dom4j/tree/FilterIterator;-><init>(Ljava/util/Iterator;)V

    iput-object p2, p0, Lorg/dom4j/tree/ElementNameIterator;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected matches(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/dom4j/Element;

    iget-object v0, p0, Lorg/dom4j/tree/ElementNameIterator;->name:Ljava/lang/String;

    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
