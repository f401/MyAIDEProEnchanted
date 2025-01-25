.class abstract Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;
.super Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PatternStrategy"
.end annotation


# instance fields
.field pattern:Ljava/util/regex/Pattern;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 526
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/lang3/time/FastDateParser$1;)V
    .registers 2

    .line 526
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method createPattern(Ljava/lang/String;)V
    .registers 3

    .line 535
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;->pattern:Ljava/util/regex/Pattern;

    .line 536
    return-void
.end method

.method createPattern(Ljava/lang/StringBuilder;)V
    .registers 3

    .line 531
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;->createPattern(Ljava/lang/String;)V

    .line 532
    return-void
.end method

.method isNumber()Z
    .registers 2

    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method parse(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;Ljava/text/ParsePosition;I)Z
    .registers 10

    const/4 v0, 0x1

    .line 551
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 552
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 553
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 554
    const/4 v0, 0x0

    .line 558
    :goto_1d
    return v0

    .line 556
    :cond_1e
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p4, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 557
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;->setCalendar(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method abstract setCalendar(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [pattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
