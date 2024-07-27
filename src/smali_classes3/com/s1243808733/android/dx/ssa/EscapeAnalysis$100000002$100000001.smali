.class Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000002$100000001;
.super Ljava/lang/Object;
.source "EscapeAnalysis.java"

# interfaces
.implements Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000002;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000002;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000002$100000001;->this$0:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000002;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000002$100000001;)Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000002;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000002$100000001;->this$0:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000002;

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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 708
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000002$100000001;->this$0:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000002;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000002;->access$0(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000002;)Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->access$1000009(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

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

    return-void
.end method
