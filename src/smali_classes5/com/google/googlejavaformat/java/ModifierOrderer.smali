.class final Lcom/google/googlejavaformat/java/ModifierOrderer;
.super Ljava/lang/Object;
.source "ModifierOrderer.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addTrivia(Ljava/lang/StringBuilder;Lcom/google/common/collect/ImmutableList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/google/common/collect/ImmutableList",
            "<+",
            "Lcom/google/googlejavaformat/Input$Tok;",
            ">;)V"
        }
    .end annotation

    .line 152
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Tok;

    .line 153
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 155
    :cond_18
    return-void
.end method

.method private static applyReplacements(Lcom/google/googlejavaformat/java/JavaInput;Lcom/google/common/collect/TreeRangeMap;)Lcom/google/googlejavaformat/java/JavaInput;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlejavaformat/java/JavaInput;",
            "Lcom/google/common/collect/TreeRangeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/googlejavaformat/java/JavaInput;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .line 172
    invoke-virtual {p1}, Lcom/google/common/collect/TreeRangeMap;->asDescendingMapOfRanges()Ljava/util/Map;

    move-result-object v0

    .line 173
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 181
    :goto_a
    return-object p0

    .line 176
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInput;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map$Entry;

    .line 178
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 179
    invoke-virtual {v0}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v5, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 181
    :cond_4d
    new-instance p0, Lcom/google/googlejavaformat/java/JavaInput;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/JavaInput;-><init>(Ljava/lang/String;)V

    goto :goto_a
.end method

.method private static asModifier(Lcom/google/googlejavaformat/Input$Token;)Ljavax/lang/model/element/Modifier;
    .registers 2

    .line 162
    invoke-interface {p0}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaInput$Tok;->kind()Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlejavaformat/java/ModifierOrderer;->getModifier(Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;)Ljavax/lang/model/element/Modifier;

    move-result-object v0

    return-object v0
.end method

