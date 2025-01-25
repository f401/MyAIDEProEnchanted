.class public Landroidx/arch/core/internal/SafeIterableMap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator;,
        Landroidx/arch/core/internal/SafeIterableMap$DescendingIterator;,
        Landroidx/arch/core/internal/SafeIterableMap$Entry;,
        Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;,
        Landroidx/arch/core/internal/SafeIterableMap$ListIterator;,
        Landroidx/arch/core/internal/SafeIterableMap$SupportRemove;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private mEnd:Landroidx/arch/core/internal/SafeIterableMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/internal/SafeIterableMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private mIterators:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroidx/arch/core/internal/SafeIterableMap$SupportRemove",
            "<TK;TV;>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I

.field mStart:Landroidx/arch/core/internal/SafeIterableMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/internal/SafeIterableMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/arch/core/internal/SafeIterableMap;->mSize:I

    return-void
.end method


# virtual methods
.method public descendingIterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap$DescendingIterator;

    iget-object v1, p0, Landroidx/arch/core/internal/SafeIterableMap;->mEnd:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iget-object v2, p0, Landroidx/arch/core/internal/SafeIterableMap;->mStart:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    invoke-direct {v0, v1, v2}, Landroidx/arch/core/internal/SafeIterableMap$DescendingIterator;-><init>(Landroidx/arch/core/internal/SafeIterableMap$Entry;Landroidx/arch/core/internal/SafeIterableMap$Entry;)V

    iget-object v1, p0, Landroidx/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public eldest()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap;->mStart:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_6

    move v2, v1

    :cond_5
    :goto_5
    return v2

    :cond_6
    instance-of v0, p1, Landroidx/arch/core/internal/SafeIterableMap;

    if-eqz v0, :cond_5

    check-cast p1, Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {p0}, Landroidx/arch/core/internal/SafeIterableMap;->size()I

    move-result v0

    invoke-virtual {p1}, Landroidx/arch/core/internal/SafeIterableMap;->size()I

    move-result v3

    if-ne v0, v3, :cond_5

    invoke-virtual {p0}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_38

    if-nez v5, :cond_5

    :cond_38
    if-eqz v0, :cond_1e

    invoke-interface {v0, v5}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_5

    :cond_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_50

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_50

    move v0, v1

    :goto_4e
    move v2, v0

    goto :goto_5

    :cond_50
    move v0, v2

    goto :goto_4e
.end method

.method protected get(Ljava/lang/Object;)Landroidx/arch/core/internal/SafeIterableMap$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Landroidx/arch/core/internal/SafeIterableMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap;->mStart:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    :goto_2
    if-eqz v0, :cond_c

    iget-object v1, v0, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    return-object v0

    :cond_d
    iget-object v0, v0, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    goto :goto_2
.end method

.method public hashCode()I
    .registers 4

    invoke-virtual {p0}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_6

    :cond_19
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator;

    iget-object v1, p0, Landroidx/arch/core/internal/SafeIterableMap;->mStart:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iget-object v2, p0, Landroidx/arch/core/internal/SafeIterableMap;->mEnd:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    invoke-direct {v0, v1, v2}, Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator;-><init>(Landroidx/arch/core/internal/SafeIterableMap$Entry;Landroidx/arch/core/internal/SafeIterableMap$Entry;)V

    iget-object v1, p0, Landroidx/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public iteratorWithAdditions()Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/arch/core/internal/SafeIterableMap",
            "<TK;TV;>.IteratorWithAdditions;"
        }
    .end annotation

    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    invoke-direct {v0, p0}, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;-><init>(Landroidx/arch/core/internal/SafeIterableMap;)V

    iget-object v1, p0, Landroidx/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public newest()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap;->mEnd:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    return-object v0
.end method

.method protected put(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/arch/core/internal/SafeIterableMap$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Landroidx/arch/core/internal/SafeIterableMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap$Entry;

    invoke-direct {v0, p1, p2}, Landroidx/arch/core/internal/SafeIterableMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v1, p0, Landroidx/arch/core/internal/SafeIterableMap;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/arch/core/internal/SafeIterableMap;->mSize:I

    iget-object v1, p0, Landroidx/arch/core/internal/SafeIterableMap;->mEnd:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    if-nez v1, :cond_14

    iput-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap;->mStart:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iput-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap;->mEnd:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    :goto_13
    return-object v0

    :cond_14
    iput-object v0, v1, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iget-object v1, p0, Landroidx/arch/core/internal/SafeIterableMap;->mEnd:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iput-object v1, v0, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iput-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap;->mEnd:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    goto :goto_13
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/arch/core/internal/SafeIterableMap;->get(Ljava/lang/Object;)Landroidx/arch/core/internal/SafeIterableMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mValue:Ljava/lang/Object;

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0, p1, p2}, Landroidx/arch/core/internal/SafeIterableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/arch/core/internal/SafeIterableMap$Entry;

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroidx/arch/core/internal/SafeIterableMap;->get(Ljava/lang/Object;)Landroidx/arch/core/internal/SafeIterableMap$Entry;

    move-result-object v2

    if-nez v2, :cond_9

    move-object v0, v1

    :goto_8
    return-object v0

    :cond_9
    iget v0, p0, Landroidx/arch/core/internal/SafeIterableMap;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/arch/core/internal/SafeIterableMap;->mSize:I

    iget-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/arch/core/internal/SafeIterableMap$SupportRemove;

    invoke-interface {v0, v2}, Landroidx/arch/core/internal/SafeIterableMap$SupportRemove;->supportRemove(Landroidx/arch/core/internal/SafeIterableMap$Entry;)V

    goto :goto_21

    :cond_31
    iget-object v0, v2, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    if-eqz v0, :cond_4c

    iget-object v0, v2, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iget-object v3, v2, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iput-object v3, v0, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    :goto_3b
    iget-object v0, v2, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    if-eqz v0, :cond_51

    iget-object v0, v2, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iget-object v3, v2, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iput-object v3, v0, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    :goto_45
    iput-object v1, v2, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iput-object v1, v2, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iget-object v0, v2, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mValue:Ljava/lang/Object;

    goto :goto_8

    :cond_4c
    iget-object v0, v2, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iput-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap;->mStart:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    goto :goto_3b

    :cond_51
    iget-object v0, v2, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    iput-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap;->mEnd:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    goto :goto_45
.end method

.method public size()I
    .registers 2

    iget v0, p0, Landroidx/arch/core/internal/SafeIterableMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_2d
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
