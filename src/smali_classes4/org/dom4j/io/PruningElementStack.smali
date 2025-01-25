.class Lorg/dom4j/io/PruningElementStack;
.super Lorg/dom4j/io/ElementStack;


# instance fields
.field private elementHandler:Lorg/dom4j/ElementHandler;

.field private matchingElementIndex:I

.field private path:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lorg/dom4j/ElementHandler;)V
    .registers 3

    invoke-direct {p0}, Lorg/dom4j/io/ElementStack;-><init>()V

    iput-object p1, p0, Lorg/dom4j/io/PruningElementStack;->path:[Ljava/lang/String;

    iput-object p2, p0, Lorg/dom4j/io/PruningElementStack;->elementHandler:Lorg/dom4j/ElementHandler;

    invoke-direct {p0}, Lorg/dom4j/io/PruningElementStack;->checkPath()V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lorg/dom4j/ElementHandler;I)V
    .registers 4

    invoke-direct {p0, p3}, Lorg/dom4j/io/ElementStack;-><init>(I)V

    iput-object p1, p0, Lorg/dom4j/io/PruningElementStack;->path:[Ljava/lang/String;

    iput-object p2, p0, Lorg/dom4j/io/PruningElementStack;->elementHandler:Lorg/dom4j/ElementHandler;

    invoke-direct {p0}, Lorg/dom4j/io/PruningElementStack;->checkPath()V

    return-void
.end method

.method private checkPath()V
    .registers 4

    iget-object v0, p0, Lorg/dom4j/io/PruningElementStack;->path:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_28

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid path of length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/dom4j/io/PruningElementStack;->path:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " it must be greater than 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    iget-object v0, p0, Lorg/dom4j/io/PruningElementStack;->path:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/dom4j/io/PruningElementStack;->matchingElementIndex:I

    return-void
.end method


# virtual methods
.method protected pathMatches(Lorg/dom4j/Element;Lorg/dom4j/Element;)V
    .registers 4

    iget-object v0, p0, Lorg/dom4j/io/PruningElementStack;->elementHandler:Lorg/dom4j/ElementHandler;

    invoke-interface {v0, p0}, Lorg/dom4j/ElementHandler;->onEnd(Lorg/dom4j/ElementPath;)V

    invoke-interface {p1, p2}, Lorg/dom4j/Element;->remove(Lorg/dom4j/Element;)Z

    return-void
.end method

.method public popElement()Lorg/dom4j/Element;
    .registers 6

    const/4 v1, 0x0

    invoke-super {p0}, Lorg/dom4j/io/ElementStack;->popElement()Lorg/dom4j/Element;

    move-result-object v3

    iget v0, p0, Lorg/dom4j/io/PruningElementStack;->lastElementIndex:I

    iget v2, p0, Lorg/dom4j/io/PruningElementStack;->matchingElementIndex:I

    if-ne v0, v2, :cond_2e

    iget v0, p0, Lorg/dom4j/io/PruningElementStack;->lastElementIndex:I

    if-ltz v0, :cond_2e

    iget v0, p0, Lorg/dom4j/io/PruningElementStack;->lastElementIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v3, v0}, Lorg/dom4j/io/PruningElementStack;->validElement(Lorg/dom4j/Element;I)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v2, 0x0

    move-object v0, v1

    :goto_1b
    iget v4, p0, Lorg/dom4j/io/PruningElementStack;->lastElementIndex:I

    if-gt v2, v4, :cond_32

    iget-object v0, p0, Lorg/dom4j/io/PruningElementStack;->stack:[Lorg/dom4j/Element;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, v2}, Lorg/dom4j/io/PruningElementStack;->validElement(Lorg/dom4j/Element;I)Z

    move-result v4

    if-nez v4, :cond_2f

    :goto_29
    if-eqz v1, :cond_2e

    invoke-virtual {p0, v1, v3}, Lorg/dom4j/io/PruningElementStack;->pathMatches(Lorg/dom4j/Element;Lorg/dom4j/Element;)V

    :cond_2e
    return-object v3

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_32
    move-object v1, v0

    goto :goto_29
.end method

.method protected validElement(Lorg/dom4j/Element;I)Z
    .registers 5

    iget-object v0, p0, Lorg/dom4j/io/PruningElementStack;->path:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    if-eqz v0, :cond_15

    if-eqz v1, :cond_15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_b

    :cond_15
    const/4 v0, 0x0

    goto :goto_b
.end method
