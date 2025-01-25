.class public Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;
.super Ljava/lang/Object;
.source "LocalVariableExtractor.java"


# instance fields
.field private final blocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field

.field private final method:Lcom/s1243808733/android/dx/ssa/SsaMethod;

.field private final resultInfo:Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;

.field private final workSet:Ljava/util/BitSet;


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_20

    .line 68
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    .line 70
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->method:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 71
    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->blocks:Ljava/util/ArrayList;

    .line 72
    new-instance v1, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;

    invoke-direct {v1, p1}, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    iput-object v1, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;

    .line 73
    new-instance p1, Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->workSet:Ljava/util/BitSet;

    return-void

    .line 65
    :cond_20
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private doit()Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->method:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    if-lez v0, :cond_20

    .line 85
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->method:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getEntryBlockIndex()I

    move-result v0

    :goto_e
    if-ltz v0, :cond_20

    .line 88
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->workSet:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    .line 89
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->processBlock(I)V

    .line 87
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->workSet:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_e

    .line 93
    :cond_20
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->setImmutable()V

    .line 94
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;

    return-object v0
.end method

.method public static extract(Lcom/s1243808733/android/dx/ssa/SsaMethod;)Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;
    .registers 2

    .line 54
    new-instance v0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 55
    invoke-direct {v0}, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->doit()Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;

    move-result-object p0

    return-object p0
.end method

.method private processBlock(I)V
    .registers 15

    .line 103
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;

    .line 104
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->mutableCopyOfStarts(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 106
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v2

    .line 107
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 110
    iget-object v4, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->method:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getExitBlockIndex()I

    move-result v4

    if-ne p1, v4, :cond_1f

    return-void

    :cond_1f
    add-int/lit8 p1, v3, -0x1

    .line 121
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 123
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v5

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/Insn;->getCatches()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v5

    invoke-interface {v5}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3e

    .line 125
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    if-eqz v4, :cond_3e

    const/4 v4, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v4, 0x0

    :goto_3f
    move-object v7, v0

    const/4 v5, 0x0

    :goto_41
    if-ge v5, v3, :cond_a6

    if-eqz v4, :cond_4e

    if-ne v5, p1, :cond_4e

    .line 137
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    .line 138
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->mutableCopy()Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v7

    .line 141
    :cond_4e
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 144
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getLocalAssignment()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    if-nez v9, :cond_76

    .line 149
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v8

    if-eqz v8, :cond_a3

    .line 151
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    if-eqz v9, :cond_a3

    .line 152
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->remove(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    goto :goto_a3

    .line 157
    :cond_76
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withSimpleType()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    .line 159
    invoke-virtual {v7, v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    .line 165
    invoke-virtual {v9, v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a3

    .line 172
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->localItemToSpec(Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    if-eqz v10, :cond_9b

    .line 175
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v11

    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v12

    if-eq v11, v12, :cond_9b

    .line 177
    invoke-virtual {v7, v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->remove(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 180
    :cond_9b
    iget-object v10, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;

    invoke-virtual {v10, v8, v9}, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->addAssignment(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 181
    invoke-virtual {v7, v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->put(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    :cond_a3
    :goto_a3
    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    .line 185
    :cond_a6
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    .line 193
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v2

    .line 195
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessorIndex()I

    move-result v1

    :goto_b5
    if-ge v6, v2, :cond_d0

    .line 198
    invoke-virtual {p1, v6}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v3

    if-ne v3, v1, :cond_bf

    move-object v4, v7

    goto :goto_c0

    :cond_bf
    move-object v4, v0

    .line 202
    :goto_c0
    iget-object v5, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;

    invoke-virtual {v5, v3, v4}, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->mergeStarts(ILcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)Z

    move-result v4

    if-eqz v4, :cond_cd

    .line 203
    iget-object v4, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->workSet:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->set(I)V

    :cond_cd
    add-int/lit8 v6, v6, 0x1

    goto :goto_b5

    :cond_d0
    return-void
.end method
