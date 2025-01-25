.class public Lorg/dom4j/tree/BackedList;
.super Ljava/util/ArrayList;


# instance fields
.field private branch:Lorg/dom4j/tree/AbstractBranch;

.field private branchContent:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;)V
    .registers 4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/dom4j/tree/BackedList;-><init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;I)V
    .registers 4

    invoke-direct {p0, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    iput-object p2, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/tree/AbstractBranch;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    iput-object p2, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 7

    invoke-virtual {p0}, Lorg/dom4j/tree/BackedList;->size()I

    move-result v0

    if-gez p1, :cond_25

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Index value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is less than zero"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    if-le p1, v0, :cond_50

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Index value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " cannot be greater than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "the size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_50
    if-nez v0, :cond_65

    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_58
    iget-object v1, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, p2}, Lorg/dom4j/tree/BackedList;->asNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/dom4j/tree/AbstractBranch;->addNode(ILorg/dom4j/Node;)V

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    :cond_65
    if-ge p1, v0, :cond_72

    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/BackedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_58

    :cond_72
    iget-object v1, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/BackedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_58
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/BackedList;->asNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/AbstractBranch;->addNode(Lorg/dom4j/Node;)V

    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 6

    invoke-virtual {p0}, Lorg/dom4j/tree/BackedList;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/BackedList;->ensureCapacity(I)V

    invoke-virtual {p0}, Lorg/dom4j/tree/BackedList;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/dom4j/tree/BackedList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_14

    :cond_26
    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 5

    invoke-virtual {p0}, Lorg/dom4j/tree/BackedList;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/BackedList;->ensureCapacity(I)V

    invoke-virtual {p0}, Lorg/dom4j/tree/BackedList;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/tree/BackedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    :cond_24
    if-eqz v0, :cond_28

    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public addLocal(Ljava/lang/Object;)V
    .registers 2

    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected asNode(Ljava/lang/Object;)Lorg/dom4j/Node;
    .registers 5

    instance-of v0, p1, Lorg/dom4j/Node;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/dom4j/Node;

    return-object p1

    :cond_7
    new-instance v0, Lorg/dom4j/IllegalAddException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "This list must contain instances of Node. Invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/dom4j/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .registers 4

    invoke-virtual {p0}, Lorg/dom4j/tree/BackedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, v1}, Lorg/dom4j/tree/BackedList;->asNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/dom4j/tree/AbstractBranch;->childRemoved(Lorg/dom4j/Node;)V

    goto :goto_4

    :cond_1d
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 5

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, v0}, Lorg/dom4j/tree/BackedList;->asNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/dom4j/tree/AbstractBranch;->removeNode(Lorg/dom4j/Node;)Z

    :cond_f
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/BackedList;->asNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/AbstractBranch;->removeNode(Lorg/dom4j/Node;)Z

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/BackedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_f

    if-nez p1, :cond_3b

    const/4 v0, 0x0

    :cond_f
    :goto_f
    iget-object v1, p0, Lorg/dom4j/tree/BackedList;->branchContent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3f

    iget-object v1, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/BackedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/tree/BackedList;->asNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/dom4j/tree/AbstractBranch;->removeNode(Lorg/dom4j/Node;)Z

    iget-object v1, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, p2}, Lorg/dom4j/tree/BackedList;->asNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/dom4j/tree/AbstractBranch;->addNode(ILorg/dom4j/Node;)V

    :goto_2d
    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, p2}, Lorg/dom4j/tree/BackedList;->asNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/AbstractBranch;->childAdded(Lorg/dom4j/Node;)V

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_3b
    const v0, 0x7fffffff

    goto :goto_f

    :cond_3f
    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/BackedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/tree/BackedList;->asNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/AbstractBranch;->removeNode(Lorg/dom4j/Node;)Z

    iget-object v0, p0, Lorg/dom4j/tree/BackedList;->branch:Lorg/dom4j/tree/AbstractBranch;

    invoke-virtual {p0, p2}, Lorg/dom4j/tree/BackedList;->asNode(Ljava/lang/Object;)Lorg/dom4j/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/AbstractBranch;->addNode(Lorg/dom4j/Node;)V

    goto :goto_2d
.end method
