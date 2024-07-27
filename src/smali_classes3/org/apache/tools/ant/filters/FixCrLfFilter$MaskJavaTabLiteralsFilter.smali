.class Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;
.super Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;
.source "FixCrLfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/FixCrLfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaskJavaTabLiteralsFilter"
.end annotation


# static fields
.field private static final IN_CHAR_CONST:I = 0x2

.field private static final IN_MULTI_COMMENT:I = 0x5

.field private static final IN_SINGLE_COMMENT:I = 0x4

.field private static final IN_STR_CONST:I = 0x3

.field private static final JAVA:I = 0x1

.field private static final TRANS_FROM_MULTI:I = 0x8

.field private static final TRANS_TO_COMMENT:I = 0x6


# instance fields
.field private editsBlocked:Z

.field private state:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    .line 511
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;-><init>(Ljava/io/Reader;)V

    .line 492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->editsBlocked:Z

    .line 512
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    .line 513
    return-void
.end method


# virtual methods
.method public editsBlocked()Z
    .registers 2

    .line 516
    iget-boolean v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->editsBlocked:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->editsBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 520
    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v2

    .line 522
    iget v3, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    if-eq v3, v4, :cond_0

    if-ne v3, v5, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->editsBlocked:Z

    .line 524
    packed-switch v3, :pswitch_data_0

    .line 533
    :goto_1
    :pswitch_0
    return v2

    .line 522
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 601
    :pswitch_1
    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 603
    :pswitch_2
    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_1

    .line 582
    :pswitch_3
    sparse-switch v2, :sswitch_data_0

    .line 596
    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_1

    .line 587
    :sswitch_0
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_1

    .line 584
    :sswitch_1
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_1

    .line 590
    :sswitch_2
    iput v4, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_1

    .line 593
    :sswitch_3
    iput v5, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_1

    .line 572
    :pswitch_4
    packed-switch v2, :pswitch_data_2

    goto :goto_1

    .line 574
    :pswitch_5
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_1

    .line 561
    :pswitch_6
    packed-switch v2, :pswitch_data_3

    :pswitch_7
    goto :goto_1

    .line 564
    :pswitch_8
    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_1

    .line 551
    :pswitch_9
    packed-switch v2, :pswitch_data_4

    goto :goto_1

    .line 553
    :pswitch_a
    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_1

    .line 542
    :pswitch_b
    packed-switch v2, :pswitch_data_5

    goto :goto_1

    .line 544
    :pswitch_c
    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_1

    .line 527
    :pswitch_d
    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    .line 532
    :sswitch_4
    iput v5, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_1

    .line 535
    :sswitch_5
    const/4 v0, 0x6

    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_1

    .line 529
    :sswitch_6
    iput v4, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_1

    .line 524
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 601
    :pswitch_data_1
    .packed-switch 0x2f
        :pswitch_2
    .end packed-switch

    .line 582
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
        0x2a -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch

    .line 572
    :pswitch_data_2
    .packed-switch 0x2a
        :pswitch_5
    .end packed-switch

    .line 561
    :pswitch_data_3
    .packed-switch 0xa
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 551
    :pswitch_data_4
    .packed-switch 0x22
        :pswitch_a
    .end packed-switch

    .line 542
    :pswitch_data_5
    .packed-switch 0x27
        :pswitch_c
    .end packed-switch

    .line 527
    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_4
        0x27 -> :sswitch_6
        0x2f -> :sswitch_5
    .end sparse-switch
.end method
