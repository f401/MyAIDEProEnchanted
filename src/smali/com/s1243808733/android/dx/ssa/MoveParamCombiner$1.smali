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
    .registers 4
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
    .registers 2

    return-void
.end method

.method public visitNonMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
    .registers 7

    .line 69
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    return-void

    .line 73
    :cond_c
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1;->this$0:Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;

    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;->-$$Nest$mgetParamIndex(Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)I

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1;->val$paramSpecs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v2, v1, v0

    if-nez v2, :cond_1f

    .line 76
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    aput-object p1, v1, v0

    goto :goto_75

    .line 79
    :cond_1f
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 80
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v1

    .line 81
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v3

    if-nez v1, :cond_2f

    move-object v1, v3

    goto :goto_38

    :cond_2f
    if-nez v3, :cond_32

    goto :goto_38

    .line 92
    :cond_32
    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 102
    :goto_38
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1;->this$0:Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;

    invoke-static {v3}, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;->-$$Nest$fgetssaMeth(Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v3

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v3

    .line 103
    invoke-virtual {v3, v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->setResultLocal(Lcom/s1243808733/android/dx/rop/code/LocalItem;)V

    .line 109
    new-instance v1, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1$1;

    invoke-direct {v1, p0, v0, v2}, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1$1;-><init>(Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 127
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1;->this$0:Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;

    invoke-static {v2}, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;->-$$Nest$fgetssaMeth(Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v2

    .line 128
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_62
    if-ltz v2, :cond_70

    .line 132
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 133
    invoke-virtual {v3, v1}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->mapSourceRegisters(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_62

    .line 136
    :cond_70
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1;->val$deletedInsns:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_75
    :goto_75
    return-void
.end method

.method public visitPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V
    .registers 2

    return-void
.end method
