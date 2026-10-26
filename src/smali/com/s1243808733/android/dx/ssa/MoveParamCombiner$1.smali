.class Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1;
.super Ljava/lang/Object;
.source "MoveParamCombiner.java"

# interfaces
.implements Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;

.field final val$deletedInsns:Ljava/util/HashSet;

.field final val$paramSpecs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1;->this$0:Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;

    iput-object p2, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1;->val$paramSpecs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    iput-object p3, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1;->val$deletedInsns:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
    .locals 0

    return-void
.end method

.method public visitNonMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
    .locals 5

    .line 69
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1;->this$0:Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;

    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;->-$$Nest$mgetParamIndex(Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)I

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1;->val$paramSpecs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v2, v1, v0

    if-nez v2, :cond_2

    .line 76
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 80
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v1

    .line 81
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v0

    if-nez v1, :cond_3

    .line 102
    :goto_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1;->this$0:Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;

    invoke-static {v1}, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;->-$$Nest$fgetssaMeth(Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v1

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v1

    .line 103
    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->setResultLocal(Lcom/s1243808733/android/dx/rop/code/LocalItem;)V

    .line 109
    new-instance v4, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1$1;

    invoke-direct {v4, p0, v3, v2}, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1$1;-><init>(Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 127
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1;->this$0:Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;->-$$Nest$fgetssaMeth(Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v0

    .line 128
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object v2

    .line 131
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_5

    .line 132
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 133
    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->mapSourceRegisters(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 81
    :cond_3
    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_1

    .line 92
    :cond_4
    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_1

    .line 136
    :cond_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1;->val$deletedInsns:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public visitPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V
    .locals 0

    return-void
.end method
