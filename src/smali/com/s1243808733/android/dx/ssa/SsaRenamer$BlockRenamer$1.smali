.class Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$1;
.super Ljava/lang/Object;
.source "SsaRenamer.java"

# interfaces
.implements Lcom/s1243808733/android/dx/ssa/PhiInsn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->updateSuccessorPhis()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;)V
    .registers 2

    .line 633
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$1;->this$1:Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V
    .registers 5

    .line 638
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getRopResultReg()I

    move-result v0

    .line 639
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$1;->this$1:Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;

    iget-object v1, v1, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->-$$Nest$misBelowThresholdRegister(Lcom/s1243808733/android/dx/ssa/SsaRenamer;I)Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    .line 652
    :cond_f
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$1;->this$1:Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;

    invoke-static {v1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->-$$Nest$fgetcurrentMapping(Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;)[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    aget-object v0, v1, v0

    .line 653
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$1;->this$1:Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;

    iget-object v1, v1, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->-$$Nest$misVersionZeroRegister(Lcom/s1243808733/android/dx/ssa/SsaRenamer;I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 654
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$1;->this$1:Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;

    invoke-static {v1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->-$$Nest$fgetblock(Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;)Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->addPhiOperand(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    :cond_2e
    return-void
.end method
