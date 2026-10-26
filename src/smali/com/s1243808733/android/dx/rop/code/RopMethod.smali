.class public final Lcom/s1243808733/android/dx/rop/code/RopMethod;
.super Ljava/lang/Object;
.source "RopMethod.java"


# instance fields
.field private final blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

.field private exitPredecessors:Lcom/s1243808733/android/dx/util/IntList;

.field private final firstLabel:I

.field private predecessors:[Lcom/s1243808733/android/dx/util/IntList;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/BasicBlockList;I)V
    .locals 2

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    .line 59
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    .line 60
    iput p2, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->firstLabel:I

    .line 62
    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->predecessors:[Lcom/s1243808733/android/dx/util/IntList;

    .line 63
    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/s1243808733/android/dx/util/IntList;

    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "firstLabel < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "blocks == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private calcPredecessors()V
    .locals 13

    const/16 v12, 0xa

    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getMaxLabel()I

    move-result v4

    .line 152
    new-array v5, v4, [Lcom/s1243808733/android/dx/util/IntList;

    .line 153
    new-instance v6, Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {v6, v12}, Lcom/s1243808733/android/dx/util/IntList;-><init>(I)V

    .line 154
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->size()I

    move-result v7

    move v3, v1

    :goto_0
    if-ge v3, v7, :cond_6

    .line 161
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->get(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v8

    .line 163
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v9

    .line 164
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 167
    invoke-virtual {v6, v8}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    .line 176
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v2, v1

    .line 167
    :goto_1
    if-ge v2, v10, :cond_0

    .line 170
    invoke-virtual {v9, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v11

    .line 171
    aget-object v0, v5, v11

    if-nez v0, :cond_2

    .line 173
    new-instance v0, Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {v0, v12}, Lcom/s1243808733/android/dx/util/IntList;-><init>(I)V

    .line 174
    aput-object v0, v5, v11

    .line 176
    :cond_2
    invoke-virtual {v0, v8}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :goto_2
    if-ge v0, v4, :cond_4

    .line 183
    aget-object v1, v5, v0

    if-eqz v1, :cond_3

    .line 185
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/IntList;->sort()V

    .line 186
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/IntList;->setImmutable()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 190
    :cond_4
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/util/IntList;->sort()V

    .line 191
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/util/IntList;->setImmutable()V

    .line 199
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->firstLabel:I

    aget-object v1, v5, v0

    if-nez v1, :cond_5

    .line 200
    sget-object v1, Lcom/s1243808733/android/dx/util/IntList;->EMPTY:Lcom/s1243808733/android/dx/util/IntList;

    aput-object v1, v5, v0

    .line 203
    :cond_5
    iput-object v5, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->predecessors:[Lcom/s1243808733/android/dx/util/IntList;

    .line 204
    iput-object v6, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/s1243808733/android/dx/util/IntList;

    return-void

    :cond_6
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    return-object v0
.end method

.method public getExitPredecessors()Lcom/s1243808733/android/dx/util/IntList;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/s1243808733/android/dx/util/IntList;

    if-nez v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->calcPredecessors()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/s1243808733/android/dx/util/IntList;

    return-object v0
.end method

.method public getFirstLabel()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->firstLabel:I

    return v0
.end method

.method public labelToPredecessors(I)Lcom/s1243808733/android/dx/util/IntList;
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/s1243808733/android/dx/util/IntList;

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->calcPredecessors()V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->predecessors:[Lcom/s1243808733/android/dx/util/IntList;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    return-object v0

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no such block: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public withRegisterOffset(I)Lcom/s1243808733/android/dx/rop/code/RopMethod;
    .locals 3

    .line 129
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RopMethod;

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->withRegisterOffset(I)Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v1

    iget v2, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->firstLabel:I

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/code/RopMethod;-><init>(Lcom/s1243808733/android/dx/rop/code/BasicBlockList;I)V

    .line 132
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/s1243808733/android/dx/util/IntList;

    if-eqz v1, :cond_0

    .line 139
    iput-object v1, v0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/s1243808733/android/dx/util/IntList;

    .line 140
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->predecessors:[Lcom/s1243808733/android/dx/util/IntList;

    iput-object v1, v0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->predecessors:[Lcom/s1243808733/android/dx/util/IntList;

    :cond_0
    return-object v0
.end method
