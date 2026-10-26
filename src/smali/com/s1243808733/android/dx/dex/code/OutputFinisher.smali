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
            "Ljava/util/ArrayList",
            "<",
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
    .locals 2

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    .line 90
    iput p3, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->unreservedRegCount:I

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedCount:I

    .line 93
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->hasAnyPositionInfo:Z

    .line 94
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->hasAnyLocalInfo:Z

    .line 95
    iput p4, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->paramSize:I

    return-void
.end method

.method private static addConstants(Ljava/util/HashSet;Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;",
            "Lcom/s1243808733/android/dx/dex/code/DalvInsn;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 183
    instance-of v1, p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    if-eqz v1, :cond_1

    .line 184
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    .line 185
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    instance-of v1, p1, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    if-eqz v1, :cond_2

    .line 187
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    .line 188
    :goto_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getNumberOfConstants()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 189
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 191
    :cond_2
    instance-of v1, p1, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;

    if-eqz v1, :cond_3

    .line 192
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->getLocals()Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size()I

    move-result v2

    :goto_2
    if-ge v0, v2, :cond_0

    .line 195
    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->addConstants(Ljava/util/HashSet;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 197
    :cond_3
    instance-of v0, p1, Lcom/s1243808733/android/dx/dex/code/LocalStart;

    if-eqz v0, :cond_0

    .line 198
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/LocalStart;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/LocalStart;->getLocal()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 199
    invoke-static {p0, v0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->addConstants(Ljava/util/HashSet;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    goto :goto_0
.end method

.method private static addConstants(Ljava/util/HashSet;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
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

    move-result-object v2

    .line 221
    sget-object v3, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    if-eq v2, v3, :cond_3

    .line 222
    invoke-static {v2}, Lcom/s1243808733/android/dx/rop/cst/CstType;->intern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 226
    :goto_1
    if-eqz v1, :cond_2

    .line 230
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :cond_3
    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v2}, Lcom/s1243808733/android/dx/rop/cst/CstType;->intern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private addReservedParameters(I)V
    .locals 1

    .line 901
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->shiftParameters(I)V

    .line 902
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedParameterCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedParameterCount:I

    return-void
.end method

.method private addReservedRegisters(I)V
    .locals 1

    .line 906
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->shiftAllRegisters(I)V

    .line 907
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedCount:I

    return-void
.end method

.method private align64bits([Lcom/s1243808733/android/dx/dex/code/Dop;)V
    .locals 14

    .line 849
    :cond_0
    iget v6, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->unreservedRegCount:I

    iget v7, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedCount:I

    iget v8, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedParameterCount:I

    .line 850
    iget v9, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->paramSize:I

    .line 853
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 854
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v11

    const/4 v5, 0x0

    move v0, v1

    .line 855
    :goto_1
    invoke-virtual {v11}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    if-ge v5, v1, :cond_b

    .line 856
    invoke-virtual {v11, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v12

    .line 857
    invoke-virtual {v12}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->isCategory2()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 858
    invoke-virtual {v12}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    add-int v13, v6, v7

    add-int/2addr v13, v8

    sub-int/2addr v13, v9

    if-lt v1, v13, :cond_2

    const/4 v1, 0x1

    .line 859
    :goto_2
    invoke-virtual {v12}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->isEvenRegister()Z

    move-result v12

    if-eqz v12, :cond_4

    if-eqz v1, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    .line 858
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 859
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    if-le v1, v2, :cond_9

    if-le v4, v3, :cond_9

    .line 878
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->addReservedRegisters(I)V

    .line 894
    :cond_7
    :goto_4
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reserveRegisters([Lcom/s1243808733/android/dx/dex/code/Dop;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    return-void

    .line 878
    :cond_9
    if-le v1, v2, :cond_a

    .line 880
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->addReservedParameters(I)V

    goto :goto_4

    :cond_a
    if-le v4, v3, :cond_8

    .line 882
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->addReservedRegisters(I)V

    .line 887
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->paramSize:I

    if-eqz v0, :cond_7

    if-le v2, v1, :cond_7

    .line 888
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->addReservedParameters(I)V

    goto :goto_4

    :cond_b
    move v1, v0

    goto :goto_0
.end method

.method private assignAddresses()V
    .locals 4

    const/4 v0, 0x0

    .line 749
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 752
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 753
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->setAddress(I)V

    .line 754
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->codeSize()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private assignAddressesAndFixBranches()V
    .locals 1

    .line 736
    :cond_0
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->assignAddresses()V

    .line 737
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->fixBranches()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private static assignIndices(Lcom/s1243808733/android/dx/dex/code/CstInsn;Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V
    .locals 2

    .line 347
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    .line 348
    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;->getIndex(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 351
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->setIndex(I)V

    .line 354
    :cond_0
    instance-of v1, v0, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;

    if-eqz v1, :cond_1

    .line 355
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;

    .line 356
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    .line 357
    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;->getIndex(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 360
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->setClassIndex(I)V

    :cond_1
    return-void
.end method

.method private static assignIndices(Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 373
    :goto_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getNumberOfConstants()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 374
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    .line 375
    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;->getIndex(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v2

    .line 376
    invoke-virtual {p0, v1, v2}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->setIndex(II)V

    .line 378
    instance-of v2, v0, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;

    if-eqz v2, :cond_0

    .line 379
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;

    .line 380
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstMemberRef;->getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    .line 381
    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;->getIndex(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    .line 382
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->setClassIndex(I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private calculateReservedCount([Lcom/s1243808733/android/dx/dex/code/Dop;)I
    .locals 6

    .line 511
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 519
    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedCount:I

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_3

    .line 522
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 523
    aget-object v4, p1, v2

    .line 524
    invoke-direct {p0, v0, v4}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->findOpcodeForInsn(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Lcom/s1243808733/android/dx/dex/code/Dop;)Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v5

    if-nez v5, :cond_1

    .line 531
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->findExpandedOpcodeForInsn(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v4

    .line 532
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/Dop;->getFormat()Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->compatibleRegs(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;

    move-result-object v4

    .line 533
    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getMinimumRegisterRequirement(Ljava/util/BitSet;)I

    move-result v0

    if-le v0, v1, :cond_2

    .line 541
    :goto_1
    aput-object v5, p1, v2

    move v1, v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 533
    :cond_1
    if-eq v4, v5, :cond_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 541
    :cond_3
    return v1
.end method

.method private findExpandedOpcodeForInsn(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Lcom/s1243808733/android/dx/dex/code/Dop;
    .locals 2

    .line 595
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getLowRegVersion()Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->findOpcodeForInsn(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Lcom/s1243808733/android/dx/dex/code/Dop;)Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 597
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No expanded opcode for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private findOpcodeForInsn(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Lcom/s1243808733/android/dx/dex/code/Dop;)Lcom/s1243808733/android/dx/dex/code/Dop;
    .locals 2

    :goto_0
    if-eqz p2, :cond_0

    .line 570
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/Dop;->getFormat()Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->isCompatible(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget-boolean v0, v0, Lcom/s1243808733/android/dx/dex/DexOptions;->forceJumbo:Z

    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/Dop;->getOpcode()I

    move-result v0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    .line 581
    :cond_0
    return-object p2

    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-static {p2, v0}, Lcom/s1243808733/android/dx/dex/code/Dops;->getNextOrNull(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/dex/DexOptions;)Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object p2

    goto :goto_0
.end method

.method private fixBranches()Z
    .locals 10

    const/4 v0, 0x0

    .line 770
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 774
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 775
    instance-of v1, v0, Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    if-nez v1, :cond_0

    move v0, v2

    .line 832
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_0

    .line 780
    :cond_0
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v5

    move-object v1, v0

    .line 781
    check-cast v1, Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    .line 783
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/dex/code/Dop;->getFormat()Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->branchFits(Lcom/s1243808733/android/dx/dex/code/TargetInsn;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v2

    goto :goto_1

    .line 787
    :cond_1
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/dex/code/Dop;->getFamily()I

    move-result v4

    const/16 v6, 0x28

    if-ne v4, v6, :cond_3

    .line 789
    invoke-direct {p0, v0, v5}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->findOpcodeForInsn(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Lcom/s1243808733/android/dx/dex/code/Dop;)Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 798
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->withOpcode(Lcom/s1243808733/android/dx/dex/code/Dop;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    move v1, v3

    .line 832
    :goto_2
    const/4 v2, 0x1

    move v4, v2

    move v3, v1

    goto :goto_1

    .line 796
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "method too long"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/CodeAddress;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    sget-object v5, Lcom/s1243808733/android/dx/dex/code/Dops;->GOTO:Lcom/s1243808733/android/dx/dex/code/Dop;

    .line 829
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v6

    sget-object v7, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    .line 830
    new-instance v8, Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;->getTarget()Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    move-result-object v9

    invoke-direct {v8, v5, v6, v7, v9}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/dex/code/CodeAddress;)V

    .line 831
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v5, v3, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 832
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;->withNewTargetAndReversed(Lcom/s1243808733/android/dx/dex/code/CodeAddress;)Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v1, v4

    goto :goto_2

    .line 826
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unpaired TargetInsn"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unpaired TargetInsn (dangling)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return v4
.end method

.method private static hasLocalInfo(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 127
    instance-of v2, p0, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;

    if-eqz v2, :cond_2

    .line 128
    check-cast p0, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/LocalSnapshot;->getLocals()Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v3

    .line 129
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_3

    .line 131
    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    invoke-static {v5}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->hasLocalInfo(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 137
    :cond_0
    :goto_1
    return v0

    .line 131
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_2
    instance-of v2, p0, Lcom/s1243808733/android/dx/dex/code/LocalStart;

    if-eqz v2, :cond_3

    .line 136
    check-cast p0, Lcom/s1243808733/android/dx/dex/code/LocalStart;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/LocalStart;->getLocal()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 137
    invoke-static {v2}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->hasLocalInfo(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private static hasLocalInfo(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeOpcodesArray()[Lcom/s1243808733/android/dx/dex/code/Dop;
    .locals 4

    .line 432
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 433
    new-array v3, v2, [Lcom/s1243808733/android/dx/dex/code/Dop;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 436
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 437
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v0

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private massageInstructions([Lcom/s1243808733/android/dx/dex/code/Dop;)V
    .locals 5

    .line 625
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedCount:I

    if-nez v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 636
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 637
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v3

    .line 638
    aget-object v4, p1, v1

    if-eq v3, v4, :cond_0

    .line 641
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->withOpcode(Lcom/s1243808733/android/dx/dex/code/Dop;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 649
    :cond_1
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->performExpansion([Lcom/s1243808733/android/dx/dex/code/Dop;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    :cond_2
    return-void
.end method

.method private performExpansion([Lcom/s1243808733/android/dx/dex/code/Dop;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/s1243808733/android/dx/dex/code/Dop;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/dex/code/DalvInsn;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    .line 665
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 666
    new-instance v8, Ljava/util/ArrayList;

    mul-int/lit8 v0, v7, 0x2

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 668
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_7

    .line 671
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 672
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v10

    .line 673
    aget-object v4, p1, v6

    if-eqz v4, :cond_1

    move-object v2, v3

    move-object v5, v3

    move-object v1, v0

    .line 693
    :goto_1
    nop

    instance-of v0, v1, Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 697
    check-cast v0, Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getBindsClosely()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 698
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    :cond_0
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 683
    :cond_1
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->findExpandedOpcodeForInsn(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v4

    .line 685
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/Dop;->getFormat()Lcom/s1243808733/android/dx/dex/code/InsnFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->compatibleRegs(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;

    move-result-object v1

    .line 686
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->expandedPrefix(Ljava/util/BitSet;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v2

    .line 687
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->expandedSuffix(Ljava/util/BitSet;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v5

    .line 690
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->expandedVersion(Ljava/util/BitSet;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v1

    goto :goto_1

    .line 698
    :cond_2
    if-eqz v2, :cond_3

    .line 704
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    :cond_3
    instance-of v0, v1, Lcom/s1243808733/android/dx/dex/code/ZeroSizeInsn;

    if-nez v0, :cond_5

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 709
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    .line 710
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 712
    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    :cond_5
    if-eq v4, v10, :cond_6

    .line 716
    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->withOpcode(Lcom/s1243808733/android/dx/dex/code/Dop;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v1

    .line 718
    :cond_6
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_0

    .line 721
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    return-object v8
.end method

.method private reserveRegisters([Lcom/s1243808733/android/dx/dex/code/Dop;)Z
    .locals 8

    const/4 v1, 0x0

    .line 456
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedCount:I

    if-gez v0, :cond_0

    move v0, v1

    :cond_0
    move v2, v1

    move v3, v0

    .line 463
    :goto_0
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->calculateReservedCount([Lcom/s1243808733/android/dx/dex/code/Dop;)I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 494
    iput v3, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedCount:I

    return v2

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_3

    .line 481
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 482
    instance-of v6, v0, Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    if-nez v6, :cond_2

    .line 487
    iget-object v6, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    sub-int v7, v4, v3

    invoke-virtual {v0, v7}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->withRegisterOffset(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    move v2, v0

    move v3, v4

    goto :goto_0
.end method

.method private shiftAllRegisters(I)V
    .locals 4

    .line 911
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 914
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 917
    instance-of v3, v0, Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    if-nez v3, :cond_0

    .line 918
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->withRegisterOffset(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private shiftParameters(I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 924
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 925
    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->unreservedRegCount:I

    iget v3, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedCount:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedParameterCount:I

    add-int/2addr v3, v1

    .line 926
    iget v4, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->paramSize:I

    .line 928
    new-instance v5, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;

    invoke-direct {v5, v3}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;-><init>(I)V

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    sub-int v6, v3, v4

    if-lt v1, v6, :cond_0

    .line 931
    add-int v6, v1, p1

    invoke-virtual {v5, v1, v6, v7}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    .line 933
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v1, v1, v7}, Lcom/s1243808733/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    goto :goto_1

    :goto_2
    if-ge v1, v2, :cond_2

    .line 938
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 941
    instance-of v3, v0, Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    if-nez v3, :cond_1

    .line 942
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->withMapper(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    move v1, v0

    goto :goto_2
.end method

.method private updateInfo(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .locals 2

    const/4 v1, 0x1

    .line 274
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->hasAnyPositionInfo:Z

    if-nez v0, :cond_0

    .line 275
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->getLine()I

    move-result v0

    if-ltz v0, :cond_0

    .line 277
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->hasAnyPositionInfo:Z

    .line 281
    :cond_0
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->hasAnyLocalInfo:Z

    if-nez v0, :cond_1

    .line 282
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->hasLocalInfo(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->hasAnyLocalInfo:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->updateInfo(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    return-void
.end method

.method public assignIndices(Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 330
    instance-of v2, v0, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    if-eqz v2, :cond_1

    .line 331
    check-cast v0, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->assignIndices(Lcom/s1243808733/android/dx/dex/code/CstInsn;Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V

    goto :goto_0

    .line 332
    :cond_1
    instance-of v2, v0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    if-eqz v2, :cond_0

    .line 333
    check-cast v0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->assignIndices(Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public finishProcessingAndGetList()Lcom/s1243808733/android/dx/dex/code/DalvInsnList;
    .locals 3

    .line 408
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reservedCount:I

    if-gez v0, :cond_1

    .line 412
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->makeOpcodesArray()[Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v0

    .line 413
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->reserveRegisters([Lcom/s1243808733/android/dx/dex/code/Dop;)Z

    .line 414
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    iget-boolean v1, v1, Lcom/s1243808733/android/dx/dex/DexOptions;->ALIGN_64BIT_REGS_IN_OUTPUT_FINISHER:Z

    if-eqz v1, :cond_0

    .line 415
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->align64bits([Lcom/s1243808733/android/dx/dex/code/Dop;)V

    .line 417
    :cond_0
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
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already processed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    return-object v0
.end method

.method public getAllConstants()Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;"
        }
    .end annotation

    .line 165
    new-instance v1, Ljava/util/HashSet;

    const/16 v0, 0x14

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 167
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 168
    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->addConstants(Ljava/util/HashSet;Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public hasAnyLocalInfo()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->hasAnyLocalInfo:Z

    return v0
.end method

.method public hasAnyPositionInfo()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->hasAnyPositionInfo:Z

    return v0
.end method

.method public insert(ILcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 256
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->updateInfo(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    return-void
.end method

.method public reverseBranch(ILcom/s1243808733/android/dx/dex/code/CodeAddress;)V
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v1, v0, -0x1

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/TargetInsn;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;->withNewTargetAndReversed(Lcom/s1243808733/android/dx/dex/code/CodeAddress;)Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 311
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "non-reversible instruction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "too few instructions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
