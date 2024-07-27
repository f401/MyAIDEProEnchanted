.class Lcom/s1243808733/android/dx/util/BitIntSet$100000000;
.super Ljava/lang/Object;
.source "BitIntSet.java"

# interfaces
.implements Lcom/s1243808733/android/dx/util/IntIterator;


# instance fields
.field private idx:I

.field private final this$0:Lcom/s1243808733/android/dx/util/BitIntSet;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/util/BitIntSet;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/util/BitIntSet$100000000;->this$0:Lcom/s1243808733/android/dx/util/BitIntSet;

    iget-object v0, p0, Lcom/s1243808733/android/dx/util/BitIntSet$100000000;->this$0:Lcom/s1243808733/android/dx/util/BitIntSet;

    iget-object v0, v0, Lcom/s1243808733/android/dx/util/BitIntSet;->bits:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/util/Bits;->findFirst([II)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/util/BitIntSet$100000000;->idx:I

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/util/BitIntSet$100000000;)Lcom/s1243808733/android/dx/util/BitIntSet;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/util/BitIntSet$100000000;->this$0:Lcom/s1243808733/android/dx/util/BitIntSet;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 113
    iget v0, p0, Lcom/s1243808733/android/dx/util/BitIntSet$100000000;->idx:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public next()I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 119
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/BitIntSet$100000000;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 123
    :cond_0
    iget v0, p0, Lcom/s1243808733/android/dx/util/BitIntSet$100000000;->idx:I

    .line 125
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/BitIntSet$100000000;->this$0:Lcom/s1243808733/android/dx/util/BitIntSet;

    iget-object v1, v1, Lcom/s1243808733/android/dx/util/BitIntSet;->bits:[I

    iget v2, p0, Lcom/s1243808733/android/dx/util/BitIntSet$100000000;->idx:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/util/Bits;->findFirst([II)I

    move-result v1

    iput v1, p0, Lcom/s1243808733/android/dx/util/BitIntSet$100000000;->idx:I

    .line 127
    return v0
.end method
