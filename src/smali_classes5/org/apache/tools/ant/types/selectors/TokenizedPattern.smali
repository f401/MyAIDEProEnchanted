.class public Lorg/apache/tools/ant/types/selectors/TokenizedPattern;
.super Ljava/lang/Object;
.source "TokenizedPattern.java"


# static fields
.field public static final EMPTY_PATTERN:Lorg/apache/tools/ant/types/selectors/TokenizedPattern;


# instance fields
.field private final pattern:Ljava/lang/String;

.field private final tokenizedPattern:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 39
    new-instance v0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    const-string v1, ""

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->EMPTY_PATTERN:Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 51
    invoke-static {p1}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->tokenizePathAsArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->pattern:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->tokenizedPattern:[Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public containsPattern(Ljava/lang/String;)Z
    .registers 4

    .line 130
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->tokenizedPattern:[Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall0;->m(Ljava/lang/Object;)Ljava/util/function/Predicate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public depth()I
    .registers 2

    .line 120
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->tokenizedPattern:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public endsWith(Ljava/lang/String;)Z
    .registers 5

    .line 167
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->tokenizedPattern:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x1

    if-lez v2, :cond_12

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    .line 168
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 167
    :goto_11
    return v0

    .line 168
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 106
    instance-of v0, p1, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->pattern:Ljava/lang/String;

    check-cast p1, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    iget-object v1, p1, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->pattern:Ljava/lang/String;

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 106
    :goto_11
    return v0

    .line 107
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getPattern()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 111
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public matchPath(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z)Z
    .registers 5

    .line 71
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->tokenizedPattern:[Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->getTokens()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPath([Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public matchStartOf(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z)Z
    .registers 5

    .line 85
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->tokenizedPattern:[Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->getTokens()[Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v0, v1, p2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPatternStart([Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public rtrimWildcardTokens()Lorg/apache/tools/ant/types/selectors/TokenizedPath;
    .registers 6

    const/4 v1, 0x0

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 142
    :goto_7
    iget-object v3, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->tokenizedPattern:[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_14

    .line 143
    aget-object v3, v3, v0

    invoke-static {v3}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->hasWildcards(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 152
    :cond_14
    if-nez v0, :cond_38

    .line 153
    sget-object v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->EMPTY_PATH:Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    .line 157
    :goto_18
    return-object v0

    .line 146
    :cond_19
    if-lez v0, :cond_2e

    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-eq v3, v4, :cond_2e

    .line 148
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_2e
    iget-object v3, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->tokenizedPattern:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 155
    :cond_38
    new-array v3, v0, [Ljava/lang/String;

    .line 156
    iget-object v4, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->tokenizedPattern:[Ljava/lang/String;

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    new-instance v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_18
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public withoutLastToken()Lorg/apache/tools/ant/types/selectors/TokenizedPattern;
    .registers 6

    const/4 v4, 0x0

    .line 177
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->tokenizedPattern:[Ljava/lang/String;

    array-length v1, v0

    if-eqz v1, :cond_31

    .line 180
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 181
    sget-object v0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->EMPTY_PATTERN:Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    .line 188
    :goto_c
    return-object v0

    .line 183
    :cond_d
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 184
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 185
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->tokenizedPattern:[Ljava/lang/String;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 186
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    new-instance v0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    iget-object v3, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_c

    .line 178
    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t strip a token from nothing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
