.class public Lorg/apache/commons/lang3/text/StrTokenizer;
.super Ljava/lang/Object;
.source "StrTokenizer.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;

.field private static final TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;


# instance fields
.field private chars:[C

.field private delimMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

.field private emptyAsNull:Z

.field private ignoreEmptyTokens:Z

.field private ignoredMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

.field private quoteMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

.field private tokenPos:I

.field private tokens:[Ljava/lang/String;

.field private trimmerMatcher:Lorg/apache/commons/lang3/text/StrMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    .line 95
    new-instance v0, Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-direct {v0}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 96
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->commaMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 97
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->doubleQuoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 98
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setIgnoredMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 99
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->trimMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setTrimmerMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 100
    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setEmptyTokenAsNull(Z)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 101
    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setIgnoreEmptyTokens(Z)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 103
    new-instance v0, Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-direct {v0}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 104
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->tabMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 105
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->doubleQuoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 106
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setIgnoredMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 107
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->trimMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->setTrimmerMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 108
    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setEmptyTokenAsNull(Z)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 109
    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setIgnoreEmptyTokens(Z)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 110
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->splitMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 122
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 124
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 126
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoreEmptyTokens:Z

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    .line 244
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->splitMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 122
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 124
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 126
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoreEmptyTokens:Z

    .line 253
    if-eqz p1, :cond_27

    .line 254
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    .line 258
    :goto_26
    return-void

    .line 256
    :cond_27
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    goto :goto_26
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .registers 3

    .line 267
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 269
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;CC)V
    .registers 4

    .line 302
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>(Ljava/lang/String;C)V

    .line 303
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 304
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 278
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterString(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 280
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/lang3/text/StrMatcher;)V
    .registers 3

    .line 289
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 291
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;)V
    .registers 4

    .line 315
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>(Ljava/lang/String;Lorg/apache/commons/lang3/text/StrMatcher;)V

    .line 316
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 317
    return-void
.end method

