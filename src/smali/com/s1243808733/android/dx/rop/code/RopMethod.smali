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
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_19

    if-ltz p2, :cond_11

    .line 59
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    .line 60
    iput p2, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->firstLabel:I

    .line 62
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->predecessors:[Lcom/s1243808733/android/dx/util/IntList;

    .line 63
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/s1243808733/android/dx/util/IntList;

    return-void

    .line 56
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "firstLabel < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_19
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "blocks == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private calcPredecessors()V
    .registers 14

    .line 151
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getMaxLabel()I

    move-result v0

    .line 152
    new-array v1, v0, [Lcom/s1243808733/android/dx/util/IntList;

    .line 153
    new-instance v2, Lcom/s1243808733/android/dx/util/IntList;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/s1243808733/android/dx/util/IntList;-><init>(I)V

    .line 154
    iget-object v4, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_17
    if-ge v6, v4, :cond_4c

    .line 161
    iget-object v7, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v7, v6}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->get(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v7

    .line 162
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v8

    .line 163
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v7

    .line 164
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v9

    if-nez v9, :cond_31

    .line 167
    invoke-virtual {v2, v8}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    goto :goto_49

    :cond_31
    const/4 v10, 0x0

    :goto_32
    if-ge v10, v9, :cond_49

    .line 170
    invoke-virtual {v7, v10}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v11

    .line 171
    aget-object v12, v1, v11

    if-nez v12, :cond_43

    .line 173
    new-instance v12, Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {v12, v3}, Lcom/s1243808733/android/dx/util/IntList;-><init>(I)V

    .line 174
    aput-object v12, v1, v11

    .line 176
    :cond_43
    invoke-virtual {v12, v8}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_32

    :cond_49
    :goto_49
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_4c
    :goto_4c
    if-ge v5, v0, :cond_5b

    .line 183
    aget-object v3, v1, v5

    if-eqz v3, :cond_58

    .line 185
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/util/IntList;->sort()V

    .line 186
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/util/IntList;->setImmutable()V

    :cond_58
    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    .line 190
    :cond_5b
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/IntList;->sort()V

    .line 191
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/IntList;->setImmutable()V

    .line 199
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->firstLabel:I

    aget-object v3, v1, v0

    if-nez v3, :cond_6b

    .line 200
    sget-object v3, Lcom/s1243808733/android/dx/util/IntList;->EMPTY:Lcom/s1243808733/android/dx/util/IntList;

    aput-object v3, v1, v0

    .line 203
    :cond_6b
    iput-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->predecessors:[Lcom/s1243808733/android/dx/util/IntList;

    .line 204
    iput-object v2, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/s1243808733/android/dx/util/IntList;

    return-void
.end method


# virtual methods
.method public getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    return-object v0
.end method

.method public getExitPredecessors()Lcom/s1243808733/android/dx/util/IntList;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/s1243808733/android/dx/util/IntList;

    if-nez v0, :cond_7

    .line 113
    invoke-direct {p0}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->calcPredecessors()V

    .line 116
    :cond_7
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/s1243808733/android/dx/util/IntList;

    return-object v0
.end method

.method public getFirstLabel()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->firstLabel:I

    return v0
.end method

.method public labelToPredecessors(I)Lcom/s1243808733/android/dx/util/IntList;
    .registers 4

    .line 93
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/s1243808733/android/dx/util/IntList;

    if-nez v0, :cond_7

    .line 94
    invoke-direct {p0}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->calcPredecessors()V

    .line 97
    :cond_7
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->predecessors:[Lcom/s1243808733/android/dx/util/IntList;

    aget-object v0, v0, p1

    if-eqz v0, :cond_e

    return-object v0

    .line 100
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no such block: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withRegisterOffset(I)Lcom/s1243808733/android/dx/rop/code/RopMethod;
    .registers 4

    .line 129
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RopMethod;

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->blocks:Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->withRegisterOffset(I)Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object p1

    iget v1, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->firstLabel:I

    invoke-direct {v0, p1, v1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;-><init>(Lcom/s1243808733/android/dx/rop/code/BasicBlockList;I)V

    .line 132
    iget-object p1, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/s1243808733/android/dx/util/IntList;

    if-eqz p1, :cond_17

    .line 139
    iput-object p1, v0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/s1243808733/android/dx/util/IntList;

    .line 140
    iget-object p1, p0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->predecessors:[Lcom/s1243808733/android/dx/util/IntList;

    iput-object p1, v0, Lcom/s1243808733/android/dx/rop/code/RopMethod;->predecessors:[Lcom/s1243808733/android/dx/util/IntList;

    :cond_17
    return-object v0
.end method
