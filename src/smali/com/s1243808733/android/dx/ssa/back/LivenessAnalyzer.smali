.class public Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;
.super Ljava/lang/Object;
.source "LivenessAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;
    }
.end annotation


# instance fields
.field private blockN:Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

.field private final interference:Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;

.field private final liveOutBlocks:Ljava/util/BitSet;

.field private nextFunction:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

.field private final regV:I

.field private final ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

.field private statementIndex:I

.field private final visitedBlocks:Ljava/util/BitSet;


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;ILcom/s1243808733/android/dx/ssa/back/InterferenceGraph;)V
    .registers 5

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 115
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 116
    iput p2, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->regV:I

    .line 117
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->visitedBlocks:Ljava/util/BitSet;

    .line 118
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->liveOutBlocks:Ljava/util/BitSet;

    .line 119
    iput-object p3, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->interference:Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;

    return-void
.end method

.method private static coInterferePhiRegisters(Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V
    .registers 5

    .line 284
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p1

    const/4 v0, 0x0

    .line 285
    :goto_5
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 286
    invoke-virtual {p2, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;->add(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_19
    return-void
.end method

.method private static coInterferePhis(Lcom/s1243808733/android/dx/ssa/SsaMethod;Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;)V
    .registers 11

    .line 261
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 262
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPhiInsns()Ljava/util/List;

    move-result-object v0

    .line 264
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v1, :cond_8

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v1, :cond_5e

    if-ne v3, v4, :cond_26

    goto :goto_5b

    .line 272
    :cond_26
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 273
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 274
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v8

    invoke-static {p1, v7, v8}, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->coInterferePhiRegisters(Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 275
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v8

    invoke-static {p1, v7, v8}, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->coInterferePhiRegisters(Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 276
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;->add(II)V

    :goto_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_61
    return-void
.end method

.method public static constructInterferenceGraph(Lcom/s1243808733/android/dx/ssa/SsaMethod;)Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;
    .registers 5

    .line 90
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    .line 91
    new-instance v1, Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_17

    .line 94
    new-instance v3, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;

    invoke-direct {v3, p0, v2, v1}, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;ILcom/s1243808733/android/dx/ssa/back/InterferenceGraph;)V

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->run()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 97
    :cond_17
    invoke-static {p0, v1}, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->coInterferePhis(Lcom/s1243808733/android/dx/ssa/SsaMethod;Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;)V

    return-object v1
.end method

.method private handleTailRecursion()V
    .registers 3

    .line 128
    nop

    :goto_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->nextFunction:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    sget-object v1, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->DONE:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    if-eq v0, v1, :cond_2e

    .line 129
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->nextFunction:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->ordinal()I

    move-result v0

    if-eqz v0, :cond_26

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    goto :goto_1

    .line 141
    :cond_16
    sget-object v0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->DONE:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->nextFunction:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    .line 142
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->liveOutAtBlock()V

    goto :goto_1

    .line 136
    :cond_1e
    sget-object v0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->DONE:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->nextFunction:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    .line 137
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->liveOutAtStatement()V

    goto :goto_1

    .line 131
    :cond_26
    sget-object v0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->DONE:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->nextFunction:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    .line 132
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->liveInAtStatement()V

    goto :goto_1

    :cond_2e
    return-void
.end method

.method private liveInAtStatement()V
    .registers 3

    .line 217
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->statementIndex:I

    if-nez v0, :cond_17

    .line 219
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->blockN:Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->regV:I

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->addLiveIn(I)V

    .line 221
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->blockN:Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->liveOutBlocks:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    goto :goto_1f

    .line 226
    :cond_17
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->statementIndex:I

    .line 227
    sget-object v0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->LIVE_OUT_AT_STATEMENT:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->nextFunction:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    :goto_1f
    return-void
.end method

.method private liveOutAtBlock()V
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->visitedBlocks:Ljava/util/BitSet;

    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->blockN:Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_32

    .line 198
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->visitedBlocks:Ljava/util/BitSet;

    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->blockN:Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 200
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->blockN:Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->regV:I

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->addLiveOut(I)V

    .line 204
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->blockN:Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->statementIndex:I

    .line 208
    sget-object v0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->LIVE_OUT_AT_STATEMENT:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->nextFunction:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    :cond_32
    return-void
.end method

.method private liveOutAtStatement()V
    .registers 4

    .line 235
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->blockN:Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->statementIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 236
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 238
    iget v2, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->regV:I

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->isResultReg(I)Z

    move-result v0

    if-nez v0, :cond_2b

    if-eqz v1, :cond_27

    .line 240
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->interference:Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;

    iget v2, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->regV:I

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;->add(II)V

    .line 242
    :cond_27
    sget-object v0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->LIVE_IN_AT_STATEMENT:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->nextFunction:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    :cond_2b
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 154
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->regV:I

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object v0

    .line 156
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 157
    sget-object v2, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->DONE:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    iput-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->nextFunction:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    .line 159
    instance-of v2, v1, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    if-eqz v2, :cond_44

    .line 161
    check-cast v1, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    .line 164
    iget v2, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->regV:I

    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->predBlocksForReg(ILcom/s1243808733/android/dx/ssa/SsaMethod;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 165
    iput-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->blockN:Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 167
    sget-object v2, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->LIVE_OUT_AT_BLOCK:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    iput-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->nextFunction:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    .line 168
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->handleTailRecursion()V

    goto :goto_2e

    .line 171
    :cond_44
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    iput-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->blockN:Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 172
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->statementIndex:I

    if-ltz v1, :cond_5e

    .line 179
    sget-object v1, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->LIVE_IN_AT_STATEMENT:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    iput-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->nextFunction:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    .line 180
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->handleTailRecursion()V

    goto :goto_c

    .line 175
    :cond_5e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "insn not found in it\'s own block"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_66
    :goto_66
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->liveOutBlocks:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    if-ltz v0, :cond_8a

    .line 186
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    iput-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->blockN:Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 187
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->liveOutBlocks:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    .line 188
    sget-object v0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;->LIVE_OUT_AT_BLOCK:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->nextFunction:Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer$NextFunction;

    .line 189
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/back/LivenessAnalyzer;->handleTailRecursion()V

    goto :goto_66

    :cond_8a
    return-void
.end method
