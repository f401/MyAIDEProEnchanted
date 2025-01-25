.class Lcom/s1243808733/android/dx/ssa/SsaRenamer$1;
.super Ljava/lang/Object;
.source "SsaRenamer.java"

# interfaces
.implements Lcom/s1243808733/android/dx/ssa/SsaBasicBlock$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/ssa/SsaRenamer;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaRenamer;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$1;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitBlock(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
    .registers 4

    .line 168
    new-instance p2, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$1;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    invoke-direct {p2, v0, p1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;-><init>(Lcom/s1243808733/android/dx/ssa/SsaRenamer;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->process()V

    return-void
.end method
