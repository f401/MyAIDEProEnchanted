.class public Lorg/antlr/v4/runtime/misc/DoubleKeyMap;
.super Ljava/lang/Object;
.source "DoubleKeyMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key1:",
        "Ljava/lang/Object;",
        "Key2:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TKey1;",
            "Ljava/util/Map<",
            "TKey2;TValue;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->data:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey1;TKey2;)TValue;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 38
    :cond_c
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey1;)",
            "Ljava/util/Map<",
            "TKey2;TValue;>;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TKey1;>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey1;)",
            "Ljava/util/Set<",
            "TKey2;>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 59
    :cond_c
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey1;TKey2;TValue;)TValue;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_16

    .line 25
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 26
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->data:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    goto :goto_1a

    .line 29
    :cond_16
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 31
    :goto_1a
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public values(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey1;)",
            "Ljava/util/Collection<",
            "TValue;>;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/DoubleKeyMap;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 47
    :cond_c
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
