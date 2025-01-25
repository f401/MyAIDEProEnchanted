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

    if-nez v0, :cond_a

    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->editsBlocked()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
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

    if-eq v3, v4, :cond_d

    if-ne v3, v5, :cond_14

    :cond_d
    move v0, v1

    :goto_e
    iput-boolean v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->editsBlocked:Z

    .line 524
    packed-switch v3, :pswitch_data_5e

    .line 533
    :goto_13
    :pswitch_13  #0x7
    return v2

    .line 522
    :cond_14
    const/4 v0, 0x0

    goto :goto_e

    .line 601
    :pswitch_16  #0x8
    packed-switch v2, :pswitch_data_72

    goto :goto_13

    .line 603
    :pswitch_1a  #0x2f
    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_13

    .line 582
    :pswitch_1d  #0x6
    sparse-switch v2, :sswitch_data_78

    .line 596
    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_13

    .line 587
    :sswitch_23
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_13

    .line 584
    :sswitch_27
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_13

    .line 590
    :sswitch_2b
    iput v4, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_13

    .line 593
    :sswitch_2e
    iput v5, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_13

    .line 572
    :pswitch_31  #0x5
    packed-switch v2, :pswitch_data_8a

    goto :goto_13

    .line 574
    :pswitch_35  #0x2a
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_13

    .line 561
    :pswitch_3a  #0x4
    packed-switch v2, :pswitch_data_90

    :pswitch_3d  #0xb, 0xc
    goto :goto_13

    .line 564
    :pswitch_3e  #0xa, 0xd
    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_13

    .line 551
    :pswitch_41  #0x3
    packed-switch v2, :pswitch_data_9c

    goto :goto_13

    .line 553
    :pswitch_45  #0x22
    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_13

    .line 542
    :pswitch_48  #0x2
    packed-switch v2, :pswitch_data_a2

    goto :goto_13

    .line 544
    :pswitch_4c  #0x27
    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_13

    .line 527
    :pswitch_4f  #0x1
    sparse-switch v2, :sswitch_data_a8

    goto :goto_13

    .line 532
    :sswitch_53
    iput v5, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_13

    .line 535
    :sswitch_56
    const/4 v0, 0x6

    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_13

    .line 529
    :sswitch_5a
    iput v4, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$MaskJavaTabLiteralsFilter;->state:I

    goto :goto_13

    .line 524
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_4f  #00000001
        :pswitch_48  #00000002
        :pswitch_41  #00000003
        :pswitch_3a  #00000004
        :pswitch_31  #00000005
        :pswitch_1d  #00000006
        :pswitch_13  #00000007
        :pswitch_16  #00000008
    .end packed-switch

    .line 601
    :pswitch_data_72
    .packed-switch 0x2f
        :pswitch_1a  #0000002f
    .end packed-switch

    .line 582
    :sswitch_data_78
    .sparse-switch
        0x22 -> :sswitch_2e
        0x27 -> :sswitch_2b
        0x2a -> :sswitch_27
        0x2f -> :sswitch_23
    .end sparse-switch

    .line 572
    :pswitch_data_8a
    .packed-switch 0x2a
        :pswitch_35  #0000002a
    .end packed-switch

    .line 561
    :pswitch_data_90
    .packed-switch 0xa
        :pswitch_3e  #0000000a
        :pswitch_3d  #0000000b
        :pswitch_3d  #0000000c
        :pswitch_3e  #0000000d
    .end packed-switch

    .line 551
    :pswitch_data_9c
    .packed-switch 0x22
        :pswitch_45  #00000022
    .end packed-switch

    .line 542
    :pswitch_data_a2
    .packed-switch 0x27
        :pswitch_4c  #00000027
    .end packed-switch

    .line 527
    :sswitch_data_a8
    .sparse-switch
        0x22 -> :sswitch_53
        0x27 -> :sswitch_5a
        0x2f -> :sswitch_56
    .end sparse-switch
.end method
