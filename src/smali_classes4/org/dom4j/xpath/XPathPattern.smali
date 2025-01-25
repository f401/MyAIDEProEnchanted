.class public Lorg/dom4j/xpath/XPathPattern;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/dom4j/rule/Pattern;


# instance fields
.field private context:Lorg/jaxen/Context;

.field private pattern:Lorg/jaxen/pattern/Pattern;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/dom4j/xpath/XPathPattern;->text:Ljava/lang/String;

    new-instance v0, Lorg/jaxen/Context;

    invoke-virtual {p0}, Lorg/dom4j/xpath/XPathPattern;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaxen/Context;-><init>(Lorg/jaxen/ContextSupport;)V

    iput-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->context:Lorg/jaxen/Context;

    :try_start_10
    invoke-static {p1}, Lorg/jaxen/pattern/PatternParser;->parse(Ljava/lang/String;)Lorg/jaxen/pattern/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->pattern:Lorg/jaxen/pattern/Pattern;
    :try_end_16
    .catch Lorg/jaxen/saxpath/SAXPathException; {:try_start_10 .. :try_end_16} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_16} :catch_22

    return-void

    :catch_17
    move-exception v0

    new-instance v1, Lorg/dom4j/InvalidXPathException;

    invoke-virtual {v0}, Lorg/jaxen/saxpath/SAXPathException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lorg/dom4j/InvalidXPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :catch_22
    move-exception v0

    new-instance v1, Lorg/dom4j/InvalidXPathException;

    invoke-direct {v1, p1, v0}, Lorg/dom4j/InvalidXPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lorg/jaxen/pattern/Pattern;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/dom4j/xpath/XPathPattern;->pattern:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {p1}, Lorg/jaxen/pattern/Pattern;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->text:Ljava/lang/String;

    new-instance v0, Lorg/jaxen/Context;

    invoke-virtual {p0}, Lorg/dom4j/xpath/XPathPattern;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaxen/Context;-><init>(Lorg/jaxen/ContextSupport;)V

    iput-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->context:Lorg/jaxen/Context;

    return-void
.end method


# virtual methods
.method protected getContextSupport()Lorg/jaxen/ContextSupport;
    .registers 6

    new-instance v0, Lorg/jaxen/ContextSupport;

    new-instance v1, Lorg/jaxen/SimpleNamespaceContext;

    invoke-direct {v1}, Lorg/jaxen/SimpleNamespaceContext;-><init>()V

    invoke-static {}, Lorg/jaxen/XPathFunctionContext;->getInstance()Lorg/jaxen/FunctionContext;

    move-result-object v2

    new-instance v3, Lorg/jaxen/SimpleVariableContext;

    invoke-direct {v3}, Lorg/jaxen/SimpleVariableContext;-><init>()V

    invoke-static {}, Lorg/jaxen/dom4j/DocumentNavigator;->getInstance()Lorg/jaxen/Navigator;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jaxen/ContextSupport;-><init>(Lorg/jaxen/NamespaceContext;Lorg/jaxen/FunctionContext;Lorg/jaxen/VariableContext;Lorg/jaxen/Navigator;)V

    return-object v0
.end method

.method public getMatchType()S
    .registers 2

    iget-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->pattern:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {v0}, Lorg/jaxen/pattern/Pattern;->getMatchType()S

    move-result v0

    return v0
.end method

.method public getMatchesNodeName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->pattern:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {v0}, Lorg/jaxen/pattern/Pattern;->getMatchesNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()D
    .registers 3

    iget-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->pattern:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {v0}, Lorg/jaxen/pattern/Pattern;->getPriority()D

    move-result-wide v0

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getUnionPatterns()[Lorg/dom4j/rule/Pattern;
    .registers 7

    iget-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->pattern:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {v0}, Lorg/jaxen/pattern/Pattern;->getUnionPatterns()[Lorg/jaxen/pattern/Pattern;

    move-result-object v2

    if-eqz v2, :cond_1a

    array-length v3, v2

    new-array v0, v3, [Lorg/dom4j/xpath/XPathPattern;

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v3, :cond_1b

    new-instance v4, Lorg/dom4j/xpath/XPathPattern;

    aget-object v5, v2, v1

    invoke-direct {v4, v5}, Lorg/dom4j/xpath/XPathPattern;-><init>(Lorg/jaxen/pattern/Pattern;)V

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1a
    const/4 v0, 0x0

    :cond_1b
    return-object v0
.end method

.method protected handleJaxenException(Lorg/jaxen/JaxenException;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/XPathException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/XPathException;

    iget-object v1, p0, Lorg/dom4j/xpath/XPathPattern;->text:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lorg/dom4j/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public matches(Lorg/dom4j/Node;)Z
    .registers 4

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/dom4j/xpath/XPathPattern;->context:Lorg/jaxen/Context;

    invoke-virtual {v1, v0}, Lorg/jaxen/Context;->setNodeSet(Ljava/util/List;)V

    iget-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->pattern:Lorg/jaxen/pattern/Pattern;

    iget-object v1, p0, Lorg/dom4j/xpath/XPathPattern;->context:Lorg/jaxen/Context;

    invoke-virtual {v0, p1, v1}, Lorg/jaxen/pattern/Pattern;->matches(Ljava/lang/Object;Lorg/jaxen/Context;)Z
    :try_end_15
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_15} :catch_17

    move-result v0

    :goto_16
    return v0

    :catch_17
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/XPathPattern;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    const/4 v0, 0x0

    goto :goto_16
.end method

.method public setVariableContext(Lorg/jaxen/VariableContext;)V
    .registers 3

    iget-object v0, p0, Lorg/dom4j/xpath/XPathPattern;->context:Lorg/jaxen/Context;

    invoke-virtual {v0}, Lorg/jaxen/Context;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jaxen/ContextSupport;->setVariableContext(Lorg/jaxen/VariableContext;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[XPathPattern: text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/xpath/XPathPattern;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " Pattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/xpath/XPathPattern;->pattern:Lorg/jaxen/pattern/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
