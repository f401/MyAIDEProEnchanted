.class Lcom/s1243808733/android/dx/cf/code/Ropper$2;
.super Ljava/lang/Object;
.source "Ropper.java"

# interfaces
.implements Lcom/s1243808733/android/dx/rop/code/BasicBlock$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/cf/code/Ropper;->deleteUnreachableBlocks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

.field final val$reachableLabels:Lcom/s1243808733/android/dx/util/IntList;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/cf/code/Ropper;Lcom/s1243808733/android/dx/util/IntList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1412
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$2;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$2;->val$reachableLabels:Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitBlock(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)V
    .registers 3

    .line 1416
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$2;->val$reachableLabels:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    return-void
.end method
