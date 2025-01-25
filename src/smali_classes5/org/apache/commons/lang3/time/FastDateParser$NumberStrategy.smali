.class Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;
.super Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NumberStrategy"
.end annotation


# instance fields
.field private final field:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    .line 790
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$1;)V

    .line 791
    iput p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;->field:I

    .line 792
    return-void
.end method


# virtual methods
.method isNumber()Z
    .registers 2

    .line 799
    const/4 v0, 0x1

    return v0
.end method

.method modify(Lorg/apache/commons/lang3/time/FastDateParser;I)I
    .registers 3

    .line 851
    return p2
.end method

.method parse(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;Ljava/text/ParsePosition;I)Z
    .registers 9

    .line 805
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .line 806
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 808
    if-nez p5, :cond_35

    move v1, v2

    .line 810
    :goto_b
    if-ge v1, v0, :cond_17

    .line 811
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 812
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_32

    .line 816
    :cond_17
    invoke-virtual {p4, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    move v2, v1

    .line 824
    :cond_1b
    :goto_1b
    if-ge v2, v0, :cond_27

    .line 825
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 826
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 831
    :cond_27
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    if-ne v0, v2, :cond_3f

    .line 832
    invoke-virtual {p4, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 833
    const/4 v0, 0x0

    .line 840
    :goto_31
    return v0

    .line 810
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 818
    :cond_35
    add-int v1, v2, p5

    .line 819
    if-le v0, v1, :cond_1b

    move v0, v1

    .line 820
    goto :goto_1b

    .line 824
    :cond_3b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1b

    .line 836
    :cond_3f
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 837
    invoke-virtual {p4, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 839
    iget v1, p0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;->field:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;->modify(Lorg/apache/commons/lang3/time/FastDateParser;I)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 840
    const/4 v0, 0x1

    goto :goto_31
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NumberStrategy [field="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;->field:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
