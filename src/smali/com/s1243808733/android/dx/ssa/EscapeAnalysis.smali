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
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;",
            ">;"
        }
    .end annotation
.end field

.field private final regCount:I

.field private final ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;


# direct methods
.method static bridge synthetic -$$Nest$fgetssaMeth(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;)Lcom/s1243808733/android/dx/ssa/SsaMethod;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mprocessInsn(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;Lcom/s1243808733/android/dx/ssa/SsaInsn;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->processInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    return-void
.end method

.method private constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 113
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result p1

    iput p1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->regCount:I

    .line 114
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    return-void
.end method

.method private addEdge(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;)V
    .registers 4

    .line 172
    iget-object v0, p2, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->parentSets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 173
    iget-object v0, p2, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->parentSets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_d
    iget-object v0, p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 176
    iget-object p1, p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    return-void
.end method

.method private findSetIndex(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)I
    .registers 5

    const/4 v0, 0x0

    .line 126
    :goto_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 127
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 128
    iget-object v1, v1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    return v0

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    return v0
.end method

.method private getInsnForMove(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Lcom/s1243808733/android/dx/ssa/SsaInsn;
    .registers 3

    .line 143
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p1

    .line 144
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    return-object p1
.end method

.method private getMoveForInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Lcom/s1243808733/android/dx/ssa/SsaInsn;
    .registers 4

    .line 156
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p1

    .line 157
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object p1

    .line 158
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    return-object p1
.end method

.method private insertExceptionThrow(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Ljava/util/HashSet;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            "Ljava/util/HashSet<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;)V"
        }
    .end annotation

    .line 741
    move-object v6, p0

    move-object/from16 v7, p3

    new-instance v8, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v0, Lcom/s1243808733/android/dx/rop/code/Exceptions;->TYPE_ArrayIndexOutOfBoundsException:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v8, v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 743
    sget-object v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    const/4 v3, 0x0

    const/16 v4, 0x28

    move-object v0, p0

    move-object v1, p1

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->insertThrowingInsnBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 747
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    .line 749
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessor()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v9

    .line 750
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 751
    iget-object v0, v6, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 752
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->makeNewSsaReg()I

    move-result v0

    invoke-static {v0, v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v11

    .line 753
    sget-object v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    const/16 v4, 0x38

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->insertPlainInsnBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 758
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessor()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v9

    .line 759
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 760
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstNat;

    new-instance v1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    const-string v2, "<init>"

    invoke-direct {v1, v2}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/s1243808733/android/dx/rop/cst/CstString;

    const-string v3, "(I)V"

    invoke-direct {v2, v3}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/cst/CstNat;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    .line 761
    new-instance v5, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-direct {v5, v8, v0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    .line 762
    move-object v0, p2

    invoke-static {v11, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x34

    move-object v0, p0

    move-object v1, v12

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->insertThrowingInsnBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 764
    invoke-virtual {v7, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 768
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessor()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v8

    .line 769
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 770
    invoke-static {v11}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    const/16 v4, 0x23

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v9

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->insertThrowingInsnBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 772
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessorIndex()I

    move-result v0

    iget-object v1, v6, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 773
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getExitBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v1

    .line 772
    invoke-virtual {v8, v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->replaceSuccessor(II)V

    .line 774
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private insertPlainInsnBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;ILcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 13

    .line 791
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    const/16 v1, 0x38

    if-ne p4, v1, :cond_12

    .line 794
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p4

    invoke-static {p4}, Lcom/s1243808733/android/dx/rop/code/Rops;->opMoveResultPseudo(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object p4

    move-object v2, p4

    goto :goto_17

    .line 796
    :cond_12
    invoke-static {p4, p3, p2, p5}, Lcom/s1243808733/android/dx/rop/code/Rops;->ropFor(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object p4

    move-object v2, p4

    :goto_17
    if-nez p5, :cond_24

    .line 801
    nop

    .line 802
    new-instance p4, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object p5

    invoke-direct {p4, v2, p5, p3, p2}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    goto :goto_32

    .line 804
    :cond_24
    nop

    .line 805
    new-instance p4, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v3

    move-object v1, p4

    move-object v4, p3

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 808
    :goto_32
    new-instance p2, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object p3

    invoke-direct {p2, p4, p3}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    .line 809
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object p3

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object p3

    .line 811
    invoke-interface {p3, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p3, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 812
    iget-object p1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onInsnAdded(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    return-void
.end method

.method private insertThrowingInsnBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;ILcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 13

    .line 829
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    .line 830
    invoke-static {p4, p3, p2, p5}, Lcom/s1243808733/android/dx/rop/code/Rops;->ropFor(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v2

    if-nez p5, :cond_17

    .line 833
    nop

    .line 834
    new-instance p3, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object p4

    sget-object p5, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    invoke-direct {p3, v2, p4, p2, p5}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;)V

    goto :goto_26

    .line 836
    :cond_17
    nop

    .line 837
    new-instance p3, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v3

    sget-object v5, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-object v1, p3

    move-object v4, p2

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 840
    :goto_26
    new-instance p2, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    .line 841
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object p3

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object p3

    .line 843
    invoke-interface {p3, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p3, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 844
    iget-object p1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onInsnAdded(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    return-void
.end method

.method private movePropagate()V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 645
    :goto_2
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v2

    if-ge v1, v2, :cond_69

    .line 646
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v2

    if-eqz v2, :cond_66

    .line 649
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v3

    if-eqz v3, :cond_66

    .line 650
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_24

    goto :goto_66

    .line 654
    :cond_24
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListCopy()[Ljava/util/ArrayList;

    move-result-object v3

    .line 655
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 656
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 659
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    iget v6, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->regCount:I

    if-ge v5, v6, :cond_47

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    iget v6, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->regCount:I

    if-ge v5, v6, :cond_47

    goto :goto_66

    .line 664
    :cond_47
    new-instance v5, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$1;

    invoke-direct {v5, p0, v2, v4}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$1;-><init>(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 681
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 682
    invoke-virtual {v3, v5}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->mapSourceRegisters(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)V

    goto :goto_56

    :cond_66
    :goto_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_69
    return-void
.end method

.method public static process(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 2

    .line 208
    new-instance v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;-><init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V

    invoke-direct {v0}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->run()V

    return-void
.end method

.method private processInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V
    .registers 6

    .line 218
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    .line 219
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    const/16 v2, 0x38

    const/16 v3, 0x9

    if-ne v0, v2, :cond_24

    .line 224
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v2

    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getBasicType()I

    move-result v2

    if-ne v2, v3, :cond_24

    .line 226
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->processMoveResultPseudoInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    move-result-object p1

    .line 227
    invoke-direct {p0, v1, p1}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->processRegister(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;)V

    goto :goto_6a

    :cond_24
    const/4 p1, 0x3

    if-ne v0, p1, :cond_47

    .line 229
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p1

    invoke-interface {p1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getBasicType()I

    move-result p1

    if-ne p1, v3, :cond_47

    .line 231
    new-instance p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    iget v2, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->regCount:I

    sget-object v3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-direct {p1, v0, v2, v3}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    .line 232
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-direct {p0, v1, p1}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->processRegister(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;)V

    goto :goto_6a

    :cond_47
    const/16 p1, 0x37

    if-ne v0, p1, :cond_6a

    .line 235
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p1

    invoke-interface {p1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getBasicType()I

    move-result p1

    if-ne p1, v3, :cond_6a

    .line 237
    new-instance p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    iget v2, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->regCount:I

    sget-object v3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-direct {p1, v0, v2, v3}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    .line 238
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-direct {p0, v1, p1}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->processRegister(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method private processMoveResultPseudoInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;
    .registers 6

    .line 252
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 253
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->getInsnForMove(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object p1

    .line 254
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_af

    const/16 v2, 0x26

    const/4 v3, 0x0

    if-eq v1, v2, :cond_65

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_65

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_57

    packed-switch v1, :pswitch_data_c2

    const/4 p1, 0x0

    return-object p1

    .line 268
    :pswitch_25  #0x29, 0x2a
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    .line 269
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p1

    invoke-interface {p1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 271
    new-instance p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->regCount:I

    sget-object v2, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-direct {p1, v0, v1, v2}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->replaceableArray:Z

    goto/16 :goto_bc

    .line 276
    :cond_49
    new-instance p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->regCount:I

    sget-object v2, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->GLOBAL:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-direct {p1, v0, v1, v2}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    goto :goto_bc

    .line 282
    :cond_57
    new-instance p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->regCount:I

    sget-object v2, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->GLOBAL:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-direct {p1, v0, v1, v2}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    goto :goto_bc

    .line 289
    :cond_65
    :pswitch_65  #0x2b
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    .line 290
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->findSetIndex(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)I

    move-result v1

    .line 293
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_8b

    .line 294
    iget-object p1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 295
    iget-object v1, p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p1

    .line 300
    :cond_8b
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p1

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p1, v1, :cond_a1

    .line 301
    new-instance p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->regCount:I

    sget-object v2, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-direct {p1, v0, v1, v2}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    goto :goto_bc

    .line 304
    :cond_a1
    new-instance p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->regCount:I

    sget-object v2, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->GLOBAL:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-direct {p1, v0, v1, v2}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    goto :goto_bc

    .line 262
    :cond_af
    :pswitch_af  #0x28
    new-instance p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    iget v1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->regCount:I

    sget-object v2, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-direct {p1, v0, v1, v2}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    .line 313
    :goto_bc
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1

    :pswitch_data_c2
    .packed-switch 0x28
        :pswitch_af  #00000028
        :pswitch_25  #00000029
        :pswitch_25  #0000002a
        :pswitch_65  #0000002b
    .end packed-switch
.end method

.method private processPhiUse(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            "Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;",
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ">;)V"
        }
    .end annotation

    .line 360
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->findSetIndex(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)I

    move-result v0

    .line 361
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_3b

    .line 363
    iget-object p1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    if-eq p1, p2, :cond_4f

    .line 366
    const/4 p3, 0x0

    iput-boolean p3, p2, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->replaceableArray:Z

    .line 367
    iget-object p3, p2, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    iget-object v1, p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    invoke-virtual {p3, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 368
    iget-object p3, p2, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    iget-object v1, p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-virtual {p3, v1}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->compareTo(Ljava/lang/Enum;)I

    move-result p3

    if-gez p3, :cond_32

    .line 369
    iget-object p3, p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    iput-object p3, p2, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    .line 371
    :cond_32
    invoke-direct {p0, p2, p1}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->replaceNode(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;)V

    .line 372
    iget-object p1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4f

    .line 376
    :cond_3b
    iget-object p2, p2, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->set(I)V

    .line 377
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4f
    :goto_4f
    return-void
.end method

.method private processRegister(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;)V
    .registers 7

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 325
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_42

    .line 329
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 330
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 331
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object v1

    .line 334
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 335
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v3

    if-nez v3, :cond_3e

    .line 339
    invoke-direct {p0, v2, p2, v0}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->processPhiUse(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;Ljava/util/ArrayList;)V

    goto :goto_28

    .line 342
    :cond_3e
    invoke-direct {p0, p1, v2, p2, v0}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->processUse(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;Ljava/util/ArrayList;)V

    goto :goto_28

    :cond_42
    return-void
.end method

.method private processUse(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            "Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;",
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ">;)V"
        }
    .end annotation

    .line 393
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_ee

    const/16 p4, 0x21

    if-eq v0, p4, :cond_e9

    const/16 p4, 0x23

    if-eq v0, p4, :cond_e9

    const/16 p4, 0x2b

    if-eq v0, p4, :cond_da

    const/4 p4, 0x7

    if-eq v0, p4, :cond_da

    const/16 p4, 0x8

    if-eq v0, p4, :cond_da

    const/16 p4, 0x26

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, p4, :cond_c5

    const/16 p4, 0x27

    if-eq v0, p4, :cond_33

    packed-switch v0, :pswitch_data_104

    goto/16 :goto_102

    .line 456
    :pswitch_2d  #0x30
    sget-object p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->GLOBAL:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    iput-object p1, p3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    goto/16 :goto_102

    .line 410
    :cond_33
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p4

    invoke-virtual {p4, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p4

    .line 411
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p4

    invoke-interface {p4}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result p4

    if-nez p4, :cond_47

    .line 413
    iput-boolean v3, p3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->replaceableArray:Z

    .line 418
    :cond_47
    :pswitch_47  #0x2f
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p4

    invoke-virtual {p4, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p4

    .line 419
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p4

    invoke-interface {p4}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getBasicType()I

    move-result p4

    const/16 v0, 0x9

    if-eq p4, v0, :cond_5d

    goto/16 :goto_102

    .line 422
    :cond_5d
    iput-boolean v3, p3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->replaceableArray:Z

    .line 425
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p2

    .line 426
    invoke-virtual {p2, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p4

    invoke-virtual {p4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p4

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p1

    if-ne p4, p1, :cond_9b

    .line 427
    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->findSetIndex(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)I

    move-result p1

    .line 428
    iget-object p2, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eq p1, p2, :cond_102

    .line 429
    iget-object p2, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 430
    invoke-direct {p0, p1, p3}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->addEdge(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;)V

    .line 431
    iget-object p2, p3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    iget-object p4, p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-virtual {p2, p4}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->compareTo(Ljava/lang/Enum;)I

    move-result p2

    if-gez p2, :cond_102

    .line 432
    iget-object p1, p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    iput-object p1, p3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    goto :goto_102

    .line 436
    :cond_9b
    invoke-virtual {p2, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->findSetIndex(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)I

    move-result p1

    .line 437
    iget-object p2, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eq p1, p2, :cond_102

    .line 438
    iget-object p2, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 439
    invoke-direct {p0, p3, p1}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->addEdge(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;)V

    .line 440
    iget-object p2, p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    iget-object p4, p3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-virtual {p2, p4}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->compareTo(Ljava/lang/Enum;)I

    move-result p2

    if-gez p2, :cond_102

    .line 441
    iget-object p2, p3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    iput-object p2, p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    goto :goto_102

    .line 448
    :cond_c5
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    .line 449
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p1

    invoke-interface {p1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result p1

    if-nez p1, :cond_102

    .line 451
    iput-boolean v3, p3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->replaceableArray:Z

    goto :goto_102

    .line 404
    :cond_da
    iget-object p1, p3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    sget-object p2, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->METHOD:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-gez p1, :cond_102

    .line 405
    sget-object p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->METHOD:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    iput-object p1, p3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    goto :goto_102

    .line 466
    :cond_e9
    :pswitch_e9  #0x31, 0x32, 0x33, 0x34, 0x35
    sget-object p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->INTER:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    iput-object p1, p3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    goto :goto_102

    .line 397
    :cond_ee
    iget-object p1, p3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p3

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/util/BitSet;->set(I)V

    .line 398
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_102
    :goto_102
    return-void

    nop

    :pswitch_data_104
    .packed-switch 0x2f
        :pswitch_47  #0000002f
        :pswitch_2d  #00000030
        :pswitch_e9  #00000031
        :pswitch_e9  #00000032
        :pswitch_e9  #00000033
        :pswitch_e9  #00000034
        :pswitch_e9  #00000035
    .end packed-switch
.end method

.method private replaceDef(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/ssa/SsaInsn;ILjava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ">;)V"
        }
    .end annotation

    .line 536
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p2

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p2

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p3, :cond_2e

    .line 540
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/type/Type;->getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/cst/Zeroes;->zeroFor(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v7

    .line 541
    move-object v1, v7

    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;

    .line 542
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 543
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->makeNewSsaReg()I

    move-result v2

    invoke-static {v2, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    .line 544
    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    sget-object v4, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    const/4 v6, 0x5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->insertPlainInsnBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_2e
    return-void
.end method

.method private replaceNode(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;)V
    .registers 6

    .line 189
    iget-object v0, p2, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->parentSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 190
    iget-object v2, v1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 191
    iget-object v2, v1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v2, p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->parentSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 194
    :cond_22
    iget-object v0, p2, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 195
    iget-object v2, v1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->parentSets:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 196
    iget-object v2, v1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->parentSets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v2, p1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_44
    return-void
.end method

.method private replaceUse(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/ssa/SsaInsn;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ">;)V"
        }
    .end annotation

    .line 566
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 572
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    const/16 v2, 0x22

    const/4 v3, 0x0

    if-eq v1, v2, :cond_ed

    const/16 p2, 0x39

    if-eq v1, p2, :cond_b7

    const/16 p2, 0x26

    const/4 v2, 0x2

    if-eq v1, p2, :cond_64

    const/16 p2, 0x27

    if-eq v1, p2, :cond_20

    goto/16 :goto_10f

    .line 593
    :cond_20
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p2

    .line 594
    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    .line 595
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    move-result v1

    if-ge v1, v0, :cond_5b

    .line 597
    invoke-virtual {p2, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p2

    .line 598
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {p4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p4

    invoke-virtual {p2, p4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p4

    .line 599
    invoke-static {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->insertPlainInsnBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 602
    invoke-virtual {p4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withSimpleType()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    invoke-virtual {p3, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10f

    .line 605
    :cond_5b
    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->insertExceptionThrow(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Ljava/util/HashSet;)V

    goto/16 :goto_10f

    .line 575
    :cond_64
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->getMoveForInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object p2

    .line 576
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    .line 577
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    .line 578
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    move-result v3

    if-ge v3, v0, :cond_9b

    .line 580
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 581
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p3

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 582
    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->insertPlainInsnBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    goto :goto_b3

    .line 586
    :cond_9b
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    invoke-direct {p0, p2, p1, p4}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->insertExceptionThrow(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Ljava/util/HashSet;)V

    .line 587
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getBlock()Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    invoke-virtual {p4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 589
    :goto_b3
    invoke-virtual {p4, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_10f

    .line 623
    :cond_b7
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object p2

    .line 624
    check-cast p2, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;

    .line 625
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;->getInitValues()Ljava/util/ArrayList;

    move-result-object p2

    :goto_c1
    if-ge v3, v0, :cond_10f

    .line 628
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {p4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result p4

    .line 629
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    .line 628
    invoke-static {p4, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p4

    .line 630
    sget-object v6, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    .line 631
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 630
    const/4 v8, 0x5

    move-object v4, p0

    move-object v5, p1

    move-object v7, p4

    invoke-direct/range {v4 .. v9}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->insertPlainInsnBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 633
    invoke-virtual {p3, v3, p4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_c1

    .line 610
    :cond_ed
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p2

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p2

    .line 612
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->getMoveForInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object p1

    .line 613
    sget-object v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    .line 614
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    move-object v5, p2

    check-cast v5, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 613
    const/4 v4, 0x5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->insertPlainInsnBefore(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 616
    invoke-virtual {p4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_10f
    :goto_10f
    return-void
.end method

.method private run()V
    .registers 7

    .line 691
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    new-instance v1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$2;

    invoke-direct {v1, p0}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$2;-><init>(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->forEachBlockDepthFirstDom(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock$Visitor;)V

    .line 715
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 716
    iget-object v2, v1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    sget-object v3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    if-eq v2, v3, :cond_10

    .line 717
    iget-object v2, v1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 718
    iget-object v4, v1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    iget-object v5, v3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_28

    .line 719
    iget-object v4, v1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    iput-object v4, v3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    goto :goto_28

    .line 726
    :cond_43
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->scalarReplacement()V

    return-void
.end method

.method private scalarReplacement()V
    .registers 8

    .line 478
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_85

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 479
    iget-boolean v2, v1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->replaceableArray:Z

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    sget-object v3, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeState;

    if-eq v2, v3, :cond_1d

    goto :goto_6

    .line 484
    :cond_1d
    iget-object v1, v1, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .line 485
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v3, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v3

    .line 486
    invoke-direct {p0, v3}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->getInsnForMove(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v4

    .line 489
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v2

    .line 490
    check-cast v2, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    move-result v2

    .line 491
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 493
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 496
    invoke-direct {p0, v3, v4, v2, v5}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->replaceDef(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/ssa/SsaInsn;ILjava/util/ArrayList;)V

    .line 499
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 503
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object v1

    .line 504
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 506
    invoke-direct {p0, v2, v4, v5, v6}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->replaceUse(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/ssa/SsaInsn;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 507
    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 511
    :cond_70
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v1, v6}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->deleteInsns(Ljava/util/Set;)V

    .line 512
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->onInsnsChanged()V

    .line 515
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    iget v2, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->regCount:I

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/ssa/SsaConverter;->updateSsaMethod(Lcom/s1243808733/android/dx/ssa/SsaMethod;I)V

    .line 518
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->movePropagate()V

    goto :goto_6

    :cond_85
    return-void
.end method
