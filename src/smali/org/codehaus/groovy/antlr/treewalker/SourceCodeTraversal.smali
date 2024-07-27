.class public Lorg/codehaus/groovy/antlr/treewalker/SourceCodeTraversal;
.super Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;


# direct methods
.method public constructor <init>(Lorg/codehaus/groovy/antlr/treewalker/Visitor;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;-><init>(Lorg/codehaus/groovy/antlr/treewalker/Visitor;)V

    return-void
.end method

.method private P8(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V
    .registers 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->j6:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p1}, Lgroovyjarjarantlr/BaseAST;->getFirstChild()Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/antlr/GroovySourceAST;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourceCodeTraversal;->P8(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    :cond_3
    invoke-virtual {p1}, Lgroovyjarjarantlr/BaseAST;->getNextSibling()Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/antlr/GroovySourceAST;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourceCodeTraversal;->P8(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_0
.end method


# virtual methods
.method protected j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V
    .registers 7

    const/16 v4, 0x32

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->j6:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->j6:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->rN(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a

    const/4 v1, 0x6

    if-eq v0, v1, :cond_9

    const/4 v1, 0x7

    if-eq v0, v1, :cond_9

    const/16 v1, 0x20

    if-eq v0, v1, :cond_8

    const/16 v1, 0x21

    if-eq v0, v1, :cond_7

    const/16 v1, 0x59

    if-eq v0, v1, :cond_6

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_6

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->Ws(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->j6()Lorg/codehaus/groovy/antlr/GroovySourceAST;

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->U2(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->tp(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->J0(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->J8(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1}, Lgroovyjarjarantlr/BaseAST;->Hw()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p1, v2}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->j6(I)Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->j6(I)Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v0

    invoke-virtual {v0}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->VH(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lgroovyjarjarantlr/BaseAST;->Hw()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->j6(I)Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v0

    if-ne v0, v4, :cond_3

    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->Zo(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->v5(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->EQ(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_1

    :pswitch_6
    :sswitch_0
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->XL(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_1

    :pswitch_7
    :sswitch_1
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->Mr(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->j3(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_1

    :pswitch_8
    :sswitch_3
    invoke-virtual {p1, v2}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->j6(I)Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->Hw(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->QX(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_1

    :sswitch_4
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->gn(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_1

    :sswitch_5
    invoke-virtual {p1, v3}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->j6(I)Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v3}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->j6(I)Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v0

    invoke-virtual {v0}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_5

    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->we(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->XL(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto/16 :goto_1

    :cond_6
    :pswitch_9
    :sswitch_6
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->Hw(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto/16 :goto_1

    :cond_7
    :pswitch_a
    :sswitch_7
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->aM(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto/16 :goto_1

    :cond_8
    :sswitch_8
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->u7(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto/16 :goto_1

    :cond_9
    :pswitch_b
    :sswitch_9
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->we(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto/16 :goto_1

    :cond_a
    :pswitch_c
    :sswitch_a
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->QX(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_9
        0x8 -> :sswitch_9
        0x9 -> :sswitch_9
        0x32 -> :sswitch_5
        0x36 -> :sswitch_6
        0x46 -> :sswitch_7
        0x4d -> :sswitch_7
        0x61 -> :sswitch_4
        0x64 -> :sswitch_6
        0x66 -> :sswitch_6
        0x67 -> :sswitch_6
        0x71 -> :sswitch_6
        0x72 -> :sswitch_6
        0x79 -> :sswitch_a
        0x7c -> :sswitch_3
        0x7d -> :sswitch_6
        0x86 -> :sswitch_6
        0x89 -> :sswitch_2
        0x8b -> :sswitch_1
        0x8c -> :sswitch_0
        0x8d -> :sswitch_0
        0x8e -> :sswitch_6
        0x93 -> :sswitch_a
        0x94 -> :sswitch_6
        0x95 -> :sswitch_6
        0x97 -> :sswitch_a
        0x99 -> :sswitch_a
        0x9a -> :sswitch_6
        0x9b -> :sswitch_6
        0x9c -> :sswitch_6
        0x9e -> :sswitch_8
        0x9f -> :sswitch_0
        0xa2 -> :sswitch_3
        0xa3 -> :sswitch_3
        0xa4 -> :sswitch_3
        0xa5 -> :sswitch_3
        0xa6 -> :sswitch_3
        0xa7 -> :sswitch_3
        0xa8 -> :sswitch_3
        0xa9 -> :sswitch_3
        0xaa -> :sswitch_3
        0xab -> :sswitch_3
        0xac -> :sswitch_3
        0xad -> :sswitch_3
        0xaf -> :sswitch_6
        0xb0 -> :sswitch_6
        0xb1 -> :sswitch_6
        0xb2 -> :sswitch_3
        0xb3 -> :sswitch_3
        0xb4 -> :sswitch_3
        0xb5 -> :sswitch_3
        0xb8 -> :sswitch_3
        0xb9 -> :sswitch_6
        0xba -> :sswitch_6
        0xbb -> :sswitch_6
        0xbc -> :sswitch_6
        0xbd -> :sswitch_6
        0xbf -> :sswitch_6
        0xc0 -> :sswitch_6
        0xc2 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1b
        :pswitch_4
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2d
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3b
        :pswitch_6
        :pswitch_b
        :pswitch_9
        :pswitch_b
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x40
        :pswitch_9
        :pswitch_c
        :pswitch_2
        :pswitch_8
        :pswitch_1
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x48
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public yS(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V
    .registers 3

    invoke-super {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->yS(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->j6:Ljava/util/List;

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/SourceCodeTraversal;->P8(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->j6:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method
