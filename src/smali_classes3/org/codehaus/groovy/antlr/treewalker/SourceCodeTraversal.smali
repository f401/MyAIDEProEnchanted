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

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->j6:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {p1}, Lgroovyjarjarantlr/BaseAST;->getFirstChild()Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/antlr/GroovySourceAST;

    if-eqz v0, :cond_15

    invoke-direct {p0, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourceCodeTraversal;->P8(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    :cond_15
    invoke-virtual {p1}, Lgroovyjarjarantlr/BaseAST;->getNextSibling()Lgroovyjarjarantlr/collections/AST;

    move-result-object p1

    check-cast p1, Lorg/codehaus/groovy/antlr/GroovySourceAST;

    if-eqz p1, :cond_20

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/SourceCodeTraversal;->P8(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    :cond_20
    return-void
.end method


# virtual methods
.method protected j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V
    .registers 6

    if-eqz p1, :cond_e4

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->j6:Ljava/util/List;

    if-eqz v0, :cond_e4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e4

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->j6:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    return-void

    :cond_15
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->rN(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_de

    const/4 v1, 0x6

    if-eq v0, v1, :cond_da

    const/4 v1, 0x7

    if-eq v0, v1, :cond_da

    const/16 v1, 0x20

    if-eq v0, v1, :cond_d6

    const/16 v1, 0x21

    if-eq v0, v1, :cond_d2

    const/16 v1, 0x59

    if-eq v0, v1, :cond_ce

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_ce

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_e6

    packed-switch v0, :pswitch_data_1d8

    packed-switch v0, :pswitch_data_1e4

    packed-switch v0, :pswitch_data_1f2

    packed-switch v0, :pswitch_data_1fc

    packed-switch v0, :pswitch_data_208

    packed-switch v0, :pswitch_data_214

    packed-switch v0, :pswitch_data_222

    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->Ws(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto/16 :goto_e1

    :sswitch_53
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->j3(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto/16 :goto_e1

    :sswitch_58
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->gn(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto/16 :goto_e1

    :sswitch_5d
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->j6(I)Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v1

    if-eqz v1, :cond_b7

    invoke-virtual {p1, v0}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->j6(I)Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v0

    invoke-virtual {v0}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_b7

    goto/16 :goto_da

    :pswitch_72  #0x18
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->EQ(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto/16 :goto_e1

    :pswitch_77  #0x17
    :sswitch_77
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->Mr(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto/16 :goto_e1

    :pswitch_7c  #0x2f
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->J8(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto/16 :goto_e1

    :pswitch_81  #0x1b, 0x2d
    invoke-virtual {p1}, Lgroovyjarjarantlr/BaseAST;->Hw()I

    move-result v0

    const/4 v2, 0x2

    const/16 v3, 0x32

    if-ne v0, v2, :cond_9e

    invoke-virtual {p1, v1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->j6(I)Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v0

    if-eqz v0, :cond_9e

    invoke-virtual {p1, v1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->j6(I)Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v0

    invoke-virtual {v0}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v0

    if-ne v0, v3, :cond_9e

    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->VH(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_e1

    :cond_9e
    invoke-virtual {p1}, Lgroovyjarjarantlr/BaseAST;->Hw()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->j6(I)Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v0

    if-eqz v0, :cond_b3

    invoke-virtual {v0}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v0

    if-ne v0, v3, :cond_b3

    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->Zo(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_e1

    :cond_b3
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->v5(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_e1

    :cond_b7
    :pswitch_b7  #0x3b
    :sswitch_b7
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->XL(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_e1

    :pswitch_bb  #0x44
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->tp(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_e1

    :pswitch_bf  #0x43
    :sswitch_bf
    invoke-virtual {p1, v1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->j6(I)Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v0

    if-eqz v0, :cond_de

    goto :goto_ce

    :pswitch_c6  #0x42
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->J0(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_e1

    :pswitch_ca  #0x4a
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->U2(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_e1

    :cond_ce
    :goto_ce
    :pswitch_ce  #0xd, 0xe, 0xf, 0x10, 0x16, 0x2e, 0x3d, 0x40
    :sswitch_ce
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->Hw(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_e1

    :cond_d2
    :pswitch_d2  #0x14, 0x30, 0x48, 0x49, 0x4b
    :sswitch_d2
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->aM(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_e1

    :cond_d6
    :sswitch_d6
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->u7(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_e1

    :cond_da
    :goto_da
    :pswitch_da  #0x15, 0x1c, 0x1d, 0x3c, 0x3e
    :sswitch_da
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->we(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    goto :goto_e1

    :cond_de
    :pswitch_de  #0x41
    :sswitch_de
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->QX(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    :goto_e1
    invoke-virtual {p0}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->j6()Lorg/codehaus/groovy/antlr/GroovySourceAST;

    :cond_e4
    return-void

    nop

    :sswitch_data_e6
    .sparse-switch
        0x7 -> :sswitch_da
        0x8 -> :sswitch_da
        0x9 -> :sswitch_da
        0x32 -> :sswitch_5d
        0x36 -> :sswitch_ce
        0x46 -> :sswitch_d2
        0x4d -> :sswitch_d2
        0x61 -> :sswitch_58
        0x64 -> :sswitch_ce
        0x66 -> :sswitch_ce
        0x67 -> :sswitch_ce
        0x71 -> :sswitch_ce
        0x72 -> :sswitch_ce
        0x79 -> :sswitch_de
        0x7c -> :sswitch_bf
        0x7d -> :sswitch_ce
        0x86 -> :sswitch_ce
        0x89 -> :sswitch_53
        0x8b -> :sswitch_77
        0x8c -> :sswitch_b7
        0x8d -> :sswitch_b7
        0x8e -> :sswitch_ce
        0x93 -> :sswitch_de
        0x94 -> :sswitch_ce
        0x95 -> :sswitch_ce
        0x97 -> :sswitch_de
        0x99 -> :sswitch_de
        0x9a -> :sswitch_ce
        0x9b -> :sswitch_ce
        0x9c -> :sswitch_ce
        0x9e -> :sswitch_d6
        0x9f -> :sswitch_b7
        0xa2 -> :sswitch_bf
        0xa3 -> :sswitch_bf
        0xa4 -> :sswitch_bf
        0xa5 -> :sswitch_bf
        0xa6 -> :sswitch_bf
        0xa7 -> :sswitch_bf
        0xa8 -> :sswitch_bf
        0xa9 -> :sswitch_bf
        0xaa -> :sswitch_bf
        0xab -> :sswitch_bf
        0xac -> :sswitch_bf
        0xad -> :sswitch_bf
        0xaf -> :sswitch_ce
        0xb0 -> :sswitch_ce
        0xb1 -> :sswitch_ce
        0xb2 -> :sswitch_bf
        0xb3 -> :sswitch_bf
        0xb4 -> :sswitch_bf
        0xb5 -> :sswitch_bf
        0xb8 -> :sswitch_bf
        0xb9 -> :sswitch_ce
        0xba -> :sswitch_ce
        0xbb -> :sswitch_ce
        0xbc -> :sswitch_ce
        0xbd -> :sswitch_ce
        0xbf -> :sswitch_ce
        0xc0 -> :sswitch_ce
        0xc2 -> :sswitch_ce
    .end sparse-switch

    :pswitch_data_1d8
    .packed-switch 0xd
        :pswitch_ce  #0000000d
        :pswitch_ce  #0000000e
        :pswitch_ce  #0000000f
        :pswitch_ce  #00000010
    .end packed-switch

    :pswitch_data_1e4
    .packed-switch 0x14
        :pswitch_d2  #00000014
        :pswitch_da  #00000015
        :pswitch_ce  #00000016
        :pswitch_77  #00000017
        :pswitch_72  #00000018
    .end packed-switch

    :pswitch_data_1f2
    .packed-switch 0x1b
        :pswitch_81  #0000001b
        :pswitch_da  #0000001c
        :pswitch_da  #0000001d
    .end packed-switch

    :pswitch_data_1fc
    .packed-switch 0x2d
        :pswitch_81  #0000002d
        :pswitch_ce  #0000002e
        :pswitch_7c  #0000002f
        :pswitch_d2  #00000030
    .end packed-switch

    :pswitch_data_208
    .packed-switch 0x3b
        :pswitch_b7  #0000003b
        :pswitch_da  #0000003c
        :pswitch_ce  #0000003d
        :pswitch_da  #0000003e
    .end packed-switch

    :pswitch_data_214
    .packed-switch 0x40
        :pswitch_ce  #00000040
        :pswitch_de  #00000041
        :pswitch_c6  #00000042
        :pswitch_bf  #00000043
        :pswitch_bb  #00000044
    .end packed-switch

    :pswitch_data_222
    .packed-switch 0x48
        :pswitch_d2  #00000048
        :pswitch_d2  #00000049
        :pswitch_ca  #0000004a
        :pswitch_d2  #0000004b
    .end packed-switch
.end method

.method public yS(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V
    .registers 3

    invoke-super {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->yS(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->j6:Ljava/util/List;

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/antlr/treewalker/SourceCodeTraversal;->P8(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V

    iget-object p1, p0, Lorg/codehaus/groovy/antlr/treewalker/TraversalHelper;->j6:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method
