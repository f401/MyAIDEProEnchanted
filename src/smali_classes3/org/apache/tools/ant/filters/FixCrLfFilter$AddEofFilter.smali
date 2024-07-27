.class Lorg/apache/tools/ant/filters/FixCrLfFilter$AddEofFilter;
.super Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;
.source "FixCrLfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/FixCrLfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddEofFilter"
.end annotation


# instance fields
.field private lastChar:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    .line 704
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;-><init>(Ljava/io/Reader;)V

    .line 701
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddEofFilter;->lastChar:I

    .line 705
    return-void
.end method


# virtual methods
.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1a

    .line 708
    invoke-super {p0}, Lorg/apache/tools/ant/filters/FixCrLfFilter$SimpleFilterReader;->read()I

    move-result v1

    .line 711
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 712
    iget v2, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddEofFilter;->lastChar:I

    if-eq v2, v0, :cond_1

    .line 713
    iput v0, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddEofFilter;->lastChar:I

    .line 719
    :goto_0
    return v0

    .line 717
    :cond_0
    iput v1, p0, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddEofFilter;->lastChar:I

    :cond_1
    move v0, v1

    .line 719
    goto :goto_0
.end method
