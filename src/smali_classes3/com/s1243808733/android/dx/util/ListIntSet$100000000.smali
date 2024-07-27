.class Lcom/s1243808733/android/dx/util/ListIntSet$100000000;
.super Ljava/lang/Object;
.source "ListIntSet.java"

# interfaces
.implements Lcom/s1243808733/android/dx/util/IntIterator;


# instance fields
.field private idx:I

.field private final this$0:Lcom/s1243808733/android/dx/util/ListIntSet;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/util/ListIntSet;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/util/ListIntSet$100000000;->this$0:Lcom/s1243808733/android/dx/util/ListIntSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet$100000000;->idx:I

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/util/ListIntSet$100000000;)Lcom/s1243808733/android/dx/util/ListIntSet;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet$100000000;->this$0:Lcom/s1243808733/android/dx/util/ListIntSet;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 121
    iget v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet$100000000;->idx:I

    iget-object v1, p0, Lcom/s1243808733/android/dx/util/ListIntSet$100000000;->this$0:Lcom/s1243808733/android/dx/util/ListIntSet;

    iget-object v1, v1, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

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

    .line 127
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/ListIntSet$100000000;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/ListIntSet$100000000;->this$0:Lcom/s1243808733/android/dx/util/ListIntSet;

    iget-object v0, v0, Lcom/s1243808733/android/dx/util/ListIntSet;->ints:Lcom/s1243808733/android/dx/util/IntList;

    iget v1, p0, Lcom/s1243808733/android/dx/util/ListIntSet$100000000;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/s1243808733/android/dx/util/ListIntSet$100000000;->idx:I

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    return v0
.end method
