.class final Lcom/google/common/collect/Multisets$MultisetIteratorImpl;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MultisetIteratorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private canRemove:Z

.field private currentEntry:Lcom/google/common/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private final entryIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private laterCount:I

.field private final multiset:Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation
.end field

.field private totalCount:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multiset;Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;)V"
        }
    .end annotation

    .line 1058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1059
    iput-object p1, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->multiset:Lcom/google/common/collect/Multiset;

    .line 1060
    iput-object p2, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->entryIterator:Ljava/util/Iterator;

    .line 1061
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 1065
    iget v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->laterCount:I

    if-gtz v0, :cond_c

    iget-object v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1070
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1073
    iget v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->laterCount:I

    if-nez v0, :cond_1c

    .line 1074
    iget-object v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    iput-object v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->currentEntry:Lcom/google/common/collect/Multiset$Entry;

    .line 1075
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->laterCount:I

    iput v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->totalCount:I

    .line 1077
    :cond_1c
    iget v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->laterCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->laterCount:I

    .line 1078
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->canRemove:Z

    .line 1079
    iget-object v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->currentEntry:Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1071
    :cond_2c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    .line 1084
    iget-boolean v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->canRemove:Z

    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 1085
    iget v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->totalCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 1086
    iget-object v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1090
    :goto_f
    iget v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->totalCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->totalCount:I

    .line 1091
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->canRemove:Z

    .line 1092
    return-void

    .line 1088
    :cond_19
    iget-object v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->multiset:Lcom/google/common/collect/Multiset;

    iget-object v1, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->currentEntry:Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;)Z

    goto :goto_f
.end method
