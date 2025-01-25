.class public Lorg/apache/tools/ant/types/selectors/ContainsSelector;
.super Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;
.source "ContainsSelector.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# static fields
.field public static final CASE_KEY:Ljava/lang/String; = "casesensitive"

.field public static final CONTAINS_KEY:Ljava/lang/String; = "text"

.field public static final EXPRESSION_KEY:Ljava/lang/String; = "expression"

.field public static final WHITESPACE_KEY:Ljava/lang/String; = "ignorewhitespace"


# instance fields
.field private casesensitive:Z

.field private contains:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private ignorewhitespace:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;-><init>()V

    .line 51
    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->contains:Ljava/lang/String;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->casesensitive:Z

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->ignorewhitespace:Z

    .line 54
    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->encoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .registers 5

    .line 148
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p3}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->isSelected(Lorg/apache/tools/ant/types/Resource;)Z

    move-result v0

    return v0
.end method

.method public isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .registers 8

    const/4 v1, 0x1

    .line 160
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->validate()V

    .line 162
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->contains:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    move v0, v1

    .line 190
    :goto_13
    return v0

    .line 166
    :cond_14
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->contains:Ljava/lang/String;

    .line 167
    iget-boolean v2, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->casesensitive:Z

    if-nez v2, :cond_20

    .line 168
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->contains:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 170
    :cond_20
    iget-boolean v2, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->ignorewhitespace:Z

    if-eqz v2, :cond_ae

    .line 171
    invoke-static {v0}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->removeWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 173
    :goto_29
    :try_start_29
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 174
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->encoding:Ljava/lang/String;

    if-nez v0, :cond_60

    .line 175
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_39
    invoke-direct {v4, v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_3f} :catch_90

    .line 177
    :try_start_3f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 178
    :goto_43
    if-eqz v0, :cond_6a

    .line 179
    iget-boolean v4, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->casesensitive:Z

    if-nez v4, :cond_4d

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_4d
    iget-boolean v4, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->ignorewhitespace:Z

    if-eqz v4, :cond_55

    .line 183
    invoke-static {v0}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->removeWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    :cond_55
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_58} :catch_6f
    .catchall {:try_start_3f .. :try_end_58} :catchall_8b

    move-result v0

    if-eqz v0, :cond_65

    .line 186
    :try_start_5b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    move v0, v1

    goto :goto_13

    .line 175
    :cond_60
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_63} :catch_90

    move-result-object v0

    goto :goto_39

    .line 188
    :cond_65
    :try_start_65
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_6f
    .catchall {:try_start_65 .. :try_end_68} :catchall_8b

    move-result-object v0

    goto :goto_43

    .line 190
    :cond_6a
    :try_start_6a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_90

    const/4 v0, 0x0

    goto :goto_13

    .line 191
    :catch_6f
    move-exception v0

    .line 192
    :try_start_70
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->toLongString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8b
    .catchall {:try_start_70 .. :try_end_8b} :catchall_8b

    .line 173
    :catchall_8b
    move-exception v0

    :try_start_8c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_ac

    :goto_8f
    :try_start_8f
    throw v0
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_90} :catch_90

    .line 194
    :catch_90
    move-exception v0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get InputStream from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->toLongString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 173
    :catchall_ac
    move-exception v1

    goto :goto_8f

    :cond_ae
    move-object v2, v0

    goto/16 :goto_29
.end method

.method public setCasesensitive(Z)V
    .registers 2

    .line 88
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->casesensitive:Z

    .line 89
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->encoding:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setIgnorewhitespace(Z)V
    .registers 2

    .line 98
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->ignorewhitespace:Z

    .line 99
    return-void
.end method

.method public varargs setParameters([Lorg/apache/tools/ant/types/Parameter;)V
    .registers 7

    .line 108
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;->setParameters([Lorg/apache/tools/ant/types/Parameter;)V

    .line 109
    if-eqz p1, :cond_5e

    .line 110
    array-length v1, p1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_5e

    aget-object v2, p1, v0

    .line 111
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    .line 112
    const-string v4, "text"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 113
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->setText(Ljava/lang/String;)V

    .line 110
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 114
    :cond_21
    const-string v4, "casesensitive"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 115
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->setCasesensitive(Z)V

    goto :goto_1e

    .line 117
    :cond_35
    const-string v4, "ignorewhitespace"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 118
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->setIgnorewhitespace(Z)V

    goto :goto_1e

    .line 121
    :cond_49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid parameter "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->setError(Ljava/lang/String;)V

    goto :goto_1e

    .line 125
    :cond_5e
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->contains:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 60
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->contains:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->casesensitive:Z

    .line 61
    iget-boolean v2, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->ignorewhitespace:Z

    .line 60
    const-string v3, "{containsselector text: \"%s\" casesensitive: %s ignorewhitespace: %s}"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifySettings()V
    .registers 2

    .line 133
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->contains:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 134
    const-string v0, "The text attribute is required"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/ContainsSelector;->setError(Ljava/lang/String;)V

    .line 136
    :cond_9
    return-void
.end method
