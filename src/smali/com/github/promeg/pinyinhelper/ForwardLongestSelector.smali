.class final Lcom/github/promeg/pinyinhelper/ForwardLongestSelector;
.super Ljava/lang/Object;
.source "ForwardLongestSelector.java"

# interfaces
.implements Lcom/github/promeg/pinyinhelper/SegmentationSelector;


# static fields
.field static final HIT_COMPARATOR:Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;

    invoke-direct {v0}, Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;-><init>()V

    sput-object v0, Lcom/github/promeg/pinyinhelper/ForwardLongestSelector;->HIT_COMPARATOR:Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(Ljava/util/Collection;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/ahocorasick/trie/Emit;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/ahocorasick/trie/Emit;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 28
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 30
    sget-object p1, Lcom/github/promeg/pinyinhelper/ForwardLongestSelector;->HIT_COMPARATOR:Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 34
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, -0x1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ahocorasick/trie/Emit;

    .line 37
    invoke-virtual {v3}, Lorg/ahocorasick/trie/Emit;->getStart()I

    move-result v4

    if-le v4, v2, :cond_35

    invoke-virtual {v3}, Lorg/ahocorasick/trie/Emit;->getEnd()I

    move-result v4

    if-le v4, v2, :cond_35

    .line 38
    invoke-virtual {v3}, Lorg/ahocorasick/trie/Emit;->getEnd()I

    move-result v2

    goto :goto_18

    .line 40
    :cond_35
    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 44
    :cond_39
    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method
