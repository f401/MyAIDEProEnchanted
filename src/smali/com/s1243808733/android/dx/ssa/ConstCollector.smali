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
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    return-object v0
.end method

.method private constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    return-void
.end method

.method private fixLocalAssignment(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .locals 7

    const/4 v6, 0x0

    .line 281
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 282
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getLocalAssignment()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 287
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 295
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v2

    .line 298
    invoke-virtual {v0, v6}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->setResultLocal(Lcom/s1243808733/android/dx/rop/code/LocalItem;)V

    .line 301
    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withLocalItem(Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p2

    .line 303
    invoke-static {p2}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMarkLocal(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v2

    sget-object v3, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    .line 307
    new-instance v4, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-static {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v5

    invoke-direct {v4, v2, v3, v6, v5}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 308
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    .line 304
    invoke-static {v4, v2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->makeFromRop(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v2

    .line 310
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v3

    .line 312
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getConstsSortedByCountUse()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/rop/cst/TypedConstant;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 158
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v4

    .line 160
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 167
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_5

    .line 172
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    if-nez v0, :cond_1

    .line 229
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    .line 177
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    .line 179
    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 181
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;

    .line 184
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v7

    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v7

    const/16 v8, 0x38

    if-ne v7, v8, :cond_2

    .line 185
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .line 187
    iget-object v7, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v7}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 191
    :cond_2
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->canThrow()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 196
    instance-of v0, v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    goto :goto_1

    .line 212
    :cond_3
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v1, v6}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->isRegALocal(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_4

    .line 227
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 229
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 234
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 235
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 236
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v9, :cond_6

    .line 237
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 242
    :cond_7
    new-instance v0, Lcom/s1243808733/android/dx/ssa/ConstCollector$1;

    invoke-direct {v0, p0, v5}, Lcom/s1243808733/android/dx/ssa/ConstCollector$1;-><init>(Lcom/s1243808733/android/dx/ssa/ConstCollector;Ljava/util/HashMap;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2
.end method

.method public static process(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .locals 1

    .line 74
    new-instance v0, Lcom/s1243808733/android/dx/ssa/ConstCollector;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/ssa/ConstCollector;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 75
    invoke-direct {v0}, Lcom/s1243808733/android/dx/ssa/ConstCollector;->run()V

    return-void
.end method

.method private run()V
    .locals 20

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v15

    .line 94
    invoke-direct/range {p0 .. p0}, Lcom/s1243808733/android/dx/ssa/ConstCollector;->getConstsSortedByCountUse()Ljava/util/ArrayList;

    move-result-object v16

    .line 96
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getEntryBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v18

    .line 101
    new-instance v19, Ljava/util/HashMap;

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    move v14, v2

    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_1

    .line 105
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 107
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->makeNewSsaReg()I

    move-result v2

    invoke-static {v2, v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    .line 109
    invoke-static {v7}, Lcom/s1243808733/android/dx/rop/code/Rops;->opConst(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v9

    .line 111
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 112
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;

    invoke-static {v7}, Lcom/s1243808733/android/dx/rop/code/Rops;->opConst(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v3

    sget-object v4, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    sget-object v6, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct/range {v2 .. v7}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->addInsnToHead(Lcom/s1243808733/android/dx/rop/code/Insn;)V

    .line 144
    :goto_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_0

    .line 118
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/s1243808733/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getEntryBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessor()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v3

    .line 124
    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    .line 126
    new-instance v8, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;

    sget-object v10, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    sget-object v11, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    sget-object v12, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    invoke-virtual {v2, v8}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->replaceLastInsn(Lcom/s1243808733/android/dx/rop/code/Insn;)V

    .line 134
    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    .line 135
    new-instance v3, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v4

    invoke-static {v4}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMoveResultPseudo(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v4

    sget-object v6, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    sget-object v8, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v3, v4, v6, v5, v8}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 141
    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->addInsnToHead(Lcom/s1243808733/android/dx/rop/code/Insn;)V

    goto :goto_1

    .line 147
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v15}, Lcom/s1243808733/android/dx/ssa/ConstCollector;->updateConstUses(Ljava/util/HashMap;I)V

    return-void
.end method

.method private updateConstUses(Ljava/util/HashMap;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
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

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_4

    .line 337
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v0

    if-nez v0, :cond_1

    .line 396
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 343
    :cond_1
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 344
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    .line 346
    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 348
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;

    .line 349
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    if-eqz v0, :cond_0

    .line 355
    iget-object v4, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v4, v3}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->isRegALocal(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 374
    new-instance v4, Lcom/s1243808733/android/dx/ssa/ConstCollector$2;

    invoke-direct {v4, p0, v3, v0}, Lcom/s1243808733/android/dx/ssa/ConstCollector$2;-><init>(Lcom/s1243808733/android/dx/ssa/ConstCollector;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 391
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 392
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->canThrow()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 393
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v5

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_2

    .line 396
    :cond_3
    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->mapSourceRegisters(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)V

    goto :goto_1

    :cond_4
    return-void
.end method
