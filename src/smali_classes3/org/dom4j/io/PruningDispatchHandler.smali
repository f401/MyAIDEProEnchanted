.class Lorg/dom4j/io/PruningDispatchHandler;
.super Lorg/dom4j/io/DispatchHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/dom4j/io/DispatchHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lorg/dom4j/ElementPath;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/dom4j/io/DispatchHandler;->onEnd(Lorg/dom4j/ElementPath;)V

    invoke-virtual {p0}, Lorg/dom4j/io/PruningDispatchHandler;->getActiveHandlerCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/dom4j/ElementPath;->getCurrent()Lorg/dom4j/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/dom4j/Element;->detach()Lorg/dom4j/Node;

    :cond_0
    return-void
.end method
