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
    if-eqz v1, :cond_1e

    .line 156
    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_1e

    aget-object v3, v1, v0

    .line 157
    const-string v4, "prefix"

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 158
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/PrefixLines;->prefix:Ljava/lang/String;

    .line 163
    :cond_1e
    return-void

    .line 156
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
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

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/PrefixLines;->getInitialized()Z

    move-result v0

    if-nez v0, :cond_e

    .line 83
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/PrefixLines;->initialize()V

    .line 84
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/filters/PrefixLines;->setInitialized(Z)V

    .line 87
    :cond_e
    iget-object v0, p0, Lorg/apache/tools/ant/filters/PrefixLines;->queuedData:Ljava/lang/String;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 90
    iput-object v2, p0, Lorg/apache/tools/ant/filters/PrefixLines;->queuedData:Ljava/lang/String;

    .line 93
    :cond_1a
    iget-object v0, p0, Lorg/apache/tools/ant/filters/PrefixLines;->queuedData:Ljava/lang/String;

    if-eqz v0, :cond_34

    .line 94
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 95
    iget-object v1, p0, Lorg/apache/tools/ant/filters/PrefixLines;->queuedData:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/filters/PrefixLines;->queuedData:Ljava/lang/String;

    .line 96
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 97
    iput-object v2, p0, Lorg/apache/tools/ant/filters/PrefixLines;->queuedData:Ljava/lang/String;

    .line 110
    :cond_33
    :goto_33
    return v0

    .line 100
    :cond_34
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/PrefixLines;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/PrefixLines;->queuedData:Ljava/lang/String;

    .line 101
    if-nez v0, :cond_3e

    .line 102
    const/4 v0, -0x1

    goto :goto_33

    .line 104
    :cond_3e
    iget-object v0, p0, Lorg/apache/tools/ant/filters/PrefixLines;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_57

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
    :cond_57
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/PrefixLines;->read()I

    move-result v0

    goto :goto_33
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lorg/apache/tools/ant/filters/PrefixLines;->prefix:Ljava/lang/String;

    .line 122
    return-void
.end method
