.class public final Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;
.super Ljava/lang/Object;
.source "SsaBasicBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/ssa/SsaBasicBlock$LabelComparator;,
        Lcom/s1243808733/android/dx/ssa/SsaBasicBlock$Visitor;
    }
.end annotation


# static fields
.field public static final LABEL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final domChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field

.field private final index:I

.field private final insns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private liveIn:Lcom/s1243808733/android/dx/util/IntSet;

.field private liveOut:Lcom/s1243808733/android/dx/util/IntSet;

.field private movesFromPhisAtBeginning:I

.field private movesFromPhisAtEnd:I

.field private final parent:Lcom/s1243808733/android/dx/ssa/SsaMethod;

.field private predecessors:Ljava/util/BitSet;

.field private primarySuccessor:I

.field private final ropLabel:I

.field private successorList:Lcom/s1243808733/android/dx/util/IntList;

.field private successors:Ljava/util/BitSet;


# direct methods
.method static bridge synthetic -$$Nest$fgetropLabel(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)I
    .locals 1

    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->ropLabel:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock$LabelComparator;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock$LabelComparator;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->LABEL_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(IILcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .locals 2

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    .line 87
    iput v1, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtEnd:I

    .line 93
    iput v1, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtBeginning:I

    .line 116
    iput-object p3, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->parent:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 117
    iput p1, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    .line 119
    iput p2, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->ropLabel:I

    .line 121
    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    .line 122
    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    .line 123
    new-instance v0, Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/util/IntList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/s1243808733/android/dx/util/IntList;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->domChildren:Ljava/util/ArrayList;

    return-void
.end method

.method private static checkRegUsed(Ljava/util/BitSet;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z
    .locals 4

    .line 671
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    .line 672
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v2

    .line 674
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    const/4 v0, 0x1

    if-nez v3, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 675
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCountPhiInsns()I
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 288
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 289
    instance-of v0, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static newFromRop(Lcom/s1243808733/android/dx/rop/code/RopMethod;ILcom/s1243808733/android/dx/ssa/SsaMethod;)Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;
    .locals 9

    .line 139
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v1

    .line 140
    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->get(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v2

    .line 141
    new-instance v3, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v0

    invoke-direct {v3, p1, v0, p2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;-><init>(IILcom/s1243808733/android/dx/ssa/SsaMethod;)V

    .line 143
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getInsns()Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object v4

    .line 145
    iget-object v0, v3, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/InsnList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 147
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/InsnList;->size()I

    move-result v5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    .line 148
    iget-object v6, v3, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    new-instance v7, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    invoke-virtual {v4, v0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->labelToPredecessors(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    .line 151
    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->bitSetFromLabelList(Lcom/s1243808733/android/dx/rop/code/BasicBlockList;Lcom/s1243808733/android/dx/util/IntList;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, v3, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    .line 156
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->bitSetFromLabelList(Lcom/s1243808733/android/dx/rop/code/BasicBlockList;Lcom/s1243808733/android/dx/util/IntList;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, v3, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    .line 160
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    .line 159
    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->indexListFromLabelList(Lcom/s1243808733/android/dx/rop/code/BasicBlockList;Lcom/s1243808733/android/dx/util/IntList;)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    iput-object v0, v3, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/s1243808733/android/dx/util/IntList;

    .line 162
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v0

    if-gez v0, :cond_2

    const/4 v0, -0x1

    .line 166
    :goto_1
    iput v0, v3, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    :cond_1
    return-object v3

    :cond_2
    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    move-result v0

    goto :goto_1
.end method

.method private scheduleUseBeforeAssigned(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 690
    new-instance v6, Ljava/util/BitSet;

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->parent:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 693
    new-instance v7, Ljava/util/BitSet;

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->parent:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 695
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v4, v5

    :goto_0
    if-ge v4, v2, :cond_5

    move v1, v4

    :goto_1
    if-ge v1, v2, :cond_0

    .line 705
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 704
    invoke-static {v6, v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->setRegsUsed(Ljava/util/BitSet;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 708
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 707
    invoke-static {v7, v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->setRegsUsed(Ljava/util/BitSet;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    move v3, v4

    move v1, v4

    :goto_2
    if-ge v3, v2, :cond_1

    .line 716
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 722
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->checkRegUsed(Ljava/util/BitSet;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 723
    invoke-static {p1, v3, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v0, v1, 0x1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    if-ne v4, v1, :cond_4

    move v3, v1

    :goto_4
    if-ge v3, v2, :cond_3

    .line 737
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 738
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->checkRegUsed(Ljava/util/BitSet;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 740
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 739
    invoke-static {v7, v4}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->checkRegUsed(Ljava/util/BitSet;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 747
    invoke-static {p1, v1, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 754
    :goto_5
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 755
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->parent:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 756
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->borrowSpareRegister(I)I

    move-result v2

    .line 755
    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 758
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMove(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v2

    sget-object v8, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    .line 762
    new-instance v9, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    new-instance v10, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-direct {v10, v2, v8, v4, v0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    invoke-direct {v9, v10, p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    add-int/lit8 v2, v1, 0x1

    .line 764
    invoke-interface {p1, v1, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 766
    invoke-static {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 768
    new-instance v1, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    new-instance v4, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v8

    invoke-static {v8}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMove(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v8

    sget-object v9, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    invoke-direct {v4, v8, v9, v3, v0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    invoke-direct {v1, v4, p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    .line 774
    invoke-interface {p1, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 777
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v1, v2

    .line 780
    :goto_6
    invoke-virtual {v6}, Ljava/util/BitSet;->clear()V

    .line 781
    invoke-virtual {v7}, Ljava/util/BitSet;->clear()V

    move v2, v0

    move v4, v1

    goto/16 :goto_0

    .line 747
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    move v0, v2

    .line 777
    goto :goto_6

    .line 781
    :cond_5
    return-void

    :cond_6
    move v0, v1

    goto/16 :goto_3
.end method

.method private static setRegsUsed(Ljava/util/BitSet;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .locals 2

    .line 655
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    .line 656
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 657
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addDomChild(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->domChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInsnToHead(Lcom/s1243808733/android/dx/rop/code/Insn;)V
    .locals 3

    .line 219
    invoke-static {p1, p0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->makeFromRop(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getCountPhiInsns()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 221
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->parent:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onInsnAdded(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    return-void
.end method

.method public addLiveIn(I)V
    .locals 1

    .line 806
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->liveIn:Lcom/s1243808733/android/dx/util/IntSet;

    if-nez v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->parent:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/SetFactory;->makeLivenessSet(I)Lcom/s1243808733/android/dx/util/IntSet;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->liveIn:Lcom/s1243808733/android/dx/util/IntSet;

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->liveIn:Lcom/s1243808733/android/dx/util/IntSet;

    invoke-interface {v0, p1}, Lcom/s1243808733/android/dx/util/IntSet;->add(I)V

    return-void
.end method

.method public addLiveOut(I)V
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->liveOut:Lcom/s1243808733/android/dx/util/IntSet;

    if-nez v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->parent:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/SetFactory;->makeLivenessSet(I)Lcom/s1243808733/android/dx/util/IntSet;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->liveOut:Lcom/s1243808733/android/dx/util/IntSet;

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->liveOut:Lcom/s1243808733/android/dx/util/IntSet;

    invoke-interface {v0, p1}, Lcom/s1243808733/android/dx/util/IntSet;->add(I)V

    return-void
.end method

.method public addMoveToBeginning(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .locals 5

    .line 633
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 644
    :goto_0
    return-void

    .line 638
    :cond_0
    invoke-static {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 639
    new-instance v1, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    new-instance v2, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMove(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v3

    sget-object v4, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    invoke-direct {v2, v3, v4, p1, v0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    invoke-direct {v1, v2, p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    .line 643
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getCountPhiInsns()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 644
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtBeginning:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtBeginning:I

    goto :goto_0
.end method

.method public addMoveToEnd(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .locals 5

    .line 573
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_4

    .line 577
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    .line 589
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 600
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    :goto_1
    if-ltz v1, :cond_0

    .line 606
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->parent:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 607
    invoke-virtual {v0, p1, p2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->addMoveToBeginning(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 602
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 615
    :cond_3
    invoke-static {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 616
    new-instance v1, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    new-instance v2, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMove(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v3

    sget-object v4, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    invoke-direct {v2, v3, v4, p1, v0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    invoke-direct {v1, v2, p0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    .line 620
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 622
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtEnd:I

    goto :goto_0

    .line 574
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Inserting a move to a block with multiple successors"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addPhiInsnForReg(I)V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-instance v2, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    invoke-direct {v2, p1, p0}, Lcom/s1243808733/android/dx/ssa/PhiInsn;-><init>(ILcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addPhiInsnForReg(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-instance v2, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    invoke-direct {v2, p1, p0}, Lcom/s1243808733/android/dx/ssa/PhiInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public exitBlockFixup(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
    .locals 2

    if-ne p0, p1, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    iget v1, p1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 553
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/s1243808733/android/dx/util/IntList;

    iget v1, p1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    .line 554
    iget v0, p1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    .line 555
    iget-object v0, p1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method public forEachInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;)V
    .locals 3

    .line 966
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 968
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->accept(Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forEachPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn$Visitor;)V
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 253
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 254
    instance-of v3, v0, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    if-eqz v3, :cond_0

    .line 255
    check-cast v0, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/ssa/PhiInsn$Visitor;->visitPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getDomChildren()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->domChildren:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 316
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    return v0
.end method

.method public getInsns()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLiveInRegs()Lcom/s1243808733/android/dx/util/IntSet;
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->liveIn:Lcom/s1243808733/android/dx/util/IntSet;

    if-nez v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->parent:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/SetFactory;->makeLivenessSet(I)Lcom/s1243808733/android/dx/util/IntSet;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->liveIn:Lcom/s1243808733/android/dx/util/IntSet;

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->liveIn:Lcom/s1243808733/android/dx/util/IntSet;

    return-object v0
.end method

.method public getLiveOutRegs()Lcom/s1243808733/android/dx/util/IntSet;
    .locals 1

    .line 833
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->liveOut:Lcom/s1243808733/android/dx/util/IntSet;

    if-nez v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->parent:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/SetFactory;->makeLivenessSet(I)Lcom/s1243808733/android/dx/util/IntSet;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->liveOut:Lcom/s1243808733/android/dx/util/IntSet;

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->liveOut:Lcom/s1243808733/android/dx/util/IntSet;

    return-object v0
.end method

.method public getParent()Lcom/s1243808733/android/dx/ssa/SsaMethod;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->parent:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    return-object v0
.end method

.method public getPhiInsns()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getCountPhiInsns()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPredecessors()Ljava/util/BitSet;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    return-object v0
.end method

.method public getPrimarySuccessor()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;
    .locals 2

    .line 375
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 378
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->parent:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    goto :goto_0
.end method

.method public getPrimarySuccessorIndex()I
    .locals 1

    .line 360
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    return v0
.end method

.method public getPrimarySuccessorRopLabel()I
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->parent:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blockIndexToRopLabel(I)I

    move-result v0

    return v0
.end method

.method public getRopLabel()I
    .locals 1

    .line 323
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->ropLabel:I

    return v0
.end method

.method public getRopLabelString()Ljava/lang/String;
    .locals 1

    .line 330
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->ropLabel:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRopLabelSuccessorList()Lcom/s1243808733/android/dx/util/IntList;
    .locals 5

    .line 386
    new-instance v1, Lcom/s1243808733/android/dx/util/IntList;

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/util/IntList;-><init>(I)V

    .line 388
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 391
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->parent:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    iget-object v4, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v4, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blockIndexToRopLabel(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getSuccessorList()Lcom/s1243808733/android/dx/util/IntList;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/s1243808733/android/dx/util/IntList;

    return-object v0
.end method

.method public getSuccessors()Ljava/util/BitSet;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    return-object v0
.end method

.method public insertNewPredecessor()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;
    .locals 5

    .line 410
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->parent:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->makeNewGotoBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    .line 413
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    iput-object v0, v2, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    .line 414
    iget-object v0, v2, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 415
    iget-object v0, v2, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/s1243808733/android/dx/util/IntList;

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    .line 416
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    iput v0, v2, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    .line 420
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->parent:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    .line 421
    iget v1, v2, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 424
    iget-object v0, v2, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 427
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->parent:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 429
    iget v3, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    iget v4, v2, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v3, v4}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->replaceSuccessor(II)V

    .line 425
    iget-object v0, v2, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public insertNewSuccessor(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;
    .locals 5

    .line 447
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->parent:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->makeNewGotoBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v1

    .line 449
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    iget v2, p1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 455
    iget-object v0, v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    iget v2, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 456
    iget-object v0, v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    iget v2, p1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 457
    iget-object v0, v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/s1243808733/android/dx/util/IntList;

    iget v2, p1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    .line 458
    iget v0, p1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    iput v0, v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    .line 461
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 462
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v2

    iget v3, p1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    if-ne v2, v3, :cond_0

    .line 463
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/s1243808733/android/dx/util/IntList;

    iget v3, v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v2, v0, v3}, Lcom/s1243808733/android/dx/util/IntList;->set(II)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 467
    :cond_1
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    iget v2, p1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    if-ne v0, v2, :cond_2

    .line 468
    iget v0, v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    .line 470
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->clear(I)V

    .line 471
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    iget v2, v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 474
    iget-object v0, p1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    iget v2, v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 475
    iget-object v0, p1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    iget v2, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    iget v4, p1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    return-object v1

    .line 450
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Block "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getRopLabelString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not successor of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getRopLabelString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isExitBlock()Z
    .locals 2

    .line 843
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->parent:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getExitBlockIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllPhiInsns()V
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getCountPhiInsns()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeSuccessor(I)V
    .locals 3

    .line 522
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ltz v1, :cond_1

    .line 523
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    move v0, v1

    .line 526
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v2

    iput v2, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    goto :goto_1

    .line 530
    :cond_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/util/IntList;->removeIndex(I)V

    .line 531
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    .line 532
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->parent:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    iget-object v0, v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    return-void
.end method

.method public replaceLastInsn(Lcom/s1243808733/android/dx/rop/code/Insn;)V
    .locals 4

    .line 231
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 236
    invoke-static {p1, p0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->makeFromRop(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v1

    .line 238
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->parent:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onInsnRemoved(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    .line 241
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->parent:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onInsnAdded(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    return-void

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "last insn must branch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public replaceSuccessor(II)V
    .locals 2

    if-ne p1, p2, :cond_0

    .line 511
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    invoke-virtual {v0, p2}, Ljava/util/BitSet;->set(I)V

    .line 495
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    if-ne v0, p1, :cond_1

    .line 496
    iput p2, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->primarySuccessor:I

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 500
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 501
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successorList:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1, v0, p2}, Lcom/s1243808733/android/dx/util/IntList;->set(II)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 505
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->successors:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    .line 508
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->parent:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    iget-object v0, v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 511
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->parent:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    iget-object v0, v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->predecessors:Ljava/util/BitSet;

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    goto :goto_0
.end method

.method public scheduleMovesFromPhis()V
    .locals 4

    const/4 v3, 0x1

    .line 858
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtBeginning:I

    if-le v0, v3, :cond_0

    .line 861
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 863
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->scheduleUseBeforeAssigned(Ljava/util/List;)V

    .line 865
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtBeginning:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 872
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->isMoveException()Z

    move-result v0

    if-nez v0, :cond_2

    .line 947
    :cond_0
    iget v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtEnd:I

    if-le v0, v3, :cond_1

    .line 948
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    .line 949
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->movesFromPhisAtEnd:I

    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insns:Ljava/util/ArrayList;

    .line 950
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 949
    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 948
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->scheduleUseBeforeAssigned(Ljava/util/List;)V

    .line 954
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->parent:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->returnSpareRegisters()V

    return-void

    .line 879
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected: moves from phis before move-exception"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->ropLabel:I

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
