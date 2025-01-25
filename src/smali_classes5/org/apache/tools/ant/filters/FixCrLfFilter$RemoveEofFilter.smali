.class Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveEofFilter;
.super Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;
.source "FixCrLfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/FixCrLfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoveEofFilter"
.end annotation


# instance fields
.field private lookAhead:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4

    const/4 v1, -0x1

    .line 727
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;-><init>(Ljava/io/Reader;)V

    .line 724
    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveEofFilter;->lookAhead:I

    .line 730
    :try_start_6
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveEofFilter;->lookAhead:I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_d

    .line 734
    :goto_c
    return-void

    .line 731
    :catch_d
    move-exception v0

    .line 732
    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveEofFilter;->lookAhead:I

    goto :goto_c
.end method


# virtual methods
.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 737
    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v1

    .line 740
    if-ne v1, v0, :cond_e

    iget v2, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveEofFilter;->lookAhead:I

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_e

    .line 746
    :goto_d
    return v0

    .line 744
    :cond_e
    iget v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveEofFilter;->lookAhead:I

    .line 745
    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$RemoveEofFilter;->lookAhead:I

    goto :goto_d
.end method
