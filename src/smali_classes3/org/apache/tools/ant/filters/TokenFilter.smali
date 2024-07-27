.class public Lorg/apache/tools/ant/filters/TokenFilter;
.super Lorg/apache/tools/ant/filters/BaseFilterReader;
.source "TokenFilter.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;,
        Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;,
        Lorg/apache/tools/ant/filters/TokenFilter$ContainsString;,
        Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters;,
        Lorg/apache/tools/ant/filters/TokenFilter$FileTokenizer;,
        Lorg/apache/tools/ant/filters/TokenFilter$Filter;,
        Lorg/apache/tools/ant/filters/TokenFilter$IgnoreBlank;,
        Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;,
        Lorg/apache/tools/ant/filters/TokenFilter$ReplaceString;,
        Lorg/apache/tools/ant/filters/TokenFilter$StringTokenizer;,
        Lorg/apache/tools/ant/filters/TokenFilter$Trim;
    }
.end annotation


# instance fields
.field private delimOutput:Ljava/lang/String;

.field private filters:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/filters/TokenFilter$Filter;",
            ">;"
        }
    .end annotation
.end field

.field private line:Ljava/lang/String;

.field private linePos:I

.field private tokenizer:Lorg/apache/tools/ant/util/Tokenizer;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseFilterReader;-><init>()V

    .line 61
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->filters:Ljava/util/Vector;

    .line 63
    iput-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    .line 65
    iput-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->delimOutput:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->linePos:I

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseFilterReader;-><init>(Ljava/io/Reader;)V

    .line 61
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->filters:Ljava/util/Vector;

    .line 63
    iput-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    .line 65
    iput-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->delimOutput:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->linePos:I

    .line 88
    return-void
.end method

.method public static convertRegexOptions(Ljava/lang/String;)I
    .registers 2

    .line 706
    invoke-static {p0}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->asOptions(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static resolveBackSlash(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 691
    invoke-static {p0}, Lorg/apache/tools/ant/util/StringUtils;->resolveBackSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/filters/TokenFilter$Filter;)V
    .registers 3

    .line 270
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->filters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method public add(Lorg/apache/tools/ant/util/Tokenizer;)V
    .registers 4

    .line 199
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    if-nez v0, :cond_0

    .line 202
    iput-object p1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    .line 203
    return-void

    .line 200
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one tokenizer allowed"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addContainsRegex(Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;)V
    .registers 3

    .line 238
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->filters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 239
    return-void
.end method

.method public addContainsString(Lorg/apache/tools/ant/filters/TokenFilter$ContainsString;)V
    .registers 3

    .line 222
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->filters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method public addDeleteCharacters(Lorg/apache/tools/ant/filters/TokenFilter$DeleteCharacters;)V
    .registers 3

    .line 262
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->filters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 263
    return-void
.end method

.method public addFileTokenizer(Lorg/apache/tools/ant/filters/TokenFilter$FileTokenizer;)V
    .registers 2

    .line 190
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/filters/TokenFilter;->add(Lorg/apache/tools/ant/util/Tokenizer;)V

    .line 191
    return-void
.end method

.method public addIgnoreBlank(Lorg/apache/tools/ant/filters/TokenFilter$IgnoreBlank;)V
    .registers 3

    .line 254
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->filters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 255
    return-void
.end method

.method public addLineTokenizer(Lorg/apache/tools/ant/util/LineTokenizer;)V
    .registers 2

    .line 173
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/filters/TokenFilter;->add(Lorg/apache/tools/ant/util/Tokenizer;)V

    .line 174
    return-void
.end method

.method public addReplaceRegex(Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;)V
    .registers 3

    .line 230
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->filters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 231
    return-void
.end method

.method public addReplaceString(Lorg/apache/tools/ant/filters/TokenFilter$ReplaceString;)V
    .registers 3

    .line 214
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->filters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method public addStringTokenizer(Lorg/apache/tools/ant/filters/TokenFilter$StringTokenizer;)V
    .registers 2

    .line 182
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/filters/TokenFilter;->add(Lorg/apache/tools/ant/util/Tokenizer;)V

    .line 183
    return-void
.end method

.method public addTrim(Lorg/apache/tools/ant/filters/TokenFilter$Trim;)V
    .registers 3

    .line 246
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->filters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 247
    return-void
.end method

.method public final chain(Ljava/io/Reader;)Ljava/io/Reader;
    .registers 4

    .line 145
    new-instance v0, Lorg/apache/tools/ant/filters/TokenFilter;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/TokenFilter;-><init>(Ljava/io/Reader;)V

    .line 146
    iget-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->filters:Ljava/util/Vector;

    iput-object v1, v0, Lorg/apache/tools/ant/filters/TokenFilter;->filters:Ljava/util/Vector;

    .line 147
    iget-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    iput-object v1, v0, Lorg/apache/tools/ant/filters/TokenFilter;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    .line 148
    iget-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->delimOutput:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/tools/ant/filters/TokenFilter;->delimOutput:Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/TokenFilter;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/filters/TokenFilter;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 150
    return-object v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lorg/apache/tools/ant/util/LineTokenizer;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/LineTokenizer;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    .line 107
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    iget-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->in:Ljava/io/Reader;

    invoke-interface {v0, v1}, Lorg/apache/tools/ant/util/Tokenizer;->getToken(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    .line 109
    if-nez v0, :cond_4

    .line 110
    const/4 v0, -0x1

    .line 132
    :cond_2
    :goto_1
    return v0

    .line 127
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    iget v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->linePos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 128
    iget v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->linePos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->linePos:I

    .line 129
    iget-object v2, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 130
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    goto :goto_1

    .line 112
    :cond_4
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->filters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/filters/TokenFilter$Filter;

    .line 113
    iget-object v2, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/apache/tools/ant/filters/TokenFilter$Filter;->filter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    .line 114
    if-nez v0, :cond_5

    .line 118
    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->linePos:I

    .line 119
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    invoke-interface {v0}, Lorg/apache/tools/ant/util/Tokenizer;->getPostToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->delimOutput:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->delimOutput:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    goto :goto_0

    .line 123
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter;->tokenizer:Lorg/apache/tools/ant/util/Tokenizer;

    invoke-interface {v1}, Lorg/apache/tools/ant/util/Tokenizer;->getPostToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->line:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public setDelimOutput(Ljava/lang/String;)V
    .registers 3

    .line 160
    invoke-static {p1}, Lorg/apache/tools/ant/filters/TokenFilter;->resolveBackSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter;->delimOutput:Ljava/lang/String;

    .line 161
    return-void
.end method
