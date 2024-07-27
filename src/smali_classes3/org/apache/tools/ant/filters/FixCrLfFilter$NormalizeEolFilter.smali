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

    if-nez v1, :cond_7

    .line 637
    sparse-switch v0, :sswitch_data_0

    move v2, v3

    move v1, v3

    .line 683
    :goto_0
    if-lez v1, :cond_6

    move v0, v1

    .line 684
    :goto_1
    if-lez v0, :cond_4

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

    goto :goto_1

    .line 639
    :sswitch_0
    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v1

    .line 640
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 642
    iget-boolean v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->fixLast:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->previousWasEOL:Z

    if-nez v1, :cond_8

    .line 644
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->push(I)V

    move v2, v4

    move v1, v4

    goto :goto_0

    .line 647
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->push(I)V

    move v2, v3

    move v1, v3

    .line 649
    goto :goto_0

    .line 662
    :sswitch_1
    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v1

    .line 663
    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v2

    .line 665
    if-ne v1, v6, :cond_1

    if-ne v2, v5, :cond_1

    move v2, v3

    move v1, v4

    goto :goto_0

    .line 667
    :cond_1
    if-ne v1, v6, :cond_2

    .line 670
    const/4 v1, 0x2

    .line 671
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->push(I)V

    move v2, v3

    goto :goto_0

    .line 672
    :cond_2
    if-ne v1, v5, :cond_3

    .line 674
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->push(I)V

    move v2, v3

    move v1, v4

    goto :goto_0

    .line 677
    :cond_3
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->push(I)V

    .line 678
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->push(I)V

    move v2, v3

    move v1, v4

    goto :goto_0

    :sswitch_2
    move v2, v3

    move v1, v4

    .line 659
    goto :goto_0

    .line 652
    :sswitch_3
    iget-boolean v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->fixLast:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->previousWasEOL:Z

    if-nez v1, :cond_8

    move v2, v4

    move v1, v4

    .line 653
    goto :goto_0

    .line 688
    :cond_4
    iput-boolean v4, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->previousWasEOL:Z

    .line 689
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->read()I

    move-result v0

    .line 696
    :cond_5
    :goto_2
    return v0

    .line 690
    :cond_6
    if-nez v2, :cond_5

    .line 691
    iput-boolean v3, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->previousWasEOL:Z

    goto :goto_2

    .line 694
    :cond_7
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$NormalizeEolFilter;->normalizedEOL:I

    goto :goto_2

    :cond_8
    move v2, v4

    move v1, v3

    goto :goto_0

    .line 637
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_3
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method
