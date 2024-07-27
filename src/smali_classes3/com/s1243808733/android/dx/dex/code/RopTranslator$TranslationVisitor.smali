.class Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;
.super Ljava/lang/Object;
.source "RopTranslator.java"

# interfaces
.implements Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/dex/code/RopTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranslationVisitor"
.end annotation


# instance fields
.field private block:Lcom/s1243808733/android/dx/rop/code/BasicBlock;

.field private lastAddress:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

.field private final output:Lcom/s1243808733/android/dx/dex/code/OutputCollector;

.field private final this$0:Lcom/s1243808733/android/dx/dex/code/RopTranslator;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/code/RopTranslator;Lcom/s1243808733/android/dx/dex/code/OutputCollector;)V
    .registers 3

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/s1243808733/android/dx/dex/code/RopTranslator;

    .line 514
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->output:Lcom/s1243808733/android/dx/dex/code/OutputCollector;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;)Lcom/s1243808733/android/dx/dex/code/RopTranslator;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/s1243808733/android/dx/dex/code/RopTranslator;

    return-object v0
.end method

.method private getNextMoveResultPseudo()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 5

    const/4 v0, 0x0

    .line 675
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v1

    .line 677
    if-gez v1, :cond_0

    .line 678
    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 687
    :goto_0
    return-object v0

    .line 681
    :cond_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/s1243808733/android/dx/dex/code/RopTranslator;

    invoke-static {v2}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->access$L1000001(Lcom/s1243808733/android/dx/dex/code/RopTranslator;)Lcom/s1243808733/android/dx/rop/code/RopMethod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getInsns()Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v1

    .line 684
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v2

    const/16 v3, 0x38

    if-eq v2, v3, :cond_1

    .line 685
    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    goto :goto_0

    .line 687
    :cond_1
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Insn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/code/DalvInsn;",
            ")V"
        }
    .end annotation

    .line 850
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->output:Lcom/s1243808733/android/dx/dex/code/OutputCollector;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->add(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    return-void
.end method

.method protected addOutputSuffix(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/code/DalvInsn;",
            ")V"
        }
    .end annotation

    .line 869
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->output:Lcom/s1243808733/android/dx/dex/code/OutputCollector;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->addSuffix(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    return-void
.end method

.method protected getPrevNonSpecialInsn()Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 5

    .line 854
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->output:Lcom/s1243808733/android/dx/dex/code/OutputCollector;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    .line 860
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    :cond_0
    return-object v0

    .line 855
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->output:Lcom/s1243808733/android/dx/dex/code/OutputCollector;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->get(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v0

    .line 856
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/Dop;->getOpcode()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 854
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public setBlock(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/dex/code/CodeAddress;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/BasicBlock;",
            "Lcom/s1243808733/android/dx/dex/code/CodeAddress;",
            ")V"
        }
    .end annotation

    .line 525
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    .line 526
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    return-void
.end method

.method public visitFillArrayDataInsn(Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 820
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v0

    .line 821
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v1

    .line 822
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;->getInitValues()Ljava/util/ArrayList;

    move-result-object v2

    .line 823
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v3

    .line 825
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 826
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 828
    :cond_0
    new-instance v3, Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-direct {v3, v0}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)V

    .line 829
    new-instance v4, Lcom/s1243808733/android/dx/dex/code/ArrayData;

    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-direct {v4, v0, v5, v2, v1}, Lcom/s1243808733/android/dx/dex/code/ArrayData;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/dex/code/CodeAddress;Ljava/util/ArrayList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 832
    new-instance v1, Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    sget-object v2, Lcom/s1243808733/android/dx/dex/code/Dops;->FILL_ARRAY_DATA:Lcom/s1243808733/android/dx/dex/code/Dop;

    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->access$1000018(Lcom/s1243808733/android/dx/rop/code/Insn;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v5

    invoke-direct {v1, v2, v0, v5, v3}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/dex/code/CodeAddress;)V

    .line 836
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 837
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 839
    new-instance v1, Lcom/s1243808733/android/dx/dex/code/OddSpacer;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/dex/code/OddSpacer;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)V

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 840
    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 841
    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    return-void
.end method

.method public visitInvokePolymorphicInsn(Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 694
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v0

    .line 695
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/RopToDop;->dopFor(Lcom/s1243808733/android/dx/rop/code/Insn;)Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v1

    .line 696
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v2

    .line 698
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    .line 699
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Expected BRANCH_THROW got "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_0
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Rop;->isCallLike()Z

    move-result v2

    if-nez v2, :cond_1

    .line 701
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected call-like operation"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 706
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    .line 707
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getPolymorphicMethod()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object v3

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getCallSiteProto()Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    move-result-object v4

    .line 711
    new-instance v5, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/s1243808733/android/dx/rop/cst/Constant;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v4, v6, v3

    invoke-direct {v5, v1, v0, v2, v6}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;[Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 713
    invoke-virtual {p0, v5}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    return-void
.end method

.method public visitPlainCstInsn(Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 581
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    .line 582
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/RopToDop;->dopFor(Lcom/s1243808733/android/dx/rop/code/Insn;)Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v2

    .line 583
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    .line 584
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v3

    .line 585
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    .line 588
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_0
    const/4 v0, 0x3

    if-ne v3, v0, :cond_2

    .line 592
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/s1243808733/android/dx/dex/code/RopTranslator;

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->access$L1000010(Lcom/s1243808733/android/dx/dex/code/RopTranslator;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 598
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 599
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v0

    .line 601
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/s1243808733/android/dx/dex/code/RopTranslator;

    invoke-static {v4}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->access$L1000007(Lcom/s1243808733/android/dx/dex/code/RopTranslator;)I

    move-result v4

    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/s1243808733/android/dx/dex/code/RopTranslator;

    invoke-static {v5}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->access$L1000009(Lcom/s1243808733/android/dx/dex/code/RopTranslator;)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v0, v4

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 604
    new-instance v4, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    invoke-static {v3, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-direct {v4, v2, v1, v0}, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 606
    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 612
    :cond_1
    :goto_0
    return-void

    .line 610
    :cond_2
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->access$1000018(Lcom/s1243808733/android/dx/rop/code/Insn;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 611
    new-instance v3, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v4

    invoke-direct {v3, v2, v1, v0, v4}, Lcom/s1243808733/android/dx/dex/code/CstInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 612
    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    goto :goto_0
.end method

.method public visitPlainInsn(Lcom/s1243808733/android/dx/rop/code/PlainInsn;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/PlainInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 532
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    .line 533
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    const/16 v2, 0x36

    if-ne v1, v2, :cond_1

    .line 575
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 540
    :cond_1
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    const/16 v2, 0x38

    if-eq v1, v2, :cond_0

    .line 545
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    .line 546
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/RopToDop;->dopFor(Lcom/s1243808733/android/dx/rop/code/Insn;)Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v2

    .line 547
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 571
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :pswitch_2
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->access$1000018(Lcom/s1243808733/android/dx/rop/code/Insn;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 575
    :goto_1
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    goto :goto_0

    .line 565
    :pswitch_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v3

    .line 566
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->access$1000018(Lcom/s1243808733/android/dx/rop/code/Insn;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/s1243808733/android/dx/dex/code/RopTranslator;

    invoke-static {v5}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->access$L1000004(Lcom/s1243808733/android/dx/dex/code/RopTranslator;)Lcom/s1243808733/android/dx/dex/code/BlockAddresses;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    move-result-object v3

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/dex/code/CodeAddress;)V

    goto :goto_1

    .line 547
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public visitSwitchInsn(Lcom/s1243808733/android/dx/rop/code/SwitchInsn;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/SwitchInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 619
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/SwitchInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    .line 620
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/SwitchInsn;->getCases()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v2

    .line 621
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v3

    .line 622
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v4

    .line 623
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    .line 624
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v5

    .line 634
    add-int/lit8 v0, v0, -0x1

    if-ne v4, v0, :cond_0

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    if-eq v5, v0, :cond_1

    .line 636
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 639
    :cond_1
    new-array v5, v4, [Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    .line 641
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_2

    .line 646
    new-instance v3, Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-direct {v3, v1}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)V

    .line 648
    new-instance v4, Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v0

    const/4 v6, 0x1

    invoke-direct {v4, v0, v6}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Z)V

    .line 650
    new-instance v6, Lcom/s1243808733/android/dx/dex/code/SwitchData;

    invoke-direct {v6, v1, v4, v2, v5}, Lcom/s1243808733/android/dx/dex/code/SwitchData;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/dex/code/CodeAddress;Lcom/s1243808733/android/dx/util/IntList;[Lcom/s1243808733/android/dx/dex/code/CodeAddress;)V

    .line 652
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/dex/code/SwitchData;->isPacked()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->PACKED_SWITCH:Lcom/s1243808733/android/dx/dex/code/Dop;

    .line 654
    :goto_1
    new-instance v2, Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->access$1000018(Lcom/s1243808733/android/dx/rop/code/Insn;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v5

    invoke-direct {v2, v0, v1, v5, v3}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/dex/code/CodeAddress;)V

    .line 657
    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 658
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 660
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/OddSpacer;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/dex/code/OddSpacer;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)V

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 661
    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 662
    invoke-virtual {p0, v6}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    return-void

    .line 642
    :cond_2
    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v6

    .line 643
    iget-object v7, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/s1243808733/android/dx/dex/code/RopTranslator;

    invoke-static {v7}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->access$L1000004(Lcom/s1243808733/android/dx/dex/code/RopTranslator;)Lcom/s1243808733/android/dx/dex/code/BlockAddresses;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    move-result-object v6

    aput-object v6, v5, v0

    .line 641
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 652
    :cond_3
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->SPARSE_SWITCH:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_1
.end method

.method public visitThrowingCstInsn(Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 719
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v3

    .line 720
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/RopToDop;->dopFor(Lcom/s1243808733/android/dx/rop/code/Insn;)Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v4

    .line 721
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v5

    .line 722
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v6

    .line 724
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    const/4 v7, 0x6

    if-eq v0, v7, :cond_0

    .line 725
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Expected BRANCH_THROW got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 730
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/Rop;->isCallLike()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 732
    new-instance v1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-direct {v1, v4, v3, v0, v6}, Lcom/s1243808733/android/dx/dex/code/CstInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 734
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 786
    :goto_0
    return-void

    .line 736
    :cond_1
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->getNextMoveResultPseudo()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    .line 738
    invoke-static {p1, v7}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->access$1000019(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v8

    .line 739
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/Dop;->hasResult()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/16 v9, 0x2b

    if-eq v0, v9, :cond_3

    move v0, v1

    .line 744
    :goto_1
    if-nez v0, :cond_4

    if-eqz v7, :cond_5

    .line 745
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Insn with result/move-result-pseudo mismatch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v2

    .line 739
    goto :goto_1

    .line 744
    :cond_4
    if-eqz v7, :cond_2

    .line 750
    :cond_5
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/16 v5, 0x29

    if-ne v0, v5, :cond_8

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/Dop;->getOpcode()I

    move-result v0

    const/16 v5, 0x23

    if-eq v0, v5, :cond_8

    .line 757
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    invoke-direct {v0, v4, v3, v8}, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 772
    :goto_2
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->getPrevNonSpecialInsn()Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v5

    .line 773
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/Dop;->getOpcode()I

    move-result v4

    const/16 v6, 0x20

    if-ne v4, v6, :cond_7

    if-eqz v5, :cond_7

    .line 774
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/Dop;->getOpcode()I

    move-result v4

    .line 775
    const/4 v6, 0x7

    if-eq v4, v6, :cond_6

    const/16 v6, 0x8

    if-eq v4, v6, :cond_6

    const/16 v6, 0x9

    if-ne v4, v6, :cond_7

    .line 778
    :cond_6
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v4

    if-lez v4, :cond_7

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v4

    if-le v4, v2, :cond_7

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 781
    new-instance v1, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    sget-object v2, Lcom/s1243808733/android/dx/dex/code/Dops;->NOP:Lcom/s1243808733/android/dx/dex/code/Dop;

    sget-object v4, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v2, v3, v4}, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 782
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 786
    :cond_7
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    goto/16 :goto_0

    .line 763
    :cond_8
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-direct {v0, v4, v3, v8, v6}, Lcom/s1243808733/android/dx/dex/code/CstInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    goto :goto_2
.end method

.method public visitThrowingInsn(Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 793
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v0

    .line 794
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/RopToDop;->dopFor(Lcom/s1243808733/android/dx/rop/code/Insn;)Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v1

    .line 795
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v2

    .line 796
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 799
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_0
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->getNextMoveResultPseudo()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 804
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/Dop;->hasResult()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_3

    .line 805
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Insn with result/move-result-pseudo mismatch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    :cond_2
    if-eqz v2, :cond_1

    .line 809
    :cond_3
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 811
    new-instance v3, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    invoke-static {p1, v2}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->access$1000019(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    invoke-direct {v3, v1, v0, v2}, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 814
    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    return-void
.end method
