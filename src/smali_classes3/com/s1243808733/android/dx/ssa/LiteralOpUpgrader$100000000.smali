.class Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader$100000000;
.super Ljava/lang/Object;
.source "LiteralOpUpgrader.java"

# interfaces
.implements Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;

.field private final val$advice:Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader$100000000;->this$0:Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;

    iput-object p2, p0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader$100000000;->val$advice:Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader$100000000;)Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader$100000000;->this$0:Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;

    return-object v0
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

    return-void
.end method

.method public visitNonMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 98
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    .line 100
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    .line 103
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader$100000000;->this$0:Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;

    invoke-static {v3, p1}, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->access$1000007(Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 110
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 114
    invoke-virtual {v2, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->access$1000002(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader$100000000;->this$0:Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withoutFirst()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/code/RegOps;->flippedIfOpcode(I)I

    move-result v1

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-static {v3, p1, v2, v1, v0}, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->access$1000008(Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {v2, v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->access$1000002(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader$100000000;->this$0:Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withoutLast()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-static {v3, p1, v2, v1, v0}, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->access$1000008(Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    goto :goto_0

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader$100000000;->val$advice:Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;

    invoke-virtual {v2, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v2, v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-interface {v0, v1, v3, v4}, Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;->hasConstantOperation(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->upgradeToLiteral()V

    goto :goto_0

    .line 124
    :cond_4
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Rop;->isCommutative()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader$100000000;->val$advice:Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;

    invoke-virtual {v2, v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v2, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-interface {v0, v1, v3, v4}, Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;->hasConstantOperation(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v2, v6}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v2, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->setNewSources(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 135
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->upgradeToLiteral()V

    goto/16 :goto_0
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

    return-void
.end method
