.class public Lcom/s1243808733/android/dx/ssa/ConstCollector;
.super Ljava/lang/Object;
.source "ConstCollector.java"


# static fields
.field private static final COLLECT_ONE_LOCAL:Z = false

.field private static final COLLECT_STRINGS:Z = false

.field private static final MAX_COLLECTED_CONSTANTS:I = 0x5


# instance fields
.field private final ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;


# direct methods
.method static bridge synthetic -$$Nest$fgetssaMeth(Lcom/s1243808733/android/dx/ssa/ConstCollector;)Lcom/s1243808733/android/dx/ssa/SsaMethod;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    return-object p0
.end method

.method private constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    return-void
.end method

.method private fixLocalAssignment(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 9

    .line 281
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 282
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getLocalAssignment()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    if-nez v1, :cond_21

    goto :goto_e

    .line 287
    :cond_21
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    if-nez v2, :cond_28

    goto :goto_e

    .line 295
    :cond_28
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v1

    .line 298
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->setResultLocal(Lcom/s1243808733/android/dx/rop/code/LocalItem;)V

    .line 301
    invoke-virtual {p2, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withLocalItem(Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p2

    .line 303
    nop

    .line 305
    invoke-static {p2}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMarkLocal(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    sget-object v3, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    .line 307
    new-instance v4, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-static {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v5

    invoke-direct {v4, v1, v3, v2, v5}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 308
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v1

    .line 304
    invoke-static {v4, v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->makeFromRop(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v1

    .line 310
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v2

    .line 312
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_e

    :cond_5e
    return-void
.end method

.method private getConstsSortedByCountUse()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/rop/cst/TypedConstant;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    .line 160
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 167
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    const/4 v4, 0x1

    if-ge v3, v0, :cond_9b

    .line 172
    iget-object v5, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v5, v3}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v5

    if-eqz v5, :cond_97

    .line 174
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v6

    if-nez v6, :cond_25

    goto/16 :goto_97

    .line 176
    :cond_25
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    .line 177
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v7

    .line 179
    invoke-interface {v7}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v8

    if-nez v8, :cond_34

    goto :goto_97

    .line 181
    :cond_34
    check-cast v7, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;

    .line 184
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v8

    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v8

    const/16 v9, 0x38

    if-ne v8, v9, :cond_69

    .line 185
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v5

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    .line 187
    iget-object v8, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v8}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v5

    .line 188
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 191
    :cond_69
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->canThrow()Z

    move-result v5

    if-eqz v5, :cond_72

    .line 196
    instance-of v4, v7, Lcom/s1243808733/android/dx/rop/cst/CstString;

    goto :goto_97

    .line 212
    :cond_72
    iget-object v5, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v5, v6}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->isRegALocal(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v5

    if-eqz v5, :cond_7b

    goto :goto_97

    .line 225
    :cond_7b
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_8b

    .line 227
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_97

    .line 229
    :cond_8b
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_97
    :goto_97
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_12

    .line 234
    :cond_9b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a8
    :goto_a8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ca

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 236
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v4, :cond_a8

    .line 237
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a8

    .line 242
    :cond_ca
    new-instance v2, Lcom/s1243808733/android/dx/ssa/ConstCollector$1;

    invoke-direct {v2, p0, v1}, Lcom/s1243808733/android/dx/ssa/ConstCollector$1;-><init>(Lcom/s1243808733/android/dx/ssa/ConstCollector;Ljava/util/HashMap;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static process(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 2

    .line 74
    new-instance v0, Lcom/s1243808733/android/dx/ssa/ConstCollector;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/ssa/ConstCollector;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 75
    invoke-direct {v0}, Lcom/s1243808733/android/dx/ssa/ConstCollector;->run()V

    return-void
.end method

.method private run()V
    .registers 19

    .line 91
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/s1243808733/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v1

    .line 94
    invoke-direct/range {p0 .. p0}, Lcom/s1243808733/android/dx/ssa/ConstCollector;->getConstsSortedByCountUse()Ljava/util/ArrayList;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 98
    iget-object v4, v0, Lcom/s1243808733/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getEntryBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v4

    .line 101
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v3}, Ljava/util/HashMap;-><init>(I)V

    const/4 v6, 0x0

    :goto_21
    if-ge v6, v3, :cond_a0

    .line 105
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;

    .line 106
    iget-object v8, v0, Lcom/s1243808733/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 107
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->makeNewSsaReg()I

    move-result v8

    invoke-static {v8, v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v14

    .line 109
    invoke-static {v7}, Lcom/s1243808733/android/dx/rop/code/Rops;->opConst(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v9

    .line 111
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_57

    .line 112
    nop

    .line 113
    new-instance v15, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;

    invoke-static {v7}, Lcom/s1243808733/android/dx/rop/code/Rops;->opConst(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v9

    sget-object v10, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    sget-object v12, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-object v8, v15

    move-object v11, v14

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 112
    invoke-virtual {v4, v15}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->addInsnToHead(Lcom/s1243808733/android/dx/rop/code/Insn;)V

    move-object/from16 v17, v2

    move/from16 v16, v3

    goto :goto_96

    .line 118
    :cond_57
    iget-object v8, v0, Lcom/s1243808733/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v8}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getEntryBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v8

    .line 120
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessor()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v15

    .line 124
    invoke-virtual {v8, v15}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v13

    .line 126
    new-instance v12, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;

    sget-object v10, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    sget-object v11, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    sget-object v16, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-object v8, v12

    move-object/from16 v17, v2

    move-object v2, v12

    move-object/from16 v12, v16

    move/from16 v16, v3

    move-object v3, v13

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->replaceLastInsn(Lcom/s1243808733/android/dx/rop/code/Insn;)V

    .line 134
    invoke-virtual {v3, v15}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    .line 135
    nop

    .line 137
    new-instance v3, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-virtual {v14}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v8

    invoke-static {v8}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMoveResultPseudo(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v8

    sget-object v9, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    sget-object v10, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v3, v8, v9, v14, v10}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 141
    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->addInsnToHead(Lcom/s1243808733/android/dx/rop/code/Insn;)V

    .line 144
    :goto_96
    invoke-virtual {v5, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v16

    move-object/from16 v2, v17

    goto :goto_21

    .line 147
    :cond_a0
    invoke-direct {v0, v5, v1}, Lcom/s1243808733/android/dx/ssa/ConstCollector;->updateConstUses(Ljava/util/HashMap;I)V

    return-void
.end method

.method private updateConstUses(Ljava/util/HashMap;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/s1243808733/android/dx/rop/cst/TypedConstant;",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ">;I)V"
        }
    .end annotation

    .line 331
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 334
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListCopy()[Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, p2, :cond_76

    .line 337
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v2

    if-nez v2, :cond_17

    goto :goto_73

    .line 343
    :cond_17
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 344
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v2

    .line 346
    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v4

    if-nez v4, :cond_2a

    goto :goto_73

    .line 348
    :cond_2a
    check-cast v2, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;

    .line 349
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    if-nez v2, :cond_35

    goto :goto_73

    .line 355
    :cond_35
    iget-object v4, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v4, v3}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->isRegALocal(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v4

    if-eqz v4, :cond_3e

    goto :goto_73

    .line 374
    :cond_3e
    new-instance v4, Lcom/s1243808733/android/dx/ssa/ConstCollector$2;

    invoke-direct {v4, p0, v3, v2}, Lcom/s1243808733/android/dx/ssa/ConstCollector$2;-><init>(Lcom/s1243808733/android/dx/ssa/ConstCollector;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 391
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 392
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->canThrow()Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 393
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v5

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_6f

    goto :goto_4d

    .line 396
    :cond_6f
    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->mapSourceRegisters(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)V

    goto :goto_4d

    :cond_73
    :goto_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_76
    return-void
.end method
