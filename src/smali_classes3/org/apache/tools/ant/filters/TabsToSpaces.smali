.class public final Lorg/apache/tools/ant/filters/TabsToSpaces;
.super Lorg/apache/tools/ant/filters/BaseParamFilterReader;
.source "TabsToSpaces.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# static fields
.field private static final DEFAULT_TAB_LENGTH:I = 0x8

.field private static final TAB_LENGTH_KEY:Ljava/lang/String; = "tablength"


# instance fields
.field private spacesRemaining:I

.field private tabLength:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>()V

    .line 49
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/tools/ant/filters/TabsToSpaces;->tabLength:I

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/ant/filters/TabsToSpaces;->spacesRemaining:I

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    .line 70
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>(Ljava/io/Reader;)V

    .line 49
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/tools/ant/filters/TabsToSpaces;->tabLength:I

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/ant/filters/TabsToSpaces;->spacesRemaining:I

    .line 71
    return-void
.end method

.method private getTablength()I
    .registers 2

    .line 119
    iget v0, p0, Lorg/apache/tools/ant/filters/TabsToSpaces;->tabLength:I

    return v0
.end method

.method private initialize()V
    .registers 7

    .line 143
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/TabsToSpaces;->getParameters()[Lorg/apache/tools/ant/types/Parameter;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_0

    .line 145
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 146
    if-eqz v3, :cond_1

    .line 147
    const-string v4, "tablength"

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/filters/TabsToSpaces;->tabLength:I

    .line 154
    :cond_0
    return-void

    .line 145
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .registers 4

    .line 133
    new-instance v0, Lorg/apache/tools/ant/filters/TabsToSpaces;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/TabsToSpaces;-><init>(Ljava/io/Reader;)V

    .line 134
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/TabsToSpaces;->getTablength()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/TabsToSpaces;->setTablength(I)V

    .line 135
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/TabsToSpaces;->setInitialized(Z)V

    .line 136
    return-object v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 84
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/TabsToSpaces;->getInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/TabsToSpaces;->initialize()V

    .line 86
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/filters/TabsToSpaces;->setInitialized(Z)V

    .line 89
    :cond_0
    iget v1, p0, Lorg/apache/tools/ant/filters/TabsToSpaces;->spacesRemaining:I

    if-lez v1, :cond_1

    .line 92
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/tools/ant/filters/TabsToSpaces;->spacesRemaining:I

    .line 101
    :goto_0
    return v0

    .line 95
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/filters/TabsToSpaces;->in:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result v1

    .line 96
    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    .line 97
    iget v1, p0, Lorg/apache/tools/ant/filters/TabsToSpaces;->tabLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/tools/ant/filters/TabsToSpaces;->spacesRemaining:I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public setTablength(I)V
    .registers 2

    .line 110
    iput p1, p0, Lorg/apache/tools/ant/filters/TabsToSpaces;->tabLength:I

    .line 111
    return-void
.end method
