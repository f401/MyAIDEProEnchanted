.class public Lorg/apache/tools/ant/DefaultLogger;
.super Ljava/lang/Object;
.source "DefaultLogger.java"

# interfaces
.implements Lorg/apache/tools/ant/BuildLogger;


# static fields
.field public static final LEFT_COLUMN_SIZE:I = 0xc

.field protected static final lSep:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field protected emacsMode:Z

.field protected err:Ljava/io/PrintStream;

.field protected msgOutputLevel:I

.field protected out:Ljava/io/PrintStream;

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    sget-object v0, Lorg/apache/tools/ant/util/StringUtils;->LINE_SEP:Ljava/lang/String;

    sput-object v0, Lorg/apache/tools/ant/DefaultLogger;->lSep:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v2, p0, Lorg/apache/tools/ant/DefaultLogger;->msgOutputLevel:I

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/ant/DefaultLogger;->startTime:J

    .line 66
    iput-boolean v2, p0, Lorg/apache/tools/ant/DefaultLogger;->emacsMode:Z

    .line 74
    return-void
.end method

.method protected static formatTime(J)Ljava/lang/String;
    .registers 4

    .line 304
    invoke-static {p0, p1}, Lorg/apache/tools/ant/util/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$messageLogged$0()Ljava/lang/String;
    .registers 1

    .line 266
    const-string v0, " "

    return-object v0
.end method

