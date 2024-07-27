.class public Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;
.super Ljava/lang/Object;
.source "LocalVariableExtractor.java"


# instance fields
.field private final blocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field

.field private final method:Lcom/s1243808733/android/dx/ssa/SsaMethod;

.field private final resultInfo:Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;

.field private final workSet:Ljava/util/BitSet;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
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
    new-instance v1, Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->workSet:Ljava/util/BitSet;

    return-void
.end method

.method private doit()Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->method:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->method:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getEntryBlockIndex()I

    move-result v0

    .line 87
    :goto_0
    if-gez v0, :cond_1

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->setImmutable()V

    .line 94
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;

    return-object v0

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->workSet:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    .line 89
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->processBlock(I)V

    .line 87
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->workSet:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0
.end method

.method public static extract(Lcom/s1243808733/android/dx/ssa/SsaMethod;)Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;
    .registers 2

    .line 54
    new-instance v0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 55
    invoke-direct {v0}, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->doit()Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;

    move-result-object v0

    return-object v0
.end method

.method private processBlock(I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 103
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->mutableCopyOfStarts(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v4

    .line 105
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 106
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v7

    .line 107
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 110
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->method:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getExitBlockIndex()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 197
    :cond_0
    return-void

    .line 121
    :cond_1
    add-int/lit8 v1, v8, -0x1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 122
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v5

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/Insn;->getCatches()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v5

    invoke-interface {v5}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v5

    if-nez v5, :cond_5

    move v5, v3

    .line 124
    :goto_0
    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    move-object v1, v4

    move v6, v3

    .line 134
    :goto_1
    if-lt v6, v8, :cond_6

    .line 185
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    .line 193
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v2

    .line 194
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v5

    .line 195
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessorIndex()I

    move-result v6

    .line 197
    :goto_2
    if-ge v3, v5, :cond_0

    .line 198
    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v7

    .line 199
    if-ne v7, v6, :cond_a

    move-object v0, v1

    .line 202
    :goto_3
    iget-object v8, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;

    invoke-virtual {v8, v7, v0}, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->mergeStarts(ILcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 203
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->workSet:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 197
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move v5, v2

    .line 122
    goto :goto_0

    .line 135
    :cond_6
    if-eqz v2, :cond_b

    add-int/lit8 v5, v8, -0x1

    if-ne v6, v5, :cond_b

    .line 137
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    .line 138
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->mutableCopy()Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v1

    move-object v5, v1

    .line 141
    :goto_4
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 142
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getLocalAssignment()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    .line 146
    if-nez v9, :cond_8

    .line 149
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 152
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->remove(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 134
    :cond_7
    :goto_5
    add-int/lit8 v6, v6, 0x1

    move-object v1, v5

    goto :goto_1

    .line 157
    :cond_8
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withSimpleType()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    .line 159
    invoke-virtual {v5, v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    .line 165
    invoke-virtual {v9, v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 171
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->localItemToSpec(Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    .line 174
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v11

    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v12

    if-eq v11, v12, :cond_9

    .line 177
    invoke-virtual {v5, v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->remove(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 180
    :cond_9
    iget-object v10, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;

    invoke-virtual {v10, v1, v9}, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->addAssignment(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 181
    invoke-virtual {v5, v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->put(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    goto :goto_5

    :cond_a
    move-object v0, v4

    .line 199
    goto :goto_3

    :cond_b
    move-object v5, v1

    goto :goto_4
.end method
