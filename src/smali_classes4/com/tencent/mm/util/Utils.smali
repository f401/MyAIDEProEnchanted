.class public Lcom/tencent/mm/util/Utils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mm/util/Utils$SearchTracker;,
        Lcom/tencent/mm/util/Utils$SearchTracker$MatchInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanDir(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0}, Lcom/tencent/mm/util/FileOperation;->deleteDir(Ljava/io/File;)Z

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_c
    return-void
.end method

.method public static convertToPatternString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "."

    aput-object v1, v0, v3

    const-string v1, "?"

    aput-object v1, v0, v4

    const-string v1, "*"

    aput-object v1, v0, v5

    const-string v1, "+"

    aput-object v1, v0, v6

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\\."

    aput-object v2, v1, v3

    const-string v2, ".?"

    aput-object v2, v1, v4

    const-string v2, ".*"

    aput-object v2, v1, v5

    const-string v2, ".+"

    aput-object v2, v1, v6

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/util/Utils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/tencent/mm/util/Utils;->isPresent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static isBlank(Ljava/util/Iterator;)Z
    .registers 2

    invoke-static {p0}, Lcom/tencent/mm/util/Utils;->isPresent(Ljava/util/Iterator;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static isPresent(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static isPresent(Ljava/util/Iterator;)Z
    .registers 2

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static match(Ljava/lang/String;Ljava/util/HashSet;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_5

    move v0, v2

    :goto_4
    return v0

    :cond_5
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v2

    goto :goto_4

    :cond_13
    new-instance v1, Ljava/lang/Boolean;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_4
.end method

.method private static processOutputStreamInThread(Ljava/lang/Process;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Process;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/LineNumberReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    :cond_e
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    return-void
.end method

.method private static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    new-instance v1, Lcom/tencent/mm/util/Utils$SearchTracker;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/mm/util/Utils$SearchTracker;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/util/Utils$SearchTracker;->hasNextMatch(I)Z

    move-result v2

    if-nez v2, :cond_d

    :goto_c
    return-object p0

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_18
    iget-object v3, v1, Lcom/tencent/mm/util/Utils$SearchTracker;->matchInfo:Lcom/tencent/mm/util/Utils$SearchTracker$MatchInfo;

    iget v4, v3, Lcom/tencent/mm/util/Utils$SearchTracker$MatchInfo;->textIndex:I

    iget-object v5, v3, Lcom/tencent/mm/util/Utils$SearchTracker$MatchInfo;->pattern:Ljava/lang/String;

    iget-object v3, v3, Lcom/tencent/mm/util/Utils$SearchTracker$MatchInfo;->replacement:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/tencent/mm/util/Utils$SearchTracker;->hasNextMatch(I)Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_c
.end method

.method public static varargs runCmd([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Process;

    :try_start_3
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_4d

    move-result-object v2

    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/androlib/res/util/StringUtil;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v1

    if-eqz v1, :cond_47

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "%s Failed! Please check your signature file.\n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, p0, v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/androlib/res/util/StringUtil;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception v0

    move-object v1, v0

    :goto_41
    if-eqz v2, :cond_46

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_46
    throw v1

    :cond_47
    if-eqz v2, :cond_4c

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_4c
    return-object v0

    :catchall_4d
    move-exception v1

    move-object v2, v0

    goto :goto_41
.end method

.method public static runExec([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Process;

    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_4d

    move-result-object v1

    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/androlib/res/util/StringUtil;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v2

    if-eqz v2, :cond_47

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "%s Failed! Please check your signature file.\n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, p0, v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/androlib/res/util/StringUtil;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3e
    .catchall {:try_start_b .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v0

    move-object v2, v1

    move-object v3, v0

    :goto_41
    if-eqz v2, :cond_46

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_46
    throw v3

    :cond_47
    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_4c
    return-object v0

    :catchall_4d
    move-exception v1

    move-object v2, v0

    move-object v3, v1

    goto :goto_41
.end method
