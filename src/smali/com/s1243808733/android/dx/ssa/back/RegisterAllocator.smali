.class public abstract Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;
.super Ljava/lang/Object;
.source "RegisterAllocator.java"


# instance fields
.field protected final interference:Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;

.field protected final ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 53
    iput-object p2, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->interference:Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;

    return-void
.end method


# virtual methods
.method public abstract allocateRegisters()Lcom/s1243808733/android/dx/ssa/RegisterMapper;
.end method

.method protected final getCategoryForSsaReg(I)I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v0

    goto :goto_0
.end method

.method protected final getDefinitionSpecForSsaReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    goto :goto_0
.end method

.method protected final insertMoveBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .locals 8

    .line 135
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v1

    .line 137
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 144
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_2

    .line 159
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->makeNewSsaReg()I

    move-result v3

    .line 160
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v4

    .line 159
    invoke-static {v3, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 162
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v4

    invoke-static {v4}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMove(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v4

    sget-object v5, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    .line 165
    new-instance v6, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-static {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v7

    invoke-direct {v6, v4, v5, v3, v7}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 162
    invoke-static {v6, v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->makeFromRop(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v4

    .line 167
    invoke-virtual {v1, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 169
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    .line 176
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getLiveOutRegs()Lcom/s1243808733/android/dx/util/IntSet;

    move-result-object v0

    .line 177
    invoke-interface {v0}, Lcom/s1243808733/android/dx/util/IntSet;->iterator()Lcom/s1243808733/android/dx/util/IntIterator;

    move-result-object v0

    .line 179
    :goto_0
    invoke-interface {v0}, Lcom/s1243808733/android/dx/util/IntIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->interference:Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/util/IntIterator;->next()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;->add(II)V

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    .line 185
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 188
    iget-object v5, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->interference:Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    invoke-virtual {v5, v1, v6}, Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;->add(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onInsnsChanged()V

    return-object v3

    .line 150
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding move here not supported:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "specified insn is not in this block"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected isDefinitionMoveParam(I)Z
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v0

    .line 113
    instance-of v1, v0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    if-eqz v1, :cond_0

    .line 114
    check-cast v0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    .line 116
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract wantsParamsMovedHigh()Z
.end method
