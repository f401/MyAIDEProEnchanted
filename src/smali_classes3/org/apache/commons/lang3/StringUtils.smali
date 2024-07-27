.class public Lorg/apache/commons/lang3/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field public static final CR:Ljava/lang/String; = "\r"

.field public static final EMPTY:Ljava/lang/String; = ""

.field public static final INDEX_NOT_FOUND:I = -0x1

.field public static final LF:Ljava/lang/String; = "\n"

.field private static final PAD_LIMIT:I = 0x2000

.field public static final SPACE:Ljava/lang/String; = " "

.field private static final STRING_BUILDER_SIZE:I = 0x100

.field private static final STRIP_ACCENTS_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 188
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/StringUtils;->STRIP_ACCENTS_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9648
    return-void
.end method

.method public static abbreviate(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 222
    const-string v0, "..."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static abbreviate(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4

    .line 261
    const-string v0, "..."

    invoke-static {p0, v0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static abbreviate(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 301
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static abbreviate(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 341
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez p3, :cond_1

    .line 342
    invoke-static {p0, v6, p3}, Lorg/apache/commons/lang3/StringUtils;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 372
    :cond_0
    :goto_0
    return-object p0

    .line 343
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object p0, v0, v6

    aput-object p1, v0, v7

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isAnyEmpty([Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 347
    add-int/lit8 v0, v2, 0x1

    .line 348
    add-int v1, v2, v2

    add-int/lit8 v3, v1, 0x1

    .line 350
    if-lt p3, v0, :cond_6

    .line 353
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 354
    if-le v1, p3, :cond_0

    .line 357
    if-le p2, v1, :cond_7

    move v0, v1

    .line 360
    :goto_1
    sub-int v4, v1, v0

    sub-int v5, p3, v2

    if-ge v4, v5, :cond_2

    .line 361
    sub-int v0, p3, v2

    sub-int v0, v1, v0

    .line 363
    :cond_2
    add-int/lit8 v4, v2, 0x1

    if-gt v0, v4, :cond_3

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v1, p3, v2

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 366
    :cond_3
    if-lt p3, v3, :cond_5

    .line 369
    add-int v3, v0, p3

    sub-int/2addr v3, v2

    if-ge v3, v1, :cond_4

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sub-int v2, p3, v2

    invoke-static {v0, p1, v2}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 372
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v2, p3, v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 367
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum abbreviation width with offset is %d"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Minimum abbreviation width is %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    move v0, p2

    goto/16 :goto_1
.end method

.method public static abbreviateMiddle(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 9

    const/4 v5, 0x0

    .line 405
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object p0, v0, v5

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isAnyEmpty([Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    if-ge p2, v0, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-object p0

    .line 409
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p2, v0

    .line 410
    div-int/lit8 v1, v0, 0x2

    .line 411
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    sub-int v0, v2, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static varargs appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7

    .line 430
    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-object p0

    .line 433
    :cond_1
    invoke-static {p3}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    array-length v1, p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v2, p3, v0

    .line 435
    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 440
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    .line 478
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs appendIfMissingIgnoreCase(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    .line 516
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v5, 0x0

    .line 541
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v2

    .line 542
    if-nez v2, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-object p0

    .line 546
    :cond_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 547
    invoke-static {v0}, Ljava/lang/Character;->toTitleCase(I)I

    move-result v3

    .line 548
    if-eq v0, v3, :cond_0

    .line 553
    new-array v4, v2, [I

    .line 554
    const/4 v1, 0x1

    aput v3, v4, v5

    .line 556
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    :goto_1
    if-ge v0, v2, :cond_2

    .line 557
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 558
    aput v3, v4, v1

    .line 559
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 560
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 561
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, v5, v1}, Ljava/lang/String;-><init>([III)V

    goto :goto_0
.end method

.method public static center(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 588
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->center(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static center(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 5

    .line 616
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-object p0

    .line 619
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 620
    sub-int v1, p1, v0

    .line 621
    if-lez v1, :cond_0

    .line 624
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {p0, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static center(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 656
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-object p0

    .line 659
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 660
    const-string p2, " "

    .line 662
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 663
    sub-int v1, p1, v0

    .line 664
    if-lez v1, :cond_0

    .line 667
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {p0, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 668
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static chomp(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/16 v4, 0xa

    const/4 v3, 0x0

    const/16 v2, 0xd

    .line 698
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 720
    :cond_0
    :goto_0
    return-object p0

    .line 702
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 703
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 704
    if-eq v0, v2, :cond_2

    if-ne v0, v4, :cond_0

    .line 705
    :cond_2
    const-string p0, ""

    goto :goto_0

    .line 710
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 711
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 713
    if-ne v1, v4, :cond_5

    .line 714
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_4

    .line 715
    add-int/lit8 v0, v0, -0x1

    .line 720
    :cond_4
    :goto_1
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 717
    :cond_5
    if-eq v1, v2, :cond_4

    .line 718
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static chomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 752
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static chop(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    .line 779
    if-nez p0, :cond_1

    .line 780
    const/4 v0, 0x0

    .line 792
    :cond_0
    :goto_0
    return-object v0

    .line 782
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 783
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 784
    const-string v0, ""

    goto :goto_0

    .line 786
    :cond_2
    add-int/lit8 v1, v0, -0x1

    .line 787
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 788
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 789
    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 790
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 828
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 5

    const/4 v1, 0x1

    .line 866
    if-ne p0, p1, :cond_1

    .line 867
    const/4 v0, 0x0

    .line 875
    :cond_0
    :goto_0
    return v0

    .line 869
    :cond_1
    const/4 v0, -0x1

    if-nez p0, :cond_2

    .line 870
    if-nez p2, :cond_0

    move v0, v1

    goto :goto_0

    .line 872
    :cond_2
    if-nez p1, :cond_3

    .line 873
    if-eqz p2, :cond_4

    :goto_1
    move v0, v1

    goto :goto_0

    .line 875
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method public static compareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 916
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->compareIgnoreCase(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static compareIgnoreCase(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 5

    const/4 v1, 0x1

    .line 959
    if-ne p0, p1, :cond_1

    .line 960
    const/4 v0, 0x0

    .line 968
    :cond_0
    :goto_0
    return v0

    .line 962
    :cond_1
    const/4 v0, -0x1

    if-nez p0, :cond_2

    .line 963
    if-nez p2, :cond_0

    move v0, v1

    goto :goto_0

    .line 965
    :cond_2
    if-nez p1, :cond_3

    .line 966
    if-eqz p2, :cond_4

    :goto_1
    move v0, v1

    goto :goto_0

    .line 968
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method public static contains(Ljava/lang/CharSequence;I)Z
    .registers 4

    const/4 v0, 0x0

    .line 1021
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1024
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 4

    const/4 v0, 0x0

    .line 994
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 997
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static containsAny(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3

    .line 1114
    if-nez p1, :cond_0

    .line 1115
    const/4 v0, 0x0

    .line 1117
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSequenceUtils;->toCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->containsAny(Ljava/lang/CharSequence;[C)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs containsAny(Ljava/lang/CharSequence;[C)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1053
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 1079
    :cond_1
    :goto_0
    return v0

    .line 1056
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 1057
    array-length v5, p1

    move v3, v1

    .line 1058
    :goto_1
    if-ge v3, v4, :cond_5

    .line 1061
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move v2, v1

    .line 1062
    :goto_2
    if-ge v2, v5, :cond_4

    .line 1063
    aget-char v7, p1, v2

    if-ne v7, v6, :cond_3

    .line 1064
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1065
    add-int/lit8 v7, v5, -0x1

    if-eq v2, v7, :cond_1

    .line 1069
    add-int/lit8 v7, v4, -0x1

    if-ge v3, v7, :cond_3

    add-int/lit8 v7, v2, 0x1

    aget-char v7, p1, v7

    add-int/lit8 v8, v3, 0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_1

    .line 1062
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1060
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_5
    move v0, v1

    .line 1079
    goto :goto_0
.end method

.method public static varargs containsAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 3

    .line 1148
    sget-object v0, Lorg/apache/commons/lang3/StringUtils$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/commons/lang3/StringUtils$$ExternalSyntheticLambda1;

    invoke-static {v0, p0, p1}, Lorg/apache/commons/lang3/StringUtils;->containsAny(Lorg/apache/commons/lang3/function/ToBooleanBiFunction;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static varargs containsAny(Lorg/apache/commons/lang3/function/ToBooleanBiFunction;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/ToBooleanBiFunction",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/CharSequence;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1169
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1177
    :cond_0
    :goto_0
    return v0

    .line 1172
    :cond_1
    array-length v2, p2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p2, v1

    .line 1173
    invoke-interface {p0, p1, v3}, Lorg/apache/commons/lang3/function/ToBooleanBiFunction;->applyAsBoolean(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1174
    const/4 v0, 0x1

    goto :goto_0

    .line 1172
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static varargs containsAnyIgnoreCase(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 3

    .line 1210
    sget-object v0, Lorg/apache/commons/lang3/StringUtils$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/commons/lang3/StringUtils$$ExternalSyntheticLambda2;

    invoke-static {v0, p0, p1}, Lorg/apache/commons/lang3/StringUtils;->containsAny(Lorg/apache/commons/lang3/function/ToBooleanBiFunction;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1238
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1248
    :cond_0
    :goto_0
    return v4

    .line 1241
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 1242
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move v2, v4

    .line 1243
    :goto_1
    sub-int v0, v6, v5

    if-gt v2, v0, :cond_0

    move-object v0, p0

    move-object v3, p1

    .line 1244
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_2

    move v4, v1

    .line 1245
    goto :goto_0

    .line 1243
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static containsNone(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 3

    .line 1328
    if-nez p1, :cond_0

    .line 1329
    const/4 v0, 0x1

    .line 1331
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->containsNone(Ljava/lang/CharSequence;[C)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs containsNone(Ljava/lang/CharSequence;[C)Z
    .registers 11

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1275
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    .line 1301
    :cond_1
    :goto_0
    return v0

    .line 1278
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 1279
    array-length v5, p1

    move v3, v0

    .line 1281
    :goto_1
    if-ge v3, v4, :cond_5

    .line 1283
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move v2, v0

    .line 1284
    :goto_2
    if-ge v2, v5, :cond_4

    .line 1285
    aget-char v7, p1, v2

    if-ne v7, v6, :cond_3

    .line 1286
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1287
    add-int/lit8 v7, v5, -0x1

    if-eq v2, v7, :cond_1

    .line 1291
    add-int/lit8 v7, v4, -0x1

    if-ge v3, v7, :cond_3

    add-int/lit8 v7, v2, 0x1

    aget-char v7, p1, v7

    add-int/lit8 v8, v3, 0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_1

    .line 1284
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1282
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_5
    move v0, v1

    .line 1301
    goto :goto_0
.end method

.method public static containsOnly(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 3

    .line 1394
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1395
    :cond_0
    const/4 v0, 0x0

    .line 1397
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->containsOnly(Ljava/lang/CharSequence;[C)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs containsOnly(Ljava/lang/CharSequence;[C)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1358
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v0, v1

    .line 1367
    :cond_1
    :goto_0
    return v0

    .line 1361
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1364
    array-length v2, p1

    if-nez v2, :cond_3

    move v0, v1

    .line 1365
    goto :goto_0

    .line 1367
    :cond_3
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->indexOfAnyBut(Ljava/lang/CharSequence;[C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public static containsWhitespace(Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 v0, 0x0

    .line 1412
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1421
    :cond_0
    :goto_0
    return v0

    .line 1415
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 1416
    :goto_1
    if-ge v1, v2, :cond_0

    .line 1417
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1418
    const/4 v0, 0x1

    goto :goto_0

    .line 1416
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static convertRemainingAccentCharacters(Ljava/lang/StringBuilder;)V
    .registers 4

    .line 1425
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1426
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x141

    if-ne v1, v2, :cond_1

    .line 1427
    const/16 v1, 0x4c

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1425
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1428
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x142

    if-ne v1, v2, :cond_0

    .line 1429
    const/16 v1, 0x6c

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 1432
    :cond_2
    return-void
.end method

.method public static countMatches(Ljava/lang/CharSequence;C)I
    .registers 5

    const/4 v1, 0x0

    .line 1454
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1464
    :goto_0
    return v1

    :cond_0
    move v0, v1

    move v2, v1

    .line 1459
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 1460
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1461
    add-int/lit8 v0, v0, 0x1

    .line 1459
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    move v1, v0

    .line 1464
    goto :goto_0
.end method

.method public static countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 5

    const/4 v1, 0x0

    .line 1490
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v2, v1

    .line 1499
    :cond_1
    return v2

    :cond_2
    move v0, v1

    move v2, v1

    .line 1495
    :goto_0
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1496
    add-int/lit8 v1, v2, 0x1

    .line 1497
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v0, v2

    move v2, v1

    goto :goto_0
.end method

.method public static defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 1523
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static defaultIfEmpty(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 1545
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static defaultString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1565
    const-string v0, ""

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1586
    if-nez p0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    .line 1604
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1621
    :cond_0
    :goto_0
    return-object p0

    .line 1607
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1608
    new-array v4, v3, [C

    move v0, v1

    move v2, v1

    .line 1610
    :goto_1
    if-ge v2, v3, :cond_3

    .line 1611
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1612
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    .line 1610
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1615
    :cond_3
    if-eq v0, v3, :cond_0

    .line 1618
    if-nez v0, :cond_4

    .line 1619
    const-string p0, ""

    goto :goto_0

    .line 1621
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, v1, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public static difference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1653
    if-nez p0, :cond_0

    .line 1663
    :goto_0
    return-object p1

    .line 1656
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .line 1657
    goto :goto_0

    .line 1659
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 1660
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1661
    const-string p1, ""

    goto :goto_0

    .line 1663
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3

    .line 1691
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .registers 9

    const/4 v4, 0x0

    .line 1706
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 1707
    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v4, 0x1

    .line 1713
    :cond_1
    :goto_0
    return v4

    .line 1709
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 1712
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1713
    sub-int v2, v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p2

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v4

    goto :goto_0
.end method

.method public static varargs endsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v0, 0x0

    .line 1738
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1746
    :cond_0
    :goto_0
    return v0

    .line 1741
    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 1742
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1743
    const/4 v0, 0x1

    goto :goto_0

    .line 1741
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3

    .line 1773
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1799
    if-ne p0, p1, :cond_1

    .line 1818
    :cond_0
    :goto_0
    return v0

    .line 1802
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v0, v1

    .line 1803
    goto :goto_0

    .line 1805
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 1806
    goto :goto_0

    .line 1808
    :cond_4
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_5

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 1809
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1812
    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v2, v1

    .line 1813
    :goto_1
    if-ge v2, v3, :cond_0

    .line 1814
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_6

    move v0, v1

    .line 1815
    goto :goto_0

    .line 1813
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static varargs equalsAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v0, 0x0

    .line 1841
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1842
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 1843
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1844
    const/4 v0, 0x1

    .line 1848
    :cond_0
    return v0

    .line 1842
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static varargs equalsAnyIgnoreCase(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v0, 0x0

    .line 1871
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1872
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 1873
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1874
    const/4 v0, 0x1

    .line 1878
    :cond_0
    return v0

    .line 1872
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1903
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 1912
    :cond_0
    :goto_0
    return v2

    .line 1906
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1909
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 1912
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v2

    goto :goto_0
.end method

.method public static varargs firstNonBlank([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">([TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1942
    if-eqz p0, :cond_1

    .line 1943
    array-length v2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    .line 1944
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1949
    :goto_1
    return-object v0

    .line 1943
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1949
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static varargs firstNonEmpty([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">([TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1977
    if-eqz p0, :cond_1

    .line 1978
    array-length v2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    .line 1979
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1984
    :goto_1
    return-object v0

    .line 1978
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1984
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2011
    if-nez p0, :cond_0

    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/Charsets;->toCharsetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .registers 3

    .line 1997
    if-nez p0, :cond_0

    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs getCommonPrefix([Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    .line 2048
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2049
    const-string v0, ""

    .line 2063
    :goto_0
    return-object v0

    .line 2051
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->indexOfDifference([Ljava/lang/CharSequence;)I

    move-result v0

    .line 2052
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2054
    aget-object v0, p0, v2

    if-nez v0, :cond_1

    .line 2055
    const-string v0, ""

    goto :goto_0

    .line 2057
    :cond_1
    aget-object v0, p0, v2

    goto :goto_0

    .line 2058
    :cond_2
    if-nez v0, :cond_3

    .line 2060
    const-string v0, ""

    goto :goto_0

    .line 2063
    :cond_3
    aget-object v1, p0, v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDigits(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 2090
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2101
    :goto_0
    return-object p0

    .line 2093
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2094
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2095
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 2096
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2097
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2098
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2095
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2101
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getFuzzyDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/Locale;)I
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    .line 2135
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 2137
    if-eqz p2, :cond_3

    .line 2145
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 2146
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 2156
    const/high16 v2, -0x80000000

    move v0, v1

    move v3, v1

    move v4, v1

    .line 2158
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 2159
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v5, v1

    .line 2162
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_2

    if-nez v5, :cond_2

    .line 2163
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 2165
    if-ne v8, v9, :cond_1

    .line 2167
    add-int/lit8 v0, v0, 0x1

    .line 2171
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_0

    .line 2172
    add-int/lit8 v0, v0, 0x2

    .line 2179
    :cond_0
    const/4 v5, 0x1

    move v2, v4

    .line 2162
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2158
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2138
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Locale must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2136
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2184
    :cond_5
    return v0
.end method

.method public static getIfBlank(Ljava/lang/CharSequence;Ljava/util/function/Supplier;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/util/function/Supplier",
            "<TT;>;)TT;"
        }
    .end annotation

    .line 2213
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static getIfEmpty(Ljava/lang/CharSequence;Ljava/util/function/Supplier;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/util/function/Supplier",
            "<TT;>;)TT;"
        }
    .end annotation

    .line 2241
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static getJaroWinklerDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)D
    .registers 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/16 v0, 0x0

    .line 2281
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 2287
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->matches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I

    move-result-object v2

    .line 2288
    const/4 v3, 0x0

    aget v3, v2, v3

    int-to-double v4, v3

    .line 2289
    cmpl-double v3, v4, v0

    if-nez v3, :cond_0

    .line 2294
    :goto_0
    return-wide v0

    .line 2292
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v0, v4, v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-double v6, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double v6, v4, v6

    const/4 v3, 0x1

    aget v3, v2, v3

    int-to-double v8, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v6

    sub-double v6, v4, v8

    div-double v4, v6, v4

    add-double/2addr v0, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v4

    .line 2293
    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpg-double v3, v0, v4

    if-gez v3, :cond_1

    .line 2294
    :goto_1
    mul-double/2addr v0, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v12

    goto :goto_0

    .line 2293
    :cond_1
    const/4 v3, 0x3

    aget v3, v2, v3

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v6, 0x3fb999999999999aL    # 0.1

    div-double v4, v10, v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    const/4 v3, 0x2

    aget v2, v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v2, v4

    sub-double v4, v10, v0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    goto :goto_1

    .line 2284
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2334
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 2338
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 2339
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 2341
    if-nez v2, :cond_0

    .line 2384
    :goto_0
    return v3

    .line 2343
    :cond_0
    if-nez v3, :cond_1

    move v3, v2

    .line 2344
    goto :goto_0

    .line 2347
    :cond_1
    if-le v2, v3, :cond_7

    .line 2353
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object v0, p1

    move-object v1, p0

    move v2, v3

    .line 2356
    :goto_1
    add-int/lit8 v3, v2, 0x1

    new-array v9, v3, [I

    .line 2366
    const/4 v3, 0x0

    :goto_2
    if-gt v3, v2, :cond_2

    .line 2367
    aput v3, v9, v3

    .line 2366
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2370
    :cond_2
    const/4 v3, 0x1

    move v8, v3

    :goto_3
    if-gt v8, v4, :cond_5

    .line 2371
    const/4 v3, 0x0

    aget v3, v9, v3

    .line 2372
    add-int/lit8 v5, v8, -0x1

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 2373
    const/4 v5, 0x0

    aput v8, v9, v5

    .line 2375
    const/4 v6, 0x1

    move v5, v3

    move v7, v6

    :goto_4
    if-gt v7, v2, :cond_4

    .line 2376
    aget v6, v9, v7

    .line 2377
    add-int/lit8 v3, v7, -0x1

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v10, :cond_3

    const/4 v3, 0x0

    .line 2379
    :goto_5
    add-int/lit8 v11, v7, -0x1

    aget v11, v9, v11

    add-int/lit8 v11, v11, 0x1

    aget v12, v9, v7

    add-int/lit8 v12, v12, 0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/2addr v3, v5

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v9, v7

    .line 2375
    add-int/lit8 v3, v7, 0x1

    move v5, v6

    move v7, v3

    goto :goto_4

    .line 2377
    :cond_3
    const/4 v3, 0x1

    goto :goto_5

    .line 2370
    :cond_4
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto :goto_3

    .line 2384
    :cond_5
    aget v3, v9, v2

    goto :goto_0

    .line 2335
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v0, p0

    move-object v1, p1

    move v4, v3

    goto :goto_1
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2424
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    .line 2427
    if-ltz p2, :cond_d

    .line 2475
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 2476
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2479
    const/4 v1, -0x1

    if-nez v2, :cond_0

    .line 2480
    if-gt v0, p2, :cond_f

    .line 2552
    :goto_0
    return v0

    .line 2481
    :cond_0
    if-nez v0, :cond_2

    .line 2482
    if-gt v2, p2, :cond_1

    move v1, v2

    :cond_1
    move v0, v1

    goto :goto_0

    .line 2483
    :cond_2
    sub-int v1, v2, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, p2, :cond_3

    .line 2485
    const/4 v0, -0x1

    goto :goto_0

    .line 2488
    :cond_3
    if-le v2, v0, :cond_4

    .line 2490
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move-object v1, p0

    move-object v3, p1

    move v4, v2

    move v5, v0

    .line 2497
    :goto_1
    add-int/lit8 v0, v5, 0x1

    new-array v2, v0, [I

    .line 2498
    add-int/lit8 v0, v5, 0x1

    new-array v8, v0, [I

    .line 2502
    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v6, v0, 0x1

    .line 2503
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v6, :cond_5

    .line 2504
    aput v0, v2, v0

    .line 2503
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move-object v1, p1

    move-object v3, p0

    move v4, v0

    move v5, v2

    .line 2488
    goto :goto_1

    .line 2508
    :cond_5
    array-length v0, v2

    const v7, 0x7fffffff

    invoke-static {v2, v6, v0, v7}, Ljava/util/Arrays;->fill([IIII)V

    .line 2509
    const v0, 0x7fffffff

    invoke-static {v8, v0}, Ljava/util/Arrays;->fill([II)V

    .line 2512
    const/4 v0, 0x1

    move v6, v0

    move-object v7, v2

    :goto_3
    if-gt v6, v4, :cond_b

    .line 2513
    add-int/lit8 v0, v6, -0x1

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 2514
    const/4 v0, 0x0

    aput v6, v8, v0

    .line 2517
    const/4 v0, 0x1

    sub-int v2, v6, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2518
    const v2, 0x7fffffff

    sub-int/2addr v2, p2

    if-le v6, v2, :cond_6

    move v2, v5

    .line 2521
    :goto_4
    if-le v0, v2, :cond_7

    .line 2522
    const/4 v0, -0x1

    goto :goto_0

    .line 2518
    :cond_6
    add-int v2, v6, p2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_4

    .line 2526
    :cond_7
    const/4 v10, 0x1

    if-le v0, v10, :cond_8

    .line 2527
    add-int/lit8 v10, v0, -0x1

    const v11, 0x7fffffff

    aput v11, v8, v10

    .line 2531
    :cond_8
    :goto_5
    if-gt v0, v2, :cond_a

    .line 2532
    add-int/lit8 v10, v0, -0x1

    invoke-interface {v3, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v10, v9, :cond_9

    .line 2534
    add-int/lit8 v10, v0, -0x1

    aget v10, v7, v10

    aput v10, v8, v0

    .line 2531
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2537
    :cond_9
    add-int/lit8 v10, v0, -0x1

    aget v10, v8, v10

    aget v11, v7, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/lit8 v11, v0, -0x1

    aget v11, v7, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v0

    goto :goto_6

    .line 2512
    :cond_a
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move-object v12, v8

    move-object v8, v7

    move-object v7, v12

    goto :goto_3

    .line 2549
    :cond_b
    aget v0, v7, v5

    if-gt v0, p2, :cond_c

    .line 2550
    aget v0, v7, v5

    goto/16 :goto_0

    .line 2552
    :cond_c
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 2428
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Threshold must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2425
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move v0, v1

    goto/16 :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;I)I
    .registers 3

    .line 2664
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2665
    const/4 v0, -0x1

    .line 2667
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;II)I
    .registers 4

    .line 2724
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2725
    const/4 v0, -0x1

    .line 2727
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3

    .line 2580
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2581
    :cond_0
    const/4 v0, -0x1

    .line 2583
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4

    .line 2620
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2621
    :cond_0
    const/4 v0, -0x1

    .line 2623
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOfAny(Ljava/lang/CharSequence;Ljava/lang/String;)I
    .registers 3

    .line 2856
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2857
    :cond_0
    const/4 v0, -0x1

    .line 2859
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->indexOfAny(Ljava/lang/CharSequence;[C)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[C)I
    .registers 11

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 2754
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    .line 2776
    :cond_1
    :goto_0
    return v0

    .line 2757
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 2758
    array-length v5, p1

    move v0, v3

    .line 2760
    :goto_1
    if-ge v0, v4, :cond_5

    .line 2762
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move v2, v3

    .line 2763
    :goto_2
    if-ge v2, v5, :cond_4

    .line 2764
    aget-char v7, p1, v2

    if-ne v7, v6, :cond_3

    .line 2765
    add-int/lit8 v7, v4, -0x1

    if-ge v0, v7, :cond_1

    add-int/lit8 v7, v5, -0x1

    if-ge v2, v7, :cond_1

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2767
    add-int/lit8 v7, v2, 0x1

    aget-char v7, p1, v7

    add-int/lit8 v8, v0, 0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_1

    .line 2763
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2761
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    .line 2776
    goto :goto_0
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .registers 9

    const v5, 0x7fffffff

    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 2807
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v2

    .line 2829
    :cond_1
    :goto_0
    return v0

    .line 2814
    :cond_2
    array-length v6, p1

    move v3, v4

    move v0, v5

    :goto_1
    if-ge v3, v6, :cond_5

    aget-object v1, p1, v3

    .line 2816
    if-nez v1, :cond_4

    .line 2815
    :cond_3
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 2819
    :cond_4
    invoke-static {p0, v1, v4}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    .line 2820
    if-eq v1, v2, :cond_3

    .line 2824
    if-ge v1, v0, :cond_3

    move v0, v1

    .line 2825
    goto :goto_2

    .line 2829
    :cond_5
    if-ne v0, v5, :cond_1

    move v0, v2

    goto :goto_0
.end method

.method public static indexOfAnyBut(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 9

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 2937
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    .line 2953
    :cond_1
    :goto_0
    return v0

    .line 2940
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move v0, v3

    .line 2941
    :goto_1
    if-ge v0, v4, :cond_6

    .line 2942
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 2943
    invoke-static {p1, v5, v3}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v2

    if-ltz v2, :cond_4

    const/4 v2, 0x1

    .line 2944
    :goto_2
    add-int/lit8 v6, v0, 0x1

    if-ge v6, v4, :cond_5

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2945
    add-int/lit8 v5, v0, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 2946
    if-eqz v2, :cond_3

    invoke-static {p1, v5, v3}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v2

    if-ltz v2, :cond_1

    .line 2949
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v2, v3

    .line 2943
    goto :goto_2

    .line 2949
    :cond_5
    if-nez v2, :cond_3

    goto :goto_0

    :cond_6
    move v0, v1

    .line 2953
    goto :goto_0
.end method

.method public static varargs indexOfAnyBut(Ljava/lang/CharSequence;[C)I
    .registers 11

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 2887
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    .line 2910
    :cond_1
    :goto_0
    return v0

    .line 2890
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 2891
    array-length v5, p1

    move v0, v3

    .line 2893
    :goto_1
    if-ge v0, v4, :cond_5

    .line 2896
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move v2, v3

    .line 2897
    :goto_2
    if-ge v2, v5, :cond_1

    .line 2898
    aget-char v7, p1, v2

    if-ne v7, v6, :cond_4

    .line 2899
    add-int/lit8 v7, v4, -0x1

    if-ge v0, v7, :cond_3

    add-int/lit8 v7, v5, -0x1

    if-ge v2, v7, :cond_3

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2900
    add-int/lit8 v7, v2, 0x1

    aget-char v7, p1, v7

    add-int/lit8 v8, v0, 0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_4

    .line 2895
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2897
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    .line 2910
    goto :goto_0
.end method

.method public static indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 3072
    if-ne p0, p1, :cond_1

    move v0, v1

    .line 3087
    :cond_0
    :goto_0
    return v0

    .line 3075
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 3079
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3080
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_3

    .line 3084
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    move v0, v1

    .line 3087
    goto :goto_0

    .line 3079
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static varargs indexOfDifference([Ljava/lang/CharSequence;)I
    .registers 12

    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 2989
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v1, :cond_1

    move v4, v6

    .line 3043
    :cond_0
    :goto_0
    return v4

    .line 2994
    :cond_1
    array-length v8, p0

    .line 2995
    const v5, 0x7fffffff

    .line 3001
    array-length v9, p0

    move v0, v4

    move v2, v4

    move v3, v1

    move v7, v4

    :goto_1
    if-ge v7, v9, :cond_3

    aget-object v10, p0, v7

    .line 3002
    if-nez v10, :cond_2

    move v0, v1

    move v5, v4

    .line 3001
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3007
    :cond_2
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 3008
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v3, v4

    goto :goto_2

    .line 3013
    :cond_3
    if-nez v3, :cond_4

    if-nez v2, :cond_5

    if-nez v0, :cond_5

    :cond_4
    move v4, v6

    .line 3014
    goto :goto_0

    .line 3018
    :cond_5
    if-eqz v5, :cond_0

    move v0, v6

    move v3, v4

    .line 3024
    :goto_3
    if-ge v3, v5, :cond_9

    .line 3025
    aget-object v7, p0, v4

    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    move v7, v1

    .line 3026
    :goto_4
    if-ge v7, v8, :cond_6

    .line 3027
    aget-object v10, p0, v7

    invoke-interface {v10, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-eq v10, v9, :cond_7

    move v0, v3

    .line 3032
    :cond_6
    if-eq v0, v6, :cond_8

    move v4, v0

    .line 3037
    :goto_5
    if-ne v4, v6, :cond_0

    if-eq v5, v2, :cond_0

    move v4, v5

    .line 3041
    goto :goto_0

    .line 3026
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 3024
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    move v4, v0

    goto :goto_5
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3

    .line 3116
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 11

    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 3152
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move p2, v6

    .line 3170
    :cond_1
    :goto_0
    return p2

    .line 3155
    :cond_2
    if-gez p2, :cond_3

    move p2, v4

    .line 3158
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v7, v0, 0x1

    .line 3159
    if-le p2, v7, :cond_4

    move p2, v6

    .line 3160
    goto :goto_0

    .line 3162
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1

    move v2, p2

    .line 3165
    :goto_1
    if-ge v2, v7, :cond_6

    .line 3166
    const/4 v1, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_5

    move p2, v2

    .line 3167
    goto :goto_0

    .line 3165
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move p2, v6

    .line 3170
    goto :goto_0
.end method

.method public static varargs isAllBlank([Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3195
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3203
    :cond_0
    :goto_0
    return v0

    .line 3198
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, p0, v2

    .line 3199
    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    .line 3200
    goto :goto_0

    .line 3198
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static varargs isAllEmpty([Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3226
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3234
    :cond_0
    :goto_0
    return v0

    .line 3229
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, p0, v2

    .line 3230
    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    .line 3231
    goto :goto_0

    .line 3229
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isAllLowerCase(Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 v0, 0x0

    .line 3260
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3269
    :cond_0
    :goto_0
    return v0

    .line 3263
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 3264
    :goto_1
    if-ge v1, v2, :cond_2

    .line 3265
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3264
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3269
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAllUpperCase(Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 v0, 0x0

    .line 3295
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3304
    :cond_0
    :goto_0
    return v0

    .line 3298
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 3299
    :goto_1
    if-ge v1, v2, :cond_2

    .line 3300
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3299
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3304
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAlpha(Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 v0, 0x0

    .line 3328
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3337
    :cond_0
    :goto_0
    return v0

    .line 3331
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 3332
    :goto_1
    if-ge v1, v2, :cond_2

    .line 3333
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3332
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3337
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAlphaSpace(Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v0, 0x0

    .line 3434
    if-nez p0, :cond_1

    .line 3444
    :cond_0
    :goto_0
    return v0

    .line 3437
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 3438
    :goto_1
    if-ge v1, v2, :cond_3

    .line 3439
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 3440
    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3438
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3444
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAlphanumeric(Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 v0, 0x0

    .line 3363
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3372
    :cond_0
    :goto_0
    return v0

    .line 3366
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 3367
    :goto_1
    if-ge v1, v2, :cond_2

    .line 3368
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3367
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3372
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAlphanumericSpace(Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v0, 0x0

    .line 3398
    if-nez p0, :cond_1

    .line 3408
    :cond_0
    :goto_0
    return v0

    .line 3401
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 3402
    :goto_1
    if-ge v1, v2, :cond_3

    .line 3403
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 3404
    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3402
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3408
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static varargs isAnyBlank([Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 v0, 0x0

    .line 3471
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3479
    :cond_0
    :goto_0
    return v0

    .line 3474
    :cond_1
    array-length v2, p0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    .line 3475
    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3476
    const/4 v0, 0x1

    goto :goto_0

    .line 3474
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static varargs isAnyEmpty([Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 v0, 0x0

    .line 3503
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3511
    :cond_0
    :goto_0
    return v0

    .line 3506
    :cond_1
    array-length v2, p0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    .line 3507
    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3508
    const/4 v0, 0x1

    goto :goto_0

    .line 3506
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isAsciiPrintable(Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 v0, 0x0

    .line 3541
    if-nez p0, :cond_1

    .line 3550
    :cond_0
    :goto_0
    return v0

    .line 3544
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 3545
    :goto_1
    if-ge v1, v2, :cond_2

    .line 3546
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/lang3/CharUtils;->isAsciiPrintable(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3545
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3550
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isBlank(Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3572
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v3

    .line 3573
    if-nez v3, :cond_1

    .line 3581
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v2, v1

    .line 3576
    :goto_1
    if-ge v2, v3, :cond_0

    .line 3577
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v1

    .line 3578
    goto :goto_0

    .line 3576
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .registers 2

    .line 3604
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMixedCase(Ljava/lang/CharSequence;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 3630
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v0, v1, :cond_2

    :cond_0
    move v1, v3

    .line 3645
    :cond_1
    :goto_0
    return v1

    .line 3635
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move v2, v3

    move v0, v3

    move v4, v3

    .line 3636
    :goto_1
    if-ge v4, v5, :cond_6

    .line 3637
    if-eqz v0, :cond_3

    if-nez v2, :cond_1

    .line 3639
    :cond_3
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_5

    move v0, v1

    .line 3636
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3641
    :cond_5
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v1

    .line 3642
    goto :goto_2

    .line 3645
    :cond_6
    if-eqz v0, :cond_7

    if-nez v2, :cond_1

    :cond_7
    move v1, v3

    goto :goto_0
.end method

.method public static varargs isNoneBlank([Ljava/lang/CharSequence;)Z
    .registers 2

    .line 3672
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isAnyBlank([Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static varargs isNoneEmpty([Ljava/lang/CharSequence;)Z
    .registers 2

    .line 3696
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isAnyEmpty([Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotBlank(Ljava/lang/CharSequence;)Z
    .registers 2

    .line 3719
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty(Ljava/lang/CharSequence;)Z
    .registers 2

    .line 3738
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNumeric(Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 v0, 0x0

    .line 3773
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3782
    :cond_0
    :goto_0
    return v0

    .line 3776
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 3777
    :goto_1
    if-ge v1, v2, :cond_2

    .line 3778
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3777
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3782
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNumericSpace(Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v0, 0x0

    .line 3812
    if-nez p0, :cond_1

    .line 3822
    :cond_0
    :goto_0
    return v0

    .line 3815
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 3816
    :goto_1
    if-ge v1, v2, :cond_3

    .line 3817
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 3818
    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3816
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3822
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isWhitespace(Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 v0, 0x0

    .line 3848
    if-nez p0, :cond_1

    .line 3857
    :cond_0
    :goto_0
    return v0

    .line 3851
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 3852
    :goto_1
    if-ge v1, v2, :cond_2

    .line 3853
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3852
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3857
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static join(Ljava/lang/Iterable;C)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4335
    if-nez p0, :cond_0

    .line 4336
    const/4 v0, 0x0

    .line 4338
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4356
    if-nez p0, :cond_0

    .line 4357
    const/4 v0, 0x0

    .line 4359
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join(Ljava/util/Iterator;C)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4379
    if-nez p0, :cond_0

    .line 4380
    const/4 v0, 0x0

    .line 4404
    :goto_0
    return-object v0

    .line 4382
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4383
    const-string v0, ""

    goto :goto_0

    .line 4385
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4386
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4387
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->toStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4391
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4392
    if-eqz v0, :cond_3

    .line 4393
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4396
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4397
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4398
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4399
    if-eqz v0, :cond_3

    .line 4400
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4404
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4423
    if-nez p0, :cond_0

    .line 4424
    const/4 v0, 0x0

    .line 4449
    :goto_0
    return-object v0

    .line 4426
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4427
    const-string v0, ""

    goto :goto_0

    .line 4429
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4430
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4431
    const-string v1, ""

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4435
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4436
    if-eqz v0, :cond_3

    .line 4437
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4440
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4441
    if-eqz p1, :cond_4

    .line 4442
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4444
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4445
    if-eqz v0, :cond_3

    .line 4446
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4449
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join(Ljava/util/List;CII)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;CII)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4479
    if-nez p0, :cond_0

    .line 4480
    const/4 v0, 0x0

    .line 4487
    :goto_0
    return-object v0

    .line 4482
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 4484
    const-string v0, ""

    goto :goto_0

    .line 4486
    :cond_1
    invoke-interface {p0, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 4487
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join(Ljava/util/List;Ljava/lang/String;II)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4517
    if-nez p0, :cond_0

    .line 4518
    const/4 v0, 0x0

    .line 4525
    :goto_0
    return-object v0

    .line 4520
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 4522
    const-string v0, ""

    goto :goto_0

    .line 4524
    :cond_1
    invoke-interface {p0, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 4525
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([BC)Ljava/lang/String;
    .registers 4

    .line 3961
    if-nez p0, :cond_0

    .line 3962
    const/4 v0, 0x0

    .line 3964
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([BCII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([BCII)Ljava/lang/String;
    .registers 6

    .line 3999
    if-nez p0, :cond_0

    .line 4000
    const/4 v0, 0x0

    .line 4009
    :goto_0
    return-object v0

    .line 4002
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 4003
    const-string v0, ""

    goto :goto_0

    .line 4005
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->newStringJoiner(C)Ljava/util/StringJoiner;

    move-result-object v0

    .line 4006
    :goto_1
    if-ge p2, p3, :cond_2

    .line 4007
    aget-byte v1, p0, p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 4006
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 4009
    :cond_2
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([CC)Ljava/lang/String;
    .registers 4

    .line 4038
    if-nez p0, :cond_0

    .line 4039
    const/4 v0, 0x0

    .line 4041
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([CCII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([CCII)Ljava/lang/String;
    .registers 6

    .line 4076
    if-nez p0, :cond_0

    .line 4077
    const/4 v0, 0x0

    .line 4086
    :goto_0
    return-object v0

    .line 4079
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 4080
    const-string v0, ""

    goto :goto_0

    .line 4082
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->newStringJoiner(C)Ljava/util/StringJoiner;

    move-result-object v0

    .line 4083
    :goto_1
    if-ge p2, p3, :cond_2

    .line 4084
    aget-char v1, p0, p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 4083
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 4086
    :cond_2
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([DC)Ljava/lang/String;
    .registers 4

    .line 4115
    if-nez p0, :cond_0

    .line 4116
    const/4 v0, 0x0

    .line 4118
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([DCII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([DCII)Ljava/lang/String;
    .registers 8

    .line 4153
    if-nez p0, :cond_0

    .line 4154
    const/4 v0, 0x0

    .line 4163
    :goto_0
    return-object v0

    .line 4156
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 4157
    const-string v0, ""

    goto :goto_0

    .line 4159
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->newStringJoiner(C)Ljava/util/StringJoiner;

    move-result-object v0

    .line 4160
    :goto_1
    if-ge p2, p3, :cond_2

    .line 4161
    aget-wide v2, p0, p2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 4160
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 4163
    :cond_2
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([FC)Ljava/lang/String;
    .registers 4

    .line 4192
    if-nez p0, :cond_0

    .line 4193
    const/4 v0, 0x0

    .line 4195
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([FCII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([FCII)Ljava/lang/String;
    .registers 6

    .line 4230
    if-nez p0, :cond_0

    .line 4231
    const/4 v0, 0x0

    .line 4240
    :goto_0
    return-object v0

    .line 4233
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 4234
    const-string v0, ""

    goto :goto_0

    .line 4236
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->newStringJoiner(C)Ljava/util/StringJoiner;

    move-result-object v0

    .line 4237
    :goto_1
    if-ge p2, p3, :cond_2

    .line 4238
    aget v1, p0, p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 4237
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 4240
    :cond_2
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([IC)Ljava/lang/String;
    .registers 4

    .line 4269
    if-nez p0, :cond_0

    .line 4270
    const/4 v0, 0x0

    .line 4272
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([ICII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([ICII)Ljava/lang/String;
    .registers 6

    .line 4307
    if-nez p0, :cond_0

    .line 4308
    const/4 v0, 0x0

    .line 4317
    :goto_0
    return-object v0

    .line 4310
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 4311
    const-string v0, ""

    goto :goto_0

    .line 4313
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->newStringJoiner(C)Ljava/util/StringJoiner;

    move-result-object v0

    .line 4314
    :goto_1
    if-ge p2, p3, :cond_2

    .line 4315
    aget v1, p0, p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 4314
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 4317
    :cond_2
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([JC)Ljava/lang/String;
    .registers 4

    .line 4555
    if-nez p0, :cond_0

    .line 4556
    const/4 v0, 0x0

    .line 4558
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([JCII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([JCII)Ljava/lang/String;
    .registers 8

    .line 4593
    if-nez p0, :cond_0

    .line 4594
    const/4 v0, 0x0

    .line 4603
    :goto_0
    return-object v0

    .line 4596
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 4597
    const-string v0, ""

    goto :goto_0

    .line 4599
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->newStringJoiner(C)Ljava/util/StringJoiner;

    move-result-object v0

    .line 4600
    :goto_1
    if-ge p2, p3, :cond_2

    .line 4601
    aget-wide v2, p0, p2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 4600
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 4603
    :cond_2
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs join([Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 4855
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;C)Ljava/lang/String;
    .registers 4

    .line 4629
    if-nez p0, :cond_0

    .line 4630
    const/4 v0, 0x0

    .line 4632
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;CII)Ljava/lang/String;
    .registers 6

    .line 4662
    if-nez p0, :cond_0

    .line 4663
    const/4 v0, 0x0

    .line 4672
    :goto_0
    return-object v0

    .line 4665
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 4666
    const-string v0, ""

    goto :goto_0

    .line 4668
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->newStringJoiner(C)Ljava/util/StringJoiner;

    move-result-object v0

    .line 4669
    :goto_1
    if-ge p2, p3, :cond_2

    .line 4670
    aget-object v1, p0, p2

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->toStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 4669
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 4672
    :cond_2
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 4699
    if-nez p0, :cond_0

    .line 4700
    const/4 v0, 0x0

    .line 4702
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .registers 6

    .line 4741
    if-nez p0, :cond_0

    .line 4742
    const/4 v0, 0x0

    .line 4751
    :goto_0
    return-object v0

    .line 4744
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 4745
    const-string v0, ""

    goto :goto_0

    .line 4747
    :cond_1
    new-instance v0, Ljava/util/StringJoiner;

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->toStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 4748
    :goto_1
    if-ge p2, p3, :cond_2

    .line 4749
    aget-object v1, p0, p2

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->toStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 4748
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 4751
    :cond_2
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([SC)Ljava/lang/String;
    .registers 4

    .line 4780
    if-nez p0, :cond_0

    .line 4781
    const/4 v0, 0x0

    .line 4783
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([SCII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([SCII)Ljava/lang/String;
    .registers 6

    .line 4818
    if-nez p0, :cond_0

    .line 4819
    const/4 v0, 0x0

    .line 4828
    :goto_0
    return-object v0

    .line 4821
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 4822
    const-string v0, ""

    goto :goto_0

    .line 4824
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->newStringJoiner(C)Ljava/util/StringJoiner;

    move-result-object v0

    .line 4825
    :goto_1
    if-ge p2, p3, :cond_2

    .line 4826
    aget-short v1, p0, p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 4825
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 4828
    :cond_2
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([ZC)Ljava/lang/String;
    .registers 4

    .line 3885
    if-nez p0, :cond_0

    .line 3886
    const/4 v0, 0x0

    .line 3888
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([ZCII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([ZCII)Ljava/lang/String;
    .registers 6

    .line 3922
    if-nez p0, :cond_0

    .line 3923
    const/4 v0, 0x0

    .line 3932
    :goto_0
    return-object v0

    .line 3925
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 3926
    const-string v0, ""

    goto :goto_0

    .line 3928
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->newStringJoiner(C)Ljava/util/StringJoiner;

    move-result-object v0

    .line 3929
    :goto_1
    if-ge p2, p3, :cond_2

    .line 3930
    aget-boolean v1, p0, p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 3929
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 3932
    :cond_2
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs joinWith(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 4879
    if-eqz p1, :cond_0

    .line 4882
    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4880
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object varargs must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;I)I
    .registers 3

    .line 4989
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4990
    const/4 v0, -0x1

    .line 4992
    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;II)I
    .registers 4

    .line 5040
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5041
    const/4 v0, -0x1

    .line 5043
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3

    .line 4909
    if-nez p0, :cond_0

    .line 4910
    const/4 v0, -0x1

    .line 4912
    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4

    .line 4951
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static varargs lastIndexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .registers 7

    const/4 v0, -0x1

    .line 5073
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 5087
    :cond_0
    return v0

    .line 5077
    :cond_1
    array-length v3, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p1, v2

    .line 5079
    if-nez v1, :cond_3

    .line 5078
    :cond_2
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 5082
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {p0, v1, v4}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    .line 5083
    if-le v1, v0, :cond_2

    move v0, v1

    .line 5084
    goto :goto_1
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3

    .line 5114
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 5115
    :cond_0
    const/4 v0, -0x1

    .line 5117
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 10

    const/4 v6, -0x1

    .line 5153
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v2, v6

    .line 5173
    :cond_1
    :goto_0
    return v2

    .line 5156
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 5157
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 5158
    sub-int v1, v0, v5

    if-le p2, v1, :cond_5

    .line 5159
    sub-int v2, v0, v5

    .line 5161
    :goto_1
    if-gez v2, :cond_3

    move v2, v6

    .line 5162
    goto :goto_0

    .line 5164
    :cond_3
    if-eqz v5, :cond_1

    .line 5168
    :goto_2
    if-ltz v2, :cond_4

    .line 5169
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5168
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    move v2, v6

    .line 5173
    goto :goto_0

    :cond_5
    move v2, p2

    goto :goto_1
.end method

.method public static lastOrdinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4

    .line 5211
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method public static left(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 5235
    if-nez p0, :cond_1

    .line 5236
    const/4 p0, 0x0

    .line 5244
    :cond_0
    :goto_0
    return-object p0

    .line 5238
    :cond_1
    if-gez p1, :cond_2

    .line 5239
    const-string p0, ""

    goto :goto_0

    .line 5241
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 5244
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static leftPad(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 5267
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static leftPad(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 5

    .line 5292
    if-nez p0, :cond_1

    .line 5293
    const/4 p0, 0x0

    .line 5302
    :cond_0
    :goto_0
    return-object p0

    .line 5295
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    .line 5296
    if-lez v0, :cond_0

    .line 5299
    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 5300
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5302
    :cond_2
    invoke-static {p2, v0}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    .line 5329
    if-nez p0, :cond_1

    .line 5330
    const/4 p0, 0x0

    .line 5355
    :cond_0
    :goto_0
    return-object p0

    .line 5332
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5333
    const-string p2, " "

    .line 5335
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 5336
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 5337
    sub-int v2, p1, v2

    .line 5338
    if-lez v2, :cond_0

    .line 5341
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    const/16 v3, 0x2000

    if-gt v2, v3, :cond_3

    .line 5342
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5345
    :cond_3
    if-ne v2, v1, :cond_4

    .line 5346
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5347
    :cond_4
    if-ge v2, v1, :cond_5

    .line 5348
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5350
    :cond_5
    new-array v3, v2, [C

    .line 5351
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 5352
    :goto_1
    if-ge v0, v2, :cond_6

    .line 5353
    rem-int v5, v0, v1

    aget-char v5, v4, v5

    aput-char v5, v3, v0

    .line 5352
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5355
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static length(Ljava/lang/CharSequence;)I
    .registers 2

    .line 5371
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method public static lowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 5394
    if-nez p0, :cond_0

    .line 5395
    const/4 v0, 0x0

    .line 5397
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static lowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    .line 5417
    if-nez p0, :cond_0

    .line 5418
    const/4 v0, 0x0

    .line 5420
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/LocaleUtils;->toLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static matches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I
    .registers 16

    const/4 v13, 0x1

    const/4 v12, -0x1

    const/4 v3, 0x0

    .line 5426
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    move-object v0, p1

    move-object v1, p0

    .line 5433
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 5434
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    new-array v7, v2, [I

    .line 5435
    invoke-static {v7, v12}, Ljava/util/Arrays;->fill([II)V

    .line 5436
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    new-array v8, v2, [Z

    move v2, v3

    move v4, v3

    .line 5438
    :goto_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 5439
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 5440
    sub-int v5, v2, v6

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int v10, v2, v6

    add-int/lit8 v10, v10, 0x1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    :goto_2
    if-ge v5, v10, :cond_0

    .line 5441
    aget-boolean v11, v8, v5

    if-nez v11, :cond_2

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ne v9, v11, :cond_2

    .line 5442
    aput v5, v7, v2

    .line 5443
    aput-boolean v13, v8, v5

    .line 5444
    add-int/lit8 v4, v4, 0x1

    .line 5438
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v0, p0

    move-object v1, p1

    .line 5431
    goto :goto_0

    .line 5440
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 5449
    :cond_3
    new-array v6, v4, [C

    .line 5450
    new-array v9, v4, [C

    move v2, v3

    move v5, v3

    .line 5451
    :goto_3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v5, v10, :cond_5

    .line 5452
    aget v10, v7, v5

    if-eq v10, v12, :cond_4

    .line 5453
    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    aput-char v10, v6, v2

    .line 5454
    add-int/lit8 v2, v2, 0x1

    .line 5451
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    move v2, v3

    move v5, v3

    .line 5457
    :goto_4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 5458
    aget-boolean v7, v8, v5

    if-eqz v7, :cond_6

    .line 5459
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    aput-char v7, v9, v2

    .line 5460
    add-int/lit8 v2, v2, 0x1

    .line 5457
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    move v2, v3

    move v5, v3

    .line 5464
    :goto_5
    array-length v7, v6

    if-ge v2, v7, :cond_9

    .line 5465
    aget-char v7, v6, v2

    aget-char v8, v9, v2

    if-eq v7, v8, :cond_8

    .line 5466
    add-int/lit8 v5, v5, 0x1

    .line 5464
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    move v2, v3

    move v6, v3

    .line 5470
    :goto_6
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_a

    .line 5471
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_a

    .line 5472
    add-int/lit8 v2, v2, 0x1

    .line 5470
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 5477
    :cond_a
    const/4 v0, 0x4

    new-array v0, v0, [I

    aput v4, v0, v3

    div-int/lit8 v3, v5, 0x2

    aput v3, v0, v13

    const/4 v3, 0x2

    aput v2, v0, v3

    const/4 v2, 0x3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    aput v1, v0, v2

    return-object v0
.end method

.method public static mid(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5

    .line 5506
    if-nez p0, :cond_0

    .line 5507
    const/4 v0, 0x0

    .line 5518
    :goto_0
    return-object v0

    .line 5509
    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 5510
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 5512
    :cond_2
    if-gez p1, :cond_3

    .line 5513
    const/4 p1, 0x0

    .line 5515
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, p2

    if-gt v0, v1, :cond_4

    .line 5516
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5518
    :cond_4
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static newStringJoiner(C)Ljava/util/StringJoiner;
    .registers 3

    .line 5522
    new-instance v0, Ljava/util/StringJoiner;

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static normalizeSpace(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 5569
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5594
    :goto_0
    return-object p0

    .line 5572
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 5573
    new-array v8, v7, [C

    move v4, v3

    move v2, v5

    move v6, v3

    move v0, v3

    .line 5577
    :goto_1
    if-ge v6, v7, :cond_4

    .line 5578
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 5579
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    .line 5580
    if-eqz v9, :cond_2

    .line 5581
    if-nez v4, :cond_1

    if-nez v2, :cond_1

    .line 5582
    const-string v1, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v8, v0

    add-int/lit8 v0, v0, 0x1

    .line 5584
    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v1, v2

    .line 5577
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move v2, v1

    goto :goto_1

    .line 5587
    :cond_2
    const/16 v2, 0xa0

    if-ne v1, v2, :cond_3

    const/16 v1, 0x20

    :cond_3
    aput-char v1, v8, v0

    .line 5588
    add-int/lit8 v0, v0, 0x1

    move v1, v3

    move v4, v3

    goto :goto_2

    .line 5591
    :cond_4
    if-eqz v2, :cond_5

    .line 5592
    const-string p0, ""

    goto :goto_0

    .line 5594
    :cond_5
    if-lez v4, :cond_6

    move v1, v5

    :goto_3
    new-instance v2, Ljava/lang/String;

    sub-int/2addr v0, v1

    invoke-direct {v2, v8, v3, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_3
.end method

.method public static ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4

    .line 5648
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method private static ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I
    .registers 8

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 5667
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-gtz p2, :cond_2

    :cond_0
    move v0, v1

    .line 5688
    :cond_1
    :goto_0
    return v0

    .line 5670
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 5671
    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0

    .line 5676
    :cond_3
    if-eqz p3, :cond_5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v2, v0

    move v3, v1

    .line 5678
    :goto_1
    if-eqz p3, :cond_4

    .line 5679
    add-int/lit8 v0, v3, -0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    .line 5683
    :goto_2
    if-ltz v0, :cond_1

    .line 5686
    add-int/lit8 v1, v2, 0x1

    .line 5687
    if-ge v1, p2, :cond_1

    move v2, v1

    move v3, v0

    goto :goto_1

    .line 5681
    :cond_4
    add-int/lit8 v0, v3, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_2

    :cond_5
    move v2, v0

    move v3, v1

    goto :goto_1
.end method

.method public static overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 9

    const/4 v4, 0x0

    .line 5721
    if-nez p0, :cond_0

    .line 5722
    const/4 v0, 0x0

    .line 5745
    :goto_0
    return-object v0

    .line 5724
    :cond_0
    if-nez p1, :cond_1

    .line 5725
    const-string p1, ""

    .line 5727
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5728
    if-gez p2, :cond_6

    move v2, v4

    .line 5731
    :goto_1
    if-le v2, v1, :cond_2

    move v2, v1

    .line 5734
    :cond_2
    if-gez p3, :cond_5

    move v0, v4

    .line 5737
    :goto_2
    if-le v0, v1, :cond_4

    .line 5740
    :goto_3
    if-le v2, v1, :cond_3

    move v0, v1

    move v3, v2

    .line 5745
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5747
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v2

    move v3, v1

    goto :goto_4

    :cond_4
    move v1, v0

    goto :goto_3

    :cond_5
    move v0, p3

    goto :goto_2

    :cond_6
    move v2, p2

    goto :goto_1
.end method

.method private static varargs prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7

    .line 5762
    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5772
    :cond_0
    :goto_0
    return-object p0

    .line 5765
    :cond_1
    invoke-static {p3}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5766
    array-length v1, p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v2, p3, v0

    .line 5767
    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5766
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5772
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    .line 5810
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs prependIfMissingIgnoreCase(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    .line 5848
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static remove(Ljava/lang/String;C)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    .line 5871
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 5881
    :cond_0
    :goto_0
    return-object p0

    .line 5874
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    move v0, v1

    move v2, v1

    .line 5876
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 5877
    aget-char v4, v3, v2

    if-eq v4, p1, :cond_2

    .line 5878
    aget-char v4, v3, v2

    aput-char v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    .line 5876
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5881
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public static remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 5908
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5911
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, ""

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5961
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RegExUtils;->removeAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 5989
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5995
    :cond_0
    :goto_0
    return-object p0

    .line 5992
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5993
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeEndIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 6025
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6031
    :cond_0
    :goto_0
    return-object p0

    .line 6028
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6029
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6080
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 6117
    const-string v0, ""

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6154
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RegExUtils;->removePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 6182
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6188
    :cond_0
    :goto_0
    return-object p0

    .line 6185
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6186
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeStartIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 6217
    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6218
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 6220
    :cond_0
    return-object p0
.end method

.method public static repeat(CI)Ljava/lang/String;
    .registers 4

    .line 6246
    if-gtz p1, :cond_0

    .line 6247
    const-string v0, ""

    .line 6251
    :goto_0
    return-object v0

    .line 6249
    :cond_0
    new-array v1, p1, [C

    .line 6250
    invoke-static {v1, p0}, Ljava/util/Arrays;->fill([CC)V

    .line 6251
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 6274
    if-nez p0, :cond_1

    .line 6275
    const/4 p0, 0x0

    .line 6306
    :cond_0
    :goto_0
    return-object p0

    .line 6277
    :cond_1
    if-gtz p1, :cond_2

    .line 6278
    const-string p0, ""

    goto :goto_0

    .line 6280
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 6281
    if-eq p1, v3, :cond_0

    if-eqz v1, :cond_0

    .line 6284
    if-ne v1, v3, :cond_3

    const/16 v2, 0x2000

    if-gt p1, v2, :cond_3

    .line 6285
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6288
    :cond_3
    mul-int v2, v1, p1

    .line 6289
    packed-switch v1, :pswitch_data_0

    .line 6302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6303
    :goto_1
    if-ge v0, p1, :cond_5

    .line 6304
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6303
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6293
    :pswitch_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 6294
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 6295
    new-array v2, v2, [C

    .line 6296
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, -0x2

    :goto_2
    if-ltz v0, :cond_4

    .line 6297
    aput-char v1, v2, v0

    .line 6298
    add-int/lit8 v4, v0, 0x1

    aput-char v3, v2, v4

    .line 6296
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 6300
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 6291
    :pswitch_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6306
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static repeat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 6331
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 6332
    :cond_0
    invoke-static {p0, p2}, Lorg/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6336
    :goto_0
    return-object v0

    .line 6335
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6336
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 6363
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 6395
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 13

    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 6430
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 6454
    :cond_0
    :goto_0
    return-object p0

    .line 6433
    :cond_1
    if-eqz p4, :cond_2

    .line 6434
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 6437
    :cond_2
    if-eqz p4, :cond_3

    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang3/StringUtils;->indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    .line 6438
    :goto_1
    if-eq v2, v7, :cond_0

    .line 6441
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 6442
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 6443
    if-gez p3, :cond_4

    const/16 v0, 0x10

    .line 6444
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/2addr v0, v4

    add-int/2addr v0, v6

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v2

    .line 6445
    :goto_3
    if-eq v0, v7, :cond_7

    .line 6446
    invoke-virtual {v5, p0, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6447
    add-int v1, v0, v3

    .line 6448
    add-int/lit8 p3, p3, -0x1

    if-nez p3, :cond_5

    move v0, v1

    .line 6453
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v5, p0, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 6454
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6437
    :cond_3
    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang3/StringUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    goto :goto_1

    .line 6443
    :cond_4
    const/16 v0, 0x40

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    .line 6451
    :cond_5
    if-eqz p4, :cond_6

    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang3/StringUtils;->indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_3

    :cond_6
    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang3/StringUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_4
.end method

.method public static replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6509
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/RegExUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceChars(Ljava/lang/String;CC)Ljava/lang/String;
    .registers 4

    .line 6533
    if-nez p0, :cond_0

    .line 6534
    const/4 v0, 0x0

    .line 6536
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    .line 6576
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6601
    :cond_0
    :goto_0
    return-object p0

    .line 6579
    :cond_1
    if-nez p2, :cond_2

    .line 6580
    const-string p2, ""

    .line 6583
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 6584
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 6585
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    move v2, v1

    .line 6586
    :goto_1
    if-ge v2, v4, :cond_5

    .line 6587
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 6588
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 6589
    if-ltz v6, :cond_4

    .line 6590
    const/4 v0, 0x1

    .line 6591
    if-ge v6, v3, :cond_3

    .line 6592
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6586
    :cond_3
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 6595
    :cond_4
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 6598
    :cond_5
    if-eqz v0, :cond_0

    .line 6599
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 6644
    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;
    .registers 16

    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 6704
    if-gez p4, :cond_0

    .line 6705
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6706
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6707
    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 6708
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6714
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p4, v5, :cond_3

    .line 6820
    :cond_1
    :goto_0
    return-object p0

    .line 6709
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Aborting to protect against StackOverflowError - output of one loop is the input of another"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6718
    :cond_3
    array-length v7, p1

    .line 6719
    array-length v0, p2

    .line 6722
    if-ne v7, v0, :cond_14

    .line 6730
    new-array v8, v7, [Z

    move v2, v5

    move v0, v5

    move v3, v4

    .line 6735
    :goto_1
    if-ge v3, v7, :cond_8

    .line 6740
    aget-boolean v1, v8, v3

    if-nez v1, :cond_4

    aget-object v1, p1, v3

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    aget-object v1, p2, v3

    if-nez v1, :cond_5

    .line 6739
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6743
    :cond_5
    aget-object v1, p1, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 6746
    if-ne v1, v5, :cond_6

    .line 6747
    aput-boolean v10, v8, v3

    goto :goto_2

    .line 6748
    :cond_6
    if-eq v0, v5, :cond_7

    if-ge v1, v0, :cond_4

    :cond_7
    move v0, v1

    move v2, v3

    .line 6750
    goto :goto_2

    .line 6756
    :cond_8
    if-eq v0, v5, :cond_1

    move v1, v4

    move v3, v4

    .line 6766
    :goto_3
    array-length v6, p1

    if-ge v3, v6, :cond_b

    .line 6767
    aget-object v6, p1, v3

    if-eqz v6, :cond_9

    aget-object v6, p2, v3

    if-nez v6, :cond_a

    .line 6766
    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 6770
    :cond_a
    aget-object v6, p2, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    aget-object v9, p1, v3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v6, v9

    .line 6771
    if-lez v6, :cond_9

    .line 6772
    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v1, v6

    goto :goto_4

    .line 6776
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x5

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 6778
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, v4

    .line 6780
    :goto_5
    if-eq v0, v5, :cond_12

    .line 6782
    :goto_6
    if-ge v1, v0, :cond_c

    .line 6783
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6782
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 6785
    :cond_c
    aget-object v1, p2, v2

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6787
    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int v6, v0, v1

    move v2, v5

    move v0, v5

    move v3, v4

    .line 6789
    :goto_7
    if-ge v3, v7, :cond_11

    .line 6794
    aget-boolean v1, v8, v3

    if-nez v1, :cond_d

    aget-object v1, p1, v3

    if-eqz v1, :cond_d

    aget-object v1, p1, v3

    .line 6795
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    aget-object v1, p2, v3

    if-nez v1, :cond_e

    .line 6793
    :cond_d
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 6798
    :cond_e
    aget-object v1, p1, v3

    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 6801
    if-ne v1, v5, :cond_f

    .line 6802
    aput-boolean v10, v8, v3

    goto :goto_8

    .line 6803
    :cond_f
    if-eq v0, v5, :cond_10

    if-ge v1, v0, :cond_d

    :cond_10
    move v0, v1

    move v2, v3

    .line 6805
    goto :goto_8

    :cond_11
    move v1, v6

    .line 6793
    goto :goto_5

    .line 6811
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    .line 6812
    :goto_9
    if-ge v0, v2, :cond_13

    .line 6813
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6812
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 6815
    :cond_13
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6816
    if-eqz p3, :cond_1

    .line 6820
    add-int/lit8 v0, p4, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 6723
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Search and Replace array lengths don\'t match: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static replaceEachRepeatedly(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 6868
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 6869
    :goto_0
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6868
    :cond_0
    array-length v0, p1

    goto :goto_0
.end method

.method public static replaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6922
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/RegExUtils;->replaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 6950
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 6983
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 7010
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceOnceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 7039
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replacePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7085
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/RegExUtils;->replacePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reverse(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 7103
    if-nez p0, :cond_0

    .line 7104
    const/4 v0, 0x0

    .line 7106
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static reverseDelimited(Ljava/lang/String;C)Ljava/lang/String;
    .registers 3

    .line 7129
    if-nez p0, :cond_0

    .line 7130
    const/4 v0, 0x0

    .line 7136
    :goto_0
    return-object v0

    .line 7134
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    .line 7135
    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([Ljava/lang/Object;)V

    .line 7136
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static right(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 7160
    if-nez p0, :cond_1

    .line 7161
    const/4 p0, 0x0

    .line 7169
    :cond_0
    :goto_0
    return-object p0

    .line 7163
    :cond_1
    if-gez p1, :cond_2

    .line 7164
    const-string p0, ""

    goto :goto_0

    .line 7166
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 7169
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static rightPad(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 7192
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rightPad(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 5

    .line 7217
    if-nez p0, :cond_1

    .line 7218
    const/4 p0, 0x0

    .line 7227
    :cond_0
    :goto_0
    return-object p0

    .line 7220
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    .line 7221
    if-lez v0, :cond_0

    .line 7224
    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 7225
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 7227
    :cond_2
    invoke-static {p2, v0}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    .line 7254
    if-nez p0, :cond_1

    .line 7255
    const/4 p0, 0x0

    .line 7280
    :cond_0
    :goto_0
    return-object p0

    .line 7257
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7258
    const-string p2, " "

    .line 7260
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 7261
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 7262
    sub-int v2, p1, v2

    .line 7263
    if-lez v2, :cond_0

    .line 7266
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    const/16 v3, 0x2000

    if-gt v2, v3, :cond_3

    .line 7267
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 7270
    :cond_3
    if-ne v2, v1, :cond_4

    .line 7271
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 7272
    :cond_4
    if-ge v2, v1, :cond_5

    .line 7273
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 7275
    :cond_5
    new-array v3, v2, [C

    .line 7276
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 7277
    :goto_1
    if-ge v0, v2, :cond_6

    .line 7278
    rem-int v5, v0, v1

    aget-char v5, v4, v5

    aput-char v5, v3, v0

    .line 7277
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7280
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static rotate(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 7311
    if-nez p0, :cond_1

    .line 7312
    const/4 p0, 0x0

    .line 7324
    :cond_0
    :goto_0
    return-object p0

    .line 7315
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 7316
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    rem-int v1, p1, v0

    if-eqz v1, :cond_0

    .line 7320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7321
    rem-int v0, p1, v0

    neg-int v0, v0

    .line 7322
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->substring(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7323
    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Lorg/apache/commons/lang3/StringUtils;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7324
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 7350
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 3

    .line 7378
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 7407
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4

    .line 7441
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByCharacterType(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 7464
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 11

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 7482
    if-nez p0, :cond_0

    .line 7483
    const/4 v0, 0x0

    .line 7510
    :goto_0
    return-object v0

    .line 7485
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7486
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 7488
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 7489
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7491
    aget-char v0, v5, v1

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    move v2, v3

    .line 7492
    :goto_1
    array-length v4, v5

    if-ge v2, v4, :cond_5

    .line 7493
    aget-char v4, v5, v2

    invoke-static {v4}, Ljava/lang/Character;->getType(C)I

    move-result v4

    .line 7494
    if-ne v4, v0, :cond_2

    .line 7492
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7497
    :cond_2
    if-eqz p1, :cond_4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_4

    if-ne v0, v3, :cond_4

    .line 7498
    add-int/lit8 v0, v2, -0x1

    .line 7499
    if-eq v0, v1, :cond_3

    .line 7500
    new-instance v7, Ljava/lang/String;

    sub-int v8, v0, v1

    invoke-direct {v7, v5, v1, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    :cond_3
    :goto_3
    move v0, v4

    .line 7507
    goto :goto_2

    .line 7504
    :cond_4
    new-instance v0, Ljava/lang/String;

    sub-int v7, v2, v1

    invoke-direct {v0, v5, v1, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 7505
    goto :goto_3

    .line 7509
    :cond_5
    new-instance v0, Ljava/lang/String;

    array-length v2, v5

    sub-int/2addr v2, v1

    invoke-direct {v0, v5, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7510
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static splitByCharacterTypeCamelCase(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 7538
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 7565
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4

    .line 7596
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 7625
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4

    .line 7658
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7677
    if-nez p0, :cond_0

    .line 7738
    :goto_0
    return-object v0

    .line 7681
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 7683
    if-nez v2, :cond_1

    .line 7684
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 7687
    :cond_1
    if-eqz p1, :cond_2

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7689
    :cond_2
    invoke-static {p0, v0, p2, p3}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7692
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 7694
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    move v3, v1

    move v4, v1

    .line 7698
    :goto_1
    if-ge v4, v2, :cond_9

    .line 7699
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 7701
    const/4 v4, -0x1

    if-le v1, v4, :cond_8

    .line 7702
    if-le v1, v3, :cond_5

    .line 7703
    add-int/lit8 v0, v0, 0x1

    .line 7705
    if-ne v0, p2, :cond_4

    .line 7707
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v2

    goto :goto_1

    .line 7711
    :cond_4
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7716
    add-int v3, v1, v5

    move v4, v1

    goto :goto_1

    .line 7720
    :cond_5
    if-eqz p3, :cond_6

    .line 7721
    add-int/lit8 v0, v0, 0x1

    .line 7722
    if-ne v0, p2, :cond_7

    .line 7724
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 7729
    :cond_6
    :goto_2
    add-int v3, v1, v5

    move v4, v1

    goto :goto_1

    .line 7726
    :cond_7
    const-string v3, ""

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 7733
    :cond_8
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v2

    .line 7734
    goto :goto_1

    .line 7738
    :cond_9
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 7766
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 3

    .line 7802
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 7839
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4

    .line 7879
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;
    .registers 12

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 7897
    if-nez p0, :cond_0

    .line 7898
    const/4 v0, 0x0

    .line 7926
    :goto_0
    return-object v0

    .line 7900
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 7901
    if-nez v7, :cond_1

    .line 7902
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 7904
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    move v0, v1

    move v2, v1

    move v6, v1

    .line 7909
    :goto_1
    if-ge v6, v7, :cond_5

    .line 7910
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_4

    .line 7911
    if-nez v0, :cond_2

    if-eqz p2, :cond_3

    .line 7912
    :cond_2
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    move v2, v3

    .line 7916
    :cond_3
    add-int/lit8 v5, v6, 0x1

    move v4, v5

    move v6, v5

    .line 7917
    goto :goto_1

    .line 7921
    :cond_4
    add-int/lit8 v5, v6, 0x1

    move v0, v3

    move v2, v1

    move v6, v5

    goto :goto_1

    .line 7923
    :cond_5
    if-nez v0, :cond_6

    if-eqz p2, :cond_7

    if-eqz v2, :cond_7

    .line 7924
    :cond_6
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7926
    :cond_7
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method private static splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .registers 16

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7948
    if-nez p0, :cond_0

    .line 7949
    const/4 v0, 0x0

    .line 8026
    :goto_0
    return-object v0

    .line 7951
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 7952
    if-nez v4, :cond_1

    .line 7953
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 7955
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 7961
    if-nez p1, :cond_4

    move v5, v2

    move v8, v1

    move v0, v1

    move v7, v1

    move v3, v1

    .line 7963
    :goto_1
    if-ge v3, v4, :cond_14

    .line 7964
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 7965
    if-nez v0, :cond_2

    if-eqz p3, :cond_13

    .line 7967
    :cond_2
    if-ne v5, p2, :cond_12

    move v0, v1

    move v3, v4

    .line 7971
    :goto_2
    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7972
    add-int/lit8 v5, v5, 0x1

    move v6, v1

    move v7, v0

    .line 7974
    :goto_3
    add-int/lit8 v9, v3, 0x1

    move v8, v9

    move v0, v6

    move v3, v9

    .line 7975
    goto :goto_1

    .line 7979
    :cond_3
    add-int/lit8 v3, v3, 0x1

    move v0, v2

    move v7, v1

    goto :goto_1

    .line 7981
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_11

    .line 7983
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v5, v2

    move v8, v1

    move v0, v1

    move v7, v1

    move v3, v1

    .line 7984
    :goto_4
    if-ge v3, v4, :cond_7

    .line 7985
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v11, :cond_6

    .line 7986
    if-nez v0, :cond_5

    if-eqz p3, :cond_10

    .line 7988
    :cond_5
    if-ne v5, p2, :cond_f

    move v0, v1

    move v3, v4

    .line 7992
    :goto_5
    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7993
    add-int/lit8 v5, v5, 0x1

    move v6, v1

    move v7, v0

    .line 7995
    :goto_6
    add-int/lit8 v9, v3, 0x1

    move v8, v9

    move v0, v6

    move v3, v9

    .line 7996
    goto :goto_4

    .line 8000
    :cond_6
    add-int/lit8 v3, v3, 0x1

    move v0, v2

    move v7, v1

    goto :goto_4

    :cond_7
    move v6, v0

    move v1, v8

    .line 8023
    :goto_7
    if-nez v6, :cond_8

    if-eqz p3, :cond_9

    if-eqz v7, :cond_9

    .line 8024
    :cond_8
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8026
    :cond_9
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto/16 :goto_0

    .line 8004
    :goto_8
    if-ge v3, v4, :cond_e

    .line 8005
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_c

    .line 8006
    if-nez v6, :cond_a

    if-eqz p3, :cond_b

    .line 8008
    :cond_a
    if-ne v5, p2, :cond_d

    move v0, v1

    move v3, v4

    .line 8012
    :goto_9
    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8013
    add-int/lit8 v5, v5, 0x1

    move v6, v1

    .line 8015
    :cond_b
    add-int/lit8 v7, v3, 0x1

    move v8, v7

    move v3, v7

    .line 8016
    goto :goto_8

    .line 8020
    :cond_c
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    move v6, v2

    goto :goto_8

    :cond_d
    move v0, v2

    goto :goto_9

    :cond_e
    move v7, v0

    move v1, v8

    goto :goto_7

    :cond_f
    move v0, v2

    goto :goto_5

    :cond_10
    move v6, v0

    goto :goto_6

    :cond_11
    move v5, v2

    move v8, v1

    move v0, v1

    move v6, v1

    move v3, v1

    goto :goto_8

    :cond_12
    move v0, v2

    goto/16 :goto_2

    :cond_13
    move v6, v0

    goto/16 :goto_3

    :cond_14
    move v6, v0

    move v1, v8

    goto :goto_7
.end method

.method public static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3

    .line 8052
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .registers 9

    const/4 v2, 0x0

    .line 8067
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 8068
    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v2, 0x1

    .line 8075
    :cond_1
    :goto_0
    return v2

    .line 8071
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 8072
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt v5, v0, :cond_1

    move-object v0, p0

    move v1, p2

    move-object v3, p1

    move v4, v2

    .line 8075
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v2

    goto :goto_0
.end method

.method public static varargs startsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v0, 0x0

    .line 8101
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8109
    :cond_0
    :goto_0
    return v0

    .line 8104
    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 8105
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8106
    const/4 v0, 0x1

    goto :goto_0

    .line 8104
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3

    .line 8135
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 8161
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 8191
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8192
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripAccents(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 8214
    if-nez p0, :cond_0

    .line 8215
    const/4 v0, 0x0

    .line 8220
    :goto_0
    return-object v0

    .line 8217
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8218
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->convertRemainingAccentCharacters(Ljava/lang/StringBuilder;)V

    .line 8220
    sget-object v1, Lorg/apache/commons/lang3/StringUtils;->STRIP_ACCENTS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs stripAll([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 8243
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .line 8272
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 8273
    if-nez v2, :cond_0

    .line 8280
    :goto_0
    return-object p0

    .line 8276
    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    .line 8277
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 8278
    aget-object v3, p0, v1

    invoke-static {v3, p1}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 8277
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object p0, v0

    .line 8280
    goto :goto_0
.end method

.method public static stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 8309
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    .line 8310
    if-nez v0, :cond_1

    .line 8325
    :cond_0
    :goto_0
    return-object p0

    .line 8314
    :cond_1
    if-nez p1, :cond_2

    .line 8315
    :goto_1
    if-eqz v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8316
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 8318
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8321
    :goto_2
    if-eqz v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 8322
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 8325
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 8353
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v1

    .line 8354
    if-nez v1, :cond_1

    .line 8369
    :cond_0
    :goto_0
    return-object p0

    .line 8358
    :cond_1
    if-nez p1, :cond_2

    .line 8359
    :goto_1
    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8360
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8362
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8365
    :goto_2
    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 8366
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 8369
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 8395
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static stripToNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 8422
    if-nez p0, :cond_1

    .line 8426
    :cond_0
    :goto_0
    return-object v0

    .line 8425
    :cond_1
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8426
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static substring(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 8454
    if-nez p0, :cond_0

    .line 8455
    const/4 v0, 0x0

    .line 8470
    :goto_0
    return-object v0

    .line 8459
    :cond_0
    if-gez p1, :cond_3

    .line 8460
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    .line 8463
    :goto_1
    if-gez v0, :cond_1

    .line 8464
    const/4 v0, 0x0

    .line 8466
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 8467
    const-string v0, ""

    goto :goto_0

    .line 8470
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, p1

    goto :goto_1
.end method

.method public static substring(Ljava/lang/String;II)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 8509
    if-nez p0, :cond_0

    .line 8510
    const/4 v0, 0x0

    .line 8538
    :goto_0
    return-object v0

    .line 8514
    :cond_0
    if-gez p2, :cond_6

    .line 8515
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    .line 8517
    :goto_1
    if-gez p1, :cond_1

    .line 8518
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p1, v2

    .line 8522
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 8523
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 8527
    :cond_2
    if-le p1, v1, :cond_3

    .line 8528
    const-string v0, ""

    goto :goto_0

    .line 8531
    :cond_3
    if-gez p1, :cond_4

    move p1, v0

    .line 8534
    :cond_4
    if-gez v1, :cond_5

    .line 8538
    :goto_2
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v1, p2

    goto :goto_1
.end method

.method public static substringAfter(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 8567
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8574
    :goto_0
    return-object p0

    .line 8570
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 8571
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 8572
    const-string p0, ""

    goto :goto_0

    .line 8574
    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 8606
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8616
    :goto_0
    return-object p0

    .line 8609
    :cond_0
    if-nez p1, :cond_1

    .line 8610
    const-string p0, ""

    goto :goto_0

    .line 8612
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 8613
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 8614
    const-string p0, ""

    goto :goto_0

    .line 8616
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringAfterLast(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 8646
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8653
    :goto_0
    return-object p0

    .line 8649
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 8650
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 8651
    :cond_1
    const-string p0, ""

    goto :goto_0

    .line 8653
    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringAfterLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 8686
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8696
    :goto_0
    return-object p0

    .line 8689
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8690
    const-string p0, ""

    goto :goto_0

    .line 8692
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 8693
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_3

    .line 8694
    :cond_2
    const-string p0, ""

    goto :goto_0

    .line 8696
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringBefore(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 8727
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8734
    :cond_0
    :goto_0
    return-object p0

    .line 8730
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 8731
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 8734
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 8765
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 8775
    :cond_0
    :goto_0
    return-object p0

    .line 8768
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8769
    const-string p0, ""

    goto :goto_0

    .line 8771
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 8772
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 8775
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 8806
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8813
    :cond_0
    :goto_0
    return-object p0

    .line 8809
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 8810
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 8813
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 8838
    invoke-static {p0, p1, p1}, Lorg/apache/commons/lang3/StringUtils;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 8869
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Lorg/apache/commons/lang3/ObjectUtils;->allNotNull([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8879
    :cond_0
    :goto_0
    return-object v0

    .line 8872
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 8873
    if-eq v1, v3, :cond_0

    .line 8874
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 8875
    if-eq v2, v3, :cond_0

    .line 8876
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static substringsBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    .line 8905
    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8932
    :cond_0
    :goto_0
    return-object v0

    .line 8908
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 8909
    if-nez v2, :cond_2

    .line 8910
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 8912
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 8913
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 8914
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 8915
    const/4 v1, 0x0

    .line 8916
    :goto_1
    sub-int v6, v2, v3

    if-ge v1, v6, :cond_3

    .line 8917
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 8918
    if-gez v1, :cond_4

    .line 8929
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8932
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    .line 8921
    :cond_4
    add-int/2addr v1, v4

    .line 8922
    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 8923
    if-ltz v6, :cond_3

    .line 8926
    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8927
    add-int v1, v6, v3

    .line 8928
    goto :goto_1
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v2, 0x0

    .line 8963
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8983
    :goto_0
    return-object p0

    .line 8967
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 8968
    new-array v5, v4, [I

    move v1, v2

    move v3, v2

    .line 8970
    :goto_1
    if-ge v1, v4, :cond_4

    .line 8971
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 8973
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isTitleCase(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 8974
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v0

    .line 8980
    :cond_2
    :goto_2
    aput v0, v5, v3

    .line 8981
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 8982
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_1

    .line 8975
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 8976
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    goto :goto_2

    .line 8983
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v5, v2, v3}, Ljava/lang/String;-><init>([III)V

    goto :goto_0
.end method

.method public static toCodePoints(Ljava/lang/CharSequence;)[I
    .registers 6

    const/4 v1, 0x0

    .line 9003
    if-nez p0, :cond_0

    .line 9004
    const/4 v0, 0x0

    .line 9017
    :goto_0
    return-object v0

    .line 9006
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 9007
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    .line 9010
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 9011
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    new-array v3, v0, [I

    move v0, v1

    move v2, v1

    .line 9013
    :goto_1
    array-length v1, v3

    if-ge v2, v1, :cond_2

    .line 9014
    invoke-virtual {v4, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    aput v1, v3, v2

    .line 9015
    aget v1, v3, v2

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 9013
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    move-object v0, v3

    .line 9017
    goto :goto_0
.end method

.method public static toEncodedString([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    .line 9034
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/lang3/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static toRootLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 9045
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toRootUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 9056
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9076
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/lang3/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static toStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 9080
    const-string v0, ""

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 9107
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 9132
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static trimToNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 9158
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9159
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static truncate(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 9195
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/StringUtils;->truncate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static truncate(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5

    .line 9259
    if-ltz p1, :cond_4

    .line 9262
    if-ltz p2, :cond_3

    .line 9265
    if-nez p0, :cond_0

    .line 9266
    const/4 v0, 0x0

    .line 9275
    :goto_0
    return-object v0

    .line 9268
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 9269
    const-string v0, ""

    goto :goto_0

    .line 9271
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_2

    .line 9272
    add-int v0, p1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 9273
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9275
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9263
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxWith cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9260
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v5, 0x0

    .line 9300
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v2

    .line 9301
    if-nez v2, :cond_1

    .line 9320
    :cond_0
    :goto_0
    return-object p0

    .line 9305
    :cond_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 9306
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v3

    .line 9307
    if-eq v0, v3, :cond_0

    .line 9312
    new-array v4, v2, [I

    .line 9313
    const/4 v1, 0x1

    aput v3, v4, v5

    .line 9315
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    :goto_1
    if-ge v0, v2, :cond_2

    .line 9316
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 9317
    aput v3, v4, v1

    .line 9318
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 9319
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9320
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, v5, v1}, Ljava/lang/String;-><init>([III)V

    goto :goto_0
.end method

.method public static unwrap(Ljava/lang/String;C)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x1

    .line 9350
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 9361
    :cond_0
    :goto_0
    return-object p0

    .line 9354
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    .line 9355
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 9358
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static unwrap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v3, -0x1

    .line 9392
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1

    .line 9406
    :cond_0
    :goto_0
    return-object p0

    .line 9396
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9397
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 9398
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 9399
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 9401
    if-eq v0, v3, :cond_0

    if-eq v1, v3, :cond_0

    .line 9402
    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static upperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 9429
    if-nez p0, :cond_0

    .line 9430
    const/4 v0, 0x0

    .line 9432
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static upperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    .line 9452
    if-nez p0, :cond_0

    .line 9453
    const/4 v0, 0x0

    .line 9455
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/LocaleUtils;->toLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf([C)Ljava/lang/String;
    .registers 2

    .line 9467
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static wrap(Ljava/lang/String;C)Ljava/lang/String;
    .registers 3

    .line 9493
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 9497
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static wrap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 9531
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9535
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static wrapIfMissing(Ljava/lang/String;C)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9566
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 9583
    :cond_0
    :goto_0
    return-object p0

    .line 9569
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, p1, :cond_5

    move v0, v1

    .line 9570
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, p1, :cond_6

    .line 9571
    :goto_2
    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    .line 9575
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9576
    if-eqz v0, :cond_3

    .line 9577
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9579
    :cond_3
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9580
    if-eqz v1, :cond_4

    .line 9581
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9583
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    move v0, v2

    .line 9569
    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method public static wrapIfMissing(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 9618
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9636
    :cond_0
    :goto_0
    return-object p0

    .line 9622
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 9623
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 9624
    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    .line 9628
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9629
    if-eqz v0, :cond_3

    .line 9630
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9632
    :cond_3
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9633
    if-eqz v1, :cond_4

    .line 9634
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9636
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
