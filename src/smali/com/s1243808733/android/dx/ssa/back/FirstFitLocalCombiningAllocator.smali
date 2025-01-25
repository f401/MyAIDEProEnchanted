.class public Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;
.super Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;
.source "FirstFitLocalCombiningAllocator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;,
        Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private final invokeRangeInsns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final localVariables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/s1243808733/android/dx/rop/code/LocalItem;",
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

.field private final minimizeRegisters:Z

.field private final moveResultPseudoInsns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final paramRangeEnd:I

.field private final phiInsns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/ssa/PhiInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final reservedRopRegs:Ljava/util/BitSet;

.field private final ssaRegsMapped:Ljava/util/BitSet;

.field private final usedRopRegs:Ljava/util/BitSet;


# direct methods
.method static bridge synthetic -$$Nest$fgetinvokeRangeInsns(Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->invokeRangeInsns:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlocalVariables(Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmoveResultPseudoInsns(Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->moveResultPseudoInsns:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetphiInsns(Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->phiInsns:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smisEven(I)Z
    .registers 1

    invoke-static {p0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->isEven(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;Z)V
    .registers 6

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;)V

    .line 137
    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    .line 139
    nop

    .line 140
    new-instance v0, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;-><init>(Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    .line 142
    iput-boolean p3, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->minimizeRegisters:Z

    .line 150
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getParamWidth()I

    move-result p1

    iput p1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    .line 152
    new-instance p2, Ljava/util/BitSet;

    mul-int/lit8 p3, p1, 0x2

    invoke-direct {p2, p3}, Ljava/util/BitSet;-><init>(I)V

    iput-object p2, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Ljava/util/BitSet;->set(II)V

    .line 154
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1, p3}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    .line 155
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    .line 156
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->moveResultPseudoInsns:Ljava/util/ArrayList;

    .line 157
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->invokeRangeInsns:Ljava/util/ArrayList;

    .line 158
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->phiInsns:Ljava/util/ArrayList;

    return-void
.end method

.method private addMapping(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)V
    .registers 6

    .line 774
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 777
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 787
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v1

    .line 788
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p1

    invoke-virtual {v2, p1, p2, v1}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->addMapping(III)V

    .line 789
    iget-object p1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 790
    iget-object p1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    add-int/2addr v1, p2

    invoke-virtual {p1, p2, v1}, Ljava/util/BitSet;->set(II)V

    return-void

    .line 778
    :cond_2b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "attempt to add invalid register mapping"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private adjustAndMapSourceRangeRange(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
    .registers 13

    .line 802
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findRangeAndAdjust(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)I

    move-result v0

    .line 804
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    .line 805
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v1, :cond_5c

    .line 809
    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 810
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    .line 811
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v6

    .line 815
    iget-object v7, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v7, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_25

    goto :goto_58

    .line 819
    :cond_25
    invoke-direct {p0, v5}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getLocalItemForReg(I)Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v5

    .line 820
    invoke-direct {p0, v4, v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)V

    if-eqz v5, :cond_58

    .line 823
    invoke-direct {p0, v0, v6}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->markReserved(II)V

    .line 824
    iget-object v4, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    .line 825
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 827
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_3e
    if-ge v7, v5, :cond_58

    .line 834
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 835
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v9

    .line 838
    const/4 v10, -0x1

    invoke-virtual {p1, v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->indexOfRegister(I)I

    move-result v9

    if-eq v10, v9, :cond_52

    goto :goto_55

    .line 843
    :cond_52
    invoke-direct {p0, v8, v0, v6}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;II)Z

    :goto_55
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e

    :cond_58
    :goto_58
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v6

    goto :goto_e

    :cond_5c
    return-void
.end method

.method private analyzeInstructions()V
    .registers 3

    .line 699
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    new-instance v1, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;

    invoke-direct {v1, p0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;-><init>(Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->forEachInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;)V

    return-void
.end method

.method private canMapReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)Z
    .registers 4

    .line 673
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v0

    .line 674
    invoke-direct {p0, p2, v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->spansParamRange(II)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    .line 675
    invoke-virtual {v0, p1, p2}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->interferes(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)Z

    move-result p1

    if-nez p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method private canMapRegs(Ljava/util/ArrayList;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ">;I)Z"
        }
    .end annotation

    .line 656
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 657
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_4

    .line 658
    :cond_1d
    invoke-direct {p0, v0, p2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_25
    const/4 p1, 0x1

    return p1
.end method

.method private findAnyFittingRange(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;I[ILjava/util/BitSet;)I
    .registers 13

    .line 967
    sget-object v0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->UNSPECIFIED:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    .line 973
    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_7
    if-ge v2, v1, :cond_21

    aget v6, p3, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1c

    .line 975
    invoke-static {v5}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->isEven(I)Z

    move-result v6

    if-eqz v6, :cond_17

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_17
    add-int/lit8 v3, v3, 0x1

    :goto_19
    add-int/lit8 v5, v5, 0x2

    goto :goto_1e

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_21
    if-le v3, v4, :cond_31

    .line 987
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->isEven(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 988
    sget-object v0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->ODD:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    goto :goto_40

    .line 990
    :cond_2e
    sget-object v0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->EVEN:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    goto :goto_40

    :cond_31
    if-lez v4, :cond_40

    .line 993
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->isEven(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 994
    sget-object v0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->EVEN:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    goto :goto_40

    .line 996
    :cond_3e
    sget-object v0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->ODD:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    .line 1001
    :cond_40
    :goto_40
    iget v1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    .line 1003
    :goto_42
    invoke-direct {p0, v1, p2, v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(IILcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;)I

    move-result v1

    .line 1005
    invoke-direct {p0, v1, p1, p3, p4}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->fitPlanForRange(ILcom/s1243808733/android/dx/ssa/NormalSsaInsn;[ILjava/util/BitSet;)I

    move-result v2

    if-ltz v2, :cond_4d

    return v1

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    .line 1011
    invoke-virtual {p4}, Ljava/util/BitSet;->clear()V

    goto :goto_42
.end method

.method private findNextUnreservedRopReg(II)I
    .registers 4

    .line 442
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getAlignment(I)Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(IILcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;)I

    move-result p1

    return p1
.end method

.method private findNextUnreservedRopReg(IILcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;)I
    .registers 7

    .line 454
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    invoke-virtual {p3, v0, p1}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->nextClearBit(Ljava/util/BitSet;I)I

    move-result p1

    :goto_6
    const/4 v0, 0x1

    :goto_7
    if-ge v0, p2, :cond_16

    .line 459
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    add-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_16

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_16
    if-ne v0, p2, :cond_19

    return p1

    .line 467
    :cond_19
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    add-int/2addr p1, v0

    invoke-virtual {p3, v1, p1}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->nextClearBit(Ljava/util/BitSet;I)I

    move-result p1

    goto :goto_6
.end method

.method private findRangeAndAdjust(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)I
    .registers 19

    .line 860
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    .line 861
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v3

    .line 863
    new-array v4, v3, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_10
    if-ge v6, v3, :cond_20

    .line 868
    invoke-virtual {v2, v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v8

    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v8

    .line 869
    aput v8, v4, v6

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_20
    const/4 v6, -0x1

    const/high16 v8, -0x80000000

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_27
    if-ge v11, v3, :cond_6e

    .line 887
    invoke-virtual {v2, v11}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v13

    invoke-virtual {v13}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v13

    if-eqz v11, :cond_38

    .line 890
    add-int/lit8 v14, v11, -0x1

    aget v14, v4, v14

    sub-int/2addr v12, v14

    .line 892
    :cond_38
    iget-object v14, v0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v14, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-nez v14, :cond_41

    goto :goto_6b

    .line 896
    :cond_41
    iget-object v14, v0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v14, v13}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v13

    add-int/2addr v13, v12

    if-ltz v13, :cond_6b

    .line 898
    invoke-direct {v0, v13, v7}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->spansParamRange(II)Z

    move-result v14

    if-eqz v14, :cond_51

    goto :goto_6b

    .line 902
    :cond_51
    new-instance v14, Ljava/util/BitSet;

    invoke-direct {v14, v3}, Ljava/util/BitSet;-><init>(I)V

    .line 905
    invoke-direct {v0, v13, v1, v4, v14}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->fitPlanForRange(ILcom/s1243808733/android/dx/ssa/NormalSsaInsn;[ILjava/util/BitSet;)I

    move-result v15

    if-gez v15, :cond_5d

    goto :goto_6b

    .line 912
    :cond_5d
    invoke-virtual {v14}, Ljava/util/BitSet;->cardinality()I

    move-result v16

    sub-int v5, v15, v16

    if-le v5, v8, :cond_68

    move v8, v5

    move v10, v13

    move-object v9, v14

    :cond_68
    if-ne v15, v7, :cond_6b

    goto :goto_6e

    :cond_6b
    :goto_6b
    add-int/lit8 v11, v11, 0x1

    goto :goto_27

    :cond_6e
    :goto_6e
    if-ne v10, v6, :cond_79

    .line 933
    new-instance v9, Ljava/util/BitSet;

    invoke-direct {v9, v3}, Ljava/util/BitSet;-><init>(I)V

    .line 935
    invoke-direct {v0, v1, v7, v4, v9}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findAnyFittingRange(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;I[ILjava/util/BitSet;)I

    move-result v10

    .line 943
    :cond_79
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    :goto_7e
    if-ltz v3, :cond_92

    .line 945
    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->insertMoveBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->changeOneSource(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 944
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v9, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    goto :goto_7e

    :cond_92
    return v10
.end method

.method private findRopRegForLocal(II)I
    .registers 7

    .line 481
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getAlignment(I)Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    move-result-object v0

    .line 482
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    invoke-virtual {v0, v1, p1}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->nextClearBit(Ljava/util/BitSet;I)I

    move-result p1

    :goto_a
    const/4 v1, 0x1

    :goto_b
    if-ge v1, p2, :cond_1a

    .line 487
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    add-int v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_1a

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1a
    if-ne v1, p2, :cond_1d

    return p1

    .line 495
    :cond_1d
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    add-int/2addr p1, v1

    invoke-virtual {v0, v2, p1}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->nextClearBit(Ljava/util/BitSet;I)I

    move-result p1

    goto :goto_a
.end method

.method private fitPlanForRange(ILcom/s1243808733/android/dx/ssa/NormalSsaInsn;[ILjava/util/BitSet;)I
    .registers 14

    .line 1033
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 1034
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    .line 1036
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object p2

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getLiveOutRegs()Lcom/s1243808733/android/dx/util/IntSet;

    move-result-object p2

    .line 1037
    invoke-virtual {p0, p2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaSetToSpecs(Lcom/s1243808733/android/dx/util/IntSet;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p2

    .line 1040
    new-instance v2, Ljava/util/BitSet;

    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v1, :cond_7c

    .line 1043
    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    .line 1044
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    .line 1045
    aget v7, p3, v4

    if-eqz v4, :cond_34

    .line 1048
    add-int/lit8 v8, v4, -0x1

    aget v8, p3, v8

    add-int/2addr p1, v8

    .line 1051
    :cond_34
    iget-object v8, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v8, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_45

    iget-object v8, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    .line 1052
    invoke-virtual {v8, v6}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v8

    if-ne v8, p1, :cond_45

    goto :goto_60

    .line 1055
    :cond_45
    invoke-direct {p0, p1, v7}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->rangeContainsReserved(II)Z

    move-result v8

    if-eqz v8, :cond_4c

    goto :goto_7b

    .line 1058
    :cond_4c
    iget-object v8, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v8, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_62

    .line 1059
    invoke-direct {p0, v5, p1}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 1060
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_62

    .line 1052
    :goto_60
    add-int/2addr v3, v7

    goto :goto_75

    .line 1063
    :cond_62
    iget-object v5, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v5, p2, p1, v7}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->areAnyPinned(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;II)Z

    move-result v5

    if-nez v5, :cond_7b

    iget-object v5, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    .line 1064
    invoke-virtual {v5, v0, p1, v7}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->areAnyPinned(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;II)Z

    move-result v5

    if-nez v5, :cond_7b

    .line 1077
    invoke-virtual {p4, v4}, Ljava/util/BitSet;->set(I)V

    .line 1083
    :goto_75
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 1055
    :cond_7b
    :goto_7b
    const/4 v3, -0x1

    .line 1083
    :cond_7c
    return v3
.end method

.method private getAlignment(I)Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;
    .registers 4

    .line 421
    sget-object v0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->UNSPECIFIED:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_12

    .line 424
    iget p1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-static {p1}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->isEven(I)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 425
    sget-object v0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->EVEN:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    goto :goto_12

    .line 427
    :cond_10
    sget-object v0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->ODD:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    :cond_12
    :goto_12
    return-object v0
.end method

.method private getLocalItemForReg(I)Lcom/s1243808733/android/dx/rop/code/LocalItem;
    .registers 6

    .line 1116
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1117
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 1118
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    if-ne v3, p1, :cond_20

    .line 1119
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/rop/code/LocalItem;

    return-object p1

    :cond_39
    const/4 p1, 0x0

    return-object p1
.end method

.method private getParameterIndexForReg(I)I
    .registers 5

    .line 265
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object p1

    const/4 v0, -0x1

    if-nez p1, :cond_a

    return v0

    .line 270
    :cond_a
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 273
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_28

    .line 274
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/rop/code/CstInsn;

    .line 275
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result p1

    return p1

    :cond_28
    return v0
.end method

.method private handleCheckCastResults()V
    .registers 13

    .line 536
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->moveResultPseudoInsns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_eb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    .line 537
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 538
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    .line 539
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v1

    .line 542
    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2a

    goto :goto_6

    .line 546
    :cond_2a
    iget-object v4, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 547
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 548
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v1

    .line 554
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 555
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v4

    const/16 v7, 0x2b

    if-eq v4, v7, :cond_57

    goto :goto_6

    .line 559
    :cond_57
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 560
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v7

    .line 567
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v8

    .line 568
    iget-object v9, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v9, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    .line 569
    iget-object v10, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v10, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    xor-int/lit8 v11, v10, 0x1

    and-int/2addr v11, v9

    if-eqz v11, :cond_82

    .line 571
    iget-object v10, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v10, v3}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v10

    .line 572
    invoke-direct {p0, v4, v10, v8}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;II)Z

    move-result v10

    :cond_82
    xor-int/lit8 v11, v9, 0x1

    and-int/2addr v11, v10

    if-eqz v11, :cond_91

    .line 575
    iget-object v9, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v9, v7}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v9

    .line 576
    invoke-direct {p0, v2, v9, v8}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;II)Z

    move-result v9

    :cond_91
    if-eqz v9, :cond_95

    if-nez v10, :cond_b4

    .line 581
    :cond_95
    iget v9, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-direct {p0, v9, v8}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result v9

    .line 582
    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x2

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 584
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    :goto_a7
    invoke-direct {p0, v10, v9, v8, v6}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    move-result v2

    if-nez v2, :cond_b4

    .line 588
    add-int/lit8 v9, v9, 0x1

    invoke-direct {p0, v9, v8}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result v9

    goto :goto_a7

    .line 598
    :cond_b4
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Insn;->getCatches()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v2

    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v2

    if-eqz v2, :cond_c3

    goto :goto_c4

    :cond_c3
    const/4 v5, 0x0

    .line 599
    :goto_c4
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v2

    .line 600
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v3, v7}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v3

    if-eq v2, v3, :cond_6

    if-nez v5, :cond_6

    .line 602
    move-object v3, v1

    check-cast v3, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    .line 603
    invoke-virtual {p0, v1, v4}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->insertMoveBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 602
    invoke-virtual {v3, v6, v4}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->changeOneSource(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 604
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)V

    goto/16 :goto_6

    :cond_eb
    return-void
.end method

.method private handleInvokeRangeInsns()V
    .registers 3

    .line 525
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->invokeRangeInsns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    .line 526
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->adjustAndMapSourceRangeRange(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private handleLocalAssociatedOther()V
    .registers 13

    .line 289
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 290
    iget v2, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 297
    :cond_1a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_21
    if-ge v7, v5, :cond_3f

    .line 299
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 300
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v10

    .line 301
    iget-object v11, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v9

    invoke-virtual {v11, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_3c

    if-le v10, v8, :cond_3c

    move v8, v10

    :cond_3c
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    .line 307
    :cond_3f
    invoke-direct {p0, v2, v8}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findRopRegForLocal(II)I

    move-result v2

    .line 308
    invoke-direct {p0, v1, v2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapRegs(Ljava/util/ArrayList;I)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 309
    invoke-direct {p0, v1, v2, v8, v6}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    move-result v4

    :cond_4d
    add-int/lit8 v2, v2, 0x1

    if-eqz v4, :cond_1a

    goto :goto_a

    :cond_52
    return-void
.end method

.method private handleLocalAssociatedParams()V
    .registers 8

    .line 228
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 229
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_1d
    if-ge v5, v2, :cond_3c

    .line 235
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 236
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    .line 238
    invoke-direct {p0, v6}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getParameterIndexForReg(I)I

    move-result v6

    if-ltz v6, :cond_38

    .line 241
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v3

    .line 242
    invoke-direct {p0, v4, v6}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)V

    move v4, v6

    goto :goto_3c

    :cond_38
    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_1d

    :cond_3c
    :goto_3c
    if-gez v4, :cond_3f

    goto :goto_a

    .line 253
    :cond_3f
    const/4 v2, 0x1

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    goto :goto_a

    :cond_44
    return-void
.end method

.method private handleNormalUnassociated()V
    .registers 7

    .line 622
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_36

    .line 625
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_33

    .line 630
    :cond_12
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getDefinitionSpecForSsaReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    if-nez v2, :cond_19

    goto :goto_33

    .line 634
    :cond_19
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v3

    .line 636
    iget v4, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-direct {p0, v4, v3}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result v4

    .line 637
    :goto_23
    invoke-direct {p0, v2, v4}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)Z

    move-result v5

    if-nez v5, :cond_30

    .line 638
    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4, v3}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result v4

    goto :goto_23

    .line 641
    :cond_30
    invoke-direct {p0, v2, v4}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)V

    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_36
    return-void
.end method

.method private handlePhiInsns()V
    .registers 3

    .line 613
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->phiInsns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    .line 614
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->processPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private handleUnassociatedParameters()V
    .registers 5

    .line 504
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_22

    .line 507
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_1f

    .line 512
    :cond_12
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getParameterIndexForReg(I)I

    move-result v2

    .line 514
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getDefinitionSpecForSsaReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    if-ltz v2, :cond_1f

    .line 516
    invoke-direct {p0, v3, v2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)V

    :cond_1f
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_22
    return-void
.end method

.method private static isEven(I)Z
    .registers 2

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_5

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private isThisPointerReg(I)Z
    .registers 2

    if-nez p1, :cond_c

    .line 409
    iget-object p1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->isStatic()Z

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private markReserved(II)V
    .registers 5

    .line 380
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    add-int/2addr p2, p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/BitSet;->set(IIZ)V

    return-void
.end method

.method private printLocalVars()V
    .registers 8

    .line 207
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Printing local vars"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 215
    const/16 v6, 0x76

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 219
    :cond_52
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const-string v1, "Local: %s Registers: %s\n"

    invoke-virtual {v3, v1, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_11

    :cond_6c
    return-void
.end method

.method private processPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V
    .registers 11

    .line 1133
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 1134
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    .line 1135
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v2

    .line 1137
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    .line 1138
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v3

    .line 1141
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1144
    new-instance v5, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;

    add-int/lit8 v6, v3, 0x1

    invoke-direct {v5, v6}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;-><init>(I)V

    .line 1150
    iget-object v6, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v6, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 1151
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->add(I)V

    goto :goto_35

    .line 1153
    :cond_32
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_35
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_37
    if-ge v1, v3, :cond_67

    .line 1157
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    .line 1158
    iget-object v7, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v6

    .line 1159
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    .line 1160
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v7

    .line 1166
    iget-object v8, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v8, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_61

    .line 1167
    iget-object v6, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v6, v7}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->add(I)V

    goto :goto_64

    .line 1169
    :cond_61
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_67
    const/4 p1, 0x0

    .line 1174
    :goto_68
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->getSize()I

    move-result v1

    if-ge p1, v1, :cond_78

    .line 1175
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->getAndRemoveHighestCount()I

    move-result v1

    .line 1176
    invoke-direct {p0, v4, v1, v2, v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_68

    .line 1180
    :cond_78
    iget p1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-direct {p0, p1, v2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result p1

    .line 1181
    :goto_7e
    invoke-direct {p0, v4, p1, v2, v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    move-result v1

    if-nez v1, :cond_8b

    .line 1182
    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1, v2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result p1

    goto :goto_7e

    :cond_8b
    return-void
.end method

.method private rangeContainsReserved(II)Z
    .registers 5

    move v0, p1

    :goto_1
    add-int v1, p1, p2

    if-ge v0, v1, :cond_12

    .line 393
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private spansParamRange(II)Z
    .registers 4

    .line 690
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    if-ge p1, v0, :cond_9

    add-int/2addr p1, p2

    if-le p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method private tryMapReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;II)Z
    .registers 5

    .line 363
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v0

    if-gt v0, p3, :cond_1d

    iget-object p3, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    .line 364
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p3

    if-nez p3, :cond_1d

    .line 365
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)Z

    move-result p3

    if-eqz p3, :cond_1d

    .line 366
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)V

    const/4 p1, 0x1

    return p1

    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

.method private tryMapRegs(Ljava/util/ArrayList;IIZ)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ">;IIZ)Z"
        }
    .end annotation

    .line 335
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 336
    iget-object v4, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_20

    goto :goto_6

    .line 341
    :cond_20
    invoke-direct {p0, v2, p2, p3}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;II)Z

    move-result v4

    if-eqz v4, :cond_2b

    if-eqz v1, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v1, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v1, 0x1

    :goto_2c
    if-eqz v4, :cond_6

    if-eqz p4, :cond_6

    .line 346
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->markReserved(II)V

    goto :goto_6

    :cond_38
    xor-int/lit8 p1, v1, 0x1

    return p1
.end method


# virtual methods
.method public allocateRegisters()Lcom/s1243808733/android/dx/ssa/RegisterMapper;
    .registers 2

    .line 171
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->analyzeInstructions()V

    .line 178
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleLocalAssociatedParams()V

    .line 181
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleUnassociatedParameters()V

    .line 184
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleInvokeRangeInsns()V

    .line 189
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleLocalAssociatedOther()V

    .line 192
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleCheckCastResults()V

    .line 195
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handlePhiInsns()V

    .line 198
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleNormalUnassociated()V

    .line 200
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    return-object v0
.end method

.method ssaSetToSpecs(Lcom/s1243808733/android/dx/util/IntSet;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 5

    .line 1096
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/IntSet;->elements()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 1098
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/IntSet;->iterator()Lcom/s1243808733/android/dx/util/IntIterator;

    move-result-object p1

    const/4 v1, 0x0

    .line 1101
    :goto_e
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/IntIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1102
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/IntIterator;->next()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getDefinitionSpecForSsaReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_22
    return-object v0
.end method

.method public wantsParamsMovedHigh()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
