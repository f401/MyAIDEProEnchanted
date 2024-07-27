.class Lcom/s1243808733/android/dx/ssa/back/SsaToRop$100000000;
.super Ljava/lang/Object;
.source "SsaToRop.java"

# interfaces
.implements Lcom/s1243808733/android/dx/ssa/SsaBasicBlock$Visitor;


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/ssa/back/SsaToRop;

.field private final val$blocks:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/back/SsaToRop;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop$100000000;->this$0:Lcom/s1243808733/android/dx/ssa/back/SsaToRop;

    iput-object p2, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop$100000000;->val$blocks:Ljava/util/ArrayList;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/ssa/back/SsaToRop$100000000;)Lcom/s1243808733/android/dx/ssa/back/SsaToRop;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop$100000000;->this$0:Lcom/s1243808733/android/dx/ssa/back/SsaToRop;

    return-object v0
.end method


# virtual methods
.method public visitBlock(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, 0x0

    .line 144
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    sget-object v1, Lcom/s1243808733/android/dx/rop/code/Rops;->GOTO:Lcom/s1243808733/android/dx/rop/code/Rop;

    if-ne v0, v1, :cond_0

    .line 148
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 150
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    move v2, v1

    .line 151
    :goto_0
    if-gez v2, :cond_1

    :cond_0
    return-void

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop$100000000;->val$blocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 153
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v3

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessorIndex()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->replaceSuccessor(II)V

    .line 151
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    move v2, v1

    goto :goto_0
.end method
