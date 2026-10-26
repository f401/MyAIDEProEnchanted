.class final Lcom/github/promeg/pinyinhelper/Engine;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;
    }
.end annotation


# static fields
.field static final EMIT_COMPARATOR:Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;

    invoke-direct {v0}, Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;-><init>()V

    sput-object v0, Lcom/github/promeg/pinyinhelper/Engine;->EMIT_COMPARATOR:Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static pinyinFromDict(Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/github/promeg/pinyinhelper/PinyinDict;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 82
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/promeg/pinyinhelper/PinyinDict;

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0}, Lcom/github/promeg/pinyinhelper/PinyinDict;->words()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 84
    invoke-interface {v0}, Lcom/github/promeg/pinyinhelper/PinyinDict;->words()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-interface {v0, p0}, Lcom/github/promeg/pinyinhelper/PinyinDict;->toPinyin(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No pinyin dict contains word: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static toPinyin(Ljava/lang/String;Lorg/ahocorasick/trie/Trie;Ljava/util/List;Ljava/lang/String;Lcom/github/promeg/pinyinhelper/SegmentationSelector;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/ahocorasick/trie/Trie;",
            "Ljava/util/List",
            "<",
            "Lcom/github/promeg/pinyinhelper/PinyinDict;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/github/promeg/pinyinhelper/SegmentationSelector;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-object p0

    .line 27
    :cond_1
    if-eqz p1, :cond_2

    if-nez p4, :cond_4

    .line 34
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 35
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/github/promeg/pinyinhelper/Pinyin;->toPinyin(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_3

    .line 38
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 44
    :cond_4
    invoke-virtual {p1, p0}, Lorg/ahocorasick/trie/Trie;->parseText(Ljava/lang/CharSequence;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/github/promeg/pinyinhelper/SegmentationSelector;->select(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    .line 46
    sget-object v0, Lcom/github/promeg/pinyinhelper/Engine;->EMIT_COMPARATOR:Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 48
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move v3, v1

    move v2, v1

    .line 52
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 54
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ahocorasick/trie/Emit;

    invoke-virtual {v0}, Lorg/ahocorasick/trie/Emit;->getStart()I

    move-result v0

    if-ne v3, v0, :cond_7

    .line 56
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ahocorasick/trie/Emit;

    invoke-virtual {v0}, Lorg/ahocorasick/trie/Emit;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/github/promeg/pinyinhelper/Engine;->pinyinFromDict(Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v6

    move v0, v1

    .line 57
    :goto_3
    array-length v7, v6

    if-ge v0, v7, :cond_6

    .line 58
    aget-object v7, v6, v0

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    if-eq v0, v7, :cond_5

    .line 60
    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 64
    :cond_6
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ahocorasick/trie/Emit;

    invoke-virtual {v0}, Lorg/ahocorasick/trie/Emit;->size()I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    .line 72
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v3, v2, :cond_a

    .line 73
    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v0

    goto :goto_2

    .line 68
    :cond_7
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/github/promeg/pinyinhelper/Pinyin;->toPinyin(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    move v0, v2

    goto :goto_4

    .line 77
    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 41
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_a
    move v2, v0

    goto :goto_2
.end method
