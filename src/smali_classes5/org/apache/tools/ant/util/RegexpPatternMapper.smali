.class public Lorg/apache/tools/ant/util/RegexpPatternMapper;
.super Ljava/lang/Object;
.source "RegexpPatternMapper.java"

# interfaces
.implements Lorg/apache/tools/ant/util/FileNameMapper;


# static fields
.field private static final DECIMAL:I = 0xa


# instance fields
.field private handleDirSep:Z

.field protected reg:Lorg/apache/tools/ant/util/regexp/RegexpMatcher;

.field private regexpOptions:I

.field protected result:Ljava/lang/StringBuffer;

.field protected to:[C


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->reg:Lorg/apache/tools/ant/util/regexp/RegexpMatcher;

    .line 39
    iput-object v0, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->to:[C

    .line 40
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->result:Ljava/lang/StringBuffer;

    .line 51
    iput-boolean v1, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->handleDirSep:Z

    .line 52
    iput v1, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->regexpOptions:I

    .line 48
    new-instance v0, Lorg/apache/tools/ant/util/regexp/RegexpMatcherFactory;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/regexp/RegexpMatcherFactory;-><init>()V

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/regexp/RegexpMatcherFactory;->newRegexpMatcher()Lorg/apache/tools/ant/util/regexp/RegexpMatcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->reg:Lorg/apache/tools/ant/util/regexp/RegexpMatcher;

    .line 49
    return-void
.end method


# virtual methods
.method public mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 118
    if-nez p1, :cond_4

    .line 130
    :cond_3
    :goto_3
    return-object v0

    .line 121
    :cond_4
    iget-boolean v1, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->handleDirSep:Z

    if-eqz v1, :cond_18

    .line 122
    const-string v1, "\\"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 123
    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 126
    :cond_18
    iget-object v1, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->reg:Lorg/apache/tools/ant/util/regexp/RegexpMatcher;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->to:[C

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->regexpOptions:I

    .line 127
    invoke-interface {v1, p1, v2}, Lorg/apache/tools/ant/util/regexp/RegexpMatcher;->matches(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/RegexpPatternMapper;->replaceReferences(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_3
.end method

.method protected replaceReferences(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v5, 0x5c

    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->reg:Lorg/apache/tools/ant/util/regexp/RegexpMatcher;

    iget v2, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->regexpOptions:I

    invoke-interface {v0, p1, v2}, Lorg/apache/tools/ant/util/regexp/RegexpMatcher;->getGroups(Ljava/lang/String;I)Ljava/util/Vector;

    move-result-object v3

    .line 142
    iget-object v0, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    move v0, v1

    .line 143
    :goto_11
    iget-object v4, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->to:[C

    array-length v2, v4

    if-ge v0, v2, :cond_52

    .line 144
    aget-char v2, v4, v0

    if-ne v2, v5, :cond_4a

    .line 145
    add-int/lit8 v2, v0, 0x1

    array-length v0, v4

    if-ge v2, v0, :cond_43

    .line 146
    aget-char v0, v4, v2

    const/16 v4, 0xa

    invoke-static {v0, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 147
    const/4 v4, -0x1

    if-le v0, v4, :cond_39

    .line 148
    iget-object v4, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->result:Ljava/lang/StringBuffer;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_35
    move v0, v2

    .line 143
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 150
    :cond_39
    iget-object v0, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->result:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->to:[C

    aget-char v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_35

    .line 154
    :cond_43
    iget-object v0, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v2

    goto :goto_36

    .line 157
    :cond_4a
    iget-object v2, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->result:Ljava/lang/StringBuffer;

    aget-char v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_36

    .line 160
    :cond_52
    iget-object v0, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCaseSensitive(Z)V
    .registers 3

    .line 72
    invoke-static {p1}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->asOptions(Z)I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->regexpOptions:I

    .line 73
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 82
    if-eqz p1, :cond_11

    .line 86
    :try_start_2
    iget-object v0, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->reg:Lorg/apache/tools/ant/util/regexp/RegexpMatcher;

    invoke-interface {v0, p1}, Lorg/apache/tools/ant/util/regexp/RegexpMatcher;->setPattern(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_7} :catch_8

    .line 92
    return-void

    .line 87
    :catch_8
    move-exception v0

    .line 90
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Cannot load regular expression matcher"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 83
    :cond_11
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "this mapper requires a \'from\' attribute"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHandleDirSep(Z)V
    .registers 2

    .line 61
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->handleDirSep:Z

    .line 62
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .registers 4

    .line 102
    if-eqz p1, :cond_9

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/RegexpPatternMapper;->to:[C

    .line 106
    return-void

    .line 103
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "this mapper requires a \'to\' attribute"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
