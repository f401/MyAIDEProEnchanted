.class final Landroidx/collection/MapCollections$ArrayIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/collection/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ArrayIterator"
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
.field mCanRemove:Z

.field mIndex:I

.field final mOffset:I

.field mSize:I

.field final this$0:Landroidx/collection/MapCollections;


# direct methods
.method constructor <init>(Landroidx/collection/MapCollections;I)V
    .registers 4

    iput-object p1, p0, Landroidx/collection/MapCollections$ArrayIterator;->this$0:Landroidx/collection/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/collection/MapCollections$ArrayIterator;->mCanRemove:Z

    iput p2, p0, Landroidx/collection/MapCollections$ArrayIterator;->mOffset:I

    invoke-virtual {p1}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v0

    iput v0, p0, Landroidx/collection/MapCollections$ArrayIterator;->mSize:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Landroidx/collection/MapCollections$ArrayIterator;->mIndex:I

    iget v1, p0, Landroidx/collection/MapCollections$ArrayIterator;->mSize:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/collection/MapCollections$ArrayIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroidx/collection/MapCollections$ArrayIterator;->this$0:Landroidx/collection/MapCollections;

    iget v1, p0, Landroidx/collection/MapCollections$ArrayIterator;->mIndex:I

    iget v2, p0, Landroidx/collection/MapCollections$ArrayIterator;->mOffset:I

    invoke-virtual {v0, v1, v2}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/collection/MapCollections$ArrayIterator;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/collection/MapCollections$ArrayIterator;->mIndex:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/collection/MapCollections$ArrayIterator;->mCanRemove:Z

    return-object v0

    :cond_1a
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    iget-boolean v0, p0, Landroidx/collection/MapCollections$ArrayIterator;->mCanRemove:Z

    if-eqz v0, :cond_19

    iget v0, p0, Landroidx/collection/MapCollections$ArrayIterator;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/collection/MapCollections$ArrayIterator;->mIndex:I

    iget v1, p0, Landroidx/collection/MapCollections$ArrayIterator;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/collection/MapCollections$ArrayIterator;->mSize:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/collection/MapCollections$ArrayIterator;->mCanRemove:Z

    iget-object v1, p0, Landroidx/collection/MapCollections$ArrayIterator;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {v1, v0}, Landroidx/collection/MapCollections;->colRemoveAt(I)V

    return-void

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