.method public constructor <init>([C)V
    .registers 3

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->splitMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 122
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 124
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 126
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoreEmptyTokens:Z

    .line 326
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    .line 327
    return-void
.end method

.method public constructor <init>([CC)V
    .registers 3

    .line 336
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>([C)V

    .line 337
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 338
    return-void
.end method

.method public constructor <init>([CCC)V
    .registers 4

    .line 371
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>([CC)V

    .line 372
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 373
    return-void
.end method

.method public constructor <init>([CLjava/lang/String;)V
    .registers 3

    .line 347
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>([C)V

    .line 348
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterString(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 349
    return-void
.end method

.method public constructor <init>([CLorg/apache/commons/lang3/text/StrMatcher;)V
    .registers 3

    .line 358
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>([C)V

    .line 359
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 360
    return-void
.end method

.method public constructor <init>([CLorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;)V
    .registers 4

    .line 384
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>([CLorg/apache/commons/lang3/text/StrMatcher;)V

    .line 385
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 386
    return-void
.end method

.method private addToken(Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 660
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 661
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->isIgnoreEmptyTokens()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 669
    :goto_c
    return-void

    .line 664
    :cond_d
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->isEmptyTokenAsNull()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 665
    const/4 p2, 0x0

    .line 668
    :cond_14
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c
.end method

.method private checkTokenized()V
    .registers 4

    const/4 v2, 0x0

    .line 600
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    if-nez v0, :cond_18

    .line 601
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    if-nez v0, :cond_19

    .line 603
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, v2}, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    .line 604
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    .line 610
    :cond_18
    :goto_18
    return-void

    .line 606
    :cond_19
    array-length v1, v0

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    .line 607
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    goto :goto_18
.end method

.method private static getCSVClone()Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 1

    .line 141
    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/text/StrTokenizer;

    return-object v0
.end method

.method public static getCSVInstance()Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 1

    .line 154
    invoke-static {}, Lorg/apache/commons/lang3/text/StrTokenizer;->getCSVClone()Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public static getCSVInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    .line 167
    invoke-static {}, Lorg/apache/commons/lang3/text/StrTokenizer;->getCSVClone()Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    .line 168
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 169
    return-object v0
.end method

.method public static getCSVInstance([C)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    .line 182
    invoke-static {}, Lorg/apache/commons/lang3/text/StrTokenizer;->getCSVClone()Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    .line 183
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset([C)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 184
    return-object v0
.end method

.method private static getTSVClone()Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 1

    .line 193
    sget-object v0, Lorg/apache/commons/lang3/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lorg/apache/commons/lang3/text/StrTokenizer;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/text/StrTokenizer;

    return-object v0
.end method

.method public static getTSVInstance()Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 1

    .line 206
    invoke-static {}, Lorg/apache/commons/lang3/text/StrTokenizer;->getTSVClone()Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public static getTSVInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    .line 217
    invoke-static {}, Lorg/apache/commons/lang3/text/StrTokenizer;->getTSVClone()Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    .line 218
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 219
    return-object v0
.end method

.method public static getTSVInstance([C)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    .line 230
    invoke-static {}, Lorg/apache/commons/lang3/text/StrTokenizer;->getTSVClone()Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    .line 231
    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset([C)Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 232
    return-object v0
.end method

.method private isQuote([CIIII)Z
    .registers 10

    const/4 v0, 0x0

    .line 829
    move v1, v0

    :goto_2
    if-ge v1, p5, :cond_16

    .line 830
    add-int v2, p2, v1

    if-ge v2, p3, :cond_12

    add-int v2, p2, v1

    aget-char v2, p1, v2

    add-int v3, p4, v1

    aget-char v3, p1, v3

    if-eq v2, v3, :cond_13

    .line 834
    :cond_12
    :goto_12
    return v0

    .line 829
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 834
    :cond_16
    const/4 v0, 0x1

    goto :goto_12
.end method

.method private readNextToken([CIILorg/apache/commons/lang3/text/StrBuilder;Ljava/util/List;)I
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Lorg/apache/commons/lang3/text/StrBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 685
    move v7, p2

    :goto_1
    move/from16 v0, p3

    if-ge v7, v0, :cond_37

    .line 686
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getIgnoredMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, p1, v7, v7, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v1

    .line 688
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getTrimmerMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, p1, v7, v7, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v2

    .line 686
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 689
    if-eqz v1, :cond_37

    .line 690
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getDelimiterMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, p1, v7, v7, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v2

    if-gtz v2, :cond_37

    .line 691
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getQuoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, p1, v7, v7, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v2

    if-lez v2, :cond_44

    .line 698
    :cond_37
    move/from16 v0, p3

    if-lt v7, v0, :cond_46

    .line 699
    const-string v1, ""

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/lang3/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 700
    const/4 v1, -0x1

    .line 715
    :goto_43
    return v1

    .line 694
    :cond_44
    add-int/2addr v7, v1

    .line 695
    goto :goto_1

    .line 704
    :cond_46
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getDelimiterMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, p1, v7, v7, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v1

    .line 705
    if-lez v1, :cond_5b

    .line 706
    const-string v2, ""

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/lang3/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 707
    add-int/2addr v1, v7

    goto :goto_43

    .line 711
    :cond_5b
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getQuoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, p1, v7, v7, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v8

    .line 712
    if-lez v8, :cond_76

    .line 713
    add-int v3, v7, v8

    move-object v1, p0

    move-object v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/lang3/text/StrTokenizer;->readWithQuotes([CIILorg/apache/commons/lang3/text/StrBuilder;Ljava/util/List;II)I

    move-result v1

    goto :goto_43

    .line 715
    :cond_76
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p0

    move-object v6, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v12}, Lorg/apache/commons/lang3/text/StrTokenizer;->readWithQuotes([CIILorg/apache/commons/lang3/text/StrBuilder;Ljava/util/List;II)I

    move-result v1

    goto :goto_43
.end method

.method private readWithQuotes([CIILorg/apache/commons/lang3/text/StrBuilder;Ljava/util/List;II)I
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Lorg/apache/commons/lang3/text/StrBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)I"
        }
    .end annotation

    .line 736
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/lang3/text/StrBuilder;->clear()Lorg/apache/commons/lang3/text/StrBuilder;

    .line 737
    if-lez p7, :cond_3e

    const/4 v2, 0x1

    .line 739
    :goto_6
    const/4 v3, 0x0

    move v11, v2

    move v4, p2

    move v12, v3

    .line 741
    :goto_a
    move/from16 v0, p3

    if-ge v4, v0, :cond_b6

    .line 745
    if-eqz v11, :cond_54

    move-object v2, p0

    move-object v3, p1

    move/from16 v5, p3

    move/from16 v6, p6

    move/from16 v7, p7

    .line 752
    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/lang3/text/StrTokenizer;->isQuote([CIIII)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 753
    add-int v7, v4, p7

    move-object v5, p0

    move-object v6, p1

    move/from16 v8, p3

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/lang3/text/StrTokenizer;->isQuote([CIIII)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 755
    move-object/from16 v0, p4

    move/from16 v1, p7

    invoke-virtual {v0, p1, v4, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->append([CII)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 756
    mul-int/lit8 v2, p7, 0x2

    add-int/2addr v4, v2

    .line 757
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v2

    move v12, v2

    .line 758
    goto :goto_a

    .line 737
    :cond_3e
    const/4 v2, 0x0

    goto :goto_6

    .line 762
    :cond_40
    const/4 v2, 0x0

    .line 763
    add-int v4, v4, p7

    move v11, v2

    .line 764
    goto :goto_a

    .line 768
    :cond_45
    aget-char v2, p1, v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 769
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v2

    add-int/lit8 v4, v4, 0x1

    move v12, v2

    goto :goto_a

    .line 775
    :cond_54
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getDelimiterMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, p1, v4, p2, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v2

    .line 776
    if-lez v2, :cond_6e

    .line 778
    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v12}, Lorg/apache/commons/lang3/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v3}, Lorg/apache/commons/lang3/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 779
    add-int/2addr v2, v4

    .line 814
    :goto_6d
    return v2

    .line 783
    :cond_6e
    if-lez p7, :cond_83

    move-object v2, p0

    move-object v3, p1

    move/from16 v5, p3

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/lang3/text/StrTokenizer;->isQuote([CIIII)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 784
    const/4 v2, 0x1

    .line 785
    add-int v4, v4, p7

    move v11, v2

    .line 786
    goto :goto_a

    .line 790
    :cond_83
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getIgnoredMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, p1, v4, p2, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v2

    .line 791
    if-lez v2, :cond_92

    .line 792
    add-int/2addr v4, v2

    .line 793
    goto/16 :goto_a

    .line 799
    :cond_92
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getTrimmerMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, p1, v4, p2, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v2

    .line 800
    if-lez v2, :cond_a6

    .line 801
    move-object/from16 v0, p4

    invoke-virtual {v0, p1, v4, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->append([CII)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 802
    add-int/2addr v4, v2

    .line 803
    goto/16 :goto_a

    .line 807
    :cond_a6
    aget-char v2, p1, v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 808
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v2

    .line 809
    add-int/lit8 v4, v4, 0x1

    move v12, v2

    goto/16 :goto_a

    .line 813
    :cond_b6
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v12}, Lorg/apache/commons/lang3/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/lang3/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 814
    const/4 v2, -0x1

    goto :goto_6d
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .registers 2

    .line 89
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;->add(Ljava/lang/String;)V

    return-void
.end method

.method public add(Ljava/lang/String;)V
    .registers 4

    .line 591
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .line 1074
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->cloneReset()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 1076
    :goto_4
    return-object v0

    .line 1075
    :catch_5
    move-exception v0

    .line 1076
    const/4 v0, 0x0

    goto :goto_4
.end method

.method cloneReset()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1089
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 1090
    iget-object v1, v0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    if-eqz v1, :cond_12

    .line 1091
    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    .line 1093
    :cond_12
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset()Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 1094
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 3

    .line 1057
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    if-nez v1, :cond_6

    .line 1058
    const/4 v0, 0x0

    .line 1060
    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_5
.end method

.method public getDelimiterMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .registers 2

    .line 845
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public getIgnoredMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .registers 2

    .line 941
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public getQuoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .registers 2

    .line 897
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public getTokenArray()[Ljava/lang/String;
    .registers 2

    .line 432
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->checkTokenized()V

    .line 433
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTokenList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 442
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->checkTokenized()V

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 444
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 445
    return-object v0
.end method

.method public getTrimmerMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .registers 2

    .line 985
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    .line 502
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->checkTokenized()V

    .line 503
    iget v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hasPrevious()Z
    .registers 2

    .line 537
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->checkTokenized()V

    .line 538
    iget v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isEmptyTokenAsNull()Z
    .registers 2

    .line 1012
    iget-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->emptyAsNull:Z

    return v0
.end method

.method public isIgnoreEmptyTokens()Z
    .registers 2

    .line 1035
    iget-boolean v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoreEmptyTokens:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 89
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .registers 4

    .line 514
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 515
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 517
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .registers 2

    .line 527
    iget v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .registers 4

    .line 408
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 409
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    .line 411
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .registers 2

    .line 89
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->previous()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/String;
    .registers 3

    .line 548
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 549
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 551
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .registers 2

    .line 561
    iget v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public previousToken()Ljava/lang/String;
    .registers 3

    .line 420
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 421
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    .line 423
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public remove()V
    .registers 3

    .line 571
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    .line 456
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    .line 458
    return-object p0
.end method

.method public reset(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 3

    .line 470
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset()Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 471
    if-eqz p1, :cond_c

    .line 472
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    .line 476
    :goto_b
    return-object p0

    .line 474
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    goto :goto_b
.end method

.method public reset([C)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 3

    .line 488
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->reset()Lorg/apache/commons/lang3/text/StrTokenizer;

    .line 489
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->chars:[C

    .line 490
    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2

    .line 89
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrTokenizer;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .registers 4

    .line 581
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "set() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDelimiterChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 3

    .line 872
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 3

    .line 857
    if-nez p1, :cond_9

    .line 858
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 862
    :goto_8
    return-object p0

    .line 860
    :cond_9
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->delimMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    goto :goto_8
.end method

.method public setDelimiterString(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 3

    .line 882
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setEmptyTokenAsNull(Z)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    .line 1023
    iput-boolean p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->emptyAsNull:Z

    .line 1024
    return-object p0
.end method

.method public setIgnoreEmptyTokens(Z)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    .line 1046
    iput-boolean p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoreEmptyTokens:Z

    .line 1047
    return-object p0
.end method

.method public setIgnoredChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 3

    .line 970
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->setIgnoredMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setIgnoredMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    .line 954
    if-eqz p1, :cond_4

    .line 955
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->ignoredMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 957
    :cond_4
    return-object p0
.end method

.method public setQuoteChar(C)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 3

    .line 926
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->setQuoteMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setQuoteMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    .line 910
    if-eqz p1, :cond_4

    .line 911
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->quoteMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 913
    :cond_4
    return-object p0
.end method

.method public setTrimmerMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    .line 998
    if-eqz p1, :cond_4

    .line 999
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->trimmerMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 1001
    :cond_4
    return-object p0
.end method

.method public size()I
    .registers 2

    .line 396
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->checkTokenized()V

    .line 397
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1105
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    if-nez v0, :cond_7

    .line 1106
    const-string v0, "StrTokenizer[not tokenized yet]"

    .line 1108
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StrTokenizer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;->getTokenList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method protected tokenize([CII)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 633
    if-eqz p1, :cond_4

    if-nez p3, :cond_9

    .line 634
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 650
    :cond_8
    return-object v5

    .line 636
    :cond_9
    new-instance v4, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v4}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>()V

    .line 637
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, p2

    .line 638
    :cond_14
    :goto_14
    if-ltz v2, :cond_8

    if-ge v2, p3, :cond_8

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    .line 643
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrTokenizer;->readNextToken([CIILorg/apache/commons/lang3/text/StrBuilder;Ljava/util/List;)I

    move-result v2

    .line 646
    if-lt v2, p3, :cond_14

    .line 647
    const-string v0, ""

    invoke-direct {p0, v5, v0}, Lorg/apache/commons/lang3/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_14
.end method
