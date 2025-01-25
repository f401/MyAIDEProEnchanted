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

.field final this$0:Lcom/s1243808733/android/dx/dex/code/RopTranslator;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/code/RopTranslator;Lcom/s1243808733/android/dx/dex/code/OutputCollector;)V
    .registers 3

    .line 513
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/s1243808733/android/dx/dex/code/RopTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->output:Lcom/s1243808733/android/dx/dex/code/OutputCollector;

    return-void
.end method

.method private getNextMoveResultPseudo()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 5

    .line 675
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_a

    return-object v1

    .line 681
    :cond_a
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/s1243808733/android/dx/dex/code/RopTranslator;

    invoke-static {v2}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->-$$Nest$fgetmethod(Lcom/s1243808733/android/dx/dex/code/RopTranslator;)Lcom/s1243808733/android/dx/rop/code/RopMethod;

    move-result-object v2

    .line 682
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getInsns()Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    .line 684
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v2

    const/16 v3, 0x38

    if-eq v2, v3, :cond_2e

    return-object v1

    .line 687
    :cond_2e
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .registers 3

    .line 850
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->output:Lcom/s1243808733/android/dx/dex/code/OutputCollector;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->add(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    return-void
.end method

.method protected addOutputSuffix(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
    .registers 3

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

    :goto_8
    if-ltz v0, :cond_1f

    .line 855
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->output:Lcom/s1243808733/android/dx/dex/code/OutputCollector;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/dex/code/OutputCollector;->get(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v1

    .line 856
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/Dop;->getOpcode()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1c

    return-object v1

    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBlock(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/dex/code/CodeAddress;)V
    .registers 3

    .line 525
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    .line 526
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    return-void
.end method

.method public visitFillArrayDataInsn(Lcom/s1243808733/android/dx/rop/code/FillArrayDataInsn;)V
    .registers 8

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

    if-ne v3, v4, :cond_45

    .line 828
    new-instance v3, Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-direct {v3, v0}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)V

    .line 829
    new-instance v4, Lcom/s1243808733/android/dx/dex/code/ArrayData;

    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-direct {v4, v0, v5, v2, v1}, Lcom/s1243808733/android/dx/dex/code/ArrayData;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/dex/code/CodeAddress;Ljava/util/ArrayList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 832
    sget-object v1, Lcom/s1243808733/android/dx/dex/code/Dops;->FILL_ARRAY_DATA:Lcom/s1243808733/android/dx/dex/code/Dop;

    .line 833
    new-instance v2, Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->-$$Nest$smgetRegs(Lcom/s1243808733/android/dx/rop/code/Insn;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    invoke-direct {v2, v1, v0, p1, v3}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/dex/code/CodeAddress;)V

    .line 836
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 837
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 839
    new-instance p1, Lcom/s1243808733/android/dx/dex/code/OddSpacer;

    invoke-direct {p1, v0}, Lcom/s1243808733/android/dx/dex/code/OddSpacer;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)V

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 840
    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 841
    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    return-void

    .line 826
    :cond_45
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitInvokePolymorphicInsn(Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;)V
    .registers 9

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

    if-ne v3, v4, :cond_45

    .line 700
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Rop;->isCallLike()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 704
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 706
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    .line 707
    nop

    .line 708
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getPolymorphicMethod()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object v3

    .line 709
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/InvokePolymorphicInsn;->getCallSiteProto()Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    move-result-object p1

    .line 711
    new-instance v4, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/s1243808733/android/dx/rop/cst/Constant;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object p1, v5, v3

    invoke-direct {v4, v1, v0, v2, v5}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;[Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 713
    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    return-void

    .line 701
    :cond_3d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Expected call-like operation"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 699
    :cond_45
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Expected BRANCH_THROW got "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitPlainCstInsn(Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;)V
    .registers 8

    .line 581
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v0

    .line 582
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/RopToDop;->dopFor(Lcom/s1243808733/android/dx/rop/code/Insn;)Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v1

    .line 583
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v2

    .line 584
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v3

    .line 587
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_65

    const/4 v2, 0x3

    if-ne v3, v2, :cond_54

    .line 592
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/s1243808733/android/dx/dex/code/RopTranslator;

    invoke-static {v2}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->-$$Nest$fgetparamsAreInOrder(Lcom/s1243808733/android/dx/dex/code/RopTranslator;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 598
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 600
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result p1

    .line 601
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/s1243808733/android/dx/dex/code/RopTranslator;

    invoke-static {v3}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->-$$Nest$fgetregCount(Lcom/s1243808733/android/dx/dex/code/RopTranslator;)I

    move-result v3

    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/s1243808733/android/dx/dex/code/RopTranslator;

    invoke-static {v4}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->-$$Nest$fgetparamSize(Lcom/s1243808733/android/dx/dex/code/RopTranslator;)I

    move-result v4

    .line 603
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v5

    .line 602
    sub-int/2addr v3, v4

    add-int/2addr v3, p1

    invoke-static {v3, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->make(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    .line 604
    nop

    .line 605
    new-instance v3, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    invoke-static {v2, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    invoke-direct {v3, v1, v0, p1}, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 606
    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    goto :goto_64

    .line 610
    :cond_54
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->-$$Nest$smgetRegs(Lcom/s1243808733/android/dx/rop/code/Insn;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    .line 611
    new-instance v3, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p1

    invoke-direct {v3, v1, v0, v2, p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 612
    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    :cond_64
    :goto_64
    return-void

    .line 588
    :cond_65
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitPlainInsn(Lcom/s1243808733/android/dx/rop/code/PlainInsn;)V
    .registers 7

    .line 532
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    .line 533
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    const/16 v2, 0x36

    if-ne v1, v2, :cond_d

    return-void

    .line 540
    :cond_d
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_16

    return-void

    .line 545
    :cond_16
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    .line 546
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/RopToDop;->dopFor(Lcom/s1243808733/android/dx/rop/code/Insn;)Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v2

    .line 549
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_59

    const/4 v4, 0x2

    if-eq v0, v4, :cond_59

    const/4 v4, 0x3

    if-eq v0, v4, :cond_58

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3a

    const/4 v3, 0x6

    if-ne v0, v3, :cond_32

    goto :goto_59

    .line 571
    :cond_32
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 565
    :cond_3a
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    .line 566
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->-$$Nest$smgetRegs(Lcom/s1243808733/android/dx/rop/code/Insn;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/s1243808733/android/dx/dex/code/RopTranslator;

    invoke-static {v3}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->-$$Nest$fgetaddresses(Lcom/s1243808733/android/dx/dex/code/RopTranslator;)Lcom/s1243808733/android/dx/dex/code/BlockAddresses;

    move-result-object v3

    .line 567
    new-instance v4, Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    move-result-object v0

    invoke-direct {v4, v2, v1, p1, v0}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/dex/code/CodeAddress;)V

    goto :goto_62

    :cond_58
    return-void

    .line 553
    :cond_59
    :goto_59
    new-instance v4, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->-$$Nest$smgetRegs(Lcom/s1243808733/android/dx/rop/code/Insn;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    invoke-direct {v4, v2, v1, p1}, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 575
    :goto_62
    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    return-void
.end method

.method public visitSwitchInsn(Lcom/s1243808733/android/dx/rop/code/SwitchInsn;)V
    .registers 11

    .line 619
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/SwitchInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v0

    .line 620
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/SwitchInsn;->getCases()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v1

    .line 621
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v2

    .line 622
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v3

    .line 623
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v4

    .line 624
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    if-ne v3, v4, :cond_7d

    .line 635
    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v4

    if-ne v5, v4, :cond_7d

    .line 639
    new-array v4, v3, [Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    const/4 v5, 0x0

    :goto_29
    if-ge v5, v3, :cond_3e

    .line 642
    invoke-virtual {v2, v5}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v7

    .line 643
    iget-object v8, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/s1243808733/android/dx/dex/code/RopTranslator;

    invoke-static {v8}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->-$$Nest$fgetaddresses(Lcom/s1243808733/android/dx/dex/code/RopTranslator;)Lcom/s1243808733/android/dx/dex/code/BlockAddresses;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/s1243808733/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    move-result-object v7

    aput-object v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 646
    :cond_3e
    new-instance v2, Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-direct {v2, v0}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)V

    .line 648
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    .line 649
    new-instance v5, Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v3

    invoke-direct {v5, v3, v6}, Lcom/s1243808733/android/dx/dex/code/CodeAddress;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Z)V

    .line 650
    new-instance v3, Lcom/s1243808733/android/dx/dex/code/SwitchData;

    invoke-direct {v3, v0, v5, v1, v4}, Lcom/s1243808733/android/dx/dex/code/SwitchData;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/dex/code/CodeAddress;Lcom/s1243808733/android/dx/util/IntList;[Lcom/s1243808733/android/dx/dex/code/CodeAddress;)V

    .line 652
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/code/SwitchData;->isPacked()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 653
    sget-object v1, Lcom/s1243808733/android/dx/dex/code/Dops;->PACKED_SWITCH:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_5e

    :cond_5c
    sget-object v1, Lcom/s1243808733/android/dx/dex/code/Dops;->SPARSE_SWITCH:Lcom/s1243808733/android/dx/dex/code/Dop;

    .line 654
    :goto_5e
    nop

    .line 655
    new-instance v4, Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->-$$Nest$smgetRegs(Lcom/s1243808733/android/dx/rop/code/Insn;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    invoke-direct {v4, v1, v0, p1, v2}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/dex/code/CodeAddress;)V

    .line 657
    invoke-virtual {p0, v5}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 658
    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 660
    new-instance p1, Lcom/s1243808733/android/dx/dex/code/OddSpacer;

    invoke-direct {p1, v0}, Lcom/s1243808733/android/dx/dex/code/OddSpacer;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;)V

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 661
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 662
    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    return-void

    .line 636
    :cond_7d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_86

    :goto_85
    throw p1

    :goto_86
    goto :goto_85
.end method

.method public visitThrowingCstInsn(Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;)V
    .registers 12

    .line 719
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v0

    .line 720
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/RopToDop;->dopFor(Lcom/s1243808733/android/dx/rop/code/Insn;)Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v1

    .line 721
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v2

    .line 722
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v3

    .line 724
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_e1

    .line 728
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 730
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Rop;->isCallLike()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 731
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    .line 732
    new-instance v2, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-direct {v2, v1, v0, p1, v3}, Lcom/s1243808733/android/dx/dex/code/CstInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 734
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    goto/16 :goto_cc

    .line 736
    :cond_30
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->getNextMoveResultPseudo()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 738
    invoke-static {p1, v4}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->-$$Nest$smgetRegs(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v5

    .line 741
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/Dop;->hasResult()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_4b

    .line 742
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v6

    const/16 v9, 0x2b

    if-ne v6, v9, :cond_49

    goto :goto_4b

    :cond_49
    const/4 v6, 0x0

    goto :goto_4c

    :cond_4b
    :goto_4b
    const/4 v6, 0x1

    :goto_4c
    if-eqz v4, :cond_50

    const/4 v4, 0x1

    goto :goto_51

    :cond_50
    const/4 v4, 0x0

    :goto_51
    if-ne v6, v4, :cond_cd

    .line 750
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result p1

    const/16 v2, 0x29

    if-ne p1, v2, :cond_69

    .line 751
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/Dop;->getOpcode()I

    move-result p1

    const/16 v2, 0x23

    if-eq p1, v2, :cond_69

    .line 757
    new-instance p1, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    invoke-direct {p1, v1, v0, v5}, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    goto :goto_6e

    .line 763
    :cond_69
    new-instance p1, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-direct {p1, v1, v0, v5, v3}, Lcom/s1243808733/android/dx/dex/code/CstInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 772
    :goto_6e
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->getPrevNonSpecialInsn()Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v2

    .line 773
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/Dop;->getOpcode()I

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_c9

    if-eqz v2, :cond_c9

    .line 774
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/Dop;->getOpcode()I

    move-result v1

    const/4 v3, 0x7

    if-eq v1, v3, :cond_8f

    const/16 v3, 0x8

    if-eq v1, v3, :cond_8f

    const/16 v3, 0x9

    if-ne v1, v3, :cond_c9

    .line 778
    :cond_8f
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    if-lez v1, :cond_c9

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    if-le v1, v8, :cond_c9

    .line 779
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    .line 780
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    if-ne v1, v2, :cond_c9

    .line 781
    new-instance v1, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    sget-object v2, Lcom/s1243808733/android/dx/dex/code/Dops;->NOP:Lcom/s1243808733/android/dx/dex/code/Dop;

    sget-object v3, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v2, v0, v3}, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 782
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 786
    :cond_c9
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    :goto_cc
    return-void

    .line 745
    :cond_cd
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Insn with result/move-result-pseudo mismatch "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 725
    :cond_e1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Expected BRANCH_THROW got "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitThrowingInsn(Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;)V
    .registers 7

    .line 793
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v0

    .line 794
    invoke-static {p1}, Lcom/s1243808733/android/dx/dex/code/RopToDop;->dopFor(Lcom/s1243808733/android/dx/rop/code/Insn;)Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v1

    .line 795
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v2

    .line 798
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_49

    .line 802
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->getNextMoveResultPseudo()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 804
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/Dop;->hasResult()Z

    move-result v3

    if-eqz v2, :cond_1f

    const/4 v4, 0x1

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    :goto_20
    if-ne v3, v4, :cond_35

    .line 809
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/s1243808733/android/dx/dex/code/CodeAddress;

    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    .line 811
    nop

    .line 812
    new-instance v3, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    invoke-static {p1, v2}, Lcom/s1243808733/android/dx/dex/code/RopTranslator;->-$$Nest$smgetRegs(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    invoke-direct {v3, v1, v0, p1}, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 814
    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V

    return-void

    .line 805
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Insn with result/move-result-pseudo mismatch"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 799
    :cond_49
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
