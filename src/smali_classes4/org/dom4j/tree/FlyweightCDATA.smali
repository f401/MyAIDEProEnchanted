.class public Lorg/dom4j/tree/FlyweightCDATA;
.super Lorg/dom4j/tree/AbstractCDATA;

# interfaces
.implements Lorg/dom4j/CDATA;


# instance fields
.field protected text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractCDATA;-><init>()V

    iput-object p1, p0, Lorg/dom4j/tree/FlyweightCDATA;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createXPathResult(Lorg/dom4j/Element;)Lorg/dom4j/Node;
    .registers 4

    new-instance v0, Lorg/dom4j/tree/DefaultCDATA;

    invoke-virtual {p0}, Lorg/dom4j/tree/FlyweightCDATA;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/dom4j/tree/DefaultCDATA;-><init>(Lorg/dom4j/Element;Ljava/lang/String;)V

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/FlyweightCDATA;->text:Ljava/lang/String;

    return-object v0
.end method
