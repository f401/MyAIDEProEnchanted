.class public Lorg/apache/tools/ant/types/selectors/DepthSelector;
.super Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;
.source "DepthSelector.java"


# static fields
.field public static final MAX_KEY:Ljava/lang/String; = "max"

.field public static final MIN_KEY:Ljava/lang/String; = "min"


# instance fields
.field public max:I

.field public min:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    .line 33
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;-><init>()V

    .line 43
    iput v0, p0, Lorg/apache/tools/ant/types/selectors/DepthSelector;->min:I

    .line 45
    iput v0, p0, Lorg/apache/tools/ant/types/selectors/DepthSelector;->max:I

    return-void
.end method


# virtual methods
.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .registers 14

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 134
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/DepthSelector;->validate()V

    .line 138
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v5, Ljava/util/StringTokenizer;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-direct {v5, v4, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v6, Ljava/util/StringTokenizer;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-direct {v6, v0, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 142
    :cond_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 143
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 144
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 145
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 147
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 148
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "File %s does not appear within %s directory"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p2, v5, v3

    aput-object v4, v5, v2

    invoke-direct {v0, v1, v5}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 153
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 154
    iget v7, p0, Lorg/apache/tools/ant/types/selectors/DepthSelector;->max:I

    if-le v7, v1, :cond_0

    if-le v0, v7, :cond_0

    .line 163
    :goto_0
    return v3

    .line 159
    :cond_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_4

    .line 163
    iget v4, p0, Lorg/apache/tools/ant/types/selectors/DepthSelector;->min:I

    if-le v4, v1, :cond_5

    if-lt v0, v4, :cond_3

    move v0, v2

    :goto_1
    move v3, v0

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    .line 160
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "File %s is outside of %s directory tree"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p2, v5, v3

    aput-object v4, v5, v2

    invoke-direct {v0, v1, v5}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public setMax(I)V
    .registers 2

    .line 71
    iput p1, p0, Lorg/apache/tools/ant/types/selectors/DepthSelector;->max:I

    .line 72
    return-void
.end method

.method public setMin(I)V
    .registers 2

    .line 62
    iput p1, p0, Lorg/apache/tools/ant/types/selectors/DepthSelector;->min:I

    .line 63
    return-void
.end method

.method public varargs setParameters([Lorg/apache/tools/ant/types/Parameter;)V
    .registers 7

    .line 81
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;->setParameters([Lorg/apache/tools/ant/types/Parameter;)V

    .line 82
    if-eqz p1, :cond_2

    .line 83
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    .line 84
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    .line 85
    const-string v4, "min"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/types/selectors/DepthSelector;->setMin(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :catch_0
    move-exception v3

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid minimum value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/DepthSelector;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 92
    :cond_0
    const-string v4, "max"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/types/selectors/DepthSelector;->setMax(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 95
    :catch_1
    move-exception v3

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid maximum value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/DepthSelector;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid parameter "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/DepthSelector;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 104
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{depthselector min: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/tools/ant/types/selectors/DepthSelector;->min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/tools/ant/types/selectors/DepthSelector;->max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifySettings()V
    .registers 3

    .line 111
    iget v0, p0, Lorg/apache/tools/ant/types/selectors/DepthSelector;->min:I

    if-gez v0, :cond_0

    iget v0, p0, Lorg/apache/tools/ant/types/selectors/DepthSelector;->max:I

    if-gez v0, :cond_0

    .line 112
    const-string v0, "You must set at least one of the min or the max levels."

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/DepthSelector;->setError(Ljava/lang/String;)V

    .line 114
    :cond_0
    iget v0, p0, Lorg/apache/tools/ant/types/selectors/DepthSelector;->max:I

    iget v1, p0, Lorg/apache/tools/ant/types/selectors/DepthSelector;->min:I

    if-ge v0, v1, :cond_1

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 115
    const-string v0, "The maximum depth is lower than the minimum."

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/DepthSelector;->setError(Ljava/lang/String;)V

    .line 117
    :cond_1
    return-void
.end method
