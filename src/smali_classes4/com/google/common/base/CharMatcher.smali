.class public abstract Lcom/google/common/base/CharMatcher;
.super Ljava/lang/Object;
.source "CharMatcher.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/CharMatcher$And;,
        Lcom/google/common/base/CharMatcher$Any;,
        Lcom/google/common/base/CharMatcher$AnyOf;,
        Lcom/google/common/base/CharMatcher$Ascii;,
        Lcom/google/common/base/CharMatcher$BitSetMatcher;,
        Lcom/google/common/base/CharMatcher$BreakingWhitespace;,
        Lcom/google/common/base/CharMatcher$Digit;,
        Lcom/google/common/base/CharMatcher$FastMatcher;,
        Lcom/google/common/base/CharMatcher$ForPredicate;,
        Lcom/google/common/base/CharMatcher$InRange;,
        Lcom/google/common/base/CharMatcher$Invisible;,
        Lcom/google/common/base/CharMatcher$Is;,
        Lcom/google/common/base/CharMatcher$IsEither;,
        Lcom/google/common/base/CharMatcher$IsNot;,
        Lcom/google/common/base/CharMatcher$JavaDigit;,
        Lcom/google/common/base/CharMatcher$JavaIsoControl;,
        Lcom/google/common/base/CharMatcher$JavaLetter;,
        Lcom/google/common/base/CharMatcher$JavaLetterOrDigit;,
        Lcom/google/common/base/CharMatcher$JavaLowerCase;,
        Lcom/google/common/base/CharMatcher$JavaUpperCase;,
        Lcom/google/common/base/CharMatcher$NamedFastMatcher;,
        Lcom/google/common/base/CharMatcher$Negated;,
        Lcom/google/common/base/CharMatcher$NegatedFastMatcher;,
        Lcom/google/common/base/CharMatcher$None;,
        Lcom/google/common/base/CharMatcher$Or;,
        Lcom/google/common/base/CharMatcher$RangesMatcher;,
        Lcom/google/common/base/CharMatcher$SingleWidth;,
        Lcom/google/common/base/CharMatcher$Whitespace;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
.field private static final DISTINCT_CHARS:I = 0x10000


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(C)Ljava/lang/String;
    .registers 2

    .line 64
    invoke-static {p0}, Lcom/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static any()Lcom/google/common/base/CharMatcher;
    .registers 1

    .line 118
    sget-object v0, Lcom/google/common/base/CharMatcher$Any;->INSTANCE:Lcom/google/common/base/CharMatcher$Any;

    return-object v0
.end method

.method public static anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 312
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_29

    if-eq v0, v3, :cond_20

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    .line 322
    new-instance v0, Lcom/google/common/base/CharMatcher$AnyOf;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$AnyOf;-><init>(Ljava/lang/CharSequence;)V

    :goto_12
    return-object v0

    .line 318
    :cond_13
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/base/CharMatcher;->isEither(CC)Lcom/google/common/base/CharMatcher$IsEither;

    move-result-object v0

    goto :goto_12

    .line 316
    :cond_20
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    goto :goto_12

    .line 314
    :cond_29
    invoke-static {}, Lcom/google/common/base/CharMatcher;->none()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    goto :goto_12
.end method

.method public static ascii()Lcom/google/common/base/CharMatcher;
    .registers 1

    .line 165
    sget-object v0, Lcom/google/common/base/CharMatcher$Ascii;->INSTANCE:Lcom/google/common/base/CharMatcher$Ascii;

    return-object v0
.end method

.method public static breakingWhitespace()Lcom/google/common/base/CharMatcher;
    .registers 1

    .line 156
    sget-object v0, Lcom/google/common/base/CharMatcher$BreakingWhitespace;->INSTANCE:Lcom/google/common/base/CharMatcher;

    return-object v0
.end method

.method public static digit()Lcom/google/common/base/CharMatcher;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    sget-object v0, Lcom/google/common/base/CharMatcher$Digit;->INSTANCE:Lcom/google/common/base/CharMatcher$Digit;

    return-object v0
.end method

