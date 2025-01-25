.class Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;
.super Ljava/lang/Object;
.source "FirstFitLocalCombiningAllocator.java"

# interfaces
.implements Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->analyzeInstructions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)V
    .registers 2

    .line 699
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;->this$0:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private processInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V
    .registers 6

    .line 733
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getLocalAssignment()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 736
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v1

    .line 738
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;->this$0:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    invoke-static {v2}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->-$$Nest$fgetlocalVariables(Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/Map;

    move-result-object v2

    .line 739
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_26

    .line 742
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 743
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;->this$0:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    invoke-static {v3}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->-$$Nest$fgetlocalVariables(Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    :cond_26
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    :cond_29
    instance-of v0, p1, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    if-eqz v0, :cond_67

    .line 750
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/16 v1, 0x38

    if-ne v0, v1, :cond_45

    .line 752
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;->this$0:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->-$$Nest$fgetmoveResultPseudoInsns(Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast p1, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_76

    .line 753
    :cond_45
    invoke-static {}, Lcom/s1243808733/android/dx/ssa/Optimizer;->getAdvice()Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;

    move-result-object v0

    .line 754
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    .line 755
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    .line 753
    invoke-interface {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;->requiresSourcesInOrder(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 756
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;->this$0:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->-$$Nest$fgetinvokeRangeInsns(Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast p1, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_76

    .line 758
    :cond_67
    instance-of v0, p1, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    if-eqz v0, :cond_76

    .line 759
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;->this$0:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->-$$Nest$fgetphiInsns(Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast p1, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_76
    :goto_76
    return-void
.end method


# virtual methods
.method public visitMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
    .registers 2

    .line 703
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;->processInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    return-void
.end method

.method public visitNonMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
    .registers 2

    .line 715
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;->processInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    return-void
.end method

.method public visitPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V
    .registers 2

    .line 709
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;->processInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    return-void
.end method
