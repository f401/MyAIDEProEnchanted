.class Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;
.super Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;
.source "FixCrLfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/FixCrLfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddTabFilter"
.end annotation


# instance fields
.field private columnNumber:I

.field private tabLength:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;I)V
    .registers 4

    const/4 v0, 0x0

    .line 756
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;-><init>(Ljava/io/Reader;)V

    .line 751
    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    .line 753
    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->tabLength:I

    .line 757
    iput p2, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->tabLength:I

    .line 758
    return-void
.end method


# virtual methods
.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 761
    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v0

    .line 763
    sparse-switch v0, :sswitch_data_0

    .line 822
    iget v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    .line 820
    :cond_0
    :goto_0
    return v0

    .line 769
    :sswitch_0
    iget v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    .line 770
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->editsBlocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 771
    iget v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    iget v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->tabLength:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 772
    const/4 v3, 0x1

    move v1, v2

    .line 775
    :goto_1
    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 776
    sparse-switch v4, :sswitch_data_1

    .line 793
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->push(I)V

    .line 797
    :cond_1
    :goto_2
    if-lez v3, :cond_3

    .line 798
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->push(C)V

    .line 799
    iget v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 778
    :sswitch_1
    iget v4, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    if-ne v4, v0, :cond_2

    .line 779
    add-int/lit8 v1, v1, 0x1

    .line 781
    iget v3, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->tabLength:I

    add-int/2addr v0, v3

    move v3, v2

    goto :goto_1

    .line 783
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 785
    goto :goto_1

    .line 787
    :sswitch_2
    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    .line 788
    add-int/lit8 v1, v1, 0x1

    .line 790
    iget v3, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->tabLength:I

    add-int/2addr v0, v3

    move v3, v2

    .line 791
    goto :goto_1

    .line 801
    :cond_3
    :goto_3
    if-lez v1, :cond_4

    .line 802
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->push(C)V

    .line 803
    iget v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    iget v2, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->tabLength:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 805
    :cond_4
    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v0

    .line 806
    sparse-switch v0, :sswitch_data_2

    goto :goto_0

    .line 811
    :sswitch_3
    iget v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    iget v2, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->tabLength:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    goto :goto_0

    .line 808
    :sswitch_4
    iget v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    goto :goto_0

    .line 766
    :sswitch_5
    iput v2, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    goto :goto_0

    .line 819
    :sswitch_6
    iget v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    iget v2, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->tabLength:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v2

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddTabFilter;->columnNumber:I

    goto/16 :goto_0

    .line 763
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_6
        0xa -> :sswitch_5
        0xd -> :sswitch_5
        0x20 -> :sswitch_0
    .end sparse-switch

    .line 776
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_2
        0x20 -> :sswitch_1
    .end sparse-switch

    .line 806
    :sswitch_data_2
    .sparse-switch
        0x9 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method
