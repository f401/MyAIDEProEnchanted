.class Lcom/s1243808733/android/dx/ssa/SsaMethod$100000000;
.super Ljava/lang/Object;
.source "SsaMethod.java"

# interfaces
.implements Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/ssa/SsaMethod;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod$100000000;->this$0:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/ssa/SsaMethod$100000000;)Lcom/s1243808733/android/dx/ssa/SsaMethod;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod$100000000;->this$0:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    return-object v0
.end method


# virtual methods
.method public visitMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod$100000000;->this$0:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->access$L1000009(Lcom/s1243808733/android/dx/ssa/SsaMethod;)[Lcom/s1243808733/android/dx/ssa/SsaInsn;

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 407
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 408
    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod$100000000;->this$0:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->access$L1000009(Lcom/s1243808733/android/dx/ssa/SsaMethod;)[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    aput-object p1, v0, v1

    :cond_0
    return-void
.end method

.method public visitPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/PhiInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaMethod$100000000;->this$0:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->access$L1000009(Lcom/s1243808733/android/dx/ssa/SsaMethod;)[Lcom/s1243808733/android/dx/ssa/SsaInsn;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method
