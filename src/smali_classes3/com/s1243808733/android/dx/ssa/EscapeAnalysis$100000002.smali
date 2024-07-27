.class Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000002;
.super Ljava/lang/Object;
.source "EscapeAnalysis.java"

# interfaces
.implements Lcom/s1243808733/android/dx/ssa/SsaBasicBlock$Visitor;


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000002;->this$0:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000002;)Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000002;->this$0:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;

    return-object v0
.end method


# virtual methods
.method public visitBlock(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
    .registers 4
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

    .line 695
    new-instance v0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000002$100000001;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000002$100000001;-><init>(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000002;)V

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->forEachInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;)V

    return-void
.end method
