.class public Lorg/antlr/v4/runtime/misc/Array2DHashSet$SetIterator;
.super Ljava/lang/Object;
.source "Array2DHashSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/misc/Array2DHashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final data:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field nextIndex:I

.field removed:Z

.field final this$0:Lorg/antlr/v4/runtime/misc/Array2DHashSet;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/misc/Array2DHashSet;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 474
    iput-object p1, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet$SetIterator;->this$0:Lorg/antlr/v4/runtime/misc/Array2DHashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    const/4 p1, 0x0

    iput p1, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet$SetIterator;->nextIndex:I

    .line 472
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet$SetIterator;->removed:Z

    .line 475
    iput-object p2, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet$SetIterator;->data:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 480
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet$SetIterator;->nextIndex:I

    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet$SetIterator;->data:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 485
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/Array2DHashSet$SetIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 489
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet$SetIterator;->removed:Z

    .line 490
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet$SetIterator;->data:[Ljava/lang/Object;

    iget v1, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet$SetIterator;->nextIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet$SetIterator;->nextIndex:I

    aget-object v0, v0, v1

    return-object v0

    .line 486
    :cond_14
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 5

    .line 495
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet$SetIterator;->removed:Z

    if-nez v0, :cond_14

    .line 499
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet$SetIterator;->this$0:Lorg/antlr/v4/runtime/misc/Array2DHashSet;

    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet$SetIterator;->data:[Ljava/lang/Object;

    iget v2, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet$SetIterator;->nextIndex:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;->remove(Ljava/lang/Object;)Z

    .line 500
    iput-boolean v3, p0, Lorg/antlr/v4/runtime/misc/Array2DHashSet$SetIterator;->removed:Z

    return-void

    .line 496
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
