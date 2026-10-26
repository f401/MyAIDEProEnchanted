.class Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;
.super Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;
.source "FixCrLfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/FixCrLfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoveTabFilter"
.end annotation


# instance fields
.field private columnNumber:I

.field private tabLength:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 1

    const/4 v0, 0x0

    .line 834
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;-><init>(Ljava/io/Reader;)V

    .line 829
    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->columnNumber:I

    .line 831
    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->tabLength:I

    .line 836
    iput p2, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->tabLength:I

    .line 837
    return-void
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x20

    .line 840
    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v0

    .line 842
    packed-switch v0, :pswitch_data_0

    .line 859
    :pswitch_0
    iget v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->columnNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->columnNumber:I

    .line 857
    :goto_0
    return v0

    .line 845
    :pswitch_1
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->columnNumber:I

    goto :goto_0

    .line 848
    :pswitch_2
    iget v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->tabLength:I

    iget v3, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->columnNumber:I

    rem-int/2addr v3, v1

    sub-int/2addr v1, v3

    .line 850
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->editsBlocked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 851
    :goto_1
    const/4 v0, 0x1

    if-le v1, v0, :cond_0

    .line 852
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->push(C)V

    .line 851
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    move v0, v2

    .line 856
    :cond_1
    iget v2, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->columnNumber:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->columnNumber:I

    goto :goto_0

    .line 842
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
