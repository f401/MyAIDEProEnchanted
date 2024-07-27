.class Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001$100000000;
.super Lcom/s1243808733/android/dx/ssa/RegisterMapper;
.source "MoveParamCombiner.java"


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001;

.field private final val$specA:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

.field private final val$specB:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 4

    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/RegisterMapper;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001$100000000;->this$0:Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001;

    iput-object p2, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001$100000000;->val$specB:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    iput-object p3, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001$100000000;->val$specA:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001$100000000;)Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001$100000000;->this$0:Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001;

    return-object v0
.end method


# virtual methods
.method public getNewRegisterCount()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001$100000000;->this$0:Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001;->access$0(Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001;)Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;->access$L1000000(Lcom/s1243808733/android/dx/ssa/MoveParamCombiner;)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    return v0
.end method

.method public map(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 119
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001$100000000;->val$specB:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/s1243808733/android/dx/ssa/MoveParamCombiner$100000001$100000000;->val$specA:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 123
    :cond_0
    return-object p1
.end method
