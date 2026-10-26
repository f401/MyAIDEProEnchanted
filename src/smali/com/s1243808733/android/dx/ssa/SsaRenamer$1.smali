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
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$1;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitBlock(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
    .locals 2

    .line 168
    new-instance v0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;

    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/SsaRenamer$1;->this$0:Lcom/s1243808733/android/dx/ssa/SsaRenamer;

    invoke-direct {v0, v1, p1}, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;-><init>(Lcom/s1243808733/android/dx/ssa/SsaRenamer;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaRenamer$BlockRenamer;->process()V

    return-void
.end method
