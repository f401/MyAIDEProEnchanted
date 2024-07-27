.class public final Lorg/apache/tools/ant/filters/StripJavaComments;
.super Lorg/apache/tools/ant/filters/BaseFilterReader;
.source "StripJavaComments.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# instance fields
.field private inString:Z

.field private quoted:Z

.field private readAheadCh:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseFilterReader;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->readAheadCh:I

    .line 46
    iput-boolean v1, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->inString:Z

    .line 51
    iput-boolean v1, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->quoted:Z

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseFilterReader;-><init>(Ljava/io/Reader;)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->readAheadCh:I

    .line 46
    iput-boolean v1, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->inString:Z

    .line 51
    iput-boolean v1, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->quoted:Z

    .line 70
    return-void
.end method


# virtual methods
.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .registers 3

    .line 142
    new-instance v0, Lorg/apache/tools/ant/filters/StripJavaComments;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/StripJavaComments;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/16 v4, 0x2a

    const/16 v1, 0x2f

    const/4 v3, -0x1

    .line 83
    iget v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->readAheadCh:I

    if-eq v0, v3, :cond_1

    .line 85
    iget v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->readAheadCh:I

    .line 86
    iput v3, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->readAheadCh:I

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 89
    const/16 v2, 0x22

    if-ne v0, v2, :cond_2

    iget-boolean v2, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->quoted:Z

    if-nez v2, :cond_2

    .line 90
    iget-boolean v1, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->inString:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->inString:Z

    .line 91
    iput-boolean v5, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->quoted:Z

    goto :goto_0

    .line 92
    :cond_2
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_3

    .line 93
    iget-boolean v1, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->quoted:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->quoted:Z

    goto :goto_0

    .line 95
    :cond_3
    iput-boolean v5, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->quoted:Z

    .line 96
    iget-boolean v2, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->inString:Z

    if-nez v2, :cond_0

    .line 97
    if-ne v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 99
    if-ne v0, v1, :cond_4

    .line 100
    :goto_1
    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    if-eq v0, v3, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_1

    .line 103
    :cond_4
    if-ne v0, v4, :cond_7

    .line 104
    :cond_5
    if-eq v0, v3, :cond_0

    .line 105
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 106
    if-ne v0, v4, :cond_5

    .line 107
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 108
    :goto_2
    if-ne v0, v4, :cond_6

    .line 109
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_2

    .line 112
    :cond_6
    if-ne v0, v1, :cond_5

    .line 113
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/StripJavaComments;->read()I

    move-result v0

    goto :goto_0

    .line 119
    :cond_7
    iput v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->readAheadCh:I

    move v0, v1

    .line 120
    goto :goto_0
.end method
