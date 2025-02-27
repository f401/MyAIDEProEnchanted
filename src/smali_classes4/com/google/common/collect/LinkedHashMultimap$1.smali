.class Lcom/google/common/collect/LinkedHashMultimap$1;
.super Ljava/lang/Object;
.source "LinkedHashMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedHashMultimap;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field nextEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$ValueEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final this$0:Lcom/google/common/collect/LinkedHashMultimap;

.field toRemove:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$ValueEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedHashMultimap;)V
    .registers 3

    .line 506
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->this$0:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->this$0:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultimap;->access$300(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->successorInMultimap:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->nextEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 512
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->nextEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->this$0:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-static {v1}, Lcom/google/common/collect/LinkedHashMultimap;->access$300(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object v1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 506
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .line 517
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 520
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->nextEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 521
    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->toRemove:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 522
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->nextEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iget-object v1, v1, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->successorInMultimap:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iput-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->nextEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 523
    return-object v0

    .line 518
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 4

    .line 528
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->toRemove:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 529
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->this$0:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->toRemove:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    invoke-virtual {v1}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->toRemove:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    invoke-virtual {v2}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/LinkedHashMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$1;->toRemove:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 531
    return-void

    .line 528
    :cond_1d
    const/4 v0, 0x0

    goto :goto_5
.end method
