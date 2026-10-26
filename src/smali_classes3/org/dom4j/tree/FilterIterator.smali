.class public abstract Lorg/dom4j/tree/FilterIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private first:Z

.field private next:Ljava/lang/Object;

.field protected proxy:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/tree/FilterIterator;->first:Z

    iput-object p1, p0, Lorg/dom4j/tree/FilterIterator;->proxy:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected findNext()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/dom4j/tree/FilterIterator;->proxy:Ljava/util/Iterator;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/dom4j/tree/FilterIterator;->proxy:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/dom4j/tree/FilterIterator;->proxy:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/dom4j/tree/FilterIterator;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iput-object v0, p0, Lorg/dom4j/tree/FilterIterator;->proxy:Ljava/util/Iterator;

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/dom4j/tree/FilterIterator;->first:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/dom4j/tree/FilterIterator;->findNext()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/dom4j/tree/FilterIterator;->next:Ljava/lang/Object;

    iput-boolean v0, p0, Lorg/dom4j/tree/FilterIterator;->first:Z

    :cond_0
    iget-object v1, p0, Lorg/dom4j/tree/FilterIterator;->next:Ljava/lang/Object;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected abstract matches(Ljava/lang/Object;)Z
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/dom4j/tree/FilterIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/FilterIterator;->next:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/dom4j/tree/FilterIterator;->findNext()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/dom4j/tree/FilterIterator;->next:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
