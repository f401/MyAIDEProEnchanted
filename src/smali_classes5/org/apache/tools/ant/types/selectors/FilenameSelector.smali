.class public Lorg/apache/tools/ant/types/selectors/FilenameSelector;
.super Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;
.source "FilenameSelector.java"


# static fields
.field public static final CASE_KEY:Ljava/lang/String; = "casesensitive"

.field public static final NAME_KEY:Ljava/lang/String; = "name"

.field public static final NEGATE_KEY:Ljava/lang/String; = "negate"

.field public static final REGEX_KEY:Ljava/lang/String; = "regex"


# instance fields
.field private casesensitive:Z

.field private expression:Lorg/apache/tools/ant/util/regexp/Regexp;

.field private negated:Z

.field private pattern:Ljava/lang/String;

.field private reg:Lorg/apache/tools/ant/types/RegularExpression;

.field private regex:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;-><init>()V

    .line 44
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->pattern:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->regex:Ljava/lang/String;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->casesensitive:Z

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->negated:Z

    return-void
.end method


# virtual methods
.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 172
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->validate()V

    .line 173
    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->pattern:Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 174
    iget-boolean v3, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->casesensitive:Z

    invoke-static {v2, p2, v3}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPath(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iget-boolean v3, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->negated:Z

    xor-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_44

    .line 183
    :cond_15
    :goto_15
    return v0

    .line 177
    :cond_16
    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->reg:Lorg/apache/tools/ant/types/RegularExpression;

    if-nez v2, :cond_32

    .line 178
    new-instance v2, Lorg/apache/tools/ant/types/RegularExpression;

    invoke-direct {v2}, Lorg/apache/tools/ant/types/RegularExpression;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->reg:Lorg/apache/tools/ant/types/RegularExpression;

    .line 179
    iget-object v3, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->regex:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/RegularExpression;->setPattern(Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->reg:Lorg/apache/tools/ant/types/RegularExpression;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/RegularExpression;->getRegexp(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/util/regexp/Regexp;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->expression:Lorg/apache/tools/ant/util/regexp/Regexp;

    .line 182
    :cond_32
    iget-boolean v2, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->casesensitive:Z

    invoke-static {v2}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->asOptions(Z)I

    move-result v2

    .line 183
    iget-object v3, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->expression:Lorg/apache/tools/ant/util/regexp/Regexp;

    invoke-interface {v3, p2, v2}, Lorg/apache/tools/ant/util/regexp/Regexp;->matches(Ljava/lang/String;I)Z

    move-result v2

    iget-boolean v3, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->negated:Z

    xor-int/lit8 v3, v3, 0x1

    if-eq v2, v3, :cond_15

    :cond_44
    move v0, v1

    goto :goto_15
.end method

.method public setCasesensitive(Z)V
    .registers 2

    .line 104
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->casesensitive:Z

    .line 105
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 5

    .line 79
    const/16 v0, 0x2f

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 81
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "**"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    :cond_29
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->pattern:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setNegate(Z)V
    .registers 2

    .line 116
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->negated:Z

    .line 117
    return-void
.end method

.method public varargs setParameters([Lorg/apache/tools/ant/types/Parameter;)V
    .registers 7

    .line 126
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;->setParameters([Lorg/apache/tools/ant/types/Parameter;)V

    .line 127
    if-eqz p1, :cond_6e

    .line 128
    array-length v1, p1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_6e

    aget-object v2, p1, v0

    .line 129
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    .line 130
    const-string v4, "name"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 131
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->setName(Ljava/lang/String;)V

    .line 128
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 132
    :cond_21
    const-string v4, "casesensitive"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 133
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->setCasesensitive(Z)V

    goto :goto_1e

    .line 135
    :cond_35
    const-string v4, "negate"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 136
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->setNegate(Z)V

    goto :goto_1e

    .line 137
    :cond_49
    const-string v4, "regex"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 138
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->setRegex(Ljava/lang/String;)V

    goto :goto_1e

    .line 140
    :cond_59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid parameter "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->setError(Ljava/lang/String;)V

    goto :goto_1e

    .line 144
    :cond_6e
    return-void
.end method

.method public setRegex(Ljava/lang/String;)V
    .registers 3

    .line 94
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->regex:Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->reg:Lorg/apache/tools/ant/types/RegularExpression;

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{filenameselector name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->pattern:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_e
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->regex:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [as regular expression]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_1a
    const-string v1, " negate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->negated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, " casesensitive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->casesensitive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifySettings()V
    .registers 3

    .line 152
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->pattern:Ljava/lang/String;

    if-nez v0, :cond_e

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->regex:Ljava/lang/String;

    if-nez v1, :cond_e

    .line 153
    const-string v0, "The name or regex attribute is required"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->setError(Ljava/lang/String;)V

    .line 157
    :cond_d
    :goto_d
    return-void

    .line 154
    :cond_e
    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->regex:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 155
    const-string v0, "Only one of name and regex attribute is allowed"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/FilenameSelector;->setError(Ljava/lang/String;)V

    goto :goto_d
.end method
