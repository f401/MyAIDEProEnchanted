.class public final Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;
.super Ljava/lang/Object;
.source "LocalVariableExtractor.java"


# instance fields
.field private final blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

.field private final method:Lcom/s1243808733/android/dx/rop/code/RopMethod;

.field private final resultInfo:Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;

.field private final workSet:[I


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dx/rop/code/RopMethod;)V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1f

    .line 60
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

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->workSet:[I

    return-void

    .line 57
    :cond_1f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private doit()Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->method:Lcom/s1243808733/android/dx/rop/code/RopMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getFirstLabel()I

    move-result v0

    :goto_6
    if-ltz v0, :cond_18

    .line 78
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->workSet:[I

    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/util/Bits;->clear([II)V

    .line 79
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->processBlock(I)V

    .line 77
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->workSet:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/util/Bits;->findFirst([II)I

    move-result v0

    goto :goto_6

    .line 82
    :cond_18
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->resultInfo:Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->setImmutable()V

    .line 83
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->resultInfo:Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;

    return-object v0
.end method

.method public static extract(Lcom/s1243808733/android/dx/rop/code/RopMethod;)Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;
    .registers 2

    .line 46
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;-><init>(Lcom/s1243808733/android/dx/rop/code/RopMethod;)V

    .line 47
    invoke-direct {v0}, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->doit()Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;

    move-result-object p0

    return-object p0
.end method

.method private processBlock(I)V
    .registers 14

    .line 92
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->resultInfo:Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->mutableCopyOfStarts(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getInsns()Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/InsnList;->size()I

    move-result v2

    .line 104
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->hasExceptionHandlers()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_27

    .line 105
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/InsnList;->getLast()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/Insn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    if-eqz v3, :cond_27

    const/4 v3, 0x1

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    :goto_28
    move-object v6, v0

    const/4 v5, 0x0

    :goto_2a
    if-ge v5, v2, :cond_8f

    if-eqz v3, :cond_39

    add-int/lit8 v7, v2, -0x1

    if-ne v5, v7, :cond_39

    .line 117
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    .line 118
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->mutableCopy()Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v6

    .line 121
    :cond_39
    invoke-virtual {v1, v5}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v7

    .line 124
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/Insn;->getLocalAssignment()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v8

    if-nez v8, :cond_5f

    .line 132
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/Insn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    if-eqz v7, :cond_8c

    .line 135
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v8

    if-eqz v8, :cond_8c

    .line 136
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->remove(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    goto :goto_8c

    .line 141
    :cond_5f
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withSimpleType()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v8

    .line 143
    invoke-virtual {v6, v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    .line 149
    invoke-virtual {v8, v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8c

    .line 156
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->localItemToSpec(Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    if-eqz v9, :cond_84

    .line 159
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v10

    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v11

    if-eq v10, v11, :cond_84

    .line 161
    invoke-virtual {v6, v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->remove(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 164
    :cond_84
    iget-object v9, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->resultInfo:Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;

    invoke-virtual {v9, v7, v8}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->addAssignment(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 165
    invoke-virtual {v6, v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->put(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    :cond_8c
    :goto_8c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 169
    :cond_8f
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    .line 177
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v2

    .line 179
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result p1

    :goto_9e
    if-ge v4, v2, :cond_b9

    .line 182
    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v3

    if-ne v3, p1, :cond_a8

    move-object v5, v6

    goto :goto_a9

    :cond_a8
    move-object v5, v0

    .line 186
    :goto_a9
    iget-object v7, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->resultInfo:Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;

    invoke-virtual {v7, v3, v5}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->mergeStarts(ILcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 187
    iget-object v5, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableExtractor;->workSet:[I

    invoke-static {v5, v3}, Lcom/s1243808733/android/dx/util/Bits;->set([II)V

    :cond_b6
    add-int/lit8 v4, v4, 0x1

    goto :goto_9e

    :cond_b9
    return-void
.end method
