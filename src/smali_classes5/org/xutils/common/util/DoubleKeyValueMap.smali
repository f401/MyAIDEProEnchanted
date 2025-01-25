.class public Lorg/xutils/common/util/DoubleKeyValueMap;
.super Ljava/lang/Object;
.source "DoubleKeyValueMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K1:",
        "Ljava/lang/Object;",
        "K2:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK1;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK2;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 130
    iget-object v0, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_27

    .line 131
    iget-object v0, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 132
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_12

    .line 134
    :cond_22
    iget-object v0, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 136
    :cond_27
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;)Z"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;TK2;)Z"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 93
    iget-object v0, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    if-eqz v0, :cond_17

    .line 95
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 98
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;TK2;)TV;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_b
.end method

.method public get(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;)",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK2;TV;>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getAllValues()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    .line 75
    iget-object v1, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 76
    if-eqz v2, :cond_31

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 79
    iget-object v3, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 80
    if-eqz v0, :cond_12

    .line 81
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_12

    .line 83
    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_12

    :cond_30
    move-object v0, v1

    .line 88
    :cond_31
    return-object v0
.end method

.method public getAllValues(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_b
.end method

.method public getFirstKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK1;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;TK2;TV;)V"
        }
    .end annotation

    .line 38
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_7

    .line 53
    :cond_6
    :goto_6
    return-void

    .line 39
    :cond_7
    iget-object v0, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 40
    iget-object v0, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    if-eqz v0, :cond_1d

    .line 42
    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 44
    :cond_1d
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 45
    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 49
    :cond_2b
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 50
    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v1, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6
.end method

.method public remove(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;)V"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;TK2;)V"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 121
    if-eqz v0, :cond_d

    .line 122
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_d
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 125
    :cond_15
    iget-object v0, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_1a
    return-void
.end method

.method public size()I
    .registers 4

    const/4 v0, 0x0

    .line 106
    iget-object v1, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-nez v1, :cond_a

    .line 112
    :goto_9
    return v0

    .line 109
    :cond_a
    iget-object v1, p0, Lorg/xutils/common/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 110
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 111
    goto :goto_15

    :cond_28
    move v0, v1

    .line 112
    goto :goto_9
.end method
