.class public Lorg/dom4j/tree/FlyweightProcessingInstruction;
.super Lorg/dom4j/tree/AbstractProcessingInstruction;


# instance fields
.field protected target:Ljava/lang/String;

.field protected text:Ljava/lang/String;

.field protected values:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractProcessingInstruction;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractProcessingInstruction;-><init>()V

    iput-object p1, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->target:Ljava/lang/String;

    iput-object p2, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->text:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lorg/dom4j/tree/FlyweightProcessingInstruction;->parseValues(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->values:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractProcessingInstruction;-><init>()V

    iput-object p1, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->target:Ljava/lang/String;

    iput-object p2, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->values:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lorg/dom4j/tree/FlyweightProcessingInstruction;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createXPathResult(Lorg/dom4j/Element;)Lorg/dom4j/Node;
    .registers 5

    new-instance v0, Lorg/dom4j/tree/DefaultProcessingInstruction;

    invoke-virtual {p0}, Lorg/dom4j/tree/FlyweightProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/dom4j/tree/FlyweightProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/dom4j/tree/DefaultProcessingInstruction;-><init>(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getValues()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->values:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public setTarget(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This PI is read-only and cannot be modified"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
