.class public abstract Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;
.super Ljava/lang/Object;
.source "RegisterAllocator.java"


# instance fields
.field protected final interference:Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;

.field protected final ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;)V
    .registers 3

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
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x1

    return p1

    .line 86
    :cond_a
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result p1

    return p1
.end method

.method protected final getDefinitionSpecForSsaReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    goto :goto_e

    .line 100
    :cond_a
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    :goto_e
    return-object p1
.end method

.method protected final insertMoveBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 10

    .line 135
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v1

    .line 137
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_94

    .line 144
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_7c

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
    nop

    .line 163
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v4

    invoke-static {v4}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMove(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v4

    sget-object v5, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    .line 165
    new-instance v6, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-static {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p2

    invoke-direct {v6, v4, v5, v3, p2}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 162
    invoke-static {v6, v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->makeFromRop(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object p2

    .line 167
    invoke-virtual {v1, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 169
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p2

    .line 176
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getLiveOutRegs()Lcom/s1243808733/android/dx/util/IntSet;

    move-result-object v0

    .line 177
    invoke-interface {v0}, Lcom/s1243808733/android/dx/util/IntSet;->iterator()Lcom/s1243808733/android/dx/util/IntIterator;

    move-result-object v0

    .line 179
    :goto_4b
    invoke-interface {v0}, Lcom/s1243808733/android/dx/util/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 180
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->interference:Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/util/IntIterator;->next()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;->add(II)V

    goto :goto_4b

    .line 184
    :cond_5b
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_64
    if-ge v1, v0, :cond_76

    .line 188
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->interference:Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;

    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    invoke-virtual {v2, p2, v4}, Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;->add(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 191
    :cond_76
    iget-object p1, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onInsnsChanged()V

    return-object v3

    .line 150
    :cond_7c
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Adding move here not supported:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->toHuman()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_94
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "specified insn is not in this block"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_9d

    :goto_9c
    throw p1

    :goto_9d
    goto :goto_9c
.end method

.method protected isDefinitionMoveParam(I)Z
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object p1

    .line 113
    instance-of v0, p1, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    if-eqz v0, :cond_19

    .line 114
    check-cast p1, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    .line 116
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    return p1
.end method

.method public abstract wantsParamsMovedHigh()Z
.end method
