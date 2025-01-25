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

    if-eq v0, v3, :cond_f

    .line 85
    iget v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->readAheadCh:I

    .line 86
    iput v3, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->readAheadCh:I

    .line 127
    :cond_e
    :goto_e
    return v0

    .line 88
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 89
    const/16 v2, 0x22

    if-ne v0, v2, :cond_26

    iget-boolean v2, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->quoted:Z

    if-nez v2, :cond_26

    .line 90
    iget-boolean v1, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->inString:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->inString:Z

    .line 91
    iput-boolean v5, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->quoted:Z

    goto :goto_e

    .line 92
    :cond_26
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_31

    .line 93
    iget-boolean v1, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->quoted:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->quoted:Z

    goto :goto_e

    .line 95
    :cond_31
    iput-boolean v5, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->quoted:Z

    .line 96
    iget-boolean v2, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->inString:Z

    if-nez v2, :cond_e

    .line 97
    if-ne v0, v1, :cond_e

    .line 98
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 99
    if-ne v0, v1, :cond_52

    .line 100
    :goto_41
    const/16 v1, 0xa

    if-eq v0, v1, :cond_e

    if-eq v0, v3, :cond_e

    const/16 v1, 0xd

    if-eq v0, v1, :cond_e

    .line 101
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_41

    .line 103
    :cond_52
    if-ne v0, v4, :cond_74

    .line 104
    :cond_54
    if-eq v0, v3, :cond_e

    .line 105
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 106
    if-ne v0, v4, :cond_54

    .line 107
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 108
    :goto_64
    if-ne v0, v4, :cond_6d

    .line 109
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_64

    .line 112
    :cond_6d
    if-ne v0, v1, :cond_54

    .line 113
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/StripJavaComments;->read()I

    move-result v0

    goto :goto_e

    .line 119
    :cond_74
    iput v0, p0, Lorg/apache/tools/ant/filters/StripJavaComments;->readAheadCh:I

    move v0, v1

    .line 120
    goto :goto_e
.end method
