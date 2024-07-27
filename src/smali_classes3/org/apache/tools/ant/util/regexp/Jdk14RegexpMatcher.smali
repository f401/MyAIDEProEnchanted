.class public Lorg/apache/tools/ant/util/regexp/Jdk14RegexpMatcher;
.super Ljava/lang/Object;
.source "Jdk14RegexpMatcher.java"

# interfaces
.implements Lorg/apache/tools/ant/util/regexp/RegexpMatcher;


# instance fields
.field private pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCompiledPattern(I)Ljava/util/regex/Pattern;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 65
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/regexp/Jdk14RegexpMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/regexp/Jdk14RegexpMatcher;->getCompilerOptions(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getCompilerOptions(I)I
    .registers 4

    .line 154
    const/4 v0, 0x1

    .line 156
    const/16 v1, 0x100

    invoke-static {p1, v1}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    const/4 v0, 0x3

    .line 159
    :cond_0
    const/16 v1, 0x1000

    invoke-static {p1, v1}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    or-int/lit8 v0, v0, 0x8

    .line 162
    :cond_1
    const/high16 v1, 0x10000

    invoke-static {p1, v1}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    or-int/lit8 v0, v0, 0x20

    .line 166
    :cond_2
    return v0
.end method

.method public getGroups(Ljava/lang/String;)Ljava/util/Vector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/util/regexp/Jdk14RegexpMatcher;->getGroups(Ljava/lang/String;I)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getGroups(Ljava/lang/String;I)Ljava/util/Vector;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/util/regexp/Jdk14RegexpMatcher;->getCompiledPattern(I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 130
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 131
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    .line 134
    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 135
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    .line 136
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-gt v2, v4, :cond_2

    .line 137
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    if-nez v0, :cond_1

    .line 140
    const-string v0, ""

    .line 142
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 144
    goto :goto_0
.end method

.method public getPattern()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lorg/apache/tools/ant/util/regexp/Jdk14RegexpMatcher;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public matches(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/util/regexp/Jdk14RegexpMatcher;->matches(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public matches(Ljava/lang/String;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 93
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/util/regexp/Jdk14RegexpMatcher;->getCompiledPattern(I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setPattern(Ljava/lang/String;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lorg/apache/tools/ant/util/regexp/Jdk14RegexpMatcher;->pattern:Ljava/lang/String;

    .line 44
    return-void
.end method
