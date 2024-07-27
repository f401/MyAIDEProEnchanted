.class public final Lorg/apache/tools/ant/filters/LineContains;
.super Lorg/apache/tools/ant/filters/BaseParamFilterReader;
.source "LineContains.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/filters/LineContains$Contains;
    }
.end annotation


# static fields
.field private static final CONTAINS_KEY:Ljava/lang/String; = "contains"

.field private static final NEGATE_KEY:Ljava/lang/String; = "negate"


# instance fields
.field private contains:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private line:Ljava/lang/String;

.field private matchAny:Z

.field private negate:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>()V

    .line 72
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/LineContains;->contains:Ljava/util/Vector;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/LineContains;->line:Ljava/lang/String;

    .line 81
    iput-boolean v1, p0, Lorg/apache/tools/ant/filters/LineContains;->negate:Z

    .line 83
    iput-boolean v1, p0, Lorg/apache/tools/ant/filters/LineContains;->matchAny:Z

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;-><init>(Ljava/io/Reader;)V

    .line 72
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/LineContains;->contains:Ljava/util/Vector;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/LineContains;->line:Ljava/lang/String;

    .line 81
    iput-boolean v1, p0, Lorg/apache/tools/ant/filters/LineContains;->negate:Z

    .line 83
    iput-boolean v1, p0, Lorg/apache/tools/ant/filters/LineContains;->matchAny:Z

    .line 102
    return-void
.end method

.method private getContains()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lorg/apache/tools/ant/filters/LineContains;->contains:Ljava/util/Vector;

    return-object v0
.end method

.method private initialize()V
    .registers 7

    .line 261
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/LineContains;->getParameters()[Lorg/apache/tools/ant/types/Parameter;

    move-result-object v1

    .line 262
    if-eqz v1, :cond_2

    .line 263
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 264
    const-string v4, "contains"

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 265
    iget-object v4, p0, Lorg/apache/tools/ant/filters/LineContains;->contains:Ljava/util/Vector;

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 263
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_1
    const-string v4, "negate"

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 267
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/filters/LineContains;->setNegate(Z)V

    goto :goto_1

    .line 271
    :cond_2
    return-void
.end method

.method private setContains(Ljava/util/Vector;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 223
    iput-object p1, p0, Lorg/apache/tools/ant/filters/LineContains;->contains:Ljava/util/Vector;

    .line 224
    return-void
.end method


# virtual methods
.method public addConfiguredContains(Lorg/apache/tools/ant/filters/LineContains$Contains;)V
    .registers 4

    .line 171
    iget-object v0, p0, Lorg/apache/tools/ant/filters/LineContains;->contains:Ljava/util/Vector;

    invoke-virtual {p1}, Lorg/apache/tools/ant/filters/LineContains$Contains;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .registers 4

    .line 250
    new-instance v0, Lorg/apache/tools/ant/filters/LineContains;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/LineContains;-><init>(Ljava/io/Reader;)V

    .line 251
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/LineContains;->getContains()Ljava/util/Vector;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/filters/LineContains;->setContains(Ljava/util/Vector;)V

    .line 252
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/LineContains;->isNegated()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/LineContains;->setNegate(Z)V

    .line 253
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/LineContains;->isMatchAny()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/LineContains;->setMatchAny(Z)V

    .line 254
    return-object v0
.end method

.method public isMatchAny()Z
    .registers 2

    .line 212
    iget-boolean v0, p0, Lorg/apache/tools/ant/filters/LineContains;->matchAny:Z

    return v0
.end method

.method public isNegated()Z
    .registers 2

    .line 187
    iget-boolean v0, p0, Lorg/apache/tools/ant/filters/LineContains;->negate:Z

    return v0
.end method

.method public read()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 115
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/LineContains;->getInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/LineContains;->initialize()V

    .line 117
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/filters/LineContains;->setInitialized(Z)V

    .line 120
    :cond_0
    const/4 v1, -0x1

    .line 122
    iget-object v0, p0, Lorg/apache/tools/ant/filters/LineContains;->line:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 124
    iget-object v1, p0, Lorg/apache/tools/ant/filters/LineContains;->line:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 125
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/tools/ant/filters/LineContains;->line:Ljava/lang/String;

    .line 161
    :goto_0
    return v0

    .line 127
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/filters/LineContains;->line:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/filters/LineContains;->line:Ljava/lang/String;

    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/filters/LineContains;->contains:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    .line 132
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/LineContains;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/LineContains;->line:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/tools/ant/filters/LineContains;->line:Ljava/lang/String;

    if-eqz v0, :cond_7

    move v0, v2

    move v3, v4

    .line 134
    :goto_1
    if-ge v3, v5, :cond_6

    .line 135
    iget-object v0, p0, Lorg/apache/tools/ant/filters/LineContains;->contains:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    iget-object v6, p0, Lorg/apache/tools/ant/filters/LineContains;->line:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 137
    if-nez v0, :cond_5

    .line 138
    iget-boolean v6, p0, Lorg/apache/tools/ant/filters/LineContains;->matchAny:Z

    if-eqz v6, :cond_6

    .line 134
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 147
    :cond_5
    iget-boolean v6, p0, Lorg/apache/tools/ant/filters/LineContains;->matchAny:Z

    if-eqz v6, :cond_4

    .line 153
    :cond_6
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/LineContains;->isNegated()Z

    move-result v3

    xor-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 157
    :cond_7
    iget-object v0, p0, Lorg/apache/tools/ant/filters/LineContains;->line:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 158
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/LineContains;->read()I

    move-result v0

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method public setMatchAny(Z)V
    .registers 2

    .line 200
    iput-boolean p1, p0, Lorg/apache/tools/ant/filters/LineContains;->matchAny:Z

    .line 201
    return-void
.end method

.method public setNegate(Z)V
    .registers 2

    .line 179
    iput-boolean p1, p0, Lorg/apache/tools/ant/filters/LineContains;->negate:Z

    .line 180
    return-void
.end method
