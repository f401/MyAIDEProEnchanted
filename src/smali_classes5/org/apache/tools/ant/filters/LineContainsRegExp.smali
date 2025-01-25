.class public final Lorg/apache/tools/ant/filters/LineContainsRegExp;
.super Lorg/apache/tools/ant/filters/BaseParamFilterReader;
.source "LineContainsRegExp.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# static fields
.field private static final CS_KEY:Ljava/lang/String; = "casesensitive"

.field private static final NEGATE_KEY:Ljava/lang/String; = "negate"

.field private static final REGEXP_KEY:Ljava/lang/String; = "regexp"


# instance fields
.field private line:Ljava/lang/String;

.field private negate:Z

.field private regexpOptions:I

.field private regexps:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/RegularExpression;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>()V

    .line 61
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->regexps:Ljava/util/Vector;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->line:Ljava/lang/String;

    .line 70
    iput-boolean v1, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->negate:Z

    .line 71
    iput v1, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->regexpOptions:I

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>(Ljava/io/Reader;)V

    .line 61
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->regexps:Ljava/util/Vector;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->line:Ljava/lang/String;

    .line 70
    iput-boolean v1, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->negate:Z

    .line 71
    iput v1, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->regexpOptions:I

    .line 90
    return-void
.end method

.method private getRegexps()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/RegularExpression;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->regexps:Ljava/util/Vector;

    return-object v0
.end method

.method private initialize()V
    .registers 7

    .line 234
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->getParameters()[Lorg/apache/tools/ant/types/Parameter;

    move-result-object v1

    .line 235
    if-eqz v1, :cond_52

    .line 236
    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_52

    aget-object v3, v1, v0

    .line 237
    const-string v4, "regexp"

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 238
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->setRegexp(Ljava/lang/String;)V

    .line 236
    :cond_1f
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 239
    :cond_22
    const-string v4, "negate"

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 240
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->setNegate(Z)V

    goto :goto_1f

    .line 241
    :cond_3a
    const-string v4, "casesensitive"

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 242
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->setCaseSensitive(Z)V

    goto :goto_1f

    .line 246
    :cond_52
    return-void
.end method

.method private setRegexps(Ljava/util/Vector;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/RegularExpression;",
            ">;)V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->regexps:Ljava/util/Vector;

    .line 159
    return-void
.end method


# virtual methods
.method public addConfiguredRegexp(Lorg/apache/tools/ant/types/RegularExpression;)V
    .registers 3

    .line 145
    iget-object v0, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->regexps:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .registers 5

    .line 186
    new-instance v0, Lorg/apache/tools/ant/filters/LineContainsRegExp;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/LineContainsRegExp;-><init>(Ljava/io/Reader;)V

    .line 187
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->getRegexps()Ljava/util/Vector;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->setRegexps(Ljava/util/Vector;)V

    .line 188
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->isNegated()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->setNegate(Z)V

    .line 189
    iget v1, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->regexpOptions:I

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->hasFlag(II)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->setCaseSensitive(Z)V

    .line 191
    return-object v0
.end method

.method public isNegated()Z
    .registers 2

    .line 216
    iget-boolean v0, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->negate:Z

    return v0
.end method

.method public read()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 104
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->getInitialized()Z

    move-result v0

    if-nez v0, :cond_e

    .line 105
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->initialize()V

    .line 106
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->setInitialized(Z)V

    .line 109
    :cond_e
    const/4 v3, -0x1

    .line 111
    iget-object v0, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->line:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 113
    iget-object v1, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->line:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_23

    .line 114
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->line:Ljava/lang/String;

    .line 135
    :goto_22
    return v0

    .line 116
    :cond_23
    iget-object v1, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->line:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->line:Ljava/lang/String;

    goto :goto_22

    .line 119
    :cond_2c
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->line:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->line:Ljava/lang/String;

    if-eqz v0, :cond_62

    .line 121
    iget-object v0, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->regexps:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/RegularExpression;

    .line 122
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/tools/ant/types/RegularExpression;->getRegexp(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/util/regexp/Regexp;

    move-result-object v0

    iget-object v5, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->line:Ljava/lang/String;

    iget v6, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->regexpOptions:I

    invoke-interface {v0, v5, v6}, Lorg/apache/tools/ant/util/regexp/Regexp;->matches(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3c

    move v0, v1

    .line 127
    :goto_5b
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->isNegated()Z

    move-result v4

    xor-int/2addr v0, v4

    if-eqz v0, :cond_2c

    .line 131
    :cond_62
    iget-object v0, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->line:Ljava/lang/String;

    if-eqz v0, :cond_6b

    .line 132
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/LineContainsRegExp;->read()I

    move-result v0

    goto :goto_22

    :cond_6b
    move v0, v3

    goto :goto_22

    :cond_6d
    move v0, v2

    goto :goto_5b
.end method

.method public setCaseSensitive(Z)V
    .registers 3

    .line 208
    invoke-static {p1}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->asOptions(Z)I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->regexpOptions:I

    .line 209
    return-void
.end method

.method public setNegate(Z)V
    .registers 2

    .line 199
    iput-boolean p1, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->negate:Z

    .line 200
    return-void
.end method

.method public setRegexp(Ljava/lang/String;)V
    .registers 4

    .line 225
    new-instance v0, Lorg/apache/tools/ant/types/RegularExpression;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/RegularExpression;-><init>()V

    .line 226
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/RegularExpression;->setPattern(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lorg/apache/tools/ant/filters/LineContainsRegExp;->regexps:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 228
    return-void
.end method
