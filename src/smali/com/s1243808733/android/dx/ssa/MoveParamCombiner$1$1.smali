.class Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1$1;
.super Lcom/s1243808733/android/dx/ssa/RegisterMapper;
.source "MoveParamCombiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1;->visitNonMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1;

.field final val$specA:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

.field final val$specB:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 4

    .line 109
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1$1;->this$1:Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1;

    iput-object p2, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1$1;->val$specB:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    iput-object p3, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1$1;->val$specA:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/RegisterMapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getNewRegisterCount()I
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1$1;->this$1:Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1;

    iget-object v0, v0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1;->this$0:Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;->-$$Nest$fgetssaMeth(Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    return v0
.end method

.method public map(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 4

    .line 119
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1$1;->val$specB:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 120
    iget-object p1, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$1$1;->val$specA:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    :cond_e
    return-object p1
.end method
