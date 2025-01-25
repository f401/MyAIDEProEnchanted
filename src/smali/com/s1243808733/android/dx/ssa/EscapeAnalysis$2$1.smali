.class Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$2$1;
.super Ljava/lang/Object;
.source "EscapeAnalysis.java"

# interfaces
.implements Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$2;->visitBlock(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$2;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$2;)V
    .registers 2

    .line 695
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$2$1;->this$1:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
    .registers 2

    return-void
.end method

.method public visitNonMoveInsn(Lcom/s1243808733/android/dx/ssa/NormalSsaInsn;)V
    .registers 3

    .line 708
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$2$1;->this$1:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$2;

    iget-object v0, v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$2;->this$0:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;

    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->-$$Nest$mprocessInsn(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;Lcom/s1243808733/android/dx/ssa/SsaInsn;)V

    return-void
.end method

.method public visitPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V
    .registers 2

    return-void
.end method
