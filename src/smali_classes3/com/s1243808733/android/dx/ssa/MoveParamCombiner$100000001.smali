.class Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001;
.super Ljava/lang/Object;
.source "MoveParamCombiner.java"

# interfaces
.implements Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;

.field private final val$deletedInsns:Ljava/util/HashSet;

.field private final val$paramSpecs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Ljava/util/HashSet;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001;->this$0:Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;

    iput-object p2, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001;->val$paramSpecs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    iput-object p3, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001;->val$deletedInsns:Ljava/util/HashSet;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001;)Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001;->this$0:Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;

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
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

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
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001;->this$0:Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;

    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;->access$1000008(Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)I

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001;->val$paramSpecs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 76
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001;->val$paramSpecs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_0

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001;->val$paramSpecs:[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    aget-object v2, v1, v0

    .line 79
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 80
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v1

    .line 81
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v0

    .line 82
    if-nez v1, :cond_3

    .line 102
    :goto_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001;->this$0:Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;

    invoke-static {v1}, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;->access$L1000000(Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v1

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->setResultLocal(Lcom/s1243808733/android/dx/rop/code/LocalItem;)V

    .line 109
    new-instance v4, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001$100000000;

    invoke-direct {v4, p0, v3, v2}, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001$100000000;-><init>(Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    .line 127
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001;->this$0:Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;->access$L1000000(Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v0

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
    if-gez v1, :cond_5

    .line 136
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001;->val$deletedInsns:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :cond_3
    if-nez v0, :cond_4

    move-object v0, v1

    .line 91
    goto :goto_1

    .line 92
    :cond_4
    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 93
    goto :goto_1

    .line 132
    :cond_5
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 133
    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->mapSourceRegisters(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)V

    .line 131
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2
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
