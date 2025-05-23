.class public abstract Lorg/dom4j/tree/AbstractBranch;
.super Lorg/dom4j/tree/AbstractNode;

# interfaces
.implements Lorg/dom4j/Branch;


# static fields
.field protected static final DEFAULT_CONTENT_LIST_SIZE:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/dom4j/tree/AbstractNode;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lorg/dom4j/Comment;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->addNode(Lorg/dom4j/Node;)V

    return-void
.end method

.method public add(Lorg/dom4j/Element;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->addNode(Lorg/dom4j/Node;)V

    return-void
.end method

.method public add(Lorg/dom4j/Node;)V
    .registers 3

    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeType()S

    move-result v0

    sparse-switch v0, :sswitch_data_1e

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->invalidNodeTypeAddException(Lorg/dom4j/Node;)V

    :goto_a
    return-void

    :sswitch_b
    check-cast p1, Lorg/dom4j/Element;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/Element;)V

    goto :goto_a

    :sswitch_11
    check-cast p1, Lorg/dom4j/Comment;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/Comment;)V

    goto :goto_a

    :sswitch_17
    check-cast p1, Lorg/dom4j/ProcessingInstruction;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/ProcessingInstruction;)V

    goto :goto_a

    nop

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_b
        0x7 -> :sswitch_17
        0x8 -> :sswitch_11
    .end sparse-switch
.end method

.method public add(Lorg/dom4j/ProcessingInstruction;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->addNode(Lorg/dom4j/Node;)V

    return-void
.end method

.method public addElement(Ljava/lang/String;)Lorg/dom4j/Element;
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/Element;)V

    return-object v0
.end method

.method public addElement(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    .registers 4

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/Element;)V

    return-object v0
.end method

.method public addElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    .registers 6

    invoke-static {p2, p3}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractBranch;->addElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method public addElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/Element;)V

    return-object v0
.end method

.method protected abstract addNode(ILorg/dom4j/Node;)V
.end method

.method protected abstract addNode(Lorg/dom4j/Node;)V
.end method

.method public appendContent(Lorg/dom4j/Branch;)V
    .registers 5

    invoke-interface {p1}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_19

    invoke-interface {p1, v1}, Lorg/dom4j/Branch;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/dom4j/Node;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/Node;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_19
    return-void
.end method

.method protected abstract childAdded(Lorg/dom4j/Node;)V
.end method

.method protected abstract childRemoved(Lorg/dom4j/Node;)V
.end method

.method public content()Ljava/util/List;
    .registers 3

    new-instance v0, Lorg/dom4j/tree/ContentListFacade;

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/dom4j/tree/ContentListFacade;-><init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;)V

    return-object v0
.end method

.method protected abstract contentList()Ljava/util/List;
.end method

.method protected contentRemoved()V
    .registers 6

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, v3, :cond_1d

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lorg/dom4j/Node;

    if-eqz v4, :cond_19

    check-cast v0, Lorg/dom4j/Node;

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractBranch;->childRemoved(Lorg/dom4j/Node;)V

    :cond_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_1d
    return-void
.end method

.method protected createContentList()Ljava/util/List;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method protected createContentList(I)Ljava/util/List;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method protected createEmptyList()Ljava/util/List;
    .registers 4

    new-instance v0, Lorg/dom4j/tree/BackedList;

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/dom4j/tree/BackedList;-><init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;I)V

    return-object v0
.end method

.method protected createResultList()Lorg/dom4j/tree/BackedList;
    .registers 3

    new-instance v0, Lorg/dom4j/tree/BackedList;

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/dom4j/tree/BackedList;-><init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;)V

    return-object v0
.end method

.method protected createSingleResultList(Ljava/lang/Object;)Ljava/util/List;
    .registers 5

    new-instance v0, Lorg/dom4j/tree/BackedList;

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lorg/dom4j/tree/BackedList;-><init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;I)V

    invoke-virtual {v0, p1}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    return-object v0
.end method

