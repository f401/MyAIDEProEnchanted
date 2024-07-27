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
.field private static final DEBUG:Z


# instance fields
.field private final invokeRangeInsns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final localVariables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/s1243808733/android/dx/rop/code/LocalItem;",
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final paramRangeEnd:I

.field private final phiInsns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/ssa/PhiInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final reservedRopRegs:Ljava/util/BitSet;

.field private final ssaRegsMapped:Ljava/util/BitSet;

.field private final usedRopRegs:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;Z)V
    .registers 7

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;)V

    .line 137
    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    .line 139
    new-instance v0, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;-><init>(Lcom/s1243808733/android/dx/ssa/back/InterferenceGraph;I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    .line 142
    iput-boolean p3, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->minimizeRegisters:Z

    .line 150
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getParamWidth()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    .line 152
    new-instance v0, Ljava/util/BitSet;

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    .line 153
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    const/4 v1, 0x0

    iget v2, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(II)V

    .line 154
    new-instance v0, Ljava/util/BitSet;

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    .line 155
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->moveResultPseudoInsns:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->invokeRangeInsns:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->phiInsns:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1000047(I)Z
    .registers 2

    invoke-static {p0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->isEven(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$L1000004(Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$L1000005(Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->moveResultPseudoInsns:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$L1000006(Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->invokeRangeInsns:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$L1000007(Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->phiInsns:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addMapping(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            "I)V"
        }
    .end annotation

    .line 774
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 777
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 778
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempt to add invalid register mapping"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :cond_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v1

    .line 788
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    invoke-virtual {v2, v3, p2, v1}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->addMapping(III)V

    .line 789
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 790
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    add-int/2addr v1, p2

    invoke-virtual {v0, p2, v1}, Ljava/util/BitSet;->set(II)V

    return-void
.end method

.method private adjustAndMapSourceRangeRange(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    .line 802
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findRangeAndAdjust(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)I

    move-result v0

    .line 804
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v6

    .line 805
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v7

    move v4, v3

    move v5, v0

    .line 808
    :goto_0
    if-lt v4, v7, :cond_0

    return-void

    .line 809
    :cond_0
    invoke-virtual {v6, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 810
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    .line 811
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v8

    .line 813
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 808
    :cond_1
    add-int/lit8 v0, v4, 0x1

    add-int v1, v5, v8

    move v4, v0

    move v5, v1

    goto :goto_0

    .line 819
    :cond_2
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getLocalItemForReg(I)Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v1

    .line 820
    invoke-direct {p0, v0, v5}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)V

    .line 822
    if-eqz v1, :cond_1

    .line 823
    invoke-direct {p0, v5, v8}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->markReserved(II)V

    .line 824
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 827
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v2, v3

    .line 833
    :goto_1
    if-ge v2, v9, :cond_1

    .line 834
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 835
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v10

    .line 838
    const/4 v11, -0x1

    invoke-virtual {v6, v10}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->indexOfRegister(I)I

    move-result v10

    if-eq v11, v10, :cond_3

    .line 833
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 843
    :cond_3
    invoke-direct {p0, v1, v5, v8}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;II)Z

    goto :goto_2
.end method

.method private analyzeInstructions()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 699
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    new-instance v1, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$100000003;

    invoke-direct {v1, p0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$100000003;-><init>(Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)V

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

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v0, p1, p2}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->interferes(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canMapRegs(Ljava/util/ArrayList;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ">;I)Z"
        }
    .end annotation

    .line 656
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 658
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 660
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 656
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 657
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 658
    invoke-direct {p0, v0, p2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findAnyFittingRange(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;I[ILjava/util/BitSet;)I
    .registers 12

    const/4 v1, 0x0

    .line 967
    sget-object v5, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->UNSPECIFIED:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    .line 982
    :goto_0
    array-length v1, p3

    if-lt v0, v1, :cond_0

    .line 986
    if-le v4, v3, :cond_4

    .line 987
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->isEven(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 988
    sget-object v0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->ODD:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    .line 1001
    :goto_1
    iget v1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    .line 1003
    :goto_2
    invoke-direct {p0, v1, p2, v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(IILcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;)I

    move-result v1

    .line 1005
    invoke-direct {p0, v1, p1, p3, p4}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->fitPlanForRange(ILcom/s1243808733/android/dx/ssa/NormalSsaInsn;[ILjava/util/BitSet;)I

    move-result v2

    .line 1007
    if-ltz v2, :cond_6

    .line 1014
    return v1

    .line 973
    :cond_0
    aget v1, p3, v0

    .line 974
    const/4 v6, 0x2

    if-ne v1, v6, :cond_2

    .line 975
    invoke-static {v2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->isEven(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 976
    add-int/lit8 v3, v3, 0x1

    .line 980
    :goto_3
    add-int/lit8 v1, v2, 0x2

    .line 982
    :goto_4
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    .line 978
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 982
    :cond_2
    add-int/lit8 v1, v2, 0x1

    goto :goto_4

    .line 990
    :cond_3
    sget-object v0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->EVEN:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    goto :goto_1

    .line 992
    :cond_4
    if-lez v3, :cond_7

    .line 993
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->isEven(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 994
    sget-object v0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->EVEN:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    goto :goto_1

    .line 996
    :cond_5
    sget-object v0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->ODD:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    goto :goto_1

    .line 1010
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 1011
    invoke-virtual {p4}, Ljava/util/BitSet;->clear()V

    goto :goto_2

    :cond_7
    move-object v0, v5

    goto :goto_1
.end method

.method private findNextUnreservedRopReg(II)I
    .registers 4

    .line 442
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getAlignment(I)Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(IILcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;)I

    move-result v0

    return v0
.end method

.method private findNextUnreservedRopReg(IILcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;)I
    .registers 8

    .line 454
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    invoke-virtual {p3, v0, p1}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->nextClearBit(Ljava/util/BitSet;I)I

    move-result v0

    .line 457
    :goto_0
    const/4 v1, 0x1

    .line 459
    :goto_1
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    add-int v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 463
    :cond_0
    if-ne v1, p2, :cond_2

    .line 464
    return v0

    .line 460
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 467
    :cond_2
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    add-int/2addr v0, v1

    invoke-virtual {p3, v2, v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->nextClearBit(Ljava/util/BitSet;I)I

    move-result v0

    goto :goto_0
.end method

.method private findRangeAndAdjust(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)I
    .registers 15

    .line 860
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v9

    .line 861
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v10

    .line 863
    new-array v11, v10, [I

    .line 864
    const/4 v1, 0x0

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-lt v1, v10, :cond_1

    .line 874
    const/high16 v3, -0x80000000

    .line 876
    const/4 v4, -0x1

    .line 878
    const/4 v0, 0x0

    check-cast v0, Ljava/util/BitSet;

    .line 885
    const/4 v1, 0x0

    .line 886
    const/4 v5, 0x0

    move-object v2, v0

    move v7, v5

    :goto_1
    if-lt v7, v10, :cond_2

    move-object v0, v2

    move v1, v4

    .line 932
    :goto_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 933
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v10}, Ljava/util/BitSet;-><init>(I)V

    .line 935
    invoke-direct {p0, p1, v8, v11, v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findAnyFittingRange(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;I[ILjava/util/BitSet;)I

    move-result v1

    .line 943
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    .line 944
    :goto_3
    if-gez v2, :cond_5

    .line 948
    return v1

    .line 868
    :cond_1
    invoke-virtual {v9, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v0

    .line 869
    aput v0, v11, v1

    .line 870
    aget v0, v11, v1

    .line 867
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v8

    move v8, v0

    goto :goto_0

    .line 887
    :cond_2
    invoke-virtual {v9, v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    .line 889
    if-eqz v7, :cond_8

    .line 890
    add-int/lit8 v0, v7, -0x1

    aget v0, v11, v0

    sub-int v0, v1, v0

    .line 892
    :goto_4
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 886
    :cond_3
    :goto_5
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move v1, v0

    goto :goto_1

    .line 896
    :cond_4
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v1, v5}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v1

    add-int v6, v1, v0

    .line 898
    if-ltz v6, :cond_3

    invoke-direct {p0, v6, v8}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->spansParamRange(II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 902
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5, v10}, Ljava/util/BitSet;-><init>(I)V

    .line 904
    invoke-direct {p0, v6, p1, v11, v5}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->fitPlanForRange(ILcom/s1243808733/android/dx/ssa/NormalSsaInsn;[ILjava/util/BitSet;)I

    move-result v12

    .line 908
    if-ltz v12, :cond_3

    .line 912
    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    sub-int v1, v12, v1

    .line 914
    if-le v1, v3, :cond_7

    move-object v2, v5

    move v4, v6

    .line 920
    :goto_6
    if-ne v12, v8, :cond_6

    move-object v0, v2

    move v1, v4

    .line 922
    goto :goto_2

    .line 945
    :cond_5
    invoke-virtual {v9, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->insertMoveBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->changeOneSource(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 944
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    goto :goto_3

    :cond_6
    move v3, v1

    goto :goto_5

    :cond_7
    move v1, v3

    goto :goto_6

    :cond_8
    move v0, v1

    goto :goto_4
.end method

.method private findRopRegForLocal(II)I
    .registers 8

    .line 481
    invoke-direct {p0, p2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getAlignment(I)Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    move-result-object v2

    .line 482
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    invoke-virtual {v2, v0, p1}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->nextClearBit(Ljava/util/BitSet;I)I

    move-result v0

    .line 485
    :goto_0
    const/4 v1, 0x1

    .line 487
    :goto_1
    if-ge v1, p2, :cond_0

    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    add-int v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 491
    :cond_0
    if-ne v1, p2, :cond_2

    .line 492
    return v0

    .line 488
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 495
    :cond_2
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    add-int/2addr v0, v1

    invoke-virtual {v2, v3, v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->nextClearBit(Ljava/util/BitSet;I)I

    move-result v0

    goto :goto_0
.end method

.method private fitPlanForRange(ILcom/s1243808733/android/dx/ssa/NormalSsaInsn;[ILjava/util/BitSet;)I
    .registers 16

    .line 1033
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    .line 1034
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v4

    .line 1035
    const/4 v1, 0x0

    .line 1036
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getLiveOutRegs()Lcom/s1243808733/android/dx/util/IntSet;

    move-result-object v0

    .line 1037
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaSetToSpecs(Lcom/s1243808733/android/dx/util/IntSet;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v5

    .line 1040
    new-instance v6, Ljava/util/BitSet;

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 1042
    const/4 v2, 0x0

    move v0, p1

    :goto_0
    if-lt v2, v4, :cond_0

    .line 1085
    :goto_1
    return v1

    .line 1043
    :cond_0
    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    .line 1044
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v8

    .line 1045
    aget v9, p3, v2

    .line 1047
    if-eqz v2, :cond_1

    .line 1048
    add-int/lit8 v10, v2, -0x1

    aget v10, p3, v10

    add-int/2addr v0, v10

    .line 1051
    :cond_1
    iget-object v10, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v10, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v10, v8}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v10

    if-ne v10, v0, :cond_2

    .line 1054
    add-int/2addr v1, v9

    .line 1083
    :goto_2
    invoke-virtual {v6, v8}, Ljava/util/BitSet;->set(I)V

    .line 1042
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1055
    :cond_2
    invoke-direct {p0, v0, v9}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->rangeContainsReserved(II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1056
    const/4 v1, -0x1

    .line 1057
    goto :goto_1

    .line 1058
    :cond_3
    iget-object v10, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v10, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-direct {p0, v7, v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1062
    add-int/2addr v1, v9

    goto :goto_2

    .line 1063
    :cond_4
    iget-object v7, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v7, v5, v0, v9}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->areAnyPinned(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;II)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v7, v3, v0, v9}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->areAnyPinned(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;II)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1077
    invoke-virtual {p4, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 1079
    :cond_5
    const/4 v1, -0x1

    .line 1080
    goto :goto_1
.end method

.method private getAlignment(I)Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;
    .registers 4

    .line 421
    sget-object v0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->UNSPECIFIED:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    .line 423
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 424
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->isEven(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    sget-object v0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->EVEN:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    .line 431
    :cond_0
    :goto_0
    return-object v0

    .line 427
    :cond_1
    sget-object v0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->ODD:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    goto :goto_0
.end method

.method private getLocalItemForReg(I)Lcom/s1243808733/android/dx/rop/code/LocalItem;
    .registers 6

    .line 1115
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1119
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1124
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/LocalItem;

    :goto_0
    return-object v0

    .line 1115
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1119
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1117
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 1118
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 1119
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/LocalItem;

    goto :goto_0
.end method

.method private getParameterIndexForReg(I)I
    .registers 6

    const/4 v0, -0x1

    .line 265
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v1

    .line 266
    if-nez v1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v0

    .line 270
    :cond_1
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v2

    .line 273
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 274
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/CstInsn;

    .line 275
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v0

    goto :goto_0
.end method

.method private handleCheckCastResults()V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 536
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->moveResultPseudoInsns:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 604
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 536
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    .line 537
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    .line 538
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v8

    .line 539
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v0

    .line 542
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 546
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 548
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    .line 554
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 555
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    const/16 v4, 0x2b

    if-ne v1, v4, :cond_0

    .line 559
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    .line 560
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v10

    .line 567
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v11

    .line 568
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    .line 569
    iget-object v4, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v4, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    .line 570
    if-eqz v4, :cond_5

    move v5, v2

    :goto_1
    and-int/2addr v5, v1

    if-eqz v5, :cond_9

    .line 571
    iget-object v4, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v4, v8}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v4

    .line 572
    invoke-direct {p0, v9, v4, v11}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;II)Z

    move-result v4

    move v5, v4

    .line 574
    :goto_2
    if-eqz v1, :cond_6

    move v4, v2

    :goto_3
    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 575
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v1, v10}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v1

    .line 576
    invoke-direct {p0, v7, v1, v11}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;II)Z

    move-result v1

    .line 580
    :cond_2
    if-eqz v1, :cond_3

    if-nez v5, :cond_4

    .line 581
    :cond_3
    iget v1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-direct {p0, v1, v11}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result v1

    .line 582
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 584
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    :goto_4
    invoke-direct {p0, v4, v1, v11, v2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 597
    :cond_4
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Insn;->getCatches()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v1

    invoke-interface {v1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v1

    if-nez v1, :cond_8

    move v1, v2

    .line 599
    :goto_5
    iget-object v4, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v4, v8}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v4

    .line 600
    iget-object v5, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v5, v10}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v5

    .line 601
    if-eq v4, v5, :cond_0

    if-nez v1, :cond_0

    move-object v1, v0

    .line 602
    check-cast v1, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    invoke-virtual {p0, v0, v9}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->insertMoveBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->changeOneSource(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 604
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)V

    goto/16 :goto_0

    :cond_5
    move v5, v3

    .line 570
    goto :goto_1

    :cond_6
    move v4, v3

    .line 574
    goto :goto_3

    .line 588
    :cond_7
    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1, v11}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result v1

    goto :goto_4

    :cond_8
    move v1, v3

    .line 597
    goto :goto_5

    :cond_9
    move v5, v4

    goto :goto_2
.end method

.method private handleInvokeRangeInsns()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 525
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->invokeRangeInsns:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 526
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 525
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    .line 526
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->adjustAndMapSourceRangeRange(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V

    goto :goto_0
.end method

.method private handleLocalAssociatedOther()V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 289
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 293
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 289
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 290
    iget v1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    move v2, v3

    move v4, v1

    .line 297
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v7, v3

    move v6, v8

    .line 298
    :goto_1
    if-lt v7, v10, :cond_2

    .line 307
    invoke-direct {p0, v4, v6}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findRopRegForLocal(II)I

    move-result v4

    .line 308
    invoke-direct {p0, v0, v4}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapRegs(Ljava/util/ArrayList;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 309
    invoke-direct {p0, v0, v4, v6, v8}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    move-result v1

    .line 313
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 293
    if-nez v1, :cond_0

    move v2, v1

    goto :goto_0

    .line 299
    :cond_2
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 300
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v5

    .line 301
    iget-object v11, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_4

    if-le v5, v6, :cond_4

    move v1, v5

    .line 298
    :goto_3
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move v6, v1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v6

    goto :goto_3
.end method

.method private handleLocalAssociatedParams()V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v2, 0x0

    .line 228
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 253
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 228
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 229
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 230
    const/4 v3, -0x1

    move v5, v2

    .line 234
    :goto_1
    if-lt v5, v7, :cond_2

    move v1, v2

    move v4, v3

    .line 247
    :goto_2
    if-ltz v4, :cond_0

    .line 253
    const/4 v3, 0x1

    invoke-direct {p0, v0, v4, v1, v3}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 236
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    .line 238
    invoke-direct {p0, v3}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getParameterIndexForReg(I)I

    move-result v4

    .line 240
    if-ltz v4, :cond_3

    .line 241
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v3

    .line 242
    invoke-direct {p0, v1, v4}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)V

    move v1, v3

    .line 243
    goto :goto_2

    .line 234
    :cond_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v3, v4

    goto :goto_1
.end method

.method private handleNormalUnassociated()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v2

    .line 624
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 624
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 630
    :cond_2
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getDefinitionSpecForSsaReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 632
    if-eqz v3, :cond_1

    .line 634
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v4

    .line 636
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-direct {p0, v0, v4}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result v0

    .line 637
    :goto_2
    invoke-direct {p0, v3, v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 641
    invoke-direct {p0, v3, v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)V

    goto :goto_1

    .line 638
    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v4}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result v0

    goto :goto_2
.end method

.method private handlePhiInsns()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 613
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->phiInsns:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 614
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 613
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    .line 614
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->processPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V

    goto :goto_0
.end method

.method private handleUnassociatedParameters()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v1

    .line 506
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    .line 507
    :cond_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 506
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    :cond_2
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getParameterIndexForReg(I)I

    move-result v2

    .line 514
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getDefinitionSpecForSsaReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 515
    if-ltz v2, :cond_1

    .line 516
    invoke-direct {p0, v3, v2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)V

    goto :goto_1
.end method

.method private static isEven(I)Z
    .registers 2

    .line 1187
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isThisPointerReg(I)Z
    .registers 3

    .line 409
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private markReserved(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    add-int v1, p1, p2

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/BitSet;->set(IIZ)V

    return-void
.end method

.method private printLocalVars()V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/16 v7, 0x20

    .line 207
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Printing local vars"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 220
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    const/16 v1, 0x7b

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 217
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 219
    const/16 v1, 0x7d

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Local: %s Registers: %s\n"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/LocalItem;

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v3, v5, v0

    invoke-virtual {v1, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_0

    .line 214
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 215
    const/16 v5, 0x76

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private processPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/PhiInsn;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 1133
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 1134
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    .line 1135
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v3

    .line 1137
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    .line 1138
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v5

    .line 1141
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1144
    new-instance v7, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;

    add-int/lit8 v8, v5, 0x1

    invoke-direct {v7, v8}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;-><init>(I)V

    .line 1150
    iget-object v8, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v8, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->add(I)V

    :goto_0
    move v0, v1

    .line 1156
    :goto_1
    if-lt v0, v5, :cond_1

    move v0, v1

    .line 1174
    :goto_2
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->getSize()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 1180
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-direct {p0, v0, v3}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result v0

    .line 1181
    :goto_3
    invoke-direct {p0, v6, v0, v3, v1}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    .line 1153
    :cond_0
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1157
    :cond_1
    invoke-virtual {v4, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 1158
    iget-object v8, p0, Lcom/s1243808733/android/dx/ssa/back/RegisterAllocator;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v2

    .line 1159
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 1160
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v8

    .line 1166
    iget-object v9, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1167
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v2, v8}, Lcom/s1243808733/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->add(I)V

    .line 1156
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1169
    :cond_2
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1175
    :cond_3
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->getAndRemoveHighestCount()I

    move-result v2

    .line 1176
    invoke-direct {p0, v6, v2, v3, v1}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    .line 1174
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1182
    :cond_4
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v3}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result v0

    goto :goto_3
.end method

.method private rangeContainsReserved(II)Z
    .registers 5

    move v0, p1

    .line 392
    :goto_0
    add-int v1, p1, p2

    if-lt v0, v1, :cond_0

    .line 397
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 393
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    const/4 v0, 0x1

    goto :goto_1

    .line 392
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private spansParamRange(II)Z
    .registers 5

    .line 690
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    if-ge p1, v0, :cond_0

    add-int v0, p1, p2

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private tryMapReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;II)Z
    .registers 6

    .line 363
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v0

    if-gt v0, p3, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;I)V

    .line 367
    const/4 v0, 0x1

    .line 370
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryMapRegs(Ljava/util/ArrayList;IIZ)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ">;IIZ)Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 335
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    .line 346
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    if-eqz v1, :cond_3

    :goto_1
    return v2

    .line 335
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 336
    iget-object v5, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 340
    invoke-direct {p0, v0, p2, p3}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;II)Z

    move-result v5

    .line 342
    if-eqz v5, :cond_2

    if-nez v1, :cond_2

    move v1, v2

    .line 343
    :goto_2
    if-eqz v5, :cond_0

    if-eqz p4, :cond_0

    .line 346
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->markReserved(II)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 342
    goto :goto_2

    :cond_3
    move v2, v3

    .line 349
    goto :goto_1
.end method


# virtual methods
.method public allocateRegisters()Lcom/s1243808733/android/dx/ssa/RegisterMapper;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

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
    .registers 6

    .line 1096
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/IntSet;->elements()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 1098
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/IntSet;->iterator()Lcom/s1243808733/android/dx/util/IntIterator;

    move-result-object v2

    .line 1100
    const/4 v0, 0x0

    .line 1101
    :goto_0
    invoke-interface {v2}, Lcom/s1243808733/android/dx/util/IntIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1105
    return-object v1

    .line 1102
    :cond_0
    invoke-interface {v2}, Lcom/s1243808733/android/dx/util/IntIterator;->next()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getDefinitionSpecForSsaReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->set(ILcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public wantsParamsMovedHigh()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 164
    const/4 v0, 0x1

    return v0
.end method
