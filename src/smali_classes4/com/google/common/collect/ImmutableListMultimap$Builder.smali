.class public final Lcom/google/common/collect/ImmutableListMultimap$Builder;
.super Lcom/google/common/collect/ImmutableMultimap$Builder;
.source "ImmutableListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultimap$Builder",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 137
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultimap$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/common/collect/ImmutableListMultimap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .line 219
    invoke-super {p0}, Lcom/google/common/collect/ImmutableMultimap$Builder;->build()Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableListMultimap;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/common/collect/ImmutableMultimap;
    .registers 2

    .line 132
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->build()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public orderKeysBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableListMultimap$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Lcom/google/common/collect/ImmutableListMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .line 200
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$Builder;->orderKeysBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    .line 201
    return-object p0
.end method

.method public bridge synthetic orderKeysBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .registers 3

    .line 132
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->orderKeysBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public orderValuesBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableListMultimap$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TV;>;)",
            "Lcom/google/common/collect/ImmutableListMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .line 212
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$Builder;->orderValuesBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    .line 213
    return-object p0
.end method

.method public bridge synthetic orderValuesBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .registers 3

    .line 132
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->orderValuesBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/ImmutableListMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .line 142
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    .line 143
    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableListMultimap$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableListMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .line 154
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$Builder;->put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    .line 155
    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .registers 4

    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .registers 3

    .line 132
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/ImmutableListMultimap$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableListMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .line 188
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$Builder;->putAll(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    .line 189
    return-object p0
.end method

.method public putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableListMultimap$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;>;)",
            "Lcom/google/common/collect/ImmutableListMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .line 167
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    .line 168
    return-object p0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableListMultimap$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Lcom/google/common/collect/ImmutableListMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .line 174
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    .line 175
    return-object p0
.end method

.method public varargs putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)",
            "Lcom/google/common/collect/ImmutableListMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .line 181
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    .line 182
    return-object p0
.end method

.method public bridge synthetic putAll(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .registers 3

    .line 132
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->putAll(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .registers 3

    .line 132
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .registers 4

    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .registers 4

    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    return-object v0
.end method