.method public elementByID(Ljava/lang/String;)Lorg/dom4j/Element;
    .registers 6

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->nodeCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_29

    invoke-virtual {p0, v1}, Lorg/dom4j/tree/AbstractBranch;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    instance-of v3, v0, Lorg/dom4j/Element;

    if-eqz v3, :cond_25

    check-cast v0, Lorg/dom4j/Element;

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractBranch;->elementID(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    :cond_1e
    :goto_1e
    return-object v0

    :cond_1f
    invoke-interface {v0, p1}, Lorg/dom4j/Element;->elementByID(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    if-nez v0, :cond_1e

    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_29
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method protected elementID(Lorg/dom4j/Element;)Ljava/lang/String;
    .registers 3

    const-string v0, "ID"

    invoke-interface {p1, v0}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContentAsStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    instance-of v0, p1, Lorg/dom4j/Node;

    if-eqz v0, :cond_15

    check-cast p1, Lorg/dom4j/Node;

    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_1c

    :cond_d
    :pswitch_d  #0x2
    const-string p1, ""

    :goto_f
    return-object p1

    :pswitch_10  #0x1, 0x3, 0x4, 0x5
    invoke-interface {p1}, Lorg/dom4j/Node;->getStringValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    :cond_15
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_d

    check-cast p1, Ljava/lang/String;

    goto :goto_f

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_10  #00000001
        :pswitch_d  #00000002
        :pswitch_10  #00000003
        :pswitch_10  #00000004
        :pswitch_10  #00000005
    .end packed-switch
.end method

.method protected getContentAsText(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    instance-of v0, p1, Lorg/dom4j/Node;

    if-eqz v0, :cond_15

    check-cast p1, Lorg/dom4j/Node;

    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_1c

    :cond_d
    const-string p1, ""

    :goto_f
    return-object p1

    :pswitch_10  #0x3, 0x4, 0x5
    invoke-interface {p1}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    :cond_15
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_d

    check-cast p1, Ljava/lang/String;

    goto :goto_f

    :pswitch_data_1c
    .packed-switch 0x3
        :pswitch_10  #00000003
        :pswitch_10  #00000004
        :pswitch_10  #00000005
    .end packed-switch
.end method

.method public getText()Ljava/lang/String;
    .registers 6

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_34

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v1, :cond_34

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractBranch;->getContentAsText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-ne v3, v1, :cond_19

    :goto_18
    return-object v0

    :cond_19
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v0, v1

    :goto_1f
    if-ge v0, v3, :cond_2f

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/tree/AbstractBranch;->getContentAsText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_2f
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_34
    const-string v0, ""

    goto :goto_18
.end method

.method public getTextTrim()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->getText()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :cond_e
    :goto_e
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasContent()Z
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->nodeCount()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public indexOf(Lorg/dom4j/Node;)I
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected invalidNodeTypeAddException(Lorg/dom4j/Node;)V
    .registers 5

    new-instance v0, Lorg/dom4j/IllegalAddException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid node type. Cannot add node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " to this branch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/dom4j/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isReadOnly()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public node(I)Lorg/dom4j/Node;
    .registers 4

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/dom4j/Node;

    if-eqz v1, :cond_f

    check-cast v0, Lorg/dom4j/Node;

    :goto_e
    return-object v0

    :cond_f
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/dom4j/DocumentFactory;->createText(Ljava/lang/String;)Lorg/dom4j/Text;

    move-result-object v0

    goto :goto_e

    :cond_20
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public nodeCount()I
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public nodeIterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractBranch;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lorg/dom4j/Comment;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/dom4j/Element;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/dom4j/Node;)Z
    .registers 3

    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeType()S

    move-result v0

    sparse-switch v0, :sswitch_data_22

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->invalidNodeTypeAddException(Lorg/dom4j/Node;)V

    const/4 v0, 0x0

    :goto_b
    return v0

    :sswitch_c
    check-cast p1, Lorg/dom4j/Element;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->remove(Lorg/dom4j/Element;)Z

    move-result v0

    goto :goto_b

    :sswitch_13
    check-cast p1, Lorg/dom4j/Comment;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->remove(Lorg/dom4j/Comment;)Z

    move-result v0

    goto :goto_b

    :sswitch_1a
    check-cast p1, Lorg/dom4j/ProcessingInstruction;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->remove(Lorg/dom4j/ProcessingInstruction;)Z

    move-result v0

    goto :goto_b

    nop

    :sswitch_data_22
    .sparse-switch
        0x1 -> :sswitch_c
        0x7 -> :sswitch_1a
        0x8 -> :sswitch_13
    .end sparse-switch
.end method

.method public remove(Lorg/dom4j/ProcessingInstruction;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method protected abstract removeNode(Lorg/dom4j/Node;)Z
.end method

.method public setProcessingInstructions(Ljava/util/List;)V
    .registers 4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/ProcessingInstruction;

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractBranch;->addNode(Lorg/dom4j/Node;)V

    goto :goto_4

    :cond_14
    return-void
.end method
