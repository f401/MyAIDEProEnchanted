.class public Lorg/apache/tools/ant/util/GlobPatternMapper;
.super Ljava/lang/Object;
.source "GlobPatternMapper.java"

# interfaces
.implements Lorg/apache/tools/ant/util/FileNameMapper;


# instance fields
.field private caseSensitive:Z

.field private fromContainsStar:Z

.field protected fromPostfix:Ljava/lang/String;

.field protected fromPrefix:Ljava/lang/String;

.field private handleDirSep:Z

.field protected postfixLength:I

.field protected prefixLength:I

.field private toContainsStar:Z

.field protected toPostfix:Ljava/lang/String;

.field protected toPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromPrefix:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromPostfix:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->toPrefix:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->toPostfix:Ljava/lang/String;

    .line 71
    iput-boolean v1, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromContainsStar:Z

    .line 72
    iput-boolean v1, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->toContainsStar:Z

    .line 73
    iput-boolean v1, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->handleDirSep:Z

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->caseSensitive:Z

    return-void
.end method

.method private modifyName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 198
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->caseSensitive:Z

    if-nez v0, :cond_8

    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 201
    :cond_8
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->handleDirSep:Z

    if-eqz v0, :cond_1c

    .line 202
    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 203
    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 206
    :cond_1c
    return-object p1
.end method


# virtual methods
.method protected extractVariablePart(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 188
    iget v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->prefixLength:I

    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->postfixLength:I

    .line 188
    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandleDirSep()Z
    .registers 2

    .line 93
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->handleDirSep:Z

    return v0
.end method

.method public mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    .line 158
    if-nez p1, :cond_4

    .line 174
    :cond_3
    :goto_3
    return-object v0

    .line 161
    :cond_4
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/GlobPatternMapper;->modifyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    iget-object v2, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromPrefix:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->prefixLength:I

    iget v4, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->postfixLength:I

    add-int/2addr v3, v4

    if-lt v2, v3, :cond_3

    iget-boolean v2, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromContainsStar:Z

    if-nez v2, :cond_27

    iget-object v2, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromPrefix:Ljava/lang/String;

    .line 165
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/util/GlobPatternMapper;->modifyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_27
    iget-boolean v2, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromContainsStar:Z

    if-eqz v2, :cond_43

    iget-object v2, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromPrefix:Ljava/lang/String;

    .line 168
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/util/GlobPatternMapper;->modifyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromPostfix:Ljava/lang/String;

    .line 169
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/util/GlobPatternMapper;->modifyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 174
    :cond_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->toPrefix:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->toContainsStar:Z

    if-eqz v0, :cond_74

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/GlobPatternMapper;->extractVariablePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->toPostfix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    :goto_66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    goto :goto_3

    .line 178
    :cond_74
    const-string v0, ""

    goto :goto_66
.end method

.method public setCaseSensitive(Z)V
    .registers 2

    .line 104
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->caseSensitive:Z

    .line 105
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .registers 4

    .line 113
    if-eqz p1, :cond_34

    .line 116
    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 117
    if-gez v0, :cond_21

    .line 118
    iput-object p1, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromPrefix:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromPostfix:Ljava/lang/String;

    .line 125
    :goto_10
    iget-object v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->prefixLength:I

    .line 126
    iget-object v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromPostfix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->postfixLength:I

    .line 127
    return-void

    .line 121
    :cond_21
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromPrefix:Ljava/lang/String;

    .line 122
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromPostfix:Ljava/lang/String;

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->fromContainsStar:Z

    goto :goto_10

    .line 114
    :cond_34
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "this mapper requires a \'from\' attribute"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHandleDirSep(Z)V
    .registers 2

    .line 83
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->handleDirSep:Z

    .line 84
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .registers 4

    .line 135
    if-eqz p1, :cond_24

    .line 138
    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 139
    if-gez v0, :cond_11

    .line 140
    iput-object p1, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->toPrefix:Ljava/lang/String;

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->toPostfix:Ljava/lang/String;

    .line 147
    :goto_10
    return-void

    .line 143
    :cond_11
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->toPrefix:Ljava/lang/String;

    .line 144
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->toPostfix:Ljava/lang/String;

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/util/GlobPatternMapper;->toContainsStar:Z

    goto :goto_10

    .line 136
    :cond_24
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "this mapper requires a \'to\' attribute"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
