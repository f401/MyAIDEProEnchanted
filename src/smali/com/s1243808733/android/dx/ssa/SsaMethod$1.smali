.class Lcom/s1243808733/android/dx/ssa/SsaMethod$1;
.super Ljava/lang/Object;
.source "SsaMethod.java"

# interfaces
.implements Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/s1243808733/android/dx/ssa/SsaInsn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/ssa/SsaMethod;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 2

    .line 396
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod$1;->this$0:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
    .registers 4

    .line 399
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod$1;->this$0:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->-$$Nest$fgetdefinitionList(Lcom/s1243808733/android/dx/ssa/SsaMethod;)[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method

.method public visitNonMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
    .registers 4

    .line 407
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 409
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod$1;->this$0:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->-$$Nest$fgetdefinitionList(Lcom/s1243808733/android/dx/ssa/SsaMethod;)[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    aput-object p1, v0, v1

    :cond_16
    return-void
.end method

.method public visitPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V
    .registers 4

    .line 403
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod$1;->this$0:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->-$$Nest$fgetdefinitionList(Lcom/s1243808733/android/dx/ssa/SsaMethod;)[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method
