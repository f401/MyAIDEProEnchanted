.class Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$2;
.super Ljava/lang/Object;
.source "EscapeAnalysis.java"

# interfaces
.implements Lcom/s1243808733/android/dx/ssa/SsaBasicBlock$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;)V
    .registers 2

    .line 691
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$2;->this$0:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitBlock(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V
    .registers 3

    .line 695
    new-instance p2, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$2$1;

    invoke-direct {p2, p0}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$2$1;-><init>(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$2;)V

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->forEachInsn(Lcom/s1243808733/android/dx/ssa/SsaInsn$Visitor;)V

    return-void
.end method
