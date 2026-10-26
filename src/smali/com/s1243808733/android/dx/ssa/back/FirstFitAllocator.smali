.class public Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;
.super Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;
.source "FirstFitAllocator.java"


# static fields
.field private static final PRESLOT_PARAMS:Z = true


# instance fields
.field private final mapped:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;)V
    .locals 2

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;)V

    .line 49
    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    return-void
.end method

.method private paramNumberFromMoveParam(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)I
    .locals 1

    .line 145
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/CstInsn;

    .line 147
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public allocateRegisters()Lcom/s1243808733/android/dx/ssa/RegisterMapper;
    .locals 11

    const/4 v3, 0x0

    .line 61
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v7

    .line 63
    new-instance v8, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;

    invoke-direct {v8, v7}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;-><init>(I)V

    .line 75
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getParamWidth()I

    move-result v1

    move v6, v3

    :goto_0
    if-ge v6, v7, :cond_7

    .line 79
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p0, v6}, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->getCategoryForSsaReg(I)I

    move-result v4

    .line 85
    new-instance v9, Lcom/s1243808733/android/dx/util/BitIntSet;

    invoke-direct {v9, v7}, Lcom/s1243808733/android/dx/util/BitIntSet;-><init>(I)V

    .line 87
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->interference:Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;

    invoke-virtual {v0, v6, v9}, Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;->mergeInterferenceSet(ILcom/s1243808733/android/dx/util/IntSet;)V

    .line 92
    invoke-virtual {p0, v6}, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->isDefinitionMoveParam(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 95
    invoke-virtual {v0, v6}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    .line 97
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->paramNumberFromMoveParam(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)I

    move-result v0

    .line 99
    invoke-virtual {v8, v6, v0, v4}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    const/4 v2, 0x1

    .line 102
    :goto_2
    add-int/lit8 v5, v6, 0x1

    :goto_3
    if-ge v5, v7, :cond_6

    .line 107
    iget-object v10, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    invoke-virtual {v10, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {p0, v5}, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->isDefinitionMoveParam(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 126
    :cond_2
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 102
    :cond_3
    invoke-virtual {v8, v6, v1, v4}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    move v0, v1

    move v2, v3

    goto :goto_2

    .line 116
    :cond_4
    invoke-interface {v9, v5}, Lcom/s1243808733/android/dx/util/IntSet;->has(I)Z

    move-result v10

    if-nez v10, :cond_2

    if-eqz v2, :cond_5

    .line 118
    invoke-virtual {p0, v5}, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->getCategoryForSsaReg(I)I

    move-result v10

    if-lt v4, v10, :cond_2

    .line 120
    :cond_5
    iget-object v10, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->interference:Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;

    invoke-virtual {v10, v5, v9}, Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;->mergeInterferenceSet(ILcom/s1243808733/android/dx/util/IntSet;)V

    .line 123
    invoke-virtual {p0, v5}, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->getCategoryForSsaReg(I)I

    move-result v10

    .line 122
    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 125
    invoke-virtual {v8, v5, v0, v4}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    .line 126
    iget-object v10, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    invoke-virtual {v10, v5}, Ljava/util/BitSet;->set(I)V

    goto :goto_4

    .line 130
    :cond_6
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    if-nez v2, :cond_0

    add-int/2addr v1, v4

    goto :goto_1

    :cond_7
    return-object v8
.end method

.method public wantsParamsMovedHigh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
