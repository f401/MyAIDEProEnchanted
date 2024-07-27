.class Lcom/s1243808733/android/dx/cf/code/Ropper$100000001;
.super Ljava/lang/Object;
.source "Ropper.java"

# interfaces
.implements Lcom/s1243808733/android/dx/rop/code/BasicBlock$Visitor;


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

.field private final val$reachableLabels:Lcom/s1243808733/android/dx/util/IntList;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/cf/code/Ropper;Lcom/s1243808733/android/dx/util/IntList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$100000001;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$100000001;->val$reachableLabels:Lcom/s1243808733/android/dx/util/IntList;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/cf/code/Ropper$100000001;)Lcom/s1243808733/android/dx/cf/code/Ropper;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$100000001;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

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

    .line 1416
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$100000001;->val$reachableLabels:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    return-void
.end method
