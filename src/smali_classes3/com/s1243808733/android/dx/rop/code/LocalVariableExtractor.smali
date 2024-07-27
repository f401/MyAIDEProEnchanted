.class public final Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;
.super Ljava/lang/Object;
.source "LocalVariableExtractor.java"


# instance fields
.field private final blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

.field private final method:Lcom/s1243808733/android/dx/rop/code/RopMethod;

.field private final resultInfo:Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;

.field private final workSet:[I


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/rop/code/RopMethod;)V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getMaxLabel()I

    move-result v1

    .line 63
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->method:Lcom/s1243808733/android/dx/rop/code/RopMethod;

    .line 64
    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    .line 65
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;-><init>(Lcom/s1243808733/android/dx/rop/code/RopMethod;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->resultInfo:Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;

    .line 66
    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Bits;->makeBitSet(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->workSet:[I

    return-void
.end method

.method private doit()Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->method:Lcom/s1243808733/android/dx/rop/code/RopMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getFirstLabel()I

    move-result v0

    .line 77
    :goto_0
    if-gez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->resultInfo:Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->setImmutable()V

    .line 83
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->resultInfo:Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;

    return-object v0

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->workSet:[I

    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/util/Bits;->clear([II)V

    .line 79
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->processBlock(I)V

    .line 77
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->workSet:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/util/Bits;->findFirst([II)I

    move-result v0

    goto :goto_0
.end method

.method public static extract(Lcom/s1243808733/android/dx/rop/code/RopMethod;)Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;
    .registers 2

    .line 46
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;-><init>(Lcom/s1243808733/android/dx/rop/code/RopMethod;)V

    .line 47
    invoke-direct {v0}, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->doit()Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;

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

    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->resultInfo:Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->mutableCopyOfStarts(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v3

    .line 93
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v5

    .line 94
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getInsns()Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object v6

    .line 95
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/InsnList;->size()I

    move-result v7

    .line 104
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->hasExceptionHandlers()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/InsnList;->getLast()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    move-object v2, v3

    move v4, v1

    .line 114
    :goto_1
    if-lt v4, v7, :cond_2

    .line 169
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    .line 177
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v4

    .line 178
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v6

    .line 179
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v5

    .line 181
    :goto_2
    if-lt v1, v6, :cond_7

    return-void

    .line 104
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 115
    :cond_2
    if-eqz v0, :cond_3

    add-int/lit8 v8, v7, -0x1

    if-ne v4, v8, :cond_3

    .line 117
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    .line 118
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->mutableCopy()Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v2

    .line 121
    :cond_3
    invoke-virtual {v6, v4}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v8

    .line 122
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/Insn;->getLocalAssignment()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    .line 126
    if-nez v9, :cond_5

    .line 132
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/Insn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v8

    .line 134
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 136
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->remove(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 114
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 141
    :cond_5
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withSimpleType()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    .line 143
    invoke-virtual {v2, v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    .line 149
    invoke-virtual {v9, v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 155
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->localItemToSpec(Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    .line 158
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v11

    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v12

    if-eq v11, v12, :cond_6

    .line 161
    invoke-virtual {v2, v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->remove(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 164
    :cond_6
    iget-object v10, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->resultInfo:Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;

    invoke-virtual {v10, v8, v9}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->addAssignment(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 165
    invoke-virtual {v2, v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->put(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    goto :goto_3

    .line 182
    :cond_7
    invoke-virtual {v4, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v7

    .line 183
    if-ne v7, v5, :cond_9

    move-object v0, v2

    .line 186
    :goto_4
    iget-object v8, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->resultInfo:Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;

    invoke-virtual {v8, v7, v0}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->mergeStarts(ILcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 187
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->workSet:[I

    invoke-static {v0, v7}, Lcom/s1243808733/android/dx/util/Bits;->set([II)V

    .line 181
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    move-object v0, v3

    .line 183
    goto :goto_4
.end method
