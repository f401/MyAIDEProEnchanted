.class Lorg/dom4j/dom/DOMNodeHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/w3c/dom/NodeList;


# instance fields
.field private final val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/dom4j/dom/DOMNodeHelper$1;->val$list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 2

    iget-object v0, p0, Lorg/dom4j/dom/DOMNodeHelper$1;->val$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/dom/DOMNodeHelper$1;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lorg/dom4j/dom/DOMNodeHelper$1;->val$list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_7
.end method
