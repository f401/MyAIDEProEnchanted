.class public Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;
.super Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;
.source "ContainsRegexpSelector.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# static fields
.field private static final CS_KEY:Ljava/lang/String; = "casesensitive"

.field public static final EXPRESSION_KEY:Ljava/lang/String; = "expression"

.field private static final ML_KEY:Ljava/lang/String; = "multiline"

.field private static final SL_KEY:Ljava/lang/String; = "singleline"


# instance fields
.field private caseSensitive:Z

.field private multiLine:Z

.field private myExpression:Lorg/apache/tools/ant/util/regexp/Regexp;

.field private myRegExp:Lorg/apache/tools/ant/types/RegularExpression;

.field private singleLine:Z

.field private userProvidedExpression:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;-><init>()V

    .line 53
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->userProvidedExpression:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->myRegExp:Lorg/apache/tools/ant/types/RegularExpression;

    .line 55
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->myExpression:Lorg/apache/tools/ant/util/regexp/Regexp;

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->caseSensitive:Z

    .line 57
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->multiLine:Z

    .line 58
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->singleLine:Z

    return-void
.end method


# virtual methods
.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .registers 5

    .line 150
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p3}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->isSelected(Lorg/apache/tools/ant/types/Resource;)Z

    move-result v0

    return v0
.end method

.method public isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .registers 9

    const/4 v0, 0x1

    .line 161
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->validate()V

    .line 163
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 185
    :goto_a
    return v0

    .line 167
    :cond_b
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->myRegExp:Lorg/apache/tools/ant/types/RegularExpression;

    if-nez v1, :cond_27

    .line 168
    new-instance v1, Lorg/apache/tools/ant/types/RegularExpression;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/RegularExpression;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->myRegExp:Lorg/apache/tools/ant/types/RegularExpression;

    .line 169
    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->userProvidedExpression:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/RegularExpression;->setPattern(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->myRegExp:Lorg/apache/tools/ant/types/RegularExpression;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/RegularExpression;->getRegexp(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/util/regexp/Regexp;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->myExpression:Lorg/apache/tools/ant/util/regexp/Regexp;

    .line 173
    :cond_27
    :try_start_27
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 174
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_35} :catch_51

    .line 176
    :try_start_35
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 178
    :goto_39
    if-eqz v1, :cond_72

    .line 179
    iget-object v3, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->myExpression:Lorg/apache/tools/ant/util/regexp/Regexp;

    iget-boolean v4, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->caseSensitive:Z

    iget-boolean v5, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->multiLine:Z

    iget-boolean v6, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->singleLine:Z

    .line 180
    invoke-static {v4, v5, v6}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->asOptions(ZZZ)I

    move-result v4

    .line 179
    invoke-interface {v3, v1, v4}, Lorg/apache/tools/ant/util/regexp/Regexp;->matches(Ljava/lang/String;I)Z
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_4a} :catch_77
    .catchall {:try_start_35 .. :try_end_4a} :catchall_93

    move-result v1

    if-eqz v1, :cond_6d

    .line 181
    :try_start_4d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_a

    .line 189
    :catch_51
    move-exception v0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get InputStream from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->toLongString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 183
    :cond_6d
    :try_start_6d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_77
    .catchall {:try_start_6d .. :try_end_70} :catchall_93

    move-result-object v1

    goto :goto_39

    .line 185
    :cond_72
    :try_start_72
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_51

    const/4 v0, 0x0

    goto :goto_a

    .line 186
    :catch_77
    move-exception v0

    .line 187
    :try_start_78
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->toLongString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_93
    .catchall {:try_start_78 .. :try_end_93} :catchall_93

    .line 173
    :catchall_93
    move-exception v0

    :try_start_94
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_98

    :goto_97
    :try_start_97
    throw v0
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_98} :catch_51

    :catchall_98
    move-exception v1

    goto :goto_97
.end method

.method public setCaseSensitive(Z)V
    .registers 2

    .line 83
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->caseSensitive:Z

    .line 84
    return-void
.end method

.method public setExpression(Ljava/lang/String;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->userProvidedExpression:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setMultiLine(Z)V
    .registers 2

    .line 92
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->multiLine:Z

    .line 93
    return-void
.end method

.method public varargs setParameters([Lorg/apache/tools/ant/types/Parameter;)V
    .registers 7

    .line 112
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;->setParameters([Lorg/apache/tools/ant/types/Parameter;)V

    .line 113
    if-eqz p1, :cond_72

    .line 114
    array-length v1, p1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_72

    aget-object v2, p1, v0

    .line 115
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    .line 116
    const-string v4, "expression"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 117
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->setExpression(Ljava/lang/String;)V

    .line 114
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 118
    :cond_21
    const-string v4, "casesensitive"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 119
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->setCaseSensitive(Z)V

    goto :goto_1e

    .line 120
    :cond_35
    const-string v4, "multiline"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 121
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->setMultiLine(Z)V

    goto :goto_1e

    .line 122
    :cond_49
    const-string v4, "singleline"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 123
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->setSingleLine(Z)V

    goto :goto_1e

    .line 125
    :cond_5d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid parameter "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->setError(Ljava/lang/String;)V

    goto :goto_1e

    .line 129
    :cond_72
    return-void
.end method

.method public setSingleLine(Z)V
    .registers 2

    .line 102
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->singleLine:Z

    .line 103
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 64
    const-string v0, "{containsregexpselector expression: %s}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->userProvidedExpression:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifySettings()V
    .registers 2

    .line 136
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->userProvidedExpression:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 137
    const-string v0, "The expression attribute is required"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/ContainsRegexpSelector;->setError(Ljava/lang/String;)V

    .line 139
    :cond_9
    return-void
.end method
