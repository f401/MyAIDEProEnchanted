.class public final Lorg/apache/tools/ant/filters/HeadFilter;
.super Lorg/apache/tools/ant/filters/BaseParamFilterReader;
.source "HeadFilter.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# static fields
.field private static final DEFAULT_NUM_LINES:I = 0xa

.field private static final LINES_KEY:Ljava/lang/String; = "lines"

.field private static final SKIP_KEY:Ljava/lang/String; = "skip"


# instance fields
.field private eof:Z

.field private line:Ljava/lang/String;

.field private linePos:I

.field private lineTokenizer:Lorg/apache/tools/ant/util/LineTokenizer;

.field private lines:J

.field private linesRead:J

.field private skip:J


# direct methods
.method public constructor <init>()V
    .registers 7

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>()V

    .line 47
    iput-wide v4, p0, Lorg/apache/tools/ant/filters/HeadFilter;->linesRead:J

    .line 53
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lorg/apache/tools/ant/filters/HeadFilter;->lines:J

    .line 56
    iput-wide v4, p0, Lorg/apache/tools/ant/filters/HeadFilter;->skip:J

    .line 59
    iput-object v2, p0, Lorg/apache/tools/ant/filters/HeadFilter;->lineTokenizer:Lorg/apache/tools/ant/util/LineTokenizer;

    .line 62
    iput-object v2, p0, Lorg/apache/tools/ant/filters/HeadFilter;->line:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/ant/filters/HeadFilter;->linePos:I

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 8

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>(Ljava/io/Reader;)V

    .line 47
    iput-wide v4, p0, Lorg/apache/tools/ant/filters/HeadFilter;->linesRead:J

    .line 53
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lorg/apache/tools/ant/filters/HeadFilter;->lines:J

    .line 56
    iput-wide v4, p0, Lorg/apache/tools/ant/filters/HeadFilter;->skip:J

    .line 59
    iput-object v2, p0, Lorg/apache/tools/ant/filters/HeadFilter;->lineTokenizer:Lorg/apache/tools/ant/util/LineTokenizer;

    .line 62
    iput-object v2, p0, Lorg/apache/tools/ant/filters/HeadFilter;->line:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/ant/filters/HeadFilter;->linePos:I

    .line 86
    new-instance v0, Lorg/apache/tools/ant/util/LineTokenizer;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/LineTokenizer;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/HeadFilter;->lineTokenizer:Lorg/apache/tools/ant/util/LineTokenizer;

    .line 87
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/LineTokenizer;->setIncludeDelims(Z)V

    .line 88
    return-void
.end method

.method private getLines()J
    .registers 3

    .line 143
    iget-wide v0, p0, Lorg/apache/tools/ant/filters/HeadFilter;->lines:J

    return-wide v0
.end method

.method private getSkip()J
    .registers 3

    .line 161
    iget-wide v0, p0, Lorg/apache/tools/ant/filters/HeadFilter;->skip:J

    return-wide v0
.end method

.method private headFilter(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    .line 205
    iget-wide v2, p0, Lorg/apache/tools/ant/filters/HeadFilter;->linesRead:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lorg/apache/tools/ant/filters/HeadFilter;->linesRead:J

    .line 206
    iget-wide v4, p0, Lorg/apache/tools/ant/filters/HeadFilter;->skip:J

    cmp-long v1, v4, v8

    if-lez v1, :cond_18

    .line 207
    sub-long v6, v2, v6

    cmp-long v1, v6, v4

    if-gez v1, :cond_18

    move-object p1, v0

    .line 218
    :cond_17
    :goto_17
    return-object p1

    .line 212
    :cond_18
    iget-wide v6, p0, Lorg/apache/tools/ant/filters/HeadFilter;->lines:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_17

    .line 213
    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_17

    .line 214
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/tools/ant/filters/HeadFilter;->eof:Z

    move-object p1, v0

    .line 215
    goto :goto_17
.end method

.method private initialize()V
    .registers 7

    .line 188
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/HeadFilter;->getParameters()[Lorg/apache/tools/ant/types/Parameter;

    move-result-object v1

    .line 189
    if-eqz v1, :cond_38

    .line 190
    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_38

    aget-object v3, v1, v0

    .line 191
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    .line 192
    const-string v5, "lines"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 193
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/tools/ant/filters/HeadFilter;->lines:J

    .line 190
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 194
    :cond_25
    const-string v5, "skip"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 195
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/tools/ant/filters/HeadFilter;->skip:J

    goto :goto_22

    .line 199
    :cond_38
    return-void
.end method


# virtual methods
.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .registers 6

    .line 175
    new-instance v0, Lorg/apache/tools/ant/filters/HeadFilter;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/HeadFilter;-><init>(Ljava/io/Reader;)V

    .line 176
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/HeadFilter;->getLines()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/ant/filters/HeadFilter;->setLines(J)V

    .line 177
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/HeadFilter;->getSkip()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/ant/filters/HeadFilter;->setSkip(J)V

    .line 178
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/HeadFilter;->setInitialized(Z)V

    .line 179
    return-object v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 103
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/HeadFilter;->getInitialized()Z

    move-result v1

    if-nez v1, :cond_e

    .line 104
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/HeadFilter;->initialize()V

    .line 105
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/filters/HeadFilter;->setInitialized(Z)V

    .line 108
    :cond_e
    :goto_e
    iget-object v1, p0, Lorg/apache/tools/ant/filters/HeadFilter;->line:Ljava/lang/String;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 109
    :cond_18
    iget-object v1, p0, Lorg/apache/tools/ant/filters/HeadFilter;->lineTokenizer:Lorg/apache/tools/ant/util/LineTokenizer;

    iget-object v2, p0, Lorg/apache/tools/ant/filters/HeadFilter;->in:Ljava/io/Reader;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/util/LineTokenizer;->getToken(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/filters/HeadFilter;->line:Ljava/lang/String;

    .line 110
    if-nez v1, :cond_3f

    .line 125
    :cond_24
    :goto_24
    return v0

    .line 120
    :cond_25
    iget-object v0, p0, Lorg/apache/tools/ant/filters/HeadFilter;->line:Ljava/lang/String;

    iget v1, p0, Lorg/apache/tools/ant/filters/HeadFilter;->linePos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 121
    iget v1, p0, Lorg/apache/tools/ant/filters/HeadFilter;->linePos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/tools/ant/filters/HeadFilter;->linePos:I

    .line 122
    iget-object v2, p0, Lorg/apache/tools/ant/filters/HeadFilter;->line:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_24

    .line 123
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/tools/ant/filters/HeadFilter;->line:Ljava/lang/String;

    goto :goto_24

    .line 113
    :cond_3f
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/filters/HeadFilter;->headFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/filters/HeadFilter;->line:Ljava/lang/String;

    .line 114
    iget-boolean v1, p0, Lorg/apache/tools/ant/filters/HeadFilter;->eof:Z

    if-nez v1, :cond_24

    .line 117
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/tools/ant/filters/HeadFilter;->linePos:I

    goto :goto_e
.end method

.method public setLines(J)V
    .registers 4

    .line 134
    iput-wide p1, p0, Lorg/apache/tools/ant/filters/HeadFilter;->lines:J

    .line 135
    return-void
.end method

.method public setSkip(J)V
    .registers 4

    .line 152
    iput-wide p1, p0, Lorg/apache/tools/ant/filters/HeadFilter;->skip:J

    .line 153
    return-void
.end method
