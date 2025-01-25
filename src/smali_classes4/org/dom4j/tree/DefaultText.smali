.class public Lorg/dom4j/tree/DefaultText;
.super Lorg/dom4j/tree/FlyweightText;


# instance fields
.field private parent:Lorg/dom4j/Element;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/dom4j/tree/FlyweightText;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Element;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Lorg/dom4j/tree/FlyweightText;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/dom4j/tree/DefaultText;->parent:Lorg/dom4j/Element;

    return-void
.end method


# virtual methods
.method public getParent()Lorg/dom4j/Element;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/DefaultText;->parent:Lorg/dom4j/Element;

    return-object v0
.end method

.method public isReadOnly()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setParent(Lorg/dom4j/Element;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/tree/DefaultText;->parent:Lorg/dom4j/Element;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/tree/DefaultText;->text:Ljava/lang/String;

    return-void
.end method

.method public supportsParent()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
