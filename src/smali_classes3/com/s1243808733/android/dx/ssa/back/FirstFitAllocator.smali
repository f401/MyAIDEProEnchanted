.class public Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;
.super Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;
.source "FirstFitAllocator.java"


# static fields
.field private static final PRESLOT_PARAMS:Z = true


# instance fields
.field private final mapped:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;)V
    .registers 5

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
    .registers 3

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
    .registers 12
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, 0x0

    .line 61
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v7

    .line 63
    new-instance v8, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;

    invoke-direct {v8, v7}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;-><init>(I)V

    .line 68
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getParamWidth()I

    move-result v1

    move v6, v3

    .line 78
    :goto_0
    if-lt v6, v7, :cond_0

    .line 136
    return-object v8

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 78
    :goto_1
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v1, v0

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p0, v6}, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->getCategoryForSsaReg(I)I

    move-result v4

    .line 85
    new-instance v9, Lcom/s1243808733/android/dx/util/BitIntSet;

    invoke-direct {v9, v7}, Lcom/s1243808733/android/dx/util/BitIntSet;-><init>(I)V

    .line 87
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->interference:Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;

    invoke-virtual {v0, v6, v9}, Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;->mergeInterferenceSet(ILcom/s1243808733/android/dx/util/IntSet;)V

    .line 92
    invoke-virtual {p0, v6}, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->isDefinitionMoveParam(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, v6}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    .line 97
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->paramNumberFromMoveParam(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)I

    move-result v0

    .line 99
    invoke-virtual {v8, v6, v0, v4}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    .line 100
    const/4 v2, 0x1

    .line 106
    :goto_2
    add-int/lit8 v5, v6, 0x1

    :goto_3
    if-lt v5, v7, :cond_3

    .line 130
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 131
    if-nez v2, :cond_7

    .line 132
    add-int v0, v1, v4

    goto :goto_1

    .line 102
    :cond_2
    invoke-virtual {v8, v6, v1, v4}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    move v0, v1

    move v2, v3

    .line 103
    goto :goto_2

    .line 107
    :cond_3
    iget-object v10, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    invoke-virtual {v10, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {p0, v5}, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->isDefinitionMoveParam(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 106
    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 116
    :cond_5
    invoke-interface {v9, v5}, Lcom/s1243808733/android/dx/util/IntSet;->has(I)Z

    move-result v10

    if-nez v10, :cond_4

    if-eqz v2, :cond_6

    invoke-virtual {p0, v5}, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->getCategoryForSsaReg(I)I

    move-result v10

    if-lt v4, v10, :cond_4

    .line 120
    :cond_6
    iget-object v10, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->interference:Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;

    invoke-virtual {v10, v5, v9}, Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;->mergeInterferenceSet(ILcom/s1243808733/android/dx/util/IntSet;)V

    .line 122
    invoke-virtual {p0, v5}, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->getCategoryForSsaReg(I)I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 125
    invoke-virtual {v8, v5, v0, v4}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    .line 126
    iget-object v10, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    invoke-virtual {v10, v5}, Ljava/util/BitSet;->set(I)V

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method public wantsParamsMovedHigh()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 55
    const/4 v0, 0x1

    return v0
.end method
