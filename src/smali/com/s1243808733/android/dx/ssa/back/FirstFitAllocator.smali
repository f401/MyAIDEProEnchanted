.class public Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;
.super Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;
.source "FirstFitAllocator.java"


# static fields
.field private static final PRESLOT_PARAMS:Z = true


# instance fields
.field private final mapped:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;)V
    .registers 3

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;)V

    .line 49
    new-instance p2, Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result p1

    invoke-direct {p2, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object p2, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    return-void
.end method

.method private paramNumberFromMoveParam(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)I
    .registers 2

    .line 145
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/rop/code/CstInsn;

    .line 147
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result p1

    return p1
.end method


# virtual methods
.method public allocateRegisters()Lcom/s1243808733/android/dx/ssa/RegisterMapper;
    .registers 12

    .line 61
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    .line 63
    new-instance v1, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;-><init>(I)V

    .line 75
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getParamWidth()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v0, :cond_8c

    .line 79
    iget-object v5, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1e

    goto :goto_89

    .line 84
    :cond_1e
    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->getCategoryForSsaReg(I)I

    move-result v5

    .line 85
    new-instance v6, Lcom/s1243808733/android/dx/util/BitIntSet;

    invoke-direct {v6, v0}, Lcom/s1243808733/android/dx/util/BitIntSet;-><init>(I)V

    .line 87
    iget-object v7, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->interference:Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;

    invoke-virtual {v7, v4, v6}, Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;->mergeInterferenceSet(ILcom/s1243808733/android/dx/util/IntSet;)V

    .line 92
    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->isDefinitionMoveParam(I)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 94
    iget-object v7, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 95
    invoke-virtual {v7, v4}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v7

    check-cast v7, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    .line 97
    invoke-direct {p0, v7}, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->paramNumberFromMoveParam(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)I

    move-result v7

    .line 99
    invoke-virtual {v1, v4, v7, v5}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    const/4 v8, 0x1

    goto :goto_48

    .line 102
    :cond_43
    invoke-virtual {v1, v4, v2, v5}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    move v7, v2

    const/4 v8, 0x0

    :goto_48
    add-int/lit8 v9, v4, 0x1

    :goto_4a
    if-ge v9, v0, :cond_81

    .line 107
    iget-object v10, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    invoke-virtual {v10, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-nez v10, :cond_7e

    invoke-virtual {p0, v9}, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->isDefinitionMoveParam(I)Z

    move-result v10

    if-eqz v10, :cond_5b

    goto :goto_7e

    .line 116
    :cond_5b
    invoke-interface {v6, v9}, Lcom/s1243808733/android/dx/util/IntSet;->has(I)Z

    move-result v10

    if-nez v10, :cond_7e

    if-eqz v8, :cond_69

    .line 118
    invoke-virtual {p0, v9}, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->getCategoryForSsaReg(I)I

    move-result v10

    if-lt v5, v10, :cond_7e

    .line 120
    :cond_69
    iget-object v10, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->interference:Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;

    invoke-virtual {v10, v9, v6}, Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;->mergeInterferenceSet(ILcom/s1243808733/android/dx/util/IntSet;)V

    .line 123
    invoke-virtual {p0, v9}, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->getCategoryForSsaReg(I)I

    move-result v10

    .line 122
    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 125
    invoke-virtual {v1, v9, v7, v5}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    .line 126
    iget-object v10, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    invoke-virtual {v10, v9}, Ljava/util/BitSet;->set(I)V

    :cond_7e
    :goto_7e
    add-int/lit8 v9, v9, 0x1

    goto :goto_4a

    .line 130
    :cond_81
    iget-object v6, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    invoke-virtual {v6, v4}, Ljava/util/BitSet;->set(I)V

    if-nez v8, :cond_89

    add-int/2addr v2, v5

    :cond_89
    :goto_89
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_8c
    return-object v1
.end method

.method public wantsParamsMovedHigh()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
