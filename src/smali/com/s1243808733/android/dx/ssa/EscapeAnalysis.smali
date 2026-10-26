.class public Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;
.super Ljava/lang/Object;
.source "EscapeAnalysis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;,
        Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;
    }
.end annotation


# instance fields
.field private final latticeValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;",
            ">;"
        }
    .end annotation
.end field

.field private final regCount:I

.field private final ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;


# direct methods
.method static bridge synthetic -$$Nest$fgetssaMeth(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;)Lcom/s1243808733/android/dx/ssa/SsaMethod;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$mprocessInsn(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;Lcom/s1243808733/android/dx/ssa/SsaInsn;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->processInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    return-void
.end method

.method private constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 113
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->regCount:I

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    return-void
.end method

.method private addEdge(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;)V
    .locals 1

    .line 172
    iget-object v0, p2, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->parentSets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p2, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->parentSets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_0
    iget-object v0, p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private findSetIndex(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 128
    iget-object v0, v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private getInsnForMove(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Lcom/s1243808733/android/dx/ssa/SsaInsn;
    .locals 2

    .line 143
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    return-object v0
.end method

.method private getMoveForInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Lcom/s1243808733/android/dx/ssa/SsaInsn;
    .locals 3

    const/4 v2, 0x0

    .line 156
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    .line 157
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    .line 158
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    return-object v0
.end method

.method private insertExceptionThrow(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Ljava/util/HashSet;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;)V"
        }
    .end annotation

    .line 741
    new-instance v5, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v0, Lcom/s1243808733/android/dx/rop/code/Exceptions;->TYPE_ArrayIndexOutOfBoundsException:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v5, v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 743
    sget-object v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    const/4 v3, 0x0

    const/16 v4, 0x28

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->insertThrowingInsnBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 747
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    .line 749
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessor()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    .line 750
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 751
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 752
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->makeNewSsaReg()I

    move-result v1

    invoke-static {v1, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    .line 753
    sget-object v8, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    const/16 v10, 0x38

    const/4 v11, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->insertPlainInsnBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 758
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessor()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v6

    .line 759
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 760
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstNat;

    new-instance v2, Lcom/s1243808733/android/dx/rop/cst/CstString;

    const-string v3, "<init>"

    invoke-direct {v2, v3}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/s1243808733/android/dx/rop/cst/CstString;

    const-string v4, "(I)V"

    invoke-direct {v3, v4}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lcom/s1243808733/android/dx/rop/cst/CstNat;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    .line 761
    new-instance v7, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-direct {v7, v5, v0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    .line 762
    invoke-static {v9, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x34

    move-object v0, p0

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->insertThrowingInsnBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 764
    invoke-virtual {p3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 768
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessor()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v6

    .line 769
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 770
    invoke-static {v9}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x23

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->insertThrowingInsnBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 772
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessorIndex()I

    move-result v0

    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 773
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getExitBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v2

    .line 772
    invoke-virtual {v6, v0, v2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->replaceSuccessor(II)V

    .line 774
    invoke-virtual {p3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private insertPlainInsnBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;ILcom/s1243808733/android/dx/rop/cst/Constant;)V
    .locals 6

    .line 791
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v2

    const/16 v0, 0x38

    if-ne p4, v0, :cond_0

    .line 794
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMoveResultPseudo(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    .line 796
    :goto_0
    if-nez p5, :cond_1

    .line 801
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Insn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 808
    :goto_1
    new-instance v1, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    .line 809
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    .line 811
    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 812
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onInsnAdded(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    return-void

    .line 796
    :cond_0
    invoke-static {p4, p3, p2, p5}, Lcom/s1243808733/android/dx/rop/code/Rops;->ropFor(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    goto :goto_0

    .line 804
    :cond_1
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Insn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    move-object v3, p3

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    goto :goto_1
.end method

.method private insertThrowingInsnBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;ILcom/s1243808733/android/dx/rop/cst/Constant;)V
    .locals 6

    .line 829
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v2

    .line 830
    invoke-static {p4, p3, p2, p5}, Lcom/s1243808733/android/dx/rop/code/Rops;->ropFor(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    if-nez p5, :cond_0

    .line 833
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Insn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    sget-object v3, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-direct {v0, v1, v2, p2, v3}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;)V

    .line 840
    :goto_0
    new-instance v1, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    .line 841
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    .line 843
    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 844
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onInsnAdded(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    return-void

    .line 836
    :cond_0
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Insn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-object v3, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    goto :goto_0
.end method

.method private movePropagate()V
    .locals 7

    const/4 v2, 0x0

    move v1, v2

    .line 645
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 646
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 650
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 682
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 654
    :cond_1
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListCopy()[Ljava/util/ArrayList;

    move-result-object v3

    .line 655
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 656
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 659
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    iget v6, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->regCount:I

    if-ge v5, v6, :cond_2

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    iget v6, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->regCount:I

    if-lt v5, v6, :cond_0

    .line 664
    :cond_2
    new-instance v5, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$1;

    invoke-direct {v5, p0, v0, v4}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$1;-><init>(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 681
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 682
    invoke-virtual {v0, v5}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->mapSourceRegisters(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static process(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .locals 1

    .line 208
    new-instance v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    invoke-direct {v0}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->run()V

    return-void
.end method

.method private processInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V
    .locals 5

    const/16 v3, 0x9

    .line 218
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    .line 219
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    const/16 v2, 0x38

    if-ne v0, v2, :cond_1

    .line 224
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v2

    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getBasicType()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 226
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->processMoveResultPseudoInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    move-result-object v0

    .line 227
    invoke-direct {p0, v1, v0}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->processRegister(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 229
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v2

    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getBasicType()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 231
    new-instance v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    iget v3, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->regCount:I

    sget-object v4, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-direct {v0, v2, v3, v4}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    .line 232
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-direct {p0, v1, v0}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->processRegister(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x37

    if-ne v0, v2, :cond_0

    .line 235
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getBasicType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 237
    new-instance v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    iget v3, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->regCount:I

    sget-object v4, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-direct {v0, v2, v3, v4}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    .line 238
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-direct {p0, v1, v0}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->processRegister(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;)V

    goto :goto_0
.end method

.method private processMoveResultPseudoInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;
    .locals 5

    const/4 v4, 0x0

    .line 252
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 253
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->getInsnForMove(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    const/16 v3, 0x26

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    const/4 v0, 0x0

    .line 313
    :goto_0
    return-object v0

    .line 268
    :pswitch_0
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    iget v2, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->regCount:I

    sget-object v3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    .line 273
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->replaceableArray:Z

    .line 313
    :goto_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    :cond_0
    new-instance v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    iget v2, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->regCount:I

    sget-object v3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->GLOBAL:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    goto :goto_1

    .line 282
    :cond_1
    new-instance v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    iget v2, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->regCount:I

    sget-object v3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->GLOBAL:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    goto :goto_1

    .line 289
    :cond_2
    :pswitch_1
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 290
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->findSetIndex(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)I

    move-result v2

    .line 293
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 294
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 295
    iget-object v2, v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 300
    :cond_3
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne v0, v2, :cond_4

    .line 301
    new-instance v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    iget v2, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->regCount:I

    sget-object v3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    goto :goto_1

    .line 304
    :cond_4
    new-instance v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    iget v2, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->regCount:I

    sget-object v3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->GLOBAL:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    goto :goto_1

    .line 262
    :cond_5
    :pswitch_2
    new-instance v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    iget v2, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->regCount:I

    sget-object v3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processPhiUse(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            "Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ">;)V"
        }
    .end annotation

    .line 360
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->findSetIndex(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)I

    move-result v1

    .line 361
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    if-eq v0, p2, :cond_1

    .line 366
    const/4 v2, 0x0

    iput-boolean v2, p2, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->replaceableArray:Z

    .line 367
    iget-object v2, p2, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    iget-object v3, v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 368
    iget-object v2, p2, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    iget-object v3, v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_0

    .line 369
    iget-object v2, v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    iput-object v2, p2, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    .line 371
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->replaceNode(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;)V

    .line 372
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 377
    :cond_1
    :goto_0
    return-void

    .line 376
    :cond_2
    iget-object v0, p2, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 377
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private processRegister(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;)V
    .locals 5

    .line 324
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 325
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 329
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 330
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 331
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object v1

    .line 334
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 335
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v4

    if-nez v4, :cond_1

    .line 339
    invoke-direct {p0, v1, p2, v2}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->processPhiUse(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 342
    :cond_1
    invoke-direct {p0, v0, v1, p2, v2}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->processUse(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private processUse(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            "Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 393
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    if-eq v0, v2, :cond_7

    const/16 v1, 0x21

    if-eq v0, v1, :cond_6

    const/16 v1, 0x23

    if-eq v0, v1, :cond_6

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_5

    const/4 v1, 0x7

    if-eq v0, v1, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x26

    if-eq v0, v1, :cond_4

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 456
    :pswitch_0
    sget-object v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->GLOBAL:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    iput-object v0, p3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    goto :goto_0

    .line 410
    :cond_1
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v0

    if-nez v0, :cond_2

    .line 413
    iput-boolean v3, p3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->replaceableArray:Z

    .line 418
    :cond_2
    :pswitch_1
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getBasicType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 422
    iput-boolean v3, p3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->replaceableArray:Z

    .line 425
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 426
    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 427
    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->findSetIndex(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)I

    move-result v0

    .line 428
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 430
    invoke-direct {p0, v0, p3}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->addEdge(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;)V

    .line 431
    iget-object v1, p3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    iget-object v2, v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_0

    .line 432
    iget-object v0, v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    iput-object v0, p3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    goto :goto_0

    .line 436
    :cond_3
    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->findSetIndex(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)I

    move-result v0

    .line 437
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 439
    invoke-direct {p0, p3, v0}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->addEdge(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;)V

    .line 440
    iget-object v1, v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    iget-object v2, p3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_0

    .line 441
    iget-object v1, p3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    iput-object v1, v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    goto/16 :goto_0

    .line 448
    :cond_4
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 449
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    iput-boolean v3, p3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->replaceableArray:Z

    goto/16 :goto_0

    .line 404
    :cond_5
    iget-object v0, p3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    sget-object v1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->METHOD:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    .line 405
    sget-object v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->METHOD:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    iput-object v0, p3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    goto/16 :goto_0

    .line 466
    :cond_6
    :pswitch_2
    sget-object v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->INTER:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    iput-object v0, p3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    goto/16 :goto_0

    .line 397
    :cond_7
    iget-object v0, p3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 398
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private replaceDef(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/ssa/SsaInsn;ILjava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ">;)V"
        }
    .end annotation

    .line 536
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, p3, :cond_0

    .line 540
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/type/Type;->getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/Zeroes;->zeroFor(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    move-object v0, v5

    .line 541
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;

    .line 542
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 543
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->makeNewSsaReg()I

    move-result v1

    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 544
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    sget-object v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    const/4 v4, 0x5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->insertPlainInsnBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private replaceNode(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;)V
    .locals 3

    .line 189
    iget-object v0, p2, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->parentSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 190
    iget-object v2, v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 191
    iget-object v2, v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v2, p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->parentSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p2, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 195
    iget-object v2, v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->parentSets:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 196
    iget-object v2, v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->parentSets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v2, p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method private replaceUse(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/ssa/SsaInsn;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x5

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x2

    .line 566
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 572
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/16 v2, 0x22

    if-eq v0, v2, :cond_6

    const/16 v2, 0x39

    if-eq v0, v2, :cond_5

    const/16 v2, 0x26

    if-eq v0, v2, :cond_3

    const/16 v2, 0x27

    if-eq v0, v2, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    .line 594
    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    .line 595
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    move-result v6

    if-ge v6, v7, :cond_2

    .line 597
    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 598
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 599
    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->insertPlainInsnBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 602
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withSimpleType()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {p3, v6, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 605
    :cond_2
    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->insertExceptionThrow(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Ljava/util/HashSet;)V

    goto :goto_0

    .line 575
    :cond_3
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->getMoveForInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v1

    .line 576
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    .line 577
    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    .line 578
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    move-result v0

    if-ge v0, v7, :cond_4

    .line 580
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 581
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 582
    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->insertPlainInsnBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 589
    :goto_1
    invoke-virtual {p4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 586
    :cond_4
    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-direct {p0, v1, v0, p4}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->insertExceptionThrow(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Ljava/util/HashSet;)V

    .line 587
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    invoke-virtual {p4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 623
    :cond_5
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    .line 624
    check-cast v0, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;

    .line 625
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;->getInitValues()Ljava/util/ArrayList;

    move-result-object v8

    move v6, v1

    :goto_2
    if-ge v6, v7, :cond_0

    .line 628
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    .line 629
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    .line 628
    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 630
    sget-object v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    .line 631
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-object v0, p0

    move-object v1, p1

    move v4, v9

    .line 630
    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->insertPlainInsnBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 633
    invoke-virtual {p3, v6, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    .line 610
    :cond_6
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v5

    .line 612
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->getMoveForInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v1

    .line 613
    sget-object v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    .line 614
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    check-cast v5, Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-object v0, p0

    move v4, v9

    .line 613
    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->insertPlainInsnBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 616
    invoke-virtual {p4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private run()V
    .locals 6

    .line 691
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    new-instance v1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$2;

    invoke-direct {v1, p0}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$2;-><init>(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->forEachBlockDepthFirstDom(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock$Visitor;)V

    .line 715
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 716
    iget-object v1, v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    sget-object v3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    if-eq v1, v3, :cond_0

    .line 717
    iget-object v1, v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 718
    iget-object v4, v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    iget-object v5, v1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_1

    .line 719
    iget-object v4, v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    iput-object v4, v1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    goto :goto_0

    .line 726
    :cond_2
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->scalarReplacement()V

    return-void
.end method

.method private scalarReplacement()V
    .locals 8

    const/4 v7, 0x0

    .line 478
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 479
    iget-boolean v2, v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->replaceableArray:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    sget-object v3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    if-ne v2, v3, :cond_0

    .line 484
    iget-object v0, v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    .line 485
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v3

    .line 486
    invoke-direct {p0, v3}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->getInsnForMove(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v4

    .line 489
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    .line 490
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    move-result v0

    .line 491
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 493
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 496
    invoke-direct {p0, v3, v4, v0, v5}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->replaceDef(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/ssa/SsaInsn;ILjava/util/ArrayList;)V

    .line 499
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 503
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object v0

    .line 504
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 506
    invoke-direct {p0, v0, v4, v5, v6}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->replaceUse(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/ssa/SsaInsn;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 507
    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, v6}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->deleteInsns(Ljava/util/Set;)V

    .line 512
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onInsnsChanged()V

    .line 515
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    iget v2, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->regCount:I

    invoke-static {v0, v2}, Lcom/s1243808733/android/dx/ssa/SsaConverter;->updateSsaMethod(Lcom/s1243808733/android/dx/ssa/SsaMethod;I)V

    .line 518
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->movePropagate()V

    goto :goto_0

    :cond_2
    return-void
.end method
