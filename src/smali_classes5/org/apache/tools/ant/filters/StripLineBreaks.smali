.class public final Lorg/apache/tools/ant/filters/StripLineBreaks;
.super Lorg/apache/tools/ant/filters/BaseParamFilterReader;
.source "StripLineBreaks.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# static fields
.field private static final DEFAULT_LINE_BREAKS:Ljava/lang/String; = "\r\n"

.field private static final LINE_BREAKS_KEY:Ljava/lang/String; = "linebreaks"


# instance fields
.field private lineBreaks:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>()V

    .line 51
    const-string v0, "\r\n"

    iput-object v0, p0, Lorg/apache/tools/ant/filters/StripLineBreaks;->lineBreaks:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    .line 69
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>(Ljava/io/Reader;)V

    .line 51
    const-string v0, "\r\n"

    iput-object v0, p0, Lorg/apache/tools/ant/filters/StripLineBreaks;->lineBreaks:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private getLineBreaks()Ljava/lang/String;
    .registers 2

    .line 116
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripLineBreaks;->lineBreaks:Ljava/lang/String;

    return-object v0
.end method

.method private initialize()V
    .registers 8

    .line 140
    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/StripLineBreaks;->getParameters()[Lorg/apache/tools/ant/types/Parameter;

    move-result-object v2

    .line 142
    if-eqz v2, :cond_1d

    .line 143
    array-length v3, v2

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v3, :cond_1d

    aget-object v4, v2, v1

    .line 144
    const-string v5, "linebreaks"

    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 145
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 150
    :cond_1d
    if-eqz v0, :cond_21

    .line 151
    iput-object v0, p0, Lorg/apache/tools/ant/filters/StripLineBreaks;->lineBreaks:Ljava/lang/String;

    .line 153
    :cond_21
    return-void

    .line 143
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method


# virtual methods
.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .registers 4

    .line 130
    new-instance v0, Lorg/apache/tools/ant/filters/StripLineBreaks;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/StripLineBreaks;-><init>(Ljava/io/Reader;)V

    .line 131
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/StripLineBreaks;->getLineBreaks()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/StripLineBreaks;->setLineBreaks(Ljava/lang/String;)V

    .line 132
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/StripLineBreaks;->setInitialized(Z)V

    .line 133
    return-object v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    .line 83
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/StripLineBreaks;->getInitialized()Z

    move-result v0

    if-nez v0, :cond_e

    .line 84
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/StripLineBreaks;->initialize()V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/filters/StripLineBreaks;->setInitialized(Z)V

    .line 88
    :cond_e
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripLineBreaks;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 89
    :goto_14
    if-eq v0, v2, :cond_1e

    .line 90
    iget-object v1, p0, Lorg/apache/tools/ant/filters/StripLineBreaks;->lineBreaks:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_1f

    .line 96
    :cond_1e
    return v0

    .line 93
    :cond_1f
    iget-object v0, p0, Lorg/apache/tools/ant/filters/StripLineBreaks;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_14
.end method

.method public setLineBreaks(Ljava/lang/String;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lorg/apache/tools/ant/filters/StripLineBreaks;->lineBreaks:Ljava/lang/String;

    .line 107
    return-void
.end method
