.class public abstract Lcom/google/common/collect/AbstractSequentialIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "AbstractSequentialIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private nextOrNull:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/common/collect/AbstractSequentialIterator;->nextOrNull:Ljava/lang/Object;

    .line 52
    return-void
.end method


# virtual methods
.method protected abstract computeNext(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end method

.method public final hasNext()Z
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/google/common/collect/AbstractSequentialIterator;->nextOrNull:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractSequentialIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 73
    :try_start_6
    iget-object v0, p0, Lcom/google/common/collect/AbstractSequentialIterator;->nextOrNull:Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_11

    .line 75
    iget-object v1, p0, Lcom/google/common/collect/AbstractSequentialIterator;->nextOrNull:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/AbstractSequentialIterator;->computeNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/AbstractSequentialIterator;->nextOrNull:Ljava/lang/Object;

    .line 73
    return-object v0

    .line 75
    :catchall_11
    move-exception v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractSequentialIterator;->nextOrNull:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/AbstractSequentialIterator;->computeNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/AbstractSequentialIterator;->nextOrNull:Ljava/lang/Object;

    .line 76
    throw v0

    .line 70
    :cond_1b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
