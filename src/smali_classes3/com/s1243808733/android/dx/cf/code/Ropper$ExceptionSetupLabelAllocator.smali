.class Lcom/s1243808733/android/dx/cf/code/Ropper$ExceptionSetupLabelAllocator;
.super Lcom/s1243808733/android/dx/cf/code/Ropper$LabelAllocator;
.source "Ropper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/cf/code/Ropper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExceptionSetupLabelAllocator"
.end annotation


# instance fields
.field maxSetupLabel:I

.field private final this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/cf/code/Ropper;)V
    .registers 4

    .line 1460
    invoke-static {p1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->access$L1000011(Lcom/s1243808733/android/dx/cf/code/Ropper;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/Ropper$LabelAllocator;-><init>(I)V

    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$ExceptionSetupLabelAllocator;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    .line 1461
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$ExceptionSetupLabelAllocator;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    invoke-static {v0}, Lcom/s1243808733/android/dx/cf/code/Ropper;->access$L1000011(Lcom/s1243808733/android/dx/cf/code/Ropper;)I

    move-result v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$ExceptionSetupLabelAllocator;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    invoke-static {v1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->access$L1000008(Lcom/s1243808733/android/dx/cf/code/Ropper;)Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getCatches()Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$ExceptionSetupLabelAllocator;->maxSetupLabel:I

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/cf/code/Ropper$ExceptionSetupLabelAllocator;)Lcom/s1243808733/android/dx/cf/code/Ropper;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$ExceptionSetupLabelAllocator;->this$0:Lcom/s1243808733/android/dx/cf/code/Ropper;

    return-object v0
.end method


# virtual methods
.method getNextLabel()I
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1466
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$LabelAllocator;->nextAvailableLabel:I

    iget v1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$ExceptionSetupLabelAllocator;->maxSetupLabel:I

    if-lt v0, v1, :cond_0

    .line 1467
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1469
    :cond_0
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$LabelAllocator;->nextAvailableLabel:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/s1243808733/android/dx/cf/code/Ropper$LabelAllocator;->nextAvailableLabel:I

    return v0
.end method
