.class public final Lcom/google/common/collect/ImmutableTable$Builder;
.super Ljava/lang/Object;
.source "ImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final cells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation
.end field

.field private columnComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TC;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private rowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TR;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableTable$Builder;->cells:Ljava/util/List;

    .line 143
    return-void
.end method


# virtual methods
.method public build()Lcom/google/common/collect/ImmutableTable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableTable",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/google/common/collect/ImmutableTable$Builder;->cells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 209
    if-eqz v0, :cond_25

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 215
    iget-object v0, p0, Lcom/google/common/collect/ImmutableTable$Builder;->cells:Ljava/util/List;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableTable$Builder;->rowComparator:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableTable$Builder;->columnComparator:Ljava/util/Comparator;

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableTable;->forCells(Ljava/util/List;Ljava/util/Comparator;Ljava/util/Comparator;)Lcom/google/common/collect/RegularImmutableTable;

    move-result-object v0

    :goto_15
    return-object v0

    .line 213
    :cond_16
    new-instance v1, Lcom/google/common/collect/SingletonImmutableTable;

    iget-object v0, p0, Lcom/google/common/collect/ImmutableTable$Builder;->cells:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Table$Cell;

    invoke-direct {v1, v0}, Lcom/google/common/collect/SingletonImmutableTable;-><init>(Lcom/google/common/collect/Table$Cell;)V

    move-object v0, v1

    goto :goto_15

    .line 211
    :cond_25
    invoke-static {}, Lcom/google/common/collect/ImmutableTable;->of()Lcom/google/common/collect/ImmutableTable;

    move-result-object v0

    goto :goto_15
.end method

.method public orderColumnsBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableTable$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TC;>;)",
            "Lcom/google/common/collect/ImmutableTable$Builder",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .line 155
    const-string v0, "columnComparator"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableTable$Builder;->columnComparator:Ljava/util/Comparator;

    .line 156
    return-object p0
.end method

.method public orderRowsBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableTable$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TR;>;)",
            "Lcom/google/common/collect/ImmutableTable$Builder",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .line 148
    const-string v0, "rowComparator"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableTable$Builder;->rowComparator:Ljava/util/Comparator;

    .line 149
    return-object p0
.end method

.method public put(Lcom/google/common/collect/Table$Cell;)Lcom/google/common/collect/ImmutableTable$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table$Cell",
            "<+TR;+TC;+TV;>;)",
            "Lcom/google/common/collect/ImmutableTable$Builder",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .line 175
    instance-of v0, p1, Lcom/google/common/collect/Tables$ImmutableCell;

    if-eqz v0, :cond_25

    .line 176
    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "row"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "column"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "value"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/google/common/collect/ImmutableTable$Builder;->cells:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :goto_24
    return-object p0

    .line 183
    :cond_25
    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/collect/ImmutableTable$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableTable$Builder;

    goto :goto_24
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableTable$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)",
            "Lcom/google/common/collect/ImmutableTable$Builder",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/google/common/collect/ImmutableTable$Builder;->cells:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/google/common/collect/ImmutableTable;->cellOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    return-object p0
.end method

.method public putAll(Lcom/google/common/collect/Table;)Lcom/google/common/collect/ImmutableTable$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table",
            "<+TR;+TC;+TV;>;)",
            "Lcom/google/common/collect/ImmutableTable$Builder",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .line 196
    invoke-interface {p1}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Table$Cell;

    .line 197
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableTable$Builder;->put(Lcom/google/common/collect/Table$Cell;)Lcom/google/common/collect/ImmutableTable$Builder;

    goto :goto_8

    .line 199
    :cond_18
    return-object p0
.end method
