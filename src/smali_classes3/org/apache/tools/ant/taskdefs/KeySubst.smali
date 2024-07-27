.class public Lorg/apache/tools/ant/taskdefs/KeySubst;
.super Lorg/apache/tools/ant/Task;
.source "KeySubst.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private dest:Ljava/io/File;

.field private replacements:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sep:Ljava/lang/String;

.field private source:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 48
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/KeySubst;->source:Ljava/io/File;

    .line 49
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/KeySubst;->dest:Ljava/io/File;

    .line 50
    const-string v0, "*"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/KeySubst;->sep:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/KeySubst;->replacements:Ljava/util/Hashtable;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4

    .line 151
    :try_start_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 152
    const-string v1, "VERSION"

    const-string v2, "1.0.3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v1, "b"

    const-string v2, "ffff"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "$f ${VERSION} f ${b} jj $"

    invoke-static {v2, v0}, Lorg/apache/tools/ant/taskdefs/KeySubst;->replace(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static replace(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    const/4 v0, 0x0

    .line 173
    :goto_0
    const-string v2, "${"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    .line 176
    add-int/lit8 v3, v2, 0x2

    const-string v4, "}"

    add-int/lit8 v5, v2, 0x3

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-virtual {v1, p0, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :goto_1
    add-int/lit8 v0, v2, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 182
    :cond_0
    const-string v0, "${"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 189
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execute()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 58
    const-string v0, "!! KeySubst is deprecated. Use Filter + Copy instead. !!"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/KeySubst;->log(Ljava/lang/String;)V

    .line 59
    const-string v0, "Performing Substitutions"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/KeySubst;->log(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/KeySubst;->source:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/KeySubst;->dest:Ljava/io/File;

    if-nez v0, :cond_1

    .line 61
    :cond_0
    const-string v0, "Source and destinations must not be null"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/KeySubst;->log(Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 67
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/KeySubst;->source:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/KeySubst;->dest:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 69
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/KeySubst;->dest:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 71
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 74
    :goto_1
    if-eqz v2, :cond_3

    .line 75
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 76
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/KeySubst;->replacements:Ljava/util/Hashtable;

    invoke-static {v2, v3}, Lorg/apache/tools/ant/taskdefs/KeySubst;->replace(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 79
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 80
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 82
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    :goto_2
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Writer;)V

    .line 87
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Reader;)V

    goto :goto_0

    .line 83
    :catch_0
    move-exception v2

    move-object v0, v3

    move-object v1, v3

    .line 84
    :goto_3
    :try_start_3
    invoke-static {v2}, Lorg/apache/tools/ant/util/StringUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/KeySubst;->log(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 86
    :catchall_0
    move-exception v2

    move-object v4, v0

    :goto_4
    invoke-static {v4}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Writer;)V

    .line 87
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Reader;)V

    .line 88
    throw v2

    .line 83
    :catch_1
    move-exception v2

    move-object v0, v3

    goto :goto_3

    :catch_2
    move-exception v2

    goto :goto_3

    .line 86
    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v1, v3

    move-object v4, v3

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v4, v3

    goto :goto_4
.end method

.method public setDest(Ljava/io/File;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/KeySubst;->dest:Ljava/io/File;

    .line 105
    return-void
.end method

.method public setKeys(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x0

    .line 129
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/KeySubst;->sep:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 132
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 134
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "="

    invoke-direct {v2, v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 137
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 139
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/KeySubst;->replacements:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 142
    :cond_0
    return-void
.end method

.method public setSep(Ljava/lang/String;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/KeySubst;->sep:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/KeySubst;->source:Ljava/io/File;

    .line 97
    return-void
.end method
