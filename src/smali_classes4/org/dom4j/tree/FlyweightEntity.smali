.class public Lorg/dom4j/tree/FlyweightEntity;
.super Lorg/dom4j/tree/AbstractEntity;


# instance fields
.field protected name:Ljava/lang/String;

.field protected text:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractEntity;-><init>()V

    iput-object p1, p0, Lorg/dom4j/tree/FlyweightEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractEntity;-><init>()V

    iput-object p1, p0, Lorg/dom4j/tree/FlyweightEntity;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/dom4j/tree/FlyweightEntity;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createXPathResult(Lorg/dom4j/Element;)Lorg/dom4j/Node;
    .registers 5

    new-instance v0, Lorg/dom4j/tree/DefaultEntity;

    invoke-virtual {p0}, Lorg/dom4j/tree/FlyweightEntity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/dom4j/tree/FlyweightEntity;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/dom4j/tree/DefaultEntity;-><init>(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/FlyweightEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/FlyweightEntity;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/dom4j/tree/FlyweightEntity;->text:Ljava/lang/String;

    if-eqz v0, :cond_7

    iput-object p1, p0, Lorg/dom4j/tree/FlyweightEntity;->text:Ljava/lang/String;

    return-void

    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This Entity is read-only. It cannot be modified"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