.method private finishCollapseFrom(Ljava/lang/CharSequence;IICLjava/lang/StringBuilder;Z)Ljava/lang/String;
    .registers 10

    .line 887
    move v0, p6

    :goto_1
    if-ge p2, p3, :cond_1b

    .line 888
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 889
    invoke-virtual {p0, v1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 890
    if-nez v0, :cond_13

    .line 891
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 892
    const/4 v0, 0x1

    .line 887
    :cond_13
    :goto_13
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 895
    :cond_16
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 896
    const/4 v0, 0x0

    goto :goto_13

    .line 899
    :cond_1b
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static forPredicate(Lcom/google/common/base/Predicate;)Lcom/google/common/base/CharMatcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/lang/Character;",
            ">;)",
            "Lcom/google/common/base/CharMatcher;"
        }
    .end annotation

    .line 350
    instance-of v0, p0, Lcom/google/common/base/CharMatcher;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/google/common/base/CharMatcher;

    :goto_6
    return-object p0

    :cond_7
    new-instance v0, Lcom/google/common/base/CharMatcher$ForPredicate;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$ForPredicate;-><init>(Lcom/google/common/base/Predicate;)V

    move-object p0, v0

    goto :goto_6
.end method

.method public static inRange(CC)Lcom/google/common/base/CharMatcher;
    .registers 3

    .line 342
    new-instance v0, Lcom/google/common/base/CharMatcher$InRange;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/CharMatcher$InRange;-><init>(CC)V

    return-object v0
.end method

.method public static invisible()Lcom/google/common/base/CharMatcher;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 270
    sget-object v0, Lcom/google/common/base/CharMatcher$Invisible;->INSTANCE:Lcom/google/common/base/CharMatcher$Invisible;

    return-object v0
.end method

.method public static is(C)Lcom/google/common/base/CharMatcher;
    .registers 2

    .line 295
    new-instance v0, Lcom/google/common/base/CharMatcher$Is;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$Is;-><init>(C)V

    return-object v0
.end method

.method private static isEither(CC)Lcom/google/common/base/CharMatcher$IsEither;
    .registers 3

    .line 1689
    new-instance v0, Lcom/google/common/base/CharMatcher$IsEither;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/CharMatcher$IsEither;-><init>(CC)V

    return-object v0
.end method

.method public static isNot(C)Lcom/google/common/base/CharMatcher;
    .registers 2

    .line 304
    new-instance v0, Lcom/google/common/base/CharMatcher$IsNot;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$IsNot;-><init>(C)V

    return-object v0
.end method

.method private static isSmall(II)Z
    .registers 3

    .line 464
    const/16 v0, 0x3ff

    if-gt p0, v0, :cond_c

    mul-int/lit8 v0, p0, 0x4

    mul-int/lit8 v0, v0, 0x10

    if-le p1, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static javaDigit()Lcom/google/common/base/CharMatcher;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    sget-object v0, Lcom/google/common/base/CharMatcher$JavaDigit;->INSTANCE:Lcom/google/common/base/CharMatcher$JavaDigit;

    return-object v0
.end method

.method public static javaIsoControl()Lcom/google/common/base/CharMatcher;
    .registers 1

    .line 254
    sget-object v0, Lcom/google/common/base/CharMatcher$JavaIsoControl;->INSTANCE:Lcom/google/common/base/CharMatcher$JavaIsoControl;

    return-object v0
.end method

.method public static javaLetter()Lcom/google/common/base/CharMatcher;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    sget-object v0, Lcom/google/common/base/CharMatcher$JavaLetter;->INSTANCE:Lcom/google/common/base/CharMatcher$JavaLetter;

    return-object v0
.end method

.method public static javaLetterOrDigit()Lcom/google/common/base/CharMatcher;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 216
    sget-object v0, Lcom/google/common/base/CharMatcher$JavaLetterOrDigit;->INSTANCE:Lcom/google/common/base/CharMatcher$JavaLetterOrDigit;

    return-object v0
.end method

.method public static javaLowerCase()Lcom/google/common/base/CharMatcher;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 242
    sget-object v0, Lcom/google/common/base/CharMatcher$JavaLowerCase;->INSTANCE:Lcom/google/common/base/CharMatcher$JavaLowerCase;

    return-object v0
