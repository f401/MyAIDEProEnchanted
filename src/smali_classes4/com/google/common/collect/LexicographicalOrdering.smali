.class final Lcom/google/common/collect/LexicographicalOrdering;
.super Lcom/google/common/collect/Ordering;
.source "LexicographicalOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Ordering",
        "<",
        "Ljava/lang/Iterable",
        "<TT;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final elementOrder:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Ljava/util/Comparator;

    .line 32
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/lang/Iterable",
            "<TT;>;)I"
        }
    .end annotation

    .line 36
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 37
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 38
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_16

    .line 40
    const/4 v0, 0x1

    .line 50
    :goto_15
    return v0

    .line 42
    :cond_16
    iget-object v0, p0, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Ljava/util/Comparator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 43
    if-eqz v0, :cond_8

    goto :goto_15

    .line 47
    :cond_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 48
    const/4 v0, -0x1

    goto :goto_15

    .line 50
    :cond_2f
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 26
    check-cast p1, Ljava/lang/Iterable;

    check-cast p2, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/LexicographicalOrdering;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 55
    if-ne p1, p0, :cond_4

    .line 56
    const/4 v0, 0x1

    .line 62
    :goto_3
    return v0

    .line 58
    :cond_4
    instance-of v0, p1, Lcom/google/common/collect/LexicographicalOrdering;

    if-eqz v0, :cond_13

    .line 59
    check-cast p1, Lcom/google/common/collect/LexicographicalOrdering;

    .line 60
    iget-object v0, p0, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Ljava/util/Comparator;

    iget-object v1, p1, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 62
    :cond_13
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x7bb78cf5

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".lexicographical()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
