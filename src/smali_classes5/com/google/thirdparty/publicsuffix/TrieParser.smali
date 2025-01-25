.class final Lcom/google/thirdparty/publicsuffix/TrieParser;
.super Ljava/lang/Object;
.source "TrieParser.java"


# static fields
.field private static final PREFIX_JOINER:Lcom/google/common/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-string v0, ""

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/google/thirdparty/publicsuffix/TrieParser;->PREFIX_JOINER:Lcom/google/common/base/Joiner;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doParseTrieToBuilder(Ljava/util/List;Ljava/lang/CharSequence;ILcom/google/common/collect/ImmutableMap$Builder;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I",
            "Lcom/google/common/collect/ImmutableMap$Builder",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/thirdparty/publicsuffix/PublicSuffixType;",
            ">;)I"
        }
    .end annotation

    const/16 v8, 0x3a

    const/16 v5, 0x21

    const/4 v2, 0x0

    const/16 v7, 0x3f

    const/16 v6, 0x2c

    .line 58
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v1, p2

    move v0, v2

    .line 63
    :goto_f
    if-ge v1, v3, :cond_21

    .line 64
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 65
    const/16 v4, 0x26

    if-eq v0, v4, :cond_21

    if-eq v0, v7, :cond_21

    if-eq v0, v5, :cond_21

    if-eq v0, v8, :cond_21

    if-ne v0, v6, :cond_68

    .line 70
    :cond_21
    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lcom/google/thirdparty/publicsuffix/TrieParser;->reverse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {p0, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 72
    if-eq v0, v5, :cond_34

    if-eq v0, v7, :cond_34

    if-eq v0, v8, :cond_34

    if-ne v0, v6, :cond_47

    .line 77
    :cond_34
    sget-object v4, Lcom/google/thirdparty/publicsuffix/TrieParser;->PREFIX_JOINER:Lcom/google/common/base/Joiner;

    invoke-virtual {v4, p0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_47

    .line 79
    invoke-static {v0}, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->fromCode(C)Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 82
    :cond_47
    add-int/lit8 v1, v1, 0x1

    .line 84
    if-eq v0, v7, :cond_6b

    if-eq v0, v6, :cond_6b

    move v0, v1

    .line 85
    :cond_4e
    if-ge v0, v3, :cond_63

    .line 87
    invoke-static {p0, p1, v0, p3}, Lcom/google/thirdparty/publicsuffix/TrieParser;->doParseTrieToBuilder(Ljava/util/List;Ljava/lang/CharSequence;ILcom/google/common/collect/ImmutableMap$Builder;)I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v7, :cond_61

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_4e

    .line 90
    :cond_61
    add-int/lit8 v0, v0, 0x1

    .line 95
    :cond_63
    :goto_63
    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 96
    sub-int/2addr v0, p2

    return v0

    .line 63
    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_6b
    move v0, v1

    goto :goto_63
.end method

.method static parseTrie(Ljava/lang/CharSequence;)Lcom/google/common/collect/ImmutableMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/thirdparty/publicsuffix/PublicSuffixType;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    .line 34
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 35
    const/4 v0, 0x0

    .line 36
    :goto_9
    if-ge v0, v2, :cond_15

    .line 37
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v3

    invoke-static {v3, p0, v0, v1}, Lcom/google/thirdparty/publicsuffix/TrieParser;->doParseTrieToBuilder(Ljava/util/List;Ljava/lang/CharSequence;ILcom/google/common/collect/ImmutableMap$Builder;)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_9

    .line 39
    :cond_15
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method private static reverse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method
