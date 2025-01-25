.class Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;
.super Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;
.source "FixCrLfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/FixCrLfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NormalizeEolFilter"
.end annotation


# instance fields
.field private eol:[C

.field private fixLast:Z

.field private normalizedEOL:I

.field private previousWasEOL:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;Ljava/lang/String;Z)V
    .registers 5

    .line 626
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;-><init>(Ljava/io/Reader;)V

    .line 621
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->normalizedEOL:I

    .line 623
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->eol:[C

    .line 627
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->eol:[C

    .line 628
    iput-boolean p3, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->fixLast:Z

    .line 629
    return-void
.end method


# virtual methods
.method public read()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0xd

    const/16 v5, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 632
    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v0

    .line 634
    iget v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->normalizedEOL:I

    if-nez v1, :cond_85

    .line 637
    sparse-switch v0, :sswitch_data_8e

    move v2, v3

    move v1, v3

    .line 683
    :goto_13
    if-lez v1, :cond_80

    move v0, v1

    .line 684
    :goto_16
    if-lez v0, :cond_79

    .line 685
    iget-object v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->eol:[C

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->push([C)V

    .line 686
    iget v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->normalizedEOL:I

    iget-object v2, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->eol:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->normalizedEOL:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 639
    :sswitch_28
    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v1

    .line 640
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3d

    .line 642
    iget-boolean v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->fixLast:Z

    if-eqz v1, :cond_8a

    iget-boolean v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->previousWasEOL:Z

    if-nez v1, :cond_8a

    .line 644
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->push(I)V

    move v2, v4

    move v1, v4

    goto :goto_13

    .line 647
    :cond_3d
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->push(I)V

    move v2, v3

    move v1, v3

    .line 649
    goto :goto_13

    .line 662
    :sswitch_43
    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v1

    .line 663
    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v2

    .line 665
    if-ne v1, v6, :cond_52

    if-ne v2, v5, :cond_52

    move v2, v3

    move v1, v4

    goto :goto_13

    .line 667
    :cond_52
    if-ne v1, v6, :cond_5a

    .line 670
    const/4 v1, 0x2

    .line 671
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->push(I)V

    move v2, v3

    goto :goto_13

    .line 672
    :cond_5a
    if-ne v1, v5, :cond_62

    .line 674
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->push(I)V

    move v2, v3

    move v1, v4

    goto :goto_13

    .line 677
    :cond_62
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->push(I)V

    .line 678
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->push(I)V

    move v2, v3

    move v1, v4

    goto :goto_13

    :sswitch_6b
    move v2, v3

    move v1, v4

    .line 659
    goto :goto_13

    .line 652
    :sswitch_6e
    iget-boolean v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->fixLast:Z

    if-eqz v1, :cond_8a

    iget-boolean v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->previousWasEOL:Z

    if-nez v1, :cond_8a

    move v2, v4

    move v1, v4

    .line 653
    goto :goto_13

    .line 688
    :cond_79
    iput-boolean v4, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->previousWasEOL:Z

    .line 689
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->read()I

    move-result v0

    .line 696
    :cond_7f
    :goto_7f
    return v0

    .line 690
    :cond_80
    if-nez v2, :cond_7f

    .line 691
    iput-boolean v3, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->previousWasEOL:Z

    goto :goto_7f

    .line 694
    :cond_85
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->normalizedEOL:I

    goto :goto_7f

    :cond_8a
    move v2, v4

    move v1, v3

    goto :goto_13

    .line 637
    nop

    :sswitch_data_8e
    .sparse-switch
        -0x1 -> :sswitch_6e
        0xa -> :sswitch_6b
        0xd -> :sswitch_43
        0x1a -> :sswitch_28
    .end sparse-switch
.end method
