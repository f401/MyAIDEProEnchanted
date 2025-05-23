.class Lorg/dom4j/io/DispatchHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/dom4j/ElementHandler;


# instance fields
.field private atRoot:Z

.field private defaultHandler:Lorg/dom4j/ElementHandler;

.field private handlerStack:Ljava/util/ArrayList;

.field private handlers:Ljava/util/HashMap;

.field private path:Ljava/lang/String;

.field private pathStack:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/DispatchHandler;->atRoot:Z

    const-string v0, "/"

    iput-object v0, p0, Lorg/dom4j/io/DispatchHandler;->path:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/DispatchHandler;->pathStack:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/DispatchHandler;->handlerStack:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/DispatchHandler;->handlers:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V
    .registers 4

    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->handlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public containsHandler(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->handlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getActiveHandlerCount()I
    .registers 2

    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->handlerStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHandler(Ljava/lang/String;)Lorg/dom4j/ElementHandler;
    .registers 3

    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->handlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/ElementHandler;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->path:Ljava/lang/String;

    return-object v0
.end method

.method public onEnd(Lorg/dom4j/ElementPath;)V
    .registers 5

    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->handlers:Ljava/util/HashMap;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->handlers:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/dom4j/io/DispatchHandler;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->handlers:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/dom4j/io/DispatchHandler;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/ElementHandler;

    iget-object v1, p0, Lorg/dom4j/io/DispatchHandler;->handlerStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/dom4j/io/DispatchHandler;->handlerStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-interface {v0, p1}, Lorg/dom4j/ElementHandler;->onEnd(Lorg/dom4j/ElementPath;)V

    :cond_28
    :goto_28
    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->pathStack:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/dom4j/io/DispatchHandler;->pathStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/dom4j/io/DispatchHandler;->path:Ljava/lang/String;

    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->pathStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_45

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/DispatchHandler;->atRoot:Z

    :cond_45
    return-void

    :cond_46
    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->handlerStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->defaultHandler:Lorg/dom4j/ElementHandler;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->defaultHandler:Lorg/dom4j/ElementHandler;

    invoke-interface {v0, p1}, Lorg/dom4j/ElementHandler;->onEnd(Lorg/dom4j/ElementPath;)V

    goto :goto_28
.end method

.method public onStart(Lorg/dom4j/ElementPath;)V
    .registers 5

    invoke-interface {p1}, Lorg/dom4j/ElementPath;->getCurrent()Lorg/dom4j/Element;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/io/DispatchHandler;->pathStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/dom4j/io/DispatchHandler;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lorg/dom4j/io/DispatchHandler;->atRoot:Z

    if-eqz v1, :cond_4c

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/dom4j/io/DispatchHandler;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {v0}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/DispatchHandler;->path:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/dom4j/io/DispatchHandler;->atRoot:Z

    :goto_2b
    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->handlers:Ljava/util/HashMap;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->handlers:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/dom4j/io/DispatchHandler;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->handlers:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/dom4j/io/DispatchHandler;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/ElementHandler;

    iget-object v1, p0, Lorg/dom4j/io/DispatchHandler;->handlerStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Lorg/dom4j/ElementHandler;->onStart(Lorg/dom4j/ElementPath;)V

    :cond_4b
    :goto_4b
    return-void

    :cond_4c
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/dom4j/io/DispatchHandler;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {v0}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/DispatchHandler;->path:Ljava/lang/String;

    goto :goto_2b

    :cond_6c
    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->handlerStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->defaultHandler:Lorg/dom4j/ElementHandler;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->defaultHandler:Lorg/dom4j/ElementHandler;

    invoke-interface {v0, p1}, Lorg/dom4j/ElementHandler;->onStart(Lorg/dom4j/ElementPath;)V

    goto :goto_4b
.end method

.method public removeHandler(Ljava/lang/String;)Lorg/dom4j/ElementHandler;
    .registers 3

    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->handlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/ElementHandler;

    return-object v0
.end method

.method public resetHandlers()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/DispatchHandler;->atRoot:Z

    const-string v0, "/"

    iput-object v0, p0, Lorg/dom4j/io/DispatchHandler;->path:Ljava/lang/String;

    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->pathStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->handlerStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->handlers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/DispatchHandler;->defaultHandler:Lorg/dom4j/ElementHandler;

    return-void
.end method

.method public setDefaultHandler(Lorg/dom4j/ElementHandler;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/io/DispatchHandler;->defaultHandler:Lorg/dom4j/ElementHandler;

    return-void
.end method
