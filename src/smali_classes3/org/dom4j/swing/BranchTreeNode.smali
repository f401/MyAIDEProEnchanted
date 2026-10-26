.class public Lorg/dom4j/swing/BranchTreeNode;
.super Lorg/dom4j/swing/LeafTreeNode;


# instance fields
.field protected children:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/dom4j/swing/LeafTreeNode;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljavax/swing/tree/TreeNode;Lorg/dom4j/Branch;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/dom4j/swing/LeafTreeNode;-><init>(Ljavax/swing/tree/TreeNode;Lorg/dom4j/Node;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Branch;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/dom4j/swing/LeafTreeNode;-><init>(Lorg/dom4j/Node;)V

    return-void
.end method


# virtual methods
.method public children()Ljava/util/Enumeration;
    .locals 1

    new-instance v0, Lorg/dom4j/swing/BranchTreeNode$1;

    invoke-direct {v0, p0}, Lorg/dom4j/swing/BranchTreeNode$1;-><init>(Lorg/dom4j/swing/BranchTreeNode;)V

    return-object v0
.end method

.method protected createChildList()Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Lorg/dom4j/swing/BranchTreeNode;->getXmlBranch()Lorg/dom4j/Branch;

    move-result-object v1

    invoke-interface {v1}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    invoke-interface {v1, v0}, Lorg/dom4j/Branch;->node(I)Lorg/dom4j/Node;

    move-result-object v4

    instance-of v5, v4, Lorg/dom4j/CharacterData;

    if-eqz v5, :cond_2

    invoke-interface {v4}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    :cond_2
    invoke-virtual {p0, v4}, Lorg/dom4j/swing/BranchTreeNode;->createChildTreeNode(Lorg/dom4j/Node;)Ljavax/swing/tree/TreeNode;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method protected createChildTreeNode(Lorg/dom4j/Node;)Ljavax/swing/tree/TreeNode;
    .locals 1

    instance-of v0, p1, Lorg/dom4j/Branch;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/dom4j/swing/BranchTreeNode;

    check-cast p1, Lorg/dom4j/Branch;

    invoke-direct {v0, p0, p1}, Lorg/dom4j/swing/BranchTreeNode;-><init>(Ljavax/swing/tree/TreeNode;Lorg/dom4j/Branch;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/dom4j/swing/LeafTreeNode;

    invoke-direct {v0, p0, p1}, Lorg/dom4j/swing/LeafTreeNode;-><init>(Ljavax/swing/tree/TreeNode;Lorg/dom4j/Node;)V

    goto :goto_0
.end method

.method public getAllowsChildren()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getChildAt(I)Ljavax/swing/tree/TreeNode;
    .locals 1

    invoke-virtual {p0}, Lorg/dom4j/swing/BranchTreeNode;->getChildList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/tree/TreeNode;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    invoke-virtual {p0}, Lorg/dom4j/swing/BranchTreeNode;->getChildList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getChildList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/dom4j/swing/BranchTreeNode;->children:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/dom4j/swing/BranchTreeNode;->createChildList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/swing/BranchTreeNode;->children:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/dom4j/swing/BranchTreeNode;->children:Ljava/util/List;

    return-object v0
.end method

.method public getIndex(Ljavax/swing/tree/TreeNode;)I
    .locals 1

    invoke-virtual {p0}, Lorg/dom4j/swing/BranchTreeNode;->getChildList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected getXmlBranch()Lorg/dom4j/Branch;
    .locals 1

    iget-object v0, p0, Lorg/dom4j/swing/BranchTreeNode;->xmlNode:Lorg/dom4j/Node;

    check-cast v0, Lorg/dom4j/Branch;

    return-object v0
.end method

.method public isLeaf()Z
    .locals 1

    invoke-virtual {p0}, Lorg/dom4j/swing/BranchTreeNode;->getXmlBranch()Lorg/dom4j/Branch;

    move-result-object v0

    invoke-interface {v0}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/dom4j/swing/BranchTreeNode;->xmlNode:Lorg/dom4j/Node;

    invoke-interface {v0}, Lorg/dom4j/Node;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
