.class Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000000;
.super Lcom/s1243808733/android/dx/ssa/RegisterMapper;
.source "EscapeAnalysis.java"


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;

.field private final val$result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

.field private final val$source:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 4

    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/RegisterMapper;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000000;->this$0:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;

    iput-object p2, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000000;->val$result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    iput-object p3, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000000;->val$source:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000000;)Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000000;->this$0:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;

    return-object v0
.end method


# virtual methods
.method public getNewRegisterCount()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 667
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000000;->this$0:Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;->access$L1000000(Lcom/s1243808733/android/dx/ssa/EscapeAnalysis;)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    return v0
.end method

.method public map(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 672
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000000;->val$result:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 673
    iget-object p1, p0, Lcom/s1243808733/android/dx/ssa/EscapeAnalysis$100000000;->val$source:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 676
    :cond_0
    return-object p1
.end method
