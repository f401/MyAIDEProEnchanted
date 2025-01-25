.class public Lorg/dom4j/swing/BranchTreeNode;
.super Lorg/dom4j/swing/LeafTreeNode;


# instance fields
.field protected children:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/dom4j/swing/LeafTreeNode;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljavax/swing/tree/TreeNode;Lorg/dom4j/Branch;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/dom4j/swing/LeafTreeNode;-><init>(Ljavax/swing/tree/TreeNode;Lorg/dom4j/Node;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Branch;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/dom4j/swing/LeafTreeNode;-><init>(Lorg/dom4j/Node;)V

    return-void
.end method


# virtual methods
.method public children()Ljava/util/Enumeration;
    .registers 2

    new-instance v0, Lorg/dom4j/swing/BranchTreeNode$1;

    invoke-direct {v0, p0}, Lorg/dom4j/swing/BranchTreeNode$1;-><init>(Lorg/dom4j/swing/BranchTreeNode;)V

    return-object v0
.end method

.method protected createChildList()Ljava/util/List;
    .registers 7

    invoke-virtual {p0}, Lorg/dom4j/swing/BranchTreeNode;->getXmlBranch()Lorg/dom4j/Branch;

    move-result-object v1

    invoke-interface {v1}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v2, :cond_33

    invoke-interface {v1, v0}, Lorg/dom4j/Branch;->node(I)Lorg/dom4j/Node;

    move-result-object v4

    instance-of v5, v4, Lorg/dom4j/CharacterData;

    if-eqz v5, :cond_2b

    invoke-interface {v4}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_21

    :cond_1e
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_21
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1e

    :cond_2b
    invoke-virtual {p0, v4}, Lorg/dom4j/swing/BranchTreeNode;->createChildTreeNode(Lorg/dom4j/Node;)Ljavax/swing/tree/TreeNode;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_33
    return-object v3
.end method

.method protected createChildTreeNode(Lorg/dom4j/Node;)Ljavax/swing/tree/TreeNode;
    .registers 3

    instance-of v0, p1, Lorg/dom4j/Branch;

    if-eqz v0, :cond_c

    new-instance v0, Lorg/dom4j/swing/BranchTreeNode;

    check-cast p1, Lorg/dom4j/Branch;

    invoke-direct {v0, p0, p1}, Lorg/dom4j/swing/BranchTreeNode;-><init>(Ljavax/swing/tree/TreeNode;Lorg/dom4j/Branch;)V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lorg/dom4j/swing/LeafTreeNode;

    invoke-direct {v0, p0, p1}, Lorg/dom4j/swing/LeafTreeNode;-><init>(Ljavax/swing/tree/TreeNode;Lorg/dom4j/Node;)V

    goto :goto_b
.end method

.method public getAllowsChildren()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getChildAt(I)Ljavax/swing/tree/TreeNode;
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/swing/BranchTreeNode;->getChildList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/tree/TreeNode;

    return-object v0
.end method

.method public getChildCount()I
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/swing/BranchTreeNode;->getChildList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getChildList()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/swing/BranchTreeNode;->children:Ljava/util/List;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lorg/dom4j/swing/BranchTreeNode;->createChildList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/swing/BranchTreeNode;->children:Ljava/util/List;

    :cond_a
    iget-object v0, p0, Lorg/dom4j/swing/BranchTreeNode;->children:Ljava/util/List;

    return-object v0
.end method

.method public getIndex(Ljavax/swing/tree/TreeNode;)I
    .registers 3

    invoke-virtual {p0}, Lorg/dom4j/swing/BranchTreeNode;->getChildList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected getXmlBranch()Lorg/dom4j/Branch;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/swing/BranchTreeNode;->xmlNode:Lorg/dom4j/Node;

    check-cast v0, Lorg/dom4j/Branch;

    return-object v0
.end method

.method public isLeaf()Z
    .registers 2

    invoke-virtual {p0}, Lorg/dom4j/swing/BranchTreeNode;->getXmlBranch()Lorg/dom4j/Branch;

    move-result-object v0

    invoke-interface {v0}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v0

    if-gtz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/swing/BranchTreeNode;->xmlNode:Lorg/dom4j/Node;

    invoke-interface {v0}, Lorg/dom4j/Node;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
