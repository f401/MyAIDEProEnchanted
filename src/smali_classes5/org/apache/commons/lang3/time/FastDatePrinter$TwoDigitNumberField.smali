.class Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;
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
    name = "TwoDigitNumberField"
.end annotation


# instance fields
.field private final mField:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 1055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1056
    iput p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;->mField:I

    .line 1057
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

    .line 1080
    const/16 v0, 0x64

    if-ge p2, v0, :cond_8

    .line 1081
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->access$000(Ljava/lang/Appendable;I)V

    .line 1085
    :goto_7
    return-void

    .line 1083
    :cond_8
    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->access$100(Ljava/lang/Appendable;II)V

    goto :goto_7
.end method

.method public appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1072
    iget v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;->mField:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;->appendTo(Ljava/lang/Appendable;I)V

    .line 1073
    return-void
.end method

.method public estimateLength()I
    .registers 2

    .line 1064
    const/4 v0, 0x2

    return v0
.end method
