.class final Lcom/github/promeg/pinyinhelper/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method static dictsToTrie(Ljava/util/List;)Lorg/ahocorasick/trie/Trie;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/promeg/pinyinhelper/PinyinDict;",
            ">;)",
            "Lorg/ahocorasick/trie/Trie;"
        }
    .end annotation

    .line 20
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 22
    invoke-static {}, Lorg/ahocorasick/trie/Trie;->builder()Lorg/ahocorasick/trie/Trie$TrieBuilder;

    move-result-object v2

    .line 24
    if-eqz p0, :cond_3

    .line 25
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/promeg/pinyinhelper/PinyinDict;

    .line 26
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/github/promeg/pinyinhelper/PinyinDict;->words()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 27
    invoke-interface {v0}, Lcom/github/promeg/pinyinhelper/PinyinDict;->words()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 30
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 31
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    invoke-virtual {v2, v0}, Lorg/ahocorasick/trie/Trie$TrieBuilder;->addKeyword(Ljava/lang/String;)Lorg/ahocorasick/trie/Trie$TrieBuilder;

    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual {v2}, Lorg/ahocorasick/trie/Trie$TrieBuilder;->build()Lorg/ahocorasick/trie/Trie;

    move-result-object v0

    .line 38
    :goto_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method
