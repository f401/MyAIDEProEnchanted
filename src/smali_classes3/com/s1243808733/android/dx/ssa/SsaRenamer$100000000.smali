.class Lcom/s1243808733/android/dx/ssa/SsaRenamer$100000000;
.super Ljava/lang/Object;
.source "SsaRenamer.java"

# interfaces
.implements Lcom/s1243808733/android/dx/ssa/SsaBasicBlock$Visitor;


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaRenamer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$100000000;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/ssa/SsaRenamer$100000000;)Lcom/s1243808733/android/dx/ssa/SsaRenamer;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$100000000;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    return-object v0
.end method


# virtual methods
.method public visitBlock(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 168
    new-instance v0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;

    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$100000000;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    invoke-direct {v0, v1, p1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;-><init>(Lcom/s1243808733/android/dx/ssa/SsaRenamer;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->process()V

    return-void
.end method
