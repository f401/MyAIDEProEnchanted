.class Lcom/sun/tools/javac/jvm/Items$CondItem;
.super Lcom/sun/tools/javac/jvm/Items$Item;
.source "Items.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/Items;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CondItem"
.end annotation


# instance fields
.field falseJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

.field opcode:I

.field final this$0:Lcom/sun/tools/javac/jvm/Items;

.field tree:Lcom/sun/tools/javac/tree/JCTree;

.field trueJumps:Lcom/sun/tools/javac/jvm/Code$Chain;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/jvm/Items;ILcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$Chain;)V
    .registers 6

    .line 792
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    .line 793
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/jvm/Items$Item;-><init>(Lcom/sun/tools/javac/jvm/Items;I)V

    .line 794
    iput p2, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->opcode:I

    .line 795
    iput-object p3, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->trueJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    .line 796
    iput-object p4, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->falseJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    .line 797
    return-void
.end method


# virtual methods
.method drop()V
    .registers 2

    .line 820
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Items$CondItem;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->drop()V

    .line 821
    return-void
.end method

.method duplicate()V
    .registers 2

    .line 816
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Items$CondItem;->load()Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Items$Item;->duplicate()V

    .line 817
    return-void
.end method

.method isFalse()Z
    .registers 3

    .line 865
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->trueJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    if-nez v0, :cond_c

    iget v0, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->opcode:I

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method isTrue()Z
    .registers 3

    .line 861
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->falseJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    if-nez v0, :cond_c

    iget v0, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->opcode:I

    const/16 v1, 0xa7

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method jumpFalse()Lcom/sun/tools/javac/jvm/Code$Chain;
    .registers 7

    .line 841
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->tree:Lcom/sun/tools/javac/tree/JCTree;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->falseJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v2, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->opcode:I

    invoke-static {v2}, Lcom/sun/tools/javac/jvm/Code;->negate(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/jvm/Code;->branch(I)Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->mergeChains(Lcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$Chain;)Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v0

    .line 846
    :goto_18
    return-object v0

    .line 843
    :cond_19
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v1

    .line 844
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->falseJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v3, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->opcode:I

    invoke-static {v3}, Lcom/sun/tools/javac/jvm/Code;->negate(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/jvm/Code;->branch(I)Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sun/tools/javac/jvm/Code;->mergeChains(Lcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$Chain;)Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v0

    .line 845
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Code;->crt:Lcom/sun/tools/javac/jvm/CRTable;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->tree:Lcom/sun/tools/javac/tree/JCTree;

    const/16 v4, 0x100

    iget-object v5, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v5, v5, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v5}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v5

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/sun/tools/javac/jvm/CRTable;->put(Ljava/lang/Object;III)V

    goto :goto_18
.end method

.method jumpTrue()Lcom/sun/tools/javac/jvm/Code$Chain;
    .registers 7

    .line 832
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->tree:Lcom/sun/tools/javac/tree/JCTree;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->trueJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v2, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->opcode:I

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/jvm/Code;->branch(I)Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/tools/javac/jvm/Code;->mergeChains(Lcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$Chain;)Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v0

    .line 837
    :goto_14
    return-object v0

    .line 834
    :cond_15
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v1

    .line 835
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->trueJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    iget v3, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->opcode:I

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/jvm/Code;->branch(I)Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sun/tools/javac/jvm/Code;->mergeChains(Lcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$Chain;)Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v0

    .line 836
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Code;->crt:Lcom/sun/tools/javac/jvm/CRTable;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->tree:Lcom/sun/tools/javac/tree/JCTree;

    const/16 v4, 0x80

    iget-object v5, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v5, v5, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v5}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v5

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/sun/tools/javac/jvm/CRTable;->put(Ljava/lang/Object;III)V

    goto :goto_14
.end method

.method load()Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 4

    .line 800
    const/4 v0, 0x0

    .line 801
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Items$CondItem;->jumpFalse()Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v1

    .line 802
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Items$CondItem;->isFalse()Z

    move-result v2

    if-nez v2, :cond_26

    .line 803
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->trueJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 804
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 805
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v2, 0xa7

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/jvm/Code;->branch(I)Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v0

    .line 807
    :cond_26
    if-eqz v1, :cond_37

    .line 808
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 809
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    .line 811
    :cond_37
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 812
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Items;->access$000(Lcom/sun/tools/javac/jvm/Items;)[Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iget v1, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->typecode:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method mkCond()Lcom/sun/tools/javac/jvm/Items$CondItem;
    .registers 1

    .line 828
    return-object p0
.end method

.method negate()Lcom/sun/tools/javac/jvm/Items$CondItem;
    .registers 6

    .line 850
    new-instance v0, Lcom/sun/tools/javac/jvm/Items$CondItem;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget v2, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->opcode:I

    invoke-static {v2}, Lcom/sun/tools/javac/jvm/Code;->negate(I)I

    move-result v2

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->falseJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->trueJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/jvm/Items$CondItem;-><init>(Lcom/sun/tools/javac/jvm/Items;ILcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$Chain;)V

    .line 851
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->tree:Lcom/sun/tools/javac/tree/JCTree;

    iput-object v1, v0, Lcom/sun/tools/javac/jvm/Items$CondItem;->tree:Lcom/sun/tools/javac/tree/JCTree;

    .line 852
    return-object v0
.end method

.method stash(I)V
    .registers 2

    .line 824
    invoke-static {}, Lcom/sun/tools/javac/util/Assert;->error()V

    .line 825
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cond("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/tools/javac/jvm/Items$CondItem;->opcode:I

    invoke-static {v1}, Lcom/sun/tools/javac/jvm/Code;->mnem(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method width()I
    .registers 2

    .line 857
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
