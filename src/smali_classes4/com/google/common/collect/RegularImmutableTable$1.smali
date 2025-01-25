.class final Lcom/google/common/collect/RegularImmutableTable$1;
.super Ljava/lang/Object;
.source "RegularImmutableTable.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularImmutableTable;->forCells(Ljava/util/List;Ljava/util/Comparator;Ljava/util/Comparator;)Lcom/google/common/collect/RegularImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final val$columnComparator:Ljava/util/Comparator;

.field final val$rowComparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .registers 3

    .line 111
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$1;->val$rowComparator:Ljava/util/Comparator;

    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableTable$1;->val$columnComparator:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/common/collect/Table$Cell;Lcom/google/common/collect/Table$Cell;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 114
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$1;->val$rowComparator:Ljava/util/Comparator;

    if-nez v1, :cond_a

    move v1, v0

    .line 118
    :goto_6
    if-eqz v1, :cond_17

    move v0, v1

    .line 121
    :cond_9
    :goto_9
    return v0

    .line 117
    :cond_a
    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    goto :goto_6

    .line 121
    :cond_17
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$1;->val$columnComparator:Ljava/util/Comparator;

    if-eqz v1, :cond_9

    .line 123
    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_9
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 111
    check-cast p1, Lcom/google/common/collect/Table$Cell;

    check-cast p2, Lcom/google/common/collect/Table$Cell;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableTable$1;->compare(Lcom/google/common/collect/Table$Cell;Lcom/google/common/collect/Table$Cell;)I

    move-result v0

    return v0
.end method
