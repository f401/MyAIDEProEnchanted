.class Lcom/s1243808733/android/dx/ssa/back/SsaToRop$1;
.super Ljava/lang/Object;
.source "SsaToRop.java"

# interfaces
.implements Lcom/s1243808733/android/dx/ssa/SsaBasicBlock$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->removeEmptyGotos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/ssa/back/SsaToRop;

.field final val$blocks:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/back/SsaToRop;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop$1;->this$0:Lcom/s1243808733/android/dx/ssa/back/SsaToRop;

    iput-object p2, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop$1;->val$blocks:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitBlock(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
    .registers 7

    .line 144
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object p2

    .line 146
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_44

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object p2

    sget-object v1, Lcom/s1243808733/android/dx/rop/code/Rops;->GOTO:Lcom/s1243808733/android/dx/rop/code/Rop;

    if-ne p2, v1, :cond_44

    .line 148
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/BitSet;

    .line 150
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_28
    if-ltz v0, :cond_44

    .line 152
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop$1;->val$blocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 153
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v2

    .line 154
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessorIndex()I

    move-result v3

    .line 153
    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->replaceSuccessor(II)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_28

    :cond_44
    return-void
.end method
