.class public Lorg/codehaus/groovy/util/ArrayIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private DW:I

.field private FH:I

.field private final j6:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Lorg/codehaus/groovy/util/ArrayIterator;->FH:I

    iget v1, p0, Lorg/codehaus/groovy/util/ArrayIterator;->DW:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/groovy/util/ArrayIterator;->j6:[Ljava/lang/Object;

    iget v1, p0, Lorg/codehaus/groovy/util/ArrayIterator;->FH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/groovy/util/ArrayIterator;->FH:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove not supported for arrays"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
