.class Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeZoneDisplayKey"
.end annotation


# instance fields
.field private final mLocale:Ljava/util/Locale;

.field private final mStyle:I

.field private final mTimeZone:Ljava/util/TimeZone;


# direct methods
.method constructor <init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V
    .registers 6

    .line 1539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1540
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    .line 1541
    if-eqz p2, :cond_13

    .line 1542
    const/high16 v0, -0x80000000

    or-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->mStyle:I

    .line 1546
    :goto_c
    invoke-static {p4}, Lorg/apache/commons/lang3/LocaleUtils;->toLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    .line 1547
    return-void

    .line 1544
    :cond_13
    iput p3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->mStyle:I

    goto :goto_c
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1562
    if-ne p0, p1, :cond_5

    .line 1572
    :cond_4
    :goto_4
    return v0

    .line 1565
    :cond_5
    instance-of v2, p1, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;

    if-eqz v2, :cond_27

    .line 1566
    check-cast p1, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;

    .line 1567
    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    iget-object v3, p1, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    .line 1568
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget v2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->mStyle:I

    iget v3, p1, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->mStyle:I

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    iget-object v3, p1, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    .line 1570
    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_25
    move v0, v1

    goto :goto_4

    :cond_27
    move v0, v1

    .line 1572
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .line 1554
    iget v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->mStyle:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
