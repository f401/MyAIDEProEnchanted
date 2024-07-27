.class public final Lorg/apache/tools/ant/filters/SuffixLines;
.super Lorg/apache/tools/ant/filters/BaseParamFilterReader;
.source "SuffixLines.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# static fields
.field private static final SUFFIX_KEY:Ljava/lang/String; = "suffix"


# instance fields
.field private queuedData:Ljava/lang/String;

.field private suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>()V

    .line 46
    iput-object v0, p0, Lorg/apache/tools/ant/filters/SuffixLines;->suffix:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lorg/apache/tools/ant/filters/SuffixLines;->queuedData:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>(Ljava/io/Reader;)V

    .line 46
    iput-object v0, p0, Lorg/apache/tools/ant/filters/SuffixLines;->suffix:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lorg/apache/tools/ant/filters/SuffixLines;->queuedData:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private getSuffix()Ljava/lang/String;
    .registers 2

    .line 140
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SuffixLines;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method private initialize()V
    .registers 7

    .line 164
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/SuffixLines;->getParameters()[Lorg/apache/tools/ant/types/Parameter;

    move-result-object v1

    .line 165
    if-eqz v1, :cond_0

    .line 166
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 167
    const-string v4, "suffix"

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 168
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/SuffixLines;->suffix:Ljava/lang/String;

    .line 173
    :cond_0
    return-void

    .line 166
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .registers 4

    .line 154
    new-instance v0, Lorg/apache/tools/ant/filters/SuffixLines;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/SuffixLines;-><init>(Ljava/io/Reader;)V

    .line 155
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/SuffixLines;->getSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/SuffixLines;->setSuffix(Ljava/lang/String;)V

    .line 156
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/SuffixLines;->setInitialized(Z)V

    .line 157
    return-object v0
.end method

.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 83
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/SuffixLines;->getInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/SuffixLines;->initialize()V

    .line 85
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/filters/SuffixLines;->setInitialized(Z)V

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SuffixLines;->queuedData:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iput-object v3, p0, Lorg/apache/tools/ant/filters/SuffixLines;->queuedData:Ljava/lang/String;

    .line 94
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SuffixLines;->queuedData:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 95
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/SuffixLines;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/filters/SuffixLines;->queuedData:Ljava/lang/String;

    .line 96
    if-nez v1, :cond_3

    .line 97
    const/4 v0, -0x1

    .line 120
    :cond_2
    :goto_0
    return v0

    .line 99
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/filters/SuffixLines;->suffix:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 100
    const-string v0, ""

    .line 101
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 102
    const-string v0, "\r\n"

    .line 106
    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/filters/SuffixLines;->queuedData:Ljava/lang/String;

    .line 108
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 107
    sub-int/2addr v3, v4

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/filters/SuffixLines;->suffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/SuffixLines;->queuedData:Ljava/lang/String;

    .line 111
    :cond_5
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/SuffixLines;->read()I

    move-result v0

    goto :goto_0

    .line 103
    :cond_6
    iget-object v1, p0, Lorg/apache/tools/ant/filters/SuffixLines;->queuedData:Ljava/lang/String;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 104
    const-string v0, "\n"

    goto :goto_1

    .line 114
    :cond_7
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 115
    iget-object v1, p0, Lorg/apache/tools/ant/filters/SuffixLines;->queuedData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/filters/SuffixLines;->queuedData:Ljava/lang/String;

    .line 116
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    iput-object v3, p0, Lorg/apache/tools/ant/filters/SuffixLines;->queuedData:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSuffix(Ljava/lang/String;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lorg/apache/tools/ant/filters/SuffixLines;->suffix:Ljava/lang/String;

    .line 132
    return-void
.end method
