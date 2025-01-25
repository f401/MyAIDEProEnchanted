.class Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader$1;
.super Ljava/lang/Object;
.source "LiteralOpUpgrader.java"

# interfaces
.implements Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;

.field final val$advice:Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader$1;->this$0:Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;

    iput-object p2, p0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader$1;->val$advice:Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
    .registers 2

    return-void
.end method

.method public visitNonMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
    .registers 9

    .line 98
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getOriginalRopInsn()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    .line 100
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 103
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader$1;->this$0:Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;

    invoke-static {v2, p1}, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->-$$Nest$mtryReplacingWithConstant(Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)Z

    move-result v2

    if-eqz v2, :cond_15

    return-void

    .line 105
    :cond_15
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1d

    return-void

    .line 110
    :cond_1d
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_5b

    .line 114
    invoke-virtual {v1, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->-$$Nest$smisConstIntZeroOrKnownNull(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_43

    .line 115
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader$1;->this$0:Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withoutFirst()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 116
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/code/RegOps;->flippedIfOpcode(I)I

    move-result v0

    .line 115
    invoke-static {v2, p1, v1, v0, v3}, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->-$$Nest$mreplacePlainInsn(Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    goto :goto_97

    .line 117
    :cond_43
    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->-$$Nest$smisConstIntZeroOrKnownNull(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 118
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader$1;->this$0:Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withoutLast()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 119
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    .line 118
    invoke-static {v2, p1, v1, v0, v3}, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;->-$$Nest$mreplacePlainInsn(Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader;Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    goto :goto_97

    .line 121
    :cond_5b
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader$1;->val$advice:Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;

    .line 122
    invoke-virtual {v1, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    .line 121
    invoke-interface {v2, v0, v3, v6}, Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;->hasConstantOperation(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 123
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->upgradeToLiteral()V

    goto :goto_97

    .line 124
    :cond_6f
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->isCommutative()Z

    move-result v2

    if-eqz v2, :cond_97

    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/LiteralOpUpgrader$1;->val$advice:Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;

    .line 126
    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v1, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    .line 125
    invoke-interface {v2, v0, v3, v6}, Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;->hasConstantOperation(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 133
    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v1, v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 132
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 131
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->setNewSources(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 135
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->upgradeToLiteral()V

    :cond_97
    :goto_97
    return-void
.end method

.method public visitPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V
    .registers 2

    return-void
.end method
