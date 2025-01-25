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
    .registers 4

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
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x20

    .line 840
    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v2

    .line 842
    packed-switch v2, :pswitch_data_32

    .line 859
    :pswitch_9  #0xb, 0xc
    iget v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->columnNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->columnNumber:I

    .line 857
    :goto_f
    return v2

    .line 845
    :pswitch_10  #0xa, 0xd
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->columnNumber:I

    goto :goto_f

    .line 848
    :pswitch_14  #0x9
    iget v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->tabLength:I

    iget v3, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->columnNumber:I

    rem-int/2addr v3, v0

    sub-int/2addr v0, v3

    .line 850
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->editsBlocked()Z

    move-result v3

    if-nez v3, :cond_29

    .line 851
    :goto_20
    const/4 v2, 0x1

    if-le v0, v2, :cond_2a

    .line 852
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->push(C)V

    .line 851
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    :cond_29
    move v1, v2

    .line 856
    :cond_2a
    iget v2, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->columnNumber:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveTabFilter;->columnNumber:I

    move v2, v1

    goto :goto_f

    .line 842
    nop

    :pswitch_data_32
    .packed-switch 0x9
        :pswitch_14  #00000009
        :pswitch_10  #0000000a
        :pswitch_9  #0000000b
        :pswitch_9  #0000000c
        :pswitch_10  #0000000d
    .end packed-switch
.end method
