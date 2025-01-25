.class abstract Lcom/google/common/base/AbstractIterator;
.super Ljava/lang/Object;
.source "AbstractIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/AbstractIterator$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private state:Lcom/google/common/base/AbstractIterator$State;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->NOT_READY:Lcom/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    .line 33
    return-void
.end method

.method private tryToComputeNext()Z
    .registers 3

    .line 67
    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->FAILED:Lcom/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    .line 68
    invoke-virtual {p0}, Lcom/google/common/base/AbstractIterator;->computeNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->next:Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    sget-object v1, Lcom/google/common/base/AbstractIterator$State;->DONE:Lcom/google/common/base/AbstractIterator$State;

    if-eq v0, v1, :cond_16

    .line 70
    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->READY:Lcom/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    .line 71
    const/4 v0, 0x1

    .line 73
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method protected abstract computeNext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final endOfData()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 49
    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->DONE:Lcom/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 55
    iget-object v0, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    sget-object v3, Lcom/google/common/base/AbstractIterator$State;->FAILED:Lcom/google/common/base/AbstractIterator$State;

    if-eq v0, v3, :cond_20

    move v0, v1

    :goto_9
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 56
    sget-object v0, Lcom/google/common/base/AbstractIterator$1;->$SwitchMap$com$google$common$base$AbstractIterator$State:[I

    iget-object v3, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    invoke-virtual {v3}, Lcom/google/common/base/AbstractIterator$State;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v1, :cond_22

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    .line 63
    invoke-direct {p0}, Lcom/google/common/base/AbstractIterator;->tryToComputeNext()Z

    move-result v2

    :cond_1f
    :goto_1f
    return v2

    :cond_20
    move v0, v2

    .line 55
    goto :goto_9

    :cond_22
    move v2, v1

    .line 58
    goto :goto_1f
.end method

.method public final next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/google/common/base/AbstractIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 81
    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->NOT_READY:Lcom/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->state:Lcom/google/common/base/AbstractIterator$State;

    .line 82
    iget-object v0, p0, Lcom/google/common/base/AbstractIterator;->next:Ljava/lang/Object;

    .line 83
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/base/AbstractIterator;->next:Ljava/lang/Object;

    .line 84
    return-object v0

    .line 79
    :cond_10
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .registers 2

    .line 89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
