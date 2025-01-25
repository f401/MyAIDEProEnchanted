.class final Lcom/google/common/collect/Iterators$3;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterators;->consumingForArray([Ljava/lang/Object;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field index:I

.field final val$elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .registers 3

    .line 452
    iput-object p1, p0, Lcom/google/common/collect/Iterators$3;->val$elements:[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 453
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/Iterators$3;->index:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 457
    iget v0, p0, Lcom/google/common/collect/Iterators$3;->index:I

    iget-object v1, p0, Lcom/google/common/collect/Iterators$3;->val$elements:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public next()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 462
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$3;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 465
    iget-object v0, p0, Lcom/google/common/collect/Iterators$3;->val$elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/Iterators$3;->index:I

    aget-object v2, v0, v1

    .line 466
    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 467
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/google/common/collect/Iterators$3;->index:I

    .line 468
    return-object v2

    .line 463
    :cond_14
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
