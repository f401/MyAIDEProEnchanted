.class Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;
.super Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CopyQuotedStrategy"
.end annotation


# instance fields
.field private final formatField:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 683
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$1;)V

    .line 684
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    .line 685
    return-void
.end method


# virtual methods
.method isNumber()Z
    .registers 2

    .line 692
    const/4 v0, 0x0

    return v0
.end method

.method parse(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;Ljava/text/ParsePosition;I)Z
    .registers 11

    const/4 v1, 0x0

    .line 698
    move v0, v1

    :goto_2
    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 699
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    add-int/2addr v2, v0

    .line 700
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_19

    .line 701
    invoke-virtual {p4, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 710
    :goto_18
    return v1

    .line 704
    :cond_19
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_29

    .line 705
    invoke-virtual {p4, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    goto :goto_18

    .line 698
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 709
    :cond_2c
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p4, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 710
    const/4 v1, 0x1

    goto :goto_18
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CopyQuotedStrategy [formatField="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
