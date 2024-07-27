.class public final Lorg/apache/tools/ant/filters/PrefixLines;
.super Lorg/apache/tools/ant/filters/BaseParamFilterReader;
.source "PrefixLines.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# static fields
.field private static final PREFIX_KEY:Ljava/lang/String; = "prefix"


# instance fields
.field private prefix:Ljava/lang/String;

.field private queuedData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>()V

    .line 45
    iput-object v0, p0, Lorg/apache/tools/ant/filters/PrefixLines;->prefix:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lorg/apache/tools/ant/filters/PrefixLines;->queuedData:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>(Ljava/io/Reader;)V

    .line 45
    iput-object v0, p0, Lorg/apache/tools/ant/filters/PrefixLines;->prefix:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lorg/apache/tools/ant/filters/PrefixLines;->queuedData:Ljava/lang/String;

    .line 67
    return-void
.end method

.method private getPrefix()Ljava/lang/String;
    .registers 2

    .line 130
    iget-object v0, p0, Lorg/apache/tools/ant/filters/PrefixLines;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method private initialize()V
    .registers 7

    .line 154
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/PrefixLines;->getParameters()[Lorg/apache/tools/ant/types/Parameter;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_0

    .line 156
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 157
    const-string v4, "prefix"

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 158
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/PrefixLines;->prefix:Ljava/lang/String;

    .line 163
    :cond_0
    return-void

    .line 156
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .registers 4

    .line 144
    new-instance v0, Lorg/apache/tools/ant/filters/PrefixLines;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/PrefixLines;-><init>(Ljava/io/Reader;)V

    .line 145
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/PrefixLines;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/PrefixLines;->setPrefix(Ljava/lang/String;)V

    .line 146
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/PrefixLines;->setInitialized(Z)V

    .line 147
    return-object v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 82
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/PrefixLines;->getInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/PrefixLines;->initialize()V

    .line 84
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/filters/PrefixLines;->setInitialized(Z)V

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/filters/PrefixLines;->queuedData:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iput-object v3, p0, Lorg/apache/tools/ant/filters/PrefixLines;->queuedData:Ljava/lang/String;

    .line 93
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/filters/PrefixLines;->queuedData:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 94
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 95
    iget-object v1, p0, Lorg/apache/tools/ant/filters/PrefixLines;->queuedData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/filters/PrefixLines;->queuedData:Ljava/lang/String;

    .line 96
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    iput-object v3, p0, Lorg/apache/tools/ant/filters/PrefixLines;->queuedData:Ljava/lang/String;

    .line 110
    :cond_2
    :goto_0
    return v0

    .line 100
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/PrefixLines;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/PrefixLines;->queuedData:Ljava/lang/String;

    .line 101
    if-nez v0, :cond_4

    .line 102
    const/4 v0, -0x1

    goto :goto_0

    .line 104
    :cond_4
    iget-object v0, p0, Lorg/apache/tools/ant/filters/PrefixLines;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/filters/PrefixLines;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/filters/PrefixLines;->queuedData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/PrefixLines;->queuedData:Ljava/lang/String;

    .line 107
    :cond_5
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/PrefixLines;->read()I

    move-result v0

    goto :goto_0
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lorg/apache/tools/ant/filters/PrefixLines;->prefix:Ljava/lang/String;

    .line 122
    return-void
.end method
