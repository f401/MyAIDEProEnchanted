.class public Lcom/s1243808733/android/dx/ssa/back/SsaToRop;
.super Ljava/lang/Object;
.source "SsaToRop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/ssa/back/SsaToRop$PhiVisitor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final interference:Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;

.field private final minimizeRegisters:Z

.field private final ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;Z)V
    .registers 4

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean p2, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->minimizeRegisters:Z

    .line 81
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 82
    invoke-static {p1}, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->constructInterferenceGraph(Lcom/s1243808733/android/dx/ssa/SsaMethod;)Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->interference:Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;

    return-void
.end method

.method static synthetic access$L1000001(Lcom/s1243808733/android/dx/ssa/back/SsaToRop;)Lcom/s1243808733/android/dx/ssa/SsaMethod;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    return-object v0
.end method

.method private convert()Lcom/s1243808733/android/dx/rop/code/RopMethod;
    .registers 5

    .line 100
    new-instance v0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->interference:Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;

    iget-boolean v3, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->minimizeRegisters:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;Z)V

    .line 104
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->allocateRegisters()Lcom/s1243808733/android/dx/ssa/RegisterMapper;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->setBackMode()V

    .line 113
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->mapRegisters(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)V

    .line 115
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->removePhiFunctions()V

    .line 117
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->wantsParamsMovedHigh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->moveParametersToHighRegisters()V

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->removeEmptyGotos()V

    .line 123
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RopMethod;

    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->convertBasicBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getEntryBlockIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blockIndexToRopLabel(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/code/RopMethod;-><init>(Lcom/s1243808733/android/dx/rop/code/BasicBlockList;I)V

    .line 125
    new-instance v1, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;-><init>(Lcom/s1243808733/android/dx/rop/code/RopMethod;)V

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/back/IdenticalBlockCombiner;->process()Lcom/s1243808733/android/dx/rop/code/RopMethod;

    move-result-object v0

    .line 127
    return-object v0
.end method

.method private convertBasicBlock(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/rop/code/BasicBlock;
    .registers 7

    const/4 v1, -0x1

    .line 302
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getRopLabelSuccessorList()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v2

    .line 303
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessorRopLabel()I

    move-result v3

    .line 308
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getExitBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    .line 309
    if-nez v0, :cond_0

    move v0, v1

    .line 311
    :goto_0
    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/util/IntList;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 313
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Exit predecessor must have no other successors"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getRopLabel()I

    move-result v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_0
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getRopLabel()I

    move-result v0

    goto :goto_0

    .line 317
    :cond_1
    sget-object v0, Lcom/s1243808733/android/dx/util/IntList;->EMPTY:Lcom/s1243808733/android/dx/util/IntList;

    .line 320
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->verifyValidExitPredecessor(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    .line 324
    :goto_1
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->setImmutable()V

    .line 326
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getRopLabel()I

    move-result v3

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->convertInsns(Ljava/util/ArrayList;)Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;-><init>(ILcom/s1243808733/android/dx/rop/code/InsnList;Lcom/s1243808733/android/dx/util/IntList;I)V

    .line 331
    return-object v2

    :cond_2
    move-object v0, v2

    move v1, v3

    goto :goto_1
.end method

.method private convertBasicBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;
    .registers 8

    .line 244
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getExitBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    .line 249
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->computeReachability()Ljava/util/BitSet;

    move-result-object v3

    .line 250
    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    .line 253
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    add-int/lit8 v1, v1, -0x1

    .line 257
    :cond_0
    new-instance v4, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-direct {v4, v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;-><init>(I)V

    .line 260
    const/4 v1, 0x0

    .line 261
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 263
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 268
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 269
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exit block must have no insns when leaving SSA form"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 262
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eq v0, v2, :cond_1

    .line 263
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->convertBasicBlock(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->set(ILcom/s1243808733/android/dx/rop/code/BasicBlock;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 273
    :cond_3
    return-object v4
.end method

.method private convertInsns(Ljava/util/ArrayList;)Lcom/s1243808733/android/dx/rop/code/InsnList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;)",
            "Lcom/s1243808733/android/dx/rop/code/InsnList;"
        }
    .end annotation

    .line 341
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 342
    new-instance v3, Lcom/s1243808733/android/dx/rop/code/InsnList;

    invoke-direct {v3, v2}, Lcom/s1243808733/android/dx/rop/code/InsnList;-><init>(I)V

    .line 344
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 348
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/InsnList;->setImmutable()V

    .line 350
    return-object v3

    .line 345
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->toRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->set(ILcom/s1243808733/android/dx/rop/code/Insn;)V

    .line 344
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static convertToRopMethod(Lcom/s1243808733/android/dx/ssa/SsaMethod;Z)Lcom/s1243808733/android/dx/rop/code/RopMethod;
    .registers 3

    .line 69
    new-instance v0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;

    invoke-direct {v0, p0, p1}, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;Z)V

    invoke-direct {v0}, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->convert()Lcom/s1243808733/android/dx/rop/code/RopMethod;

    move-result-object v0

    return-object v0
.end method

.method private moveParametersToHighRegisters()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v5, 0x1

    .line 219
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getParamWidth()I

    move-result v1

    .line 220
    new-instance v2, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;-><init>(I)V

    .line 222
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v3

    .line 224
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 237
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->mapRegisters(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)V

    return-void

    .line 225
    :cond_0
    if-ge v0, v1, :cond_1

    .line 226
    sub-int v4, v3, v1

    add-int/2addr v4, v0

    invoke-virtual {v2, v0, v4, v5}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    .line 224
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_1
    sub-int v4, v0, v1

    invoke-virtual {v2, v0, v4, v5}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    goto :goto_1
.end method

.method private removeEmptyGotos()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    const/4 v2, 0x0

    new-instance v3, Lcom/s1243808733/android/dx/ssa/back/SsaToRop$100000000;

    invoke-direct {v3, p0, v0}, Lcom/s1243808733/android/dx/ssa/back/SsaToRop$100000000;-><init>(Lcom/s1243808733/android/dx/ssa/back/SsaToRop;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->forEachBlockDepthFirst(ZLcom/s1243808733/android/dx/ssa/SsaBasicBlock$Visitor;)V

    return-void
.end method

.method private removePhiFunctions()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v1

    move-object v0, v1

    .line 169
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 174
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 182
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 169
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 171
    new-instance v3, Lcom/s1243808733/android/dx/ssa/back/SsaToRop$PhiVisitor;

    invoke-direct {v3, v1}, Lcom/s1243808733/android/dx/ssa/back/SsaToRop$PhiVisitor;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->forEachPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn$Visitor;)V

    .line 174
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->removeAllPhiInsns()V

    goto :goto_0

    .line 181
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 182
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->scheduleMovesFromPhis()V

    goto :goto_1
.end method

.method private verifyValidExitPredecessor(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
            ")V"
        }
    .end annotation

    .line 284
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 286
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/s1243808733/android/dx/rop/code/Rops;->THROW:Lcom/s1243808733/android/dx/rop/code/Rop;

    if-eq v0, v1, :cond_0

    .line 290
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Exit predecessor must end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " in valid exit statement."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public getRegistersByFrequency()[I
    .registers 6

    const/4 v0, 0x0

    .line 361
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v2

    .line 362
    new-array v3, v2, [Ljava/lang/Integer;

    move v1, v0

    .line 364
    :goto_0
    if-lt v1, v2, :cond_0

    .line 368
    new-instance v1, Lcom/s1243808733/android/dx/ssa/back/SsaToRop$100000001;

    invoke-direct {v1, p0}, Lcom/s1243808733/android/dx/ssa/back/SsaToRop$100000001;-><init>(Lcom/s1243808733/android/dx/ssa/back/SsaToRop;)V

    invoke-static {v3, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 376
    new-array v4, v2, [I

    move v1, v0

    .line 378
    :goto_1
    if-lt v1, v2, :cond_1

    .line 382
    return-object v4

    .line 365
    :cond_0
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v1

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    :cond_1
    aget-object v0, v3, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v4, v1

    .line 378
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method
