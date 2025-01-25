.class Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnpaddedMonthField"
.end annotation


# static fields
.field static final INSTANCE:Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 959
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;

    invoke-direct {v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;->INSTANCE:Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 966
    return-void
.end method


# virtual methods
.method public final appendTo(Ljava/lang/Appendable;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 989
    const/16 v0, 0xa

    if-ge p2, v0, :cond_b

    .line 990
    add-int/lit8 v0, p2, 0x30

    int-to-char v0, v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 994
    :goto_a
    return-void

    .line 992
    :cond_b
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->access$000(Ljava/lang/Appendable;I)V

    goto :goto_a
.end method

.method public appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 981
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;->appendTo(Ljava/lang/Appendable;I)V

    .line 982
    return-void
.end method

.method public estimateLength()I
    .registers 2

    .line 973
    const/4 v0, 0x2

    return v0
.end method
