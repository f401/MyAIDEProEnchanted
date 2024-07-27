.class Lcom/s1243808733/android/dx/cf/code/Ropper$100000000;
.super Ljava/lang/Object;
.source "Ropper.java"

# interfaces
.implements Lcom/s1243808733/android/dx/rop/code/BasicBlock$Visitor;


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

.field private final val$reachableSubroutineCallerLabels:Lcom/s1243808733/android/dx/util/IntList;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/cf/code/Ropper;Lcom/s1243808733/android/dx/util/IntList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$100000000;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$100000000;->val$reachableSubroutineCallerLabels:Lcom/s1243808733/android/dx/util/IntList;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/cf/code/Ropper$100000000;)Lcom/s1243808733/android/dx/cf/code/Ropper;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$100000000;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    return-object v0
.end method


# virtual methods
.method public visitBlock(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/BasicBlock;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1358
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$100000000;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->access$1000051(Lcom/s1243808733/android/dx/cf/code/Ropper;Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$100000000;->val$reachableSubroutineCallerLabels:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    :cond_0
    return-void
.end method