.end method

.method public static javaUpperCase()Lcom/google/common/base/CharMatcher;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    sget-object v0, Lcom/google/common/base/CharMatcher$JavaUpperCase;->INSTANCE:Lcom/google/common/base/CharMatcher$JavaUpperCase;

    return-object v0
.end method

.method public static none()Lcom/google/common/base/CharMatcher;
    .registers 1

    .line 127
    sget-object v0, Lcom/google/common/base/CharMatcher$None;->INSTANCE:Lcom/google/common/base/CharMatcher$None;

    return-object v0
.end method

.method public static noneOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;
    .registers 2

    .line 331
    invoke-static {p0}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/CharMatcher;->negate()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method private static precomputedPositive(ILjava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/CharMatcher;
    .registers 5

    const/4 v1, 0x0

    .line 446
    if-eqz p0, :cond_3a

    const/4 v0, 0x1

    if-eq p0, v0, :cond_30

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1f

    .line 456
    invoke-virtual {p1}, Ljava/util/BitSet;->length()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/common/base/CharMatcher;->isSmall(II)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 457
    invoke-static {p1, p2}, Lcom/google/common/base/SmallCharMatcher;->from(Ljava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    .line 456
    :goto_17
    return-object v0

    .line 457
    :cond_18
    new-instance v0, Lcom/google/common/base/CharMatcher$BitSetMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/common/base/CharMatcher$BitSetMatcher;-><init>(Ljava/util/BitSet;Ljava/lang/String;Lcom/google/common/base/CharMatcher$1;)V

    goto :goto_17

    .line 452
    :cond_1f
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    int-to-char v0, v0

    .line 453
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    int-to-char v1, v1

    .line 454
    invoke-static {v0, v1}, Lcom/google/common/base/CharMatcher;->isEither(CC)Lcom/google/common/base/CharMatcher$IsEither;

    move-result-object v0

    goto :goto_17

    .line 450
    :cond_30
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    goto :goto_17

    .line 448
    :cond_3a
    invoke-static {}, Lcom/google/common/base/CharMatcher;->none()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    goto :goto_17
.end method

.method private static showCharacter(C)Ljava/lang/String;
    .registers 7

    const/4 v5, 0x4

    const/4 v0, 0x0

    .line 926
    const/4 v1, 0x6

    new-array v1, v1, [C

    const/16 v2, 0x5c

    aput-char v2, v1, v0

    const/4 v2, 0x1

    const/16 v3, 0x75

    aput-char v3, v1, v2

    const/4 v2, 0x2

    aput-char v0, v1, v2

    const/4 v2, 0x3

    aput-char v0, v1, v2

    aput-char v0, v1, v5

    const/4 v2, 0x5

    aput-char v0, v1, v2

    .line 928
    :goto_19
    if-ge v0, v5, :cond_2d

    .line 929
    rsub-int/lit8 v2, v0, 0x5

    const-string v3, "0123456789ABCDEF"

    and-int/lit8 v4, p0, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    .line 930
    shr-int/lit8 v2, p0, 0x4

    int-to-char p0, v2

    .line 928
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 932
    :cond_2d
    invoke-static {v1}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static singleWidth()Lcom/google/common/base/CharMatcher;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 288
    sget-object v0, Lcom/google/common/base/CharMatcher$SingleWidth;->INSTANCE:Lcom/google/common/base/CharMatcher$SingleWidth;

    return-object v0
.end method

.method public static whitespace()Lcom/google/common/base/CharMatcher;
    .registers 1

    .line 145
    sget-object v0, Lcom/google/common/base/CharMatcher$Whitespace;->INSTANCE:Lcom/google/common/base/CharMatcher$Whitespace;

    return-object v0
.end method


# virtual methods
.method public and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 3

    .line 378
    new-instance v0, Lcom/google/common/base/CharMatcher$And;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/CharMatcher$And;-><init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher;)V

    return-object v0
.end method

.method public apply(Ljava/lang/Character;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 909
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    .line 838
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v0, v1

    .line 839
    :goto_6
    if-ge v0, v3, :cond_40

    .line 840
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 841
    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 842
    if-ne v2, p2, :cond_29

    add-int/lit8 v2, v3, -0x1

    if-eq v0, v2, :cond_24

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_29

    .line 844
    :cond_24
    add-int/lit8 v0, v0, 0x1

    .line 839
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 846
    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 847
    add-int/lit8 v2, v0, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/common/base/CharMatcher;->finishCollapseFrom(Ljava/lang/CharSequence;IICLjava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object v0

    .line 852
    :goto_3f
    return-object v0

    :cond_40
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f
.end method

.method public countIn(Ljava/lang/CharSequence;)I
    .registers 5

    const/4 v1, 0x0

    .line 595
    move v0, v1

    move v2, v1

    .line 596
    :goto_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v2, v1, :cond_19

    .line 597
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 598
    add-int/lit8 v0, v0, 0x1

    .line 596
    :cond_15
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 601
    :cond_19
    return v0
.end method

.method public indexIn(Ljava/lang/CharSequence;)I
    .registers 3

    .line 541
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public indexIn(Ljava/lang/CharSequence;I)I
    .registers 6

    .line 560
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 561
    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    move v0, p2

    .line 562
    :goto_8
    if-ge v0, v1, :cond_18

    .line 563
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 567
    :goto_14
    return v0

    .line 562
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 567
    :cond_18
    const/4 v0, -0x1

    goto :goto_14
.end method

.method public lastIndexIn(Ljava/lang/CharSequence;)I
    .registers 4

    .line 581
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_16

    .line 582
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 586
    :goto_12
    return v0

    .line 581
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 586
    :cond_16
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public abstract matches(C)Z
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .registers 4

    .line 507
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_17

    .line 508
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-nez v1, :cond_14

    .line 509
    const/4 v0, 0x0

    .line 512
    :goto_13
    return v0

    .line 507
    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 512
    :cond_17
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public matchesAnyOf(Ljava/lang/CharSequence;)Z
    .registers 3

    .line 493
    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->matchesNoneOf(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .registers 4

    .line 527
    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public negate()Lcom/google/common/base/CharMatcher;
    .registers 2

    .line 371
    new-instance v0, Lcom/google/common/base/CharMatcher$Negated;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$Negated;-><init>(Lcom/google/common/base/CharMatcher;)V

    return-object v0
.end method

.method public or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 3

    .line 385
    new-instance v0, Lcom/google/common/base/CharMatcher$Or;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/CharMatcher$Or;-><init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher;)V

    return-object v0
.end method

.method public precomputed()Lcom/google/common/base/CharMatcher;
    .registers 2

    .line 398
    invoke-static {p0}, Lcom/google/common/base/Platform;->precomputeCharMatcher(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method precomputedInternal()Lcom/google/common/base/CharMatcher;
    .registers 8

    const/4 v6, 0x0

    const/high16 v5, 0x10000

    .line 415
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 416
    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->setBits(Ljava/util/BitSet;)V

    .line 417
    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    .line 418
    mul-int/lit8 v0, v3, 0x2

    if-gt v0, v5, :cond_1c

    .line 419
    invoke-virtual {p0}, Lcom/google/common/base/CharMatcher;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/google/common/base/CharMatcher;->precomputedPositive(ILjava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    .line 430
    :goto_1b
    return-object v0

    .line 422
    :cond_1c
    invoke-virtual {v2, v6, v5}, Ljava/util/BitSet;->flip(II)V

    .line 423
    invoke-virtual {p0}, Lcom/google/common/base/CharMatcher;->toString()Ljava/lang/String;

    move-result-object v4

    .line 426
    const-string v0, ".negate()"

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 428
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ".negate()"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 430
    :goto_3a
    new-instance v1, Lcom/google/common/base/CharMatcher$1;

    sub-int v3, v5, v3

    invoke-static {v3, v2, v0}, Lcom/google/common/base/CharMatcher;->precomputedPositive(ILjava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-direct {v1, p0, v0, v4}, Lcom/google/common/base/CharMatcher$1;-><init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1b

    .line 428
    :cond_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".negate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a
.end method

.method public removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7

    .line 615
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 616
    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v1

    .line 617
    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    .line 630
    :goto_b
    return-object v0

    .line 621
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 622
    const/4 v0, 0x1

    .line 627
    :goto_11
    add-int/lit8 v1, v1, 0x1

    .line 629
    :goto_13
    array-length v2, v3

    if-ne v1, v2, :cond_20

    .line 630
    new-instance v2, Ljava/lang/String;

    const/4 v4, 0x0

    sub-int v0, v1, v0

    invoke-direct {v2, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v2

    goto :goto_b

    .line 632
    :cond_20
    aget-char v2, v3, v1

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 633
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 635
    :cond_2b
    sub-int v2, v1, v0

    aget-char v4, v3, v1

    aput-char v4, v3, v2

    .line 636
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method public replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 6

    .line 677
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 678
    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v1

    .line 679
    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    .line 689
    :goto_b
    return-object v0

    .line 682
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 683
    aput-char p2, v2, v1

    .line 684
    add-int/lit8 v0, v1, 0x1

    :goto_14
    array-length v1, v2

    if-ge v0, v1, :cond_24

    .line 685
    aget-char v1, v2, v0

    invoke-virtual {p0, v1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 686
    aput-char p2, v2, v0

    .line 684
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 689
    :cond_24
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_b
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    const/4 v6, -0x1

    .line 711
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 712
    if-nez v1, :cond_d

    .line 713
    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 737
    :goto_c
    return-object v0

    .line 715
    :cond_d
    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 716
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 719
    :cond_19
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 720
    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v1

    .line 721
    if-ne v1, v6, :cond_25

    move-object v0, v2

    .line 722
    goto :goto_c

    .line 725
    :cond_25
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 726
    new-instance v4, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v3, 0x3

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x10

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 730
    :cond_34
    invoke-virtual {v4, v2, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 731
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 732
    add-int/lit8 v0, v1, 0x1

    .line 733
    invoke-virtual {p0, v2, v0}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 734
    if-ne v1, v6, :cond_34

    .line 736
    invoke-virtual {v4, v2, v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 737
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public retainFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3

    .line 654
    invoke-virtual {p0}, Lcom/google/common/base/CharMatcher;->negate()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setBits(Ljava/util/BitSet;)V
    .registers 4

    .line 472
    const v0, 0xffff

    :goto_3
    if-ltz v0, :cond_12

    .line 473
    int-to-char v1, v0

    invoke-virtual {p0, v1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 474
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 472
    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 477
    :cond_12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 918
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trimAndCollapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 10

    const/4 v6, 0x0

    .line 862
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 864
    add-int/lit8 v0, v1, -0x1

    move v2, v6

    .line 866
    :goto_8
    if-ge v2, v1, :cond_17

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 867
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 870
    :cond_17
    :goto_17
    if-le v0, v2, :cond_26

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 871
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 874
    :cond_26
    if-nez v2, :cond_31

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_31

    .line 875
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/CharMatcher;->collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    .line 874
    :goto_30
    return-object v0

    .line 875
    :cond_31
    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v0, 0x1

    sub-int/2addr v1, v2

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 876
    add-int/lit8 v3, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/common/base/CharMatcher;->finishCollapseFrom(Ljava/lang/CharSequence;IICLjava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_30
.end method

.method public trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5

    .line 759
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 763
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_12

    .line 764
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 768
    :cond_12
    add-int/lit8 v0, v2, -0x1

    :goto_14
    if-le v0, v1, :cond_20

    .line 769
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 774
    :cond_20
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 763
    :cond_2b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 768
    :cond_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_14
.end method

.method public trimLeadingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5

    .line 788
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 789
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_1d

    .line 790
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 791
    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 794
    :goto_19
    return-object v0

    .line 789
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 794
    :cond_1d
    const-string v0, ""

    goto :goto_19
.end method

.method public trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    .line 808
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 809
    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_21

    .line 810
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 811
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 814
    :goto_1d
    return-object v0

    .line 809
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 814
    :cond_21
    const-string v0, ""

    goto :goto_1d
.end method