.method private static getModifier(Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;)Ljavax/lang/model/element/Modifier;
    .registers 4

    const/4 v0, 0x0

    .line 48
    if-nez p0, :cond_4

    .line 78
    :goto_3
    return-object v0

    .line 51
    :cond_4
    sget-object v1, Lcom/google/googlejavaformat/java/ModifierOrderer$1;->$SwitchMap$com$google$googlejavaformat$java$javac$parser$Tokens$TokenKind:[I

    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_32

    goto :goto_3

    .line 53
    :pswitch_10  #0x1
    sget-object v0, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    goto :goto_3

    .line 76
    :pswitch_13  #0xb
    sget-object v0, Ljavax/lang/model/element/Modifier;->STRICTFP:Ljavax/lang/model/element/Modifier;

    goto :goto_3

    .line 74
    :pswitch_16  #0xa
    sget-object v0, Ljavax/lang/model/element/Modifier;->NATIVE:Ljavax/lang/model/element/Modifier;

    goto :goto_3

    .line 72
    :pswitch_19  #0x9
    sget-object v0, Ljavax/lang/model/element/Modifier;->SYNCHRONIZED:Ljavax/lang/model/element/Modifier;

    goto :goto_3

    .line 70
    :pswitch_1c  #0x8
    sget-object v0, Ljavax/lang/model/element/Modifier;->VOLATILE:Ljavax/lang/model/element/Modifier;

    goto :goto_3

    .line 68
    :pswitch_1f  #0x7
    sget-object v0, Ljavax/lang/model/element/Modifier;->TRANSIENT:Ljavax/lang/model/element/Modifier;

    goto :goto_3

    .line 66
    :pswitch_22  #0x6
    sget-object v0, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    goto :goto_3

    .line 61
    :pswitch_25  #0x5
    sget-object v0, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    goto :goto_3

    .line 59
    :pswitch_28  #0x4
    sget-object v0, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    goto :goto_3

    .line 57
    :pswitch_2b  #0x3
    sget-object v0, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    goto :goto_3

    .line 55
    :pswitch_2e  #0x2
    sget-object v0, Ljavax/lang/model/element/Modifier;->PROTECTED:Ljavax/lang/model/element/Modifier;

    goto :goto_3

    .line 51
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_10  #00000001
        :pswitch_2e  #00000002
        :pswitch_2b  #00000003
        :pswitch_28  #00000004
        :pswitch_25  #00000005
        :pswitch_22  #00000006
        :pswitch_1f  #00000007
        :pswitch_1c  #00000008
        :pswitch_19  #00000009
        :pswitch_16  #0000000a
        :pswitch_13  #0000000b
    .end packed-switch
.end method

.method static reorderModifiers(Lcom/google/googlejavaformat/java/JavaInput;Ljava/util/Collection;)Lcom/google/googlejavaformat/java/JavaInput;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlejavaformat/java/JavaInput;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Lcom/google/googlejavaformat/java/JavaInput;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInput;->getTokens()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 148
    :goto_a
    return-object p0

    .line 101
    :cond_b
    invoke-virtual {p0, p1}, Lcom/google/googlejavaformat/java/JavaInput;->characterRangesToTokenRanges(Ljava/util/Collection;)Lcom/google/common/collect/RangeSet;

    move-result-object v3

    .line 102
    invoke-virtual {p0}, Lcom/google/googlejavaformat/java/JavaInput;->getTokens()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    .line 103
    invoke-static {}, Lcom/google/common/collect/TreeRangeMap;->create()Lcom/google/common/collect/TreeRangeMap;

    move-result-object v5

    .line 104
    :cond_1b
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 105
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Token;

    .line 106
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/google/common/collect/RangeSet;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 109
    invoke-static {v0}, Lcom/google/googlejavaformat/java/ModifierOrderer;->asModifier(Lcom/google/googlejavaformat/Input$Token;)Ljavax/lang/model/element/Modifier;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_1b

    .line 114
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 115
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v8

    .line 118
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    const/4 v0, -0x1

    move v1, v0

    .line 122
    :goto_59
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 123
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Token;

    .line 124
    invoke-static {v0}, Lcom/google/googlejavaformat/java/ModifierOrderer;->asModifier(Lcom/google/googlejavaformat/Input$Token;)Ljavax/lang/model/element/Modifier;

    move-result-object v2

    .line 125
    if-nez v2, :cond_ba

    .line 133
    :cond_6b
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/common/collect/Ordering;->isOrdered(Ljava/lang/Iterable;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 134
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 135
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    const/4 v0, 0x0

    move v2, v0

    :goto_7f
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_d3

    .line 137
    if-lez v2, :cond_94

    .line 138
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Token;

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Token;->getToksBefore()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/google/googlejavaformat/java/ModifierOrderer;->addTrivia(Ljava/lang/StringBuilder;Lcom/google/common/collect/ImmutableList;)V

    .line 140
    :cond_94
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Modifier;

    invoke-virtual {v0}, Ljavax/lang/model/element/Modifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_b6

    .line 142
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Input$Token;

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Token;->getToksAfter()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/google/googlejavaformat/java/ModifierOrderer;->addTrivia(Ljava/lang/StringBuilder;Lcom/google/common/collect/ImmutableList;)V

    .line 136
    :cond_b6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7f

    .line 128
    :cond_ba
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v1

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Token;->getTok()Lcom/google/googlejavaformat/Input$Tok;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlejavaformat/Input$Tok;->length()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_59

    .line 145
    :cond_d3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/google/common/collect/TreeRangeMap;->put(Lcom/google/common/collect/Range;Ljava/lang/Object;)V

    goto/16 :goto_1b

    .line 148
    :cond_e8
    invoke-static {p0, v5}, Lcom/google/googlejavaformat/java/ModifierOrderer;->applyReplacements(Lcom/google/googlejavaformat/java/JavaInput;Lcom/google/common/collect/TreeRangeMap;)Lcom/google/googlejavaformat/java/JavaInput;

    move-result-object p0

    goto/16 :goto_a
.end method

.method static reorderModifiers(Ljava/lang/String;)Lcom/google/googlejavaformat/java/JavaInput;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/google/googlejavaformat/java/JavaInput;

    invoke-direct {v0, p0}, Lcom/google/googlejavaformat/java/JavaInput;-><init>(Ljava/lang/String;)V

    .line 87
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Range;->closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Lcom/google/googlejavaformat/java/ModifierOrderer;->reorderModifiers(Lcom/google/googlejavaformat/java/JavaInput;Ljava/util/Collection;)Lcom/google/googlejavaformat/java/JavaInput;

    move-result-object v0

    return-object v0
.end method
