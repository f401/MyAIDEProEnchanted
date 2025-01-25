.class Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedNumberField;
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
    name = "UnpaddedNumberField"
.end annotation


# instance fields
.field private final mField:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 921
    iput p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedNumberField;->mField:I

    .line 922
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

    .line 945
    const/16 v0, 0xa

    if-ge p2, v0, :cond_b

    .line 946
    add-int/lit8 v0, p2, 0x30

    int-to-char v0, v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 952
    :goto_a
    return-void

    .line 947
    :cond_b
    const/16 v0, 0x64

    if-ge p2, v0, :cond_13

    .line 948
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->access$000(Ljava/lang/Appendable;I)V

    goto :goto_a

    .line 950
    :cond_13
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->access$100(Ljava/lang/Appendable;II)V

    goto :goto_a
.end method

.method public appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 937
    iget v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedNumberField;->mField:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedNumberField;->appendTo(Ljava/lang/Appendable;I)V

    .line 938
    return-void
.end method

.method public estimateLength()I
    .registers 2

    .line 929
    const/4 v0, 0x4

    return v0
.end method
