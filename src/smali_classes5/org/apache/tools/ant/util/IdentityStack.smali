.class public Lorg/apache/tools/ant/util/IdentityStack;
.super Ljava/util/Stack;
.source "IdentityStack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Stack",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4d192e6376540bf6L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/util/Stack;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/util/Stack;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/IdentityStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public static getInstance(Ljava/util/Stack;)Lorg/apache/tools/ant/util/IdentityStack;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Stack",
            "<TE;>;)",
            "Lorg/apache/tools/ant/util/IdentityStack",
            "<TE;>;"
        }
    .end annotation

    .line 41
    instance-of v0, p0, Lorg/apache/tools/ant/util/IdentityStack;

    if-eqz v0, :cond_7

    .line 42
    check-cast p0, Lorg/apache/tools/ant/util/IdentityStack;

    .line 48
    :goto_6
    return-object p0

    .line 44
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/util/IdentityStack;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/IdentityStack;-><init>()V

    .line 45
    if-eqz p0, :cond_11

    .line 46
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/util/IdentityStack;->addAll(Ljava/util/Collection;)Z

    :cond_11
    move-object p0, v0

    .line 48
    goto :goto_6
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3

    monitor-enter p0

    .line 75
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/IdentityStack;->indexOf(Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 131
    :try_start_1
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 132
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/IdentityStack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 133
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1a

    goto :goto_a

    .line 130
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 135
    :cond_1d
    :try_start_1d
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_1a

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;I)I
    .registers 6

    monitor-enter p0

    .line 87
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/IdentityStack;->size()I

    move-result v1

    move v0, p2

    .line 88
    :goto_6
    if-ge v0, v1, :cond_13

    .line 89
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/IdentityStack;->get(I)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_16

    move-result-object v2

    if-ne v2, p1, :cond_10

    .line 90
    monitor-exit p0

    .line 93
    :goto_f
    return v0

    .line 88
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 93
    :cond_13
    monitor-exit p0

    const/4 v0, -0x1

    goto :goto_f

    .line 86
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public lastIndexOf(Ljava/lang/Object;I)I
    .registers 5

    monitor-enter p0

    move v0, p2

    .line 105
    :goto_2
    if-ltz v0, :cond_12

    .line 106
    :try_start_4
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/IdentityStack;->get(I)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_f

    move-result-object v1

    if-ne v1, p1, :cond_c

    .line 107
    monitor-exit p0

    .line 110
    :goto_b
    return v0

    .line 105
    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 104
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 110
    :cond_12
    monitor-exit p0

    const/4 v0, -0x1

    goto :goto_b
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 115
    :try_start_1
    instance-of v0, p1, Ljava/util/Set;

    if-nez v0, :cond_b

    .line 116
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    .line 118
    :cond_b
    invoke-super {p0, p1}, Ljava/util/Stack;->removeAll(Ljava/util/Collection;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result v0

    monitor-exit p0

    return v0

    .line 114
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 123
    :try_start_1
    instance-of v0, p1, Ljava/util/Set;

    if-nez v0, :cond_b

    .line 124
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    .line 126
    :cond_b
    invoke-super {p0, p1}, Ljava/util/Stack;->retainAll(Ljava/util/Collection;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result v0

    monitor-exit p0

    return v0

    .line 122
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method
