.class Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$100000001;
.super Ljava/lang/Object;
.source "SsaRenamer.java"

# interfaces
.implements Lcom/s1243808733/android/dx/ssa/PhiInsn$Visitor;


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$100000001;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$100000001;)Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$100000001;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;

    return-object v0
.end method


# virtual methods
.method public visitPhiInsn(Lcom/s1243808733/android/dx/ssa/PhiInsn;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/PhiInsn;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 636
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->getRopResultReg()I

    move-result v0

    .line 639
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$100000001;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;

    invoke-static {v1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->access$0(Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;)Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->access$1000012(Lcom/s1243808733/android/dx/ssa/SsaRenamer;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$100000001;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;

    invoke-static {v1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->access$L1000016(Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;)[Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    aget-object v0, v1, v0

    .line 653
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$100000001;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;

    invoke-static {v1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->access$0(Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;)Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/ssa/SsaRenamer;->access$1000013(Lcom/s1243808733/android/dx/ssa/SsaRenamer;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 654
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer$100000001;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;

    invoke-static {v1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->access$L1000015(Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;)Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/s1243808733/android/dx/ssa/PhiInsn;->addPhiOperand(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    goto :goto_0
.end method