.method static throwableMessage(Ljava/lang/StringBuffer;Ljava/lang/Throwable;Z)V
    .registers 8

    const/4 v4, 0x0

    .line 136
    :goto_0
    instance-of v0, p1, Lorg/apache/tools/ant/BuildException;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 138
    if-nez v0, :cond_2

    .line 150
    :cond_0
    if-nez p2, :cond_1

    instance-of v0, p1, Lorg/apache/tools/ant/BuildException;

    if-nez v0, :cond_3

    .line 151
    :cond_1
    invoke-static {p1}, Lorg/apache/tools/ant/util/StringUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    :goto_1
    return-void

    .line 141
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v3, v2

    invoke-virtual {p0, v1, v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    move-object p1, v0

    .line 149
    goto :goto_0

    .line 153
    :cond_3
    const-string v0, "%s%n"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method


# virtual methods
.method public buildFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 13

    const/4 v10, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getException()Ljava/lang/Throwable;

    move-result-object v3

    .line 167
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 168
    if-nez v3, :cond_0

    .line 169
    const-string v0, "%n%s"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/tools/ant/DefaultLogger;->getBuildSuccessfulMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/apache/tools/ant/DefaultLogger;->startTime:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/tools/ant/DefaultLogger;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    const-string v5, "%nTotal time: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    if-nez v3, :cond_2

    .line 179
    iget-object v1, p0, Lorg/apache/tools/ant/DefaultLogger;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0, v1, v10}, Lorg/apache/tools/ant/DefaultLogger;->printMessage(Ljava/lang/String;Ljava/io/PrintStream;I)V

    .line 183
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/DefaultLogger;->log(Ljava/lang/String;)V

    .line 184
    return-void

    .line 171
    :cond_0
    const-string v0, "%n%s%n"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/tools/ant/DefaultLogger;->getBuildFailedMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    iget v0, p0, Lorg/apache/tools/ant/DefaultLogger;->msgOutputLevel:I

    if-gt v10, v0, :cond_1

    move v0, v1

    :goto_2
    invoke-static {v4, v3, v0}, Lorg/apache/tools/ant/DefaultLogger;->throwableMessage(Ljava/lang/StringBuffer;Ljava/lang/Throwable;Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_2

    .line 181
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/DefaultLogger;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/tools/ant/DefaultLogger;->printMessage(Ljava/lang/String;Ljava/io/PrintStream;I)V

    goto :goto_1
.end method

.method public buildStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 4

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/ant/DefaultLogger;->startTime:J

    .line 133
    return-void
.end method

.method protected extractProjectName(Lorg/apache/tools/ant/BuildEvent;)Ljava/lang/String;
    .registers 3

    .line 350
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    .line 351
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBuildFailedMessage()Ljava/lang/String;
    .registers 2

    .line 192
    const-string v0, "BUILD FAILED"

    return-object v0
.end method

.method protected getBuildSuccessfulMessage()Ljava/lang/String;
    .registers 2

    .line 201
    const-string v0, "BUILD SUCCESSFUL"

    return-object v0
.end method

.method protected getTimestamp()Ljava/lang/String;
    .registers 5

    const/4 v1, 0x3

    .line 338
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 339
    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    .line 340
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected log(Ljava/lang/String;)V
    .registers 2

    .line 330
    return-void
.end method

.method public messageLogged(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 10

    .line 253
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getPriority()I

    move-result v2

    .line 255
    iget v0, p0, Lorg/apache/tools/ant/DefaultLogger;->msgOutputLevel:I

    if-gt v2, v0, :cond_2

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/tools/ant/DefaultLogger;->emacsMode:Z

    if-eqz v0, :cond_3

    .line 260
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :goto_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .line 279
    const/4 v1, 0x4

    iget v4, p0, Lorg/apache/tools/ant/DefaultLogger;->msgOutputLevel:I

    if-gt v1, v4, :cond_1

    if-eqz v0, :cond_1

    .line 280
    const-string v1, "%n%s: "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-static {v0}, Lorg/apache/tools/ant/util/StringUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    if-eqz v2, :cond_5

    .line 286
    iget-object v1, p0, Lorg/apache/tools/ant/DefaultLogger;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/tools/ant/DefaultLogger;->printMessage(Ljava/lang/String;Ljava/io/PrintStream;I)V

    .line 290
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/DefaultLogger;->log(Ljava/lang/String;)V

    .line 292
    :cond_2
    return-void

    .line 263
    :cond_3
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTask()Lorg/apache/tools/ant/Task;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->getTaskName()Ljava/lang/String;

    move-result-object v0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0xc

    .line 266
    if-lez v0, :cond_4

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lorg/apache/tools/ant/DefaultLogger$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/DefaultLogger$$ExternalSyntheticLambda1;

    .line 266
    invoke-static {v5}, Lorg/apache/tools/ant/DefaultLogger$$ExternalSyntheticStaticInterfaceCall0;->m(Ljava/util/function/Supplier;)Ljava/util/stream/Stream;

    move-result-object v5

    int-to-long v6, v0

    .line 267
    invoke-interface {v5, v6, v7}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->joining()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    :goto_2
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/StringReader;

    .line 270
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-static {v6, v0, v7}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 271
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 275
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    .line 267
    goto :goto_2

    .line 269
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 288
    :cond_5
    iget-object v1, p0, Lorg/apache/tools/ant/DefaultLogger;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/tools/ant/DefaultLogger;->printMessage(Ljava/lang/String;Ljava/io/PrintStream;I)V

    goto/16 :goto_1

    .line 269
    :catchall_1
    move-exception v4

    goto :goto_3
.end method

.method protected printMessage(Ljava/lang/String;Ljava/io/PrintStream;I)V
    .registers 4

    .line 320
    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public setEmacsMode(Z)V
    .registers 2

    .line 123
    iput-boolean p1, p0, Lorg/apache/tools/ant/DefaultLogger;->emacsMode:Z

    .line 124
    return-void
.end method

.method public setErrorPrintStream(Ljava/io/PrintStream;)V
    .registers 4

    .line 113
    new-instance v0, Ljava/io/PrintStream;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p0, Lorg/apache/tools/ant/DefaultLogger;->err:Ljava/io/PrintStream;

    .line 114
    return-void
.end method

.method public setMessageOutputLevel(I)V
    .registers 2

    .line 93
    iput p1, p0, Lorg/apache/tools/ant/DefaultLogger;->msgOutputLevel:I

    .line 94
    return-void
.end method

.method public setOutputPrintStream(Ljava/io/PrintStream;)V
    .registers 4

    .line 103
    new-instance v0, Ljava/io/PrintStream;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p0, Lorg/apache/tools/ant/DefaultLogger;->out:Ljava/io/PrintStream;

    .line 104
    return-void
.end method

.method public targetFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 226
    return-void
.end method

.method public targetStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 6

    .line 212
    const/4 v0, 0x2

    iget v1, p0, Lorg/apache/tools/ant/DefaultLogger;->msgOutputLevel:I

    if-gt v0, v1, :cond_0

    .line 213
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    const-string v0, "%n%s:"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getTarget()Lorg/apache/tools/ant/Target;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lorg/apache/tools/ant/DefaultLogger;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildEvent;->getPriority()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/tools/ant/DefaultLogger;->printMessage(Ljava/lang/String;Ljava/io/PrintStream;I)V

    .line 216
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/DefaultLogger;->log(Ljava/lang/String;)V

    .line 218
    :cond_0
    return-void
.end method

.method public taskFinished(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 242
    return-void
.end method

.method public taskStarted(Lorg/apache/tools/ant/BuildEvent;)V
    .registers 2

    .line 234
    return-void
.end method
