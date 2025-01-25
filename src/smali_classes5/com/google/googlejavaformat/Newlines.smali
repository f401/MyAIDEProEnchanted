.class public Lcom/google/googlejavaformat/Newlines;
.super Ljava/lang/Object;
.source "Newlines.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlejavaformat/Newlines$LineIterator;,
        Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;
    }
.end annotation


# static fields
.field private static final BREAKS:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 29
    const-string v0, "\r\n"

    const-string v1, "\n"

    const-string v2, "\r"

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/Newlines;->BREAKS:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsBreaks(Ljava/lang/String;)Z
    .registers 2

    .line 105
    const-string v0, "\n\r"

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->matchesAnyOf(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static count(Ljava/lang/String;)I
    .registers 2

    .line 35
    invoke-static {p0}, Lcom/google/googlejavaformat/Newlines;->lineOffsetIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static firstBreak(Ljava/lang/String;)I
    .registers 3

    .line 42
    invoke-static {p0}, Lcom/google/googlejavaformat/Newlines;->lineOffsetIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_17
    return v0

    :cond_18
    const/4 v0, -0x1

    goto :goto_17
.end method

.method public static getLineEnding(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 71
    sget-object v0, Lcom/google/googlejavaformat/Newlines;->BREAKS:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 76
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static guessLineSeparator(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/16 v3, 0xa

    .line 84
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 86
    if-eq v1, v3, :cond_2c

    const/16 v2, 0xd

    if-eq v1, v2, :cond_16

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 88
    :cond_16
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_29

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_29

    .line 89
    const-string v0, "\r\n"

    .line 98
    :goto_28
    return-object v0

    .line 91
    :cond_29
    const-string v0, "\r"

    goto :goto_28

    .line 93
    :cond_2c
    const-string v0, "\n"

    goto :goto_28

    .line 98
    :cond_2f
    const-string v0, "\n"

    goto :goto_28
.end method

.method public static hasNewlineAt(Ljava/lang/String;I)I
    .registers 5

    .line 58
    sget-object v0, Lcom/google/googlejavaformat/Newlines;->BREAKS:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 63
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, -0x1

    goto :goto_1c
.end method

.method public static isNewline(Ljava/lang/String;)Z
    .registers 2

    .line 51
    sget-object v0, Lcom/google/googlejavaformat/Newlines;->BREAKS:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static lineIterator(Ljava/lang/String;)Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Lcom/google/googlejavaformat/Newlines$LineIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/googlejavaformat/Newlines$LineIterator;-><init>(Ljava/lang/String;Lcom/google/googlejavaformat/Newlines$1;)V

    return-object v0
.end method

.method public static lineOffsetIterator(Ljava/lang/String;)Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/googlejavaformat/Newlines$LineOffsetIterator;-><init>(Ljava/lang/String;Lcom/google/googlejavaformat/Newlines$1;)V

    return-object v0
.end method
