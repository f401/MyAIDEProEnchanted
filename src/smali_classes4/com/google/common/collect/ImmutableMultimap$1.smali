.class Lcom/google/common/collect/ImmutableMultimap$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMultimap;->entryIterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final asMapItr:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+",
            "Ljava/util/Map$Entry",
            "<TK;+",
            "Lcom/google/common/collect/ImmutableCollection",
            "<TV;>;>;>;"
        }
    .end annotation
.end field

.field currentKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final this$0:Lcom/google/common/collect/ImmutableMultimap;

.field valueItr:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultimap;)V
    .registers 3

    .line 560
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$1;->this$0:Lcom/google/common/collect/ImmutableMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 561
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$1;->this$0:Lcom/google/common/collect/ImmutableMultimap;

    iget-object v0, v0, Lcom/google/common/collect/ImmutableMultimap;->map:Lcom/google/common/collect/ImmutableMap;

    .line 562
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$1;->asMapItr:Ljava/util/Iterator;

    .line 563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$1;->currentKey:Ljava/lang/Object;

    .line 564
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$1;->valueItr:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 568
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$1;->valueItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$1;->asMapItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 560
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap$1;->next()Ljava/util/Map$Entry;

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

    .line 573
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$1;->valueItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_22

    .line 574
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$1;->asMapItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 575
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$1;->currentKey:Ljava/lang/Object;

    .line 576
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$1;->valueItr:Ljava/util/Iterator;

    .line 578
    :cond_22
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$1;->currentKey:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$1;->valueItr:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
