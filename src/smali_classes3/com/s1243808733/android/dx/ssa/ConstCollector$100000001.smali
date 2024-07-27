.class Lcom/s1243808733/android/dx/ssa/ConstCollector$100000001;
.super Lcom/s1243808733/android/dx/ssa/RegisterMapper;
.source "ConstCollector.java"


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/ssa/ConstCollector;

.field private final val$newReg:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

.field private final val$origReg:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/ConstCollector;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 4

    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/RegisterMapper;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector$100000001;->this$0:Lcom/s1243808733/android/dx/ssa/ConstCollector;

    iput-object p2, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector$100000001;->val$origReg:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    iput-object p3, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector$100000001;->val$newReg:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/ssa/ConstCollector$100000001;)Lcom/s1243808733/android/dx/ssa/ConstCollector;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector$100000001;->this$0:Lcom/s1243808733/android/dx/ssa/ConstCollector;

    return-object v0
.end method


# virtual methods
.method public getNewRegisterCount()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector$100000001;->this$0:Lcom/s1243808733/android/dx/ssa/ConstCollector;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/ConstCollector;->access$L1000003(Lcom/s1243808733/android/dx/ssa/ConstCollector;)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    return v0
.end method

.method public map(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 382
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector$100000001;->val$origReg:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 383
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/ConstCollector$100000001;->val$newReg:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/s1243808733/android/dx/rop/code/LocalItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withLocalItem(Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    .line 387
    :cond_0
    return-object p1
.end method
