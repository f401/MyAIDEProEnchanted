.class public Lorg/ahocorasick/trie/State;
.super Ljava/lang/Object;
.source "State.java"


# instance fields
.field private final depth:I

.field private emits:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private failure:Lorg/ahocorasick/trie/State;

.field private final rootState:Lorg/ahocorasick/trie/State;

.field private success:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Lorg/ahocorasick/trie/State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/ahocorasick/trie/State;-><init>(I)V

    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/ahocorasick/trie/State;->success:Ljava/util/Map;

    .line 41
    iput-object v0, p0, Lorg/ahocorasick/trie/State;->failure:Lorg/ahocorasick/trie/State;

    .line 44
    iput-object v0, p0, Lorg/ahocorasick/trie/State;->emits:Ljava/util/Set;

    .line 51
    iput p1, p0, Lorg/ahocorasick/trie/State;->depth:I

    .line 52
    if-nez p1, :cond_0

    move-object v0, p0

    :cond_0
    iput-object v0, p0, Lorg/ahocorasick/trie/State;->rootState:Lorg/ahocorasick/trie/State;

    .line 53
    return-void
.end method

.method private nextState(Ljava/lang/Character;Z)Lorg/ahocorasick/trie/State;
    .registers 5

    .line 56
    iget-object v0, p0, Lorg/ahocorasick/trie/State;->success:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ahocorasick/trie/State;

    .line 57
    if-nez p2, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/ahocorasick/trie/State;->rootState:Lorg/ahocorasick/trie/State;

    if-eqz v1, :cond_0

    .line 58
    iget-object v0, p0, Lorg/ahocorasick/trie/State;->rootState:Lorg/ahocorasick/trie/State;

    .line 60
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addEmit(Ljava/lang/String;)V
    .registers 3

    .line 85
    iget-object v0, p0, Lorg/ahocorasick/trie/State;->emits:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/ahocorasick/trie/State;->emits:Ljava/util/Set;

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/ahocorasick/trie/State;->emits:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public addEmit(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 92
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    invoke-virtual {p0, v0}, Lorg/ahocorasick/trie/State;->addEmit(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method public addState(Ljava/lang/Character;)Lorg/ahocorasick/trie/State;
    .registers 4

    .line 72
    invoke-virtual {p0, p1}, Lorg/ahocorasick/trie/State;->nextStateIgnoreRootState(Ljava/lang/Character;)Lorg/ahocorasick/trie/State;

    move-result-object v0

    .line 73
    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lorg/ahocorasick/trie/State;

    iget v1, p0, Lorg/ahocorasick/trie/State;->depth:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lorg/ahocorasick/trie/State;-><init>(I)V

    .line 75
    iget-object v1, p0, Lorg/ahocorasick/trie/State;->success:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_0
    return-object v0
.end method

.method public emit()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/ahocorasick/trie/State;->emits:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/ahocorasick/trie/State;->emits:Ljava/util/Set;

    goto :goto_0
.end method

.method public failure()Lorg/ahocorasick/trie/State;
    .registers 2

    .line 102
    iget-object v0, p0, Lorg/ahocorasick/trie/State;->failure:Lorg/ahocorasick/trie/State;

    return-object v0
.end method

.method public getDepth()I
    .registers 2

    .line 81
    iget v0, p0, Lorg/ahocorasick/trie/State;->depth:I

    return v0
.end method

.method public getStates()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/ahocorasick/trie/State;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/ahocorasick/trie/State;->success:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getTransitions()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/ahocorasick/trie/State;->success:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public nextState(Ljava/lang/Character;)Lorg/ahocorasick/trie/State;
    .registers 3

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/ahocorasick/trie/State;->nextState(Ljava/lang/Character;Z)Lorg/ahocorasick/trie/State;

    move-result-object v0

    return-object v0
.end method

.method public nextStateIgnoreRootState(Ljava/lang/Character;)Lorg/ahocorasick/trie/State;
    .registers 3

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/ahocorasick/trie/State;->nextState(Ljava/lang/Character;Z)Lorg/ahocorasick/trie/State;

    move-result-object v0

    return-object v0
.end method

.method public setFailure(Lorg/ahocorasick/trie/State;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lorg/ahocorasick/trie/State;->failure:Lorg/ahocorasick/trie/State;

    .line 107
    return-void
.end method
