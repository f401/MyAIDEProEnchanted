.class public final Lcom/s1243808733/android/dx/dex/code/OutputFinisher;
.super Ljava/lang/Object;
.source "OutputFinisher.java"


# instance fields
.field private final dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

.field private hasAnyLocalInfo:Z

.field private hasAnyPositionInfo:Z

.field private insns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/dex/code/DalvInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final paramSize:I

.field private reservedCount:I

.field private reservedParameterCount:I

.field private final unreservedRegCount:I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/DexOptions;III)V
    .registers 5

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    .line 90
    iput p3, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->unreservedRegCount:I

    .line 91
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    .line 92
    const/4 p1, -0x1

    iput p1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedCount:I

    .line 93
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->hasAnyPositionInfo:Z

    .line 94
    iput-boolean p1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->hasAnyLocalInfo:Z

    .line 95
    iput p4, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->paramSize:I

    return-void
.end method

.method private static addConstants(Ljava/util/HashSet;Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;",
            "Lcom/s1243808733/android/dx/dex/code/DalvInsn;",
            ")V"
        }
    .end annotation

    .line 183
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    if-eqz v0, :cond_e

    .line 184
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p1

    .line 185
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 186
    :cond_e
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 187
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    .line 188
    :goto_15
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getNumberOfConstants()I

    move-result v0

    if-ge v1, v0, :cond_4c

    .line 189
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 191
    :cond_25
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;

    if-eqz v0, :cond_3f

    .line 192
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->getLocals()Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size()I

    move-result v0

    :goto_33
    if-ge v1, v0, :cond_4c

    .line 195
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->addConstants(Ljava/util/HashSet;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 197
    :cond_3f
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/code/LocalStart;

    if-eqz v0, :cond_4c

    .line 198
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/LocalStart;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/LocalStart;->getLocal()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    .line 199
    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->addConstants(Ljava/util/HashSet;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method private static addConstants(Ljava/util/HashSet;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 216
    :cond_3
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v1

    .line 218
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->getSignature()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    .line 219
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p1

    .line 221
    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    if-eq p1, v2, :cond_1f

    .line 222
    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->intern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 226
    :cond_1f
    sget-object p1, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->intern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_28
    if-eqz v1, :cond_2d

    .line 230
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2d
    if-eqz v0, :cond_32

    .line 234
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_32
    return-void
.end method

.method private addReservedParameters(I)V
    .registers 3

    .line 901
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->shiftParameters(I)V

    .line 902
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedParameterCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedParameterCount:I

    return-void
.end method

.method private addReservedRegisters(I)V
    .registers 3

    .line 906
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->shiftAllRegisters(I)V

    .line 907
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedCount:I

    return-void
.end method

.method private align64bits([Lcom/s1243808733/android/dx/dex/code/Dop;)V
    .registers 19

    .line 849
    move-object/from16 v0, p0

    :cond_2
    iget v1, v0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->unreservedRegCount:I

    iget v2, v0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedCount:I

    iget v3, v0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedParameterCount:I

    .line 850
    iget v4, v0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->paramSize:I

    .line 853
    iget-object v5, v0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_5d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 854
    invoke-virtual {v11}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v11

    const/4 v13, 0x0

    .line 855
    :goto_26
    invoke-virtual {v11}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v14

    if-ge v13, v14, :cond_14

    .line 856
    invoke-virtual {v11, v13}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v14

    .line 857
    invoke-virtual {v14}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->isCategory2()Z

    move-result v15

    if-eqz v15, :cond_5a

    .line 858
    invoke-virtual {v14}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v15

    add-int v16, v1, v2

    add-int v16, v16, v3

    sub-int v6, v16, v4

    if-lt v15, v6, :cond_44

    const/4 v6, 0x1

    goto :goto_45

    :cond_44
    const/4 v6, 0x0

    .line 859
    :goto_45
    invoke-virtual {v14}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->isEvenRegister()Z

    move-result v14

    if-eqz v14, :cond_53

    if-eqz v6, :cond_50

    add-int/lit8 v8, v8, 0x1

    goto :goto_5a

    :cond_50
    add-int/lit8 v9, v9, 0x1

    goto :goto_5a

    :cond_53
    if-eqz v6, :cond_58

    add-int/lit8 v7, v7, 0x1

    goto :goto_5a

    :cond_58
    add-int/lit8 v10, v10, 0x1

    :cond_5a
    :goto_5a
    add-int/lit8 v13, v13, 0x1

    goto :goto_26

    :cond_5d
    if-le v7, v8, :cond_65

    if-le v10, v9, :cond_65

    .line 878
    invoke-direct {v0, v12}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->addReservedRegisters(I)V

    goto :goto_79

    :cond_65
    if-le v7, v8, :cond_6b

    .line 880
    invoke-direct {v0, v12}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->addReservedParameters(I)V

    goto :goto_79

    :cond_6b
    if-le v10, v9, :cond_7f

    .line 882
    invoke-direct {v0, v12}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->addReservedRegisters(I)V

    .line 887
    iget v1, v0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->paramSize:I

    if-eqz v1, :cond_79

    if-le v8, v7, :cond_79

    .line 888
    invoke-direct {v0, v12}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->addReservedParameters(I)V

    .line 894
    :cond_79
    :goto_79
    invoke-direct/range {p0 .. p1}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reserveRegisters([Lcom/s1243808733/android/dx/dex/code/Dop;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_7f
    return-void
.end method

.method private assignAddresses()V
    .registers 5

    .line 749
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v1, v0, :cond_1d

    .line 752
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 753
    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->setAddress(I)V

    .line 754
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->codeSize()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1d
    return-void
.end method

.method private assignAddressesAndFixBranches()V
    .registers 2

    .line 736
    nop

    :cond_1
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->assignAddresses()V

    .line 737
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->fixBranches()Z

    move-result v0

    if-nez v0, :cond_1

    return-void
.end method

.method private static assignIndices(Lcom/s1243808733/android/dx/dex/code/CstInsn;Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V
    .registers 4

    .line 347
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    .line 348
    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;->getIndex(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v1

    if-ltz v1, :cond_d

    .line 351
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->setIndex(I)V

    .line 354
    :cond_d
    instance-of v1, v0, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;

    if-eqz v1, :cond_20

    .line 355
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;

    .line 356
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    .line 357
    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;->getIndex(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result p1

    if-ltz p1, :cond_20

    .line 360
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->setClassIndex(I)V

    :cond_20
    return-void
.end method

.method private static assignIndices(Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V
    .registers 5

    const/4 v0, 0x0

    .line 373
    :goto_1
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getNumberOfConstants()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 374
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v1

    .line 375
    invoke-interface {p1, v1}, Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;->getIndex(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v2

    .line 376
    invoke-virtual {p0, v0, v2}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->setIndex(II)V

    .line 378
    instance-of v2, v1, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;

    if-eqz v2, :cond_23

    .line 379
    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;

    .line 380
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v1

    .line 381
    invoke-interface {p1, v1}, Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;->getIndex(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v1

    .line 382
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->setClassIndex(I)V

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_26
    return-void
.end method

.method private calculateReservedCount([Lcom/s1243808733/android/dx/dex/code/Dop;)I
    .registers 8

    .line 511
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 519
    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedCount:I

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_37

    .line 522
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 523
    aget-object v4, p1, v2

    .line 524
    invoke-direct {p0, v3, v4}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->findOpcodeForInsn(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Lcom/s1243808733/android/dx/dex/code/Dop;)Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v5

    if-nez v5, :cond_2f

    .line 531
    invoke-direct {p0, v3}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->findExpandedOpcodeForInsn(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v4

    .line 532
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/Dop;->getFormat()Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->compatibleRegs(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;

    move-result-object v4

    .line 533
    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getMinimumRegisterRequirement(Ljava/util/BitSet;)I

    move-result v3

    if-le v3, v1, :cond_32

    move v1, v3

    goto :goto_32

    :cond_2f
    if-ne v4, v5, :cond_32

    goto :goto_34

    .line 541
    :cond_32
    :goto_32
    aput-object v5, p1, v2

    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_37
    return v1
.end method

.method private findExpandedOpcodeForInsn(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Lcom/s1243808733/android/dx/dex/code/Dop;
    .registers 4

    .line 595
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getLowRegVersion()Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->findOpcodeForInsn(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Lcom/s1243808733/android/dx/dex/code/Dop;)Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v0

    if-eqz v0, :cond_f

    return-object v0

    .line 597
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No expanded opcode for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private findOpcodeForInsn(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Lcom/s1243808733/android/dx/dex/code/Dop;)Lcom/s1243808733/android/dx/dex/code/Dop;
    .registers 5

    :goto_0
    if-eqz p2, :cond_22

    .line 570
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/Dop;->getFormat()Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->isCompatible(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 575
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/dex/DexOptions;->forceJumbo:Z

    if-eqz v0, :cond_22

    .line 576
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/Dop;->getOpcode()I

    move-result v0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1b

    goto :goto_22

    .line 581
    :cond_1b
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-static {p2, v0}, Lcom/s1243808733/android/dx/dex/code/Dops;->getNextOrNull(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/dex/DexOptions;)Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object p2

    goto :goto_0

    :cond_22
    :goto_22
    return-object p2
.end method

.method private fixBranches()Z
    .registers 12

    .line 770
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v1, v0, :cond_8b

    .line 774
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 775
    instance-of v4, v3, Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    const/4 v5, 0x1

    if-nez v4, :cond_18

    goto :goto_77

    .line 780
    :cond_18
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v4

    .line 781
    move-object v6, v3

    check-cast v6, Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    .line 783
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/Dop;->getFormat()Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->branchFits(Lcom/s1243808733/android/dx/dex/code/TargetInsn;)Z

    move-result v7

    if-eqz v7, :cond_2a

    goto :goto_77

    .line 787
    :cond_2a
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/Dop;->getFamily()I

    move-result v2

    const/16 v7, 0x28

    if-ne v2, v7, :cond_4a

    .line 789
    invoke-direct {p0, v3, v4}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->findOpcodeForInsn(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Lcom/s1243808733/android/dx/dex/code/Dop;)Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 798
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->withOpcode(Lcom/s1243808733/android/dx/dex/code/Dop;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_76

    .line 796
    :cond_42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "method too long"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_4a
    :try_start_4a
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/dex/code/CodeAddress;
    :try_end_54
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4a .. :try_end_54} :catch_82
    .catch Ljava/lang/ClassCastException; {:try_start_4a .. :try_end_54} :catch_79

    .line 828
    sget-object v4, Lcom/s1243808733/android/dx/dex/code/Dops;->GOTO:Lcom/s1243808733/android/dx/dex/code/Dop;

    .line 829
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v7

    sget-object v8, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    .line 830
    new-instance v9, Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;->getTarget()Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    move-result-object v10

    invoke-direct {v9, v4, v7, v8, v10}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/dex/code/CodeAddress;)V

    .line 831
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 832
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;->withNewTargetAndReversed(Lcom/s1243808733/android/dx/dex/code/CodeAddress;)Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    :goto_76
    const/4 v2, 0x1

    :goto_77
    add-int/2addr v1, v5

    goto :goto_8

    .line 826
    :catch_79
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unpaired TargetInsn"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :catch_82
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unpaired TargetInsn (dangling)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8b
    return v2
.end method

.method private static hasLocalInfo(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z
    .registers 6

    .line 127
    instance-of v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_21

    .line 128
    check-cast p0, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->getLocals()Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object p0

    .line 129
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v0, :cond_32

    .line 131
    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-static {v4}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->hasLocalInfo(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v4

    if-eqz v4, :cond_1e

    return v2

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 135
    :cond_21
    instance-of v0, p0, Lcom/s1243808733/android/dx/dex/code/LocalStart;

    if-eqz v0, :cond_32

    .line 136
    check-cast p0, Lcom/s1243808733/android/dx/dex/code/LocalStart;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/LocalStart;->getLocal()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p0

    .line 137
    invoke-static {p0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->hasLocalInfo(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result p0

    if-eqz p0, :cond_32

    return v2

    :cond_32
    return v1
.end method

.method private static hasLocalInfo(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z
    .registers 1

    if-eqz p0, :cond_e

    .line 155
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private makeOpcodesArray()[Lcom/s1243808733/android/dx/dex/code/Dop;
    .registers 5

    .line 432
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 433
    new-array v1, v0, [Lcom/s1243808733/android/dx/dex/code/Dop;

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_1c

    .line 436
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 437
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1c
    return-object v1
.end method

.method private massageInstructions([Lcom/s1243808733/android/dx/dex/code/Dop;)V
    .registers 7

    .line 625
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedCount:I

    if-nez v0, :cond_29

    .line 633
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_2f

    .line 636
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 637
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v3

    .line 638
    aget-object v4, p1, v1

    if-eq v3, v4, :cond_26

    .line 641
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->withOpcode(Lcom/s1243808733/android/dx/dex/code/Dop;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 649
    :cond_29
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->performExpansion([Lcom/s1243808733/android/dx/dex/code/Dop;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    :cond_2f
    return-void
.end method

.method private performExpansion([Lcom/s1243808733/android/dx/dex/code/Dop;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/s1243808733/android/dx/dex/code/Dop;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/dex/code/DalvInsn;",
            ">;"
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 666
    new-instance v1, Ljava/util/ArrayList;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 668
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v0, :cond_89

    .line 671
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 672
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v5

    .line 673
    aget-object v6, p1, v3

    if-eqz v6, :cond_28

    const/4 v7, 0x0

    move-object v9, v7

    goto :goto_41

    .line 683
    :cond_28
    invoke-direct {p0, v4}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->findExpandedOpcodeForInsn(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v6

    .line 685
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/dex/code/Dop;->getFormat()Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->compatibleRegs(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;

    move-result-object v7

    .line 686
    invoke-virtual {v4, v7}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->expandedPrefix(Ljava/util/BitSet;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v8

    .line 687
    invoke-virtual {v4, v7}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->expandedSuffix(Ljava/util/BitSet;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v9

    .line 690
    invoke-virtual {v4, v7}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->expandedVersion(Ljava/util/BitSet;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v4

    move-object v7, v8

    .line 693
    :goto_41
    instance-of v8, v4, Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    if-eqz v8, :cond_52

    .line 697
    move-object v8, v4

    check-cast v8, Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-virtual {v8}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getBindsClosely()Z

    move-result v10

    if-eqz v10, :cond_52

    .line 698
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_86

    :cond_52
    if-eqz v7, :cond_57

    .line 704
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    :cond_57
    instance-of v7, v4, Lcom/s1243808733/android/dx/dex/code/ZeroSizeInsn;

    if-nez v7, :cond_78

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_78

    .line 709
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_65
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_75

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    .line 710
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_65

    .line 712
    :cond_75
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_78
    if-eq v6, v5, :cond_7e

    .line 716
    invoke-virtual {v4, v6}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->withOpcode(Lcom/s1243808733/android/dx/dex/code/Dop;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v4

    .line 718
    :cond_7e
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_86

    .line 721
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_86
    :goto_86
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_89
    return-object v1
.end method

.method private reserveRegisters([Lcom/s1243808733/android/dx/dex/code/Dop;)Z
    .registers 10

    .line 456
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedCount:I

    const/4 v1, 0x0

    if-gez v0, :cond_6

    const/4 v0, 0x0

    :cond_6
    const/4 v2, 0x0

    .line 463
    :goto_7
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->calculateReservedCount([Lcom/s1243808733/android/dx/dex/code/Dop;)I

    move-result v3

    if-lt v0, v3, :cond_10

    .line 494
    iput v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedCount:I

    return v2

    .line 471
    :cond_10
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v2, :cond_33

    .line 481
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 482
    instance-of v6, v5, Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    if-nez v6, :cond_30

    .line 487
    iget-object v6, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    sub-int v7, v3, v0

    invoke-virtual {v5, v7}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->withRegisterOffset(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_33
    const/4 v2, 0x1

    move v0, v3

    goto :goto_7
.end method

.method private shiftAllRegisters(I)V
    .registers 6

    .line 911
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_21

    .line 914
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 917
    instance-of v3, v2, Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    if-nez v3, :cond_1e

    .line 918
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->withRegisterOffset(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_21
    return-void
.end method

.method private shiftParameters(I)V
    .registers 10

    .line 924
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 925
    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->unreservedRegCount:I

    iget v2, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedParameterCount:I

    add-int/2addr v1, v2

    .line 926
    iget v2, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->paramSize:I

    .line 928
    new-instance v3, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;

    invoke-direct {v3, v1}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_17
    if-ge v5, v1, :cond_2a

    sub-int v6, v1, v2

    const/4 v7, 0x1

    if-lt v5, v6, :cond_24

    .line 931
    add-int v6, v5, p1

    invoke-virtual {v3, v5, v6, v7}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    goto :goto_27

    .line 933
    :cond_24
    invoke-virtual {v3, v5, v5, v7}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    :goto_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_2a
    :goto_2a
    if-ge v4, v0, :cond_44

    .line 938
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 941
    instance-of v1, p1, Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    if-nez v1, :cond_41

    .line 942
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->withMapper(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_44
    return-void
.end method

.method private updateInfo(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .registers 4

    .line 274
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->hasAnyPositionInfo:Z

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 275
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->getLine()I

    move-result v0

    if-ltz v0, :cond_11

    .line 277
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->hasAnyPositionInfo:Z

    .line 281
    :cond_11
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->hasAnyLocalInfo:Z

    if-nez v0, :cond_1d

    .line 282
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->hasLocalInfo(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 283
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->hasAnyLocalInfo:Z

    :cond_1d
    return-void
.end method


# virtual methods
.method public add(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .registers 3

    .line 244
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->updateInfo(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    return-void
.end method

.method public assignIndices(Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V
    .registers 5

    .line 329
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 330
    instance-of v2, v1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    if-eqz v2, :cond_1c

    .line 331
    check-cast v1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-static {v1, p1}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->assignIndices(Lcom/s1243808733/android/dx/dex/code/CstInsn;Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V

    goto :goto_6

    .line 332
    :cond_1c
    instance-of v2, v1, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    if-eqz v2, :cond_6

    .line 333
    check-cast v1, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    invoke-static {v1, p1}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->assignIndices(Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V

    goto :goto_6

    :cond_26
    return-void
.end method

.method public finishProcessingAndGetList()Lcom/s1243808733/android/dx/dex/code/DalvInsnList;
    .registers 4

    .line 408
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedCount:I

    if-gez v0, :cond_29

    .line 412
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->makeOpcodesArray()[Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v0

    .line 413
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reserveRegisters([Lcom/s1243808733/android/dx/dex/code/Dop;)Z

    .line 414
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget-boolean v1, v1, Lcom/s1243808733/android/dx/dex/DexOptions;->ALIGN_64BIT_REGS_IN_OUTPUT_FINISHER:Z

    if-eqz v1, :cond_14

    .line 415
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->align64bits([Lcom/s1243808733/android/dx/dex/code/Dop;)V

    .line 417
    :cond_14
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->massageInstructions([Lcom/s1243808733/android/dx/dex/code/Dop;)V

    .line 418
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->assignAddressesAndFixBranches()V

    .line 420
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedCount:I

    iget v2, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->unreservedRegCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedParameterCount:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->makeImmutable(Ljava/util/ArrayList;I)Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    move-result-object v0

    return-object v0

    .line 409
    :cond_29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already processed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    return-object p1
.end method

.method public getAllConstants()Ljava/util/HashSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;"
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 167
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 168
    invoke-static {v0, v2}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->addConstants(Ljava/util/HashSet;Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    goto :goto_d

    :cond_1d
    return-object v0
.end method

.method public hasAnyLocalInfo()Z
    .registers 2

    .line 115
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->hasAnyLocalInfo:Z

    return v0
.end method

.method public hasAnyPositionInfo()Z
    .registers 2

    .line 106
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->hasAnyPositionInfo:Z

    return v0
.end method

.method public insert(ILcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .registers 4

    .line 255
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 256
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->updateInfo(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    return-void
.end method

.method public reverseBranch(ILcom/s1243808733/android/dx/dex/code/CodeAddress;)V
    .registers 5

    .line 300
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 305
    :try_start_9
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/dex/code/TargetInsn;
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_11} :catch_24
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_11} :catch_1b

    .line 318
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;->withNewTargetAndReversed(Lcom/s1243808733/android/dx/dex/code/CodeAddress;)Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 311
    :catch_1b
    move-exception p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "non-reversible instruction"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 308
    :catch_24
    move-exception p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "too few instructions"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
