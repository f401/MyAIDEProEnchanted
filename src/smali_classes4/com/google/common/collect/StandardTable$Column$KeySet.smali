.class Lcom/google/common/collect/StandardTable$Column$KeySet;
.super Lcom/google/common/collect/Maps$KeySet;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable$Column;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$KeySet",
        "<TR;TV;>;"
    }
.end annotation


# instance fields
.field final this$1:Lcom/google/common/collect/StandardTable$Column;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$Column;)V
    .registers 2

    .line 544
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Column$KeySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    .line 545
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    .line 546
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 4

    .line 550
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$KeySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$Column;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column$KeySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/StandardTable;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    .line 555
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$KeySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$Column;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column$KeySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/StandardTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$KeySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Maps;->keyPredicateOnEntries(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/StandardTable$Column;->removeFromColumnIf(Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method
