.class Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$100000003;
.super Ljava/lang/Object;
.source "FirstFitLocalCombiningAllocator.java"

# interfaces
.implements Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$100000003;->this$0:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$100000003;)Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$100000003;->this$0:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    return-object v0
.end method

.method private processInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            ")V"
        }
    .end annotation

    .line 732
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getLocalAssignment()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 735
    if-eqz v1, :cond_1

    .line 736
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v2

    .line 738
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$100000003;->this$0:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->access$L1000004(Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 741
    if-nez v0, :cond_0

    .line 742
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 743
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$100000003;->this$0:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    invoke-static {v3}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->access$L1000004(Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    :cond_1
    instance-of v0, p1, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    if-eqz v0, :cond_4

    .line 750
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/16 v1, 0x38

    if-ne v0, v1, :cond_3

    .line 752
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$100000003;->this$0:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->access$L1000005(Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast p1, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    :cond_2
    :goto_0
    return-void

    .line 753
    :cond_3
    invoke-static {}, Lcom/s1243808733/android/dx/ssa/Optimizer;->getAdvice()Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;->requiresSourcesInOrder(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 756
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$100000003;->this$0:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->access$L1000006(Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast p1, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 758
    :cond_4
    instance-of v0, p1, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    if-eqz v0, :cond_2

    .line 759
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$100000003;->this$0:Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->access$L1000007(Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast p1, Lcom/s1243808733/android/dx/ssa/PhiInsn;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public visitMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 703
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$100000003;->processInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    return-void
.end method

.method public visitNonMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 715
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$100000003;->processInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    return-void
.end method

.method public visitPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/PhiInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 709
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/back/FirstFitLocalCombiningAllocator$100000003;->processInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    return-void
.end method
