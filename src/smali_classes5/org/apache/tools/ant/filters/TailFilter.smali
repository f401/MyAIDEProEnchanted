.class public final Lorg/apache/tools/ant/filters/TailFilter;
.super Lorg/apache/tools/ant/filters/BaseParamFilterReader;
.source "TailFilter.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# static fields
.field private static final DEFAULT_NUM_LINES:I = 0xa

.field private static final LINES_KEY:Ljava/lang/String; = "lines"

.field private static final SKIP_KEY:Ljava/lang/String; = "skip"


# instance fields
.field private completedReadAhead:Z

.field private line:Ljava/lang/String;

.field private lineList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private linePos:I

.field private lineTokenizer:Lorg/apache/tools/ant/util/LineTokenizer;

.field private lines:J

.field private skip:J


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>()V

    .line 53
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->lines:J

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->skip:J

    .line 59
    iput-boolean v3, p0, Lorg/apache/tools/ant/filters/TailFilter;->completedReadAhead:Z

    .line 62
    iput-object v2, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineTokenizer:Lorg/apache/tools/ant/util/LineTokenizer;

    .line 65
    iput-object v2, p0, Lorg/apache/tools/ant/filters/TailFilter;->line:Ljava/lang/String;

    .line 67
    iput v3, p0, Lorg/apache/tools/ant/filters/TailFilter;->linePos:I

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineList:Ljava/util/LinkedList;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>(Ljava/io/Reader;)V

    .line 53
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->lines:J

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->skip:J

    .line 59
    iput-boolean v3, p0, Lorg/apache/tools/ant/filters/TailFilter;->completedReadAhead:Z

    .line 62
    iput-object v2, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineTokenizer:Lorg/apache/tools/ant/util/LineTokenizer;

    .line 65
    iput-object v2, p0, Lorg/apache/tools/ant/filters/TailFilter;->line:Ljava/lang/String;

    .line 67
    iput v3, p0, Lorg/apache/tools/ant/filters/TailFilter;->linePos:I

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineList:Ljava/util/LinkedList;

    .line 88
    new-instance v0, Lorg/apache/tools/ant/util/LineTokenizer;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/LineTokenizer;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineTokenizer:Lorg/apache/tools/ant/util/LineTokenizer;

    .line 89
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/LineTokenizer;->setIncludeDelims(Z)V

    .line 90
    return-void
.end method

.method private getLines()J
    .registers 3

    .line 143
    iget-wide v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->lines:J

    return-wide v0
.end method

.method private getSkip()J
    .registers 3

    .line 161
    iget-wide v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->skip:J

    return-wide v0
.end method

.method private initialize()V
    .registers 7

    .line 188
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/TailFilter;->getParameters()[Lorg/apache/tools/ant/types/Parameter;

    move-result-object v1

    .line 189
    if-eqz v1, :cond_39

    .line 190
    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_39

    aget-object v3, v1, v0

    .line 191
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    .line 192
    const-string v5, "lines"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 193
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lorg/apache/tools/ant/filters/TailFilter;->setLines(J)V

    .line 190
    :cond_23
    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 194
    :cond_26
    const-string v5, "skip"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 195
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/tools/ant/filters/TailFilter;->skip:J

    goto :goto_23

    .line 199
    :cond_39
    return-void
.end method

.method private tailFilter(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-wide/16 v6, -0x1

    const-wide/16 v2, 0x0

    .line 209
    iget-boolean v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->completedReadAhead:Z

    if-nez v0, :cond_77

    .line 210
    if-eqz p1, :cond_45

    .line 211
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 212
    iget-wide v4, p0, Lorg/apache/tools/ant/filters/TailFilter;->lines:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_2b

    .line 213
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/apache/tools/ant/filters/TailFilter;->skip:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_42

    .line 214
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 239
    :goto_2a
    return-object v0

    .line 217
    :cond_2b
    iget-wide v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->skip:J

    cmp-long v6, v0, v2

    if-lez v6, :cond_8a

    .line 218
    :goto_31
    add-long/2addr v0, v4

    iget-object v2, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_42

    .line 219
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 222
    :cond_42
    const-string v0, ""

    goto :goto_2a

    .line 224
    :cond_45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->completedReadAhead:Z

    .line 225
    iget-wide v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->skip:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_5e

    .line 226
    const/4 v0, 0x0

    :goto_4f
    int-to-long v2, v0

    iget-wide v4, p0, Lorg/apache/tools/ant/filters/TailFilter;->skip:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_5e

    .line 227
    iget-object v1, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 230
    :cond_5e
    iget-wide v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->lines:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_77

    .line 231
    :goto_64
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/apache/tools/ant/filters/TailFilter;->lines:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_77

    .line 232
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_64

    .line 236
    :cond_77
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_88

    .line 237
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2a

    .line 239
    :cond_88
    const/4 v0, 0x0

    goto :goto_2a

    :cond_8a
    move-wide v0, v2

    goto :goto_31
.end method


# virtual methods
.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .registers 6

    .line 175
    new-instance v0, Lorg/apache/tools/ant/filters/TailFilter;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/TailFilter;-><init>(Ljava/io/Reader;)V

    .line 176
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/TailFilter;->getLines()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/ant/filters/TailFilter;->setLines(J)V

    .line 177
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/TailFilter;->getSkip()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/ant/filters/TailFilter;->setSkip(J)V

    .line 178
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/TailFilter;->setInitialized(Z)V

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

    .line 106
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/TailFilter;->getInitialized()Z

    move-result v0

    if-nez v0, :cond_d

    .line 107
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/TailFilter;->initialize()V

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/TailFilter;->setInitialized(Z)V

    .line 111
    :cond_d
    :goto_d
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->line:Ljava/lang/String;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 112
    :cond_17
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->lineTokenizer:Lorg/apache/tools/ant/util/LineTokenizer;

    iget-object v1, p0, Lorg/apache/tools/ant/filters/TailFilter;->in:Ljava/io/Reader;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/LineTokenizer;->getToken(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->line:Ljava/lang/String;

    .line 113
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/filters/TailFilter;->tailFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->line:Ljava/lang/String;

    .line 114
    if-nez v0, :cond_45

    .line 115
    const/4 v0, -0x1

    .line 125
    :cond_2a
    :goto_2a
    return v0

    .line 120
    :cond_2b
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->line:Ljava/lang/String;

    iget v1, p0, Lorg/apache/tools/ant/filters/TailFilter;->linePos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 121
    iget v1, p0, Lorg/apache/tools/ant/filters/TailFilter;->linePos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/tools/ant/filters/TailFilter;->linePos:I

    .line 122
    iget-object v2, p0, Lorg/apache/tools/ant/filters/TailFilter;->line:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_2a

    .line 123
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/tools/ant/filters/TailFilter;->line:Ljava/lang/String;

    goto :goto_2a

    .line 117
    :cond_45
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/ant/filters/TailFilter;->linePos:I

    goto :goto_d
.end method

.method public setLines(J)V
    .registers 4

    .line 134
    iput-wide p1, p0, Lorg/apache/tools/ant/filters/TailFilter;->lines:J

    .line 135
    return-void
.end method

.method public setSkip(J)V
    .registers 4

    .line 152
    iput-wide p1, p0, Lorg/apache/tools/ant/filters/TailFilter;->skip:J

    .line 153
    return-void
.end method
