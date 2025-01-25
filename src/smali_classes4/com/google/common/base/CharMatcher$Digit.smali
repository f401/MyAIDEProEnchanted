.class final Lcom/google/common/base/CharMatcher$Digit;
.super Lcom/google/common/base/CharMatcher$RangesMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Digit"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/base/CharMatcher$Digit;

.field private static final ZEROES:Ljava/lang/String; = "0٠۰߀०০੦૦୦௦౦೦൦෦๐໐༠၀႐០᠐᥆᧐᪀᪐᭐᮰᱀᱐꘠꣐꤀꧐꧰꩐꯰０"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1350
    new-instance v0, Lcom/google/common/base/CharMatcher$Digit;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$Digit;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$Digit;->INSTANCE:Lcom/google/common/base/CharMatcher$Digit;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 1353
    const-string v0, "CharMatcher.digit()"

    invoke-static {}, Lcom/google/common/base/CharMatcher$Digit;->zeroes()[C

    move-result-object v1

    invoke-static {}, Lcom/google/common/base/CharMatcher$Digit;->nines()[C

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/common/base/CharMatcher$RangesMatcher;-><init>(Ljava/lang/String;[C[C)V

    .line 1354
    return-void
.end method

.method private static nines()[C
    .registers 3

    .line 1343
    const-string v0, "0٠۰߀०০੦૦୦௦౦೦൦෦๐໐༠၀႐០᠐᥆᧐᪀᪐᭐᮰᱀᱐꘠꣐꤀꧐꧰꩐꯰０"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [C

    .line 1344
    const/4 v0, 0x0

    :goto_9
    const-string v2, "0٠۰߀०০੦૦୦௦౦೦൦෦๐໐༠၀႐០᠐᥆᧐᪀᪐᭐᮰᱀᱐꘠꣐꤀꧐꧰꩐꯰０"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 1345
    const-string v2, "0٠۰߀०০੦૦୦௦౦೦൦෦๐໐༠၀႐០᠐᥆᧐᪀᪐᭐᮰᱀᱐꘠꣐꤀꧐꧰꩐꯰０"

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, 0x9

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 1344
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1347
    :cond_1f
    return-object v1
.end method

.method private static zeroes()[C
    .registers 1

    .line 1339
    const-string v0, "0٠۰߀०০੦૦୦௦౦೦൦෦๐໐༠၀႐០᠐᥆᧐᪀᪐᭐᮰᱀᱐꘠꣐꤀꧐꧰꩐꯰０"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method
