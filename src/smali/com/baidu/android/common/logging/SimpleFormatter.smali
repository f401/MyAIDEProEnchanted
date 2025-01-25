.class Lcom/baidu/android/common/logging/SimpleFormatter;
.super Ljava/util/logging/Formatter;
.source "SourceFile"


# static fields
.field private static format:Ljava/lang/String; = "{0,date} {0,time}"


# instance fields
.field private args:[Ljava/lang/Object;

.field dat:Ljava/util/Date;

.field private formatter:Ljava/text/MessageFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 15
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/baidu/android/common/logging/SimpleFormatter;->dat:Ljava/util/Date;

    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/baidu/android/common/logging/SimpleFormatter;->args:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .registers 11

    monitor-enter p0

    .line 37
    :try_start_1
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_e
    const/4 v5, 0x0

    if-ge v3, v1, :cond_37

    aget-object v6, v0, v3

    .line 38
    :try_start_13
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 39
    const-class v8, Lcom/baidu/android/common/logging/Log;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_25

    const/4 v4, 0x1

    goto :goto_34

    :cond_25
    if-eqz v4, :cond_34

    .line 42
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    goto :goto_3a

    :cond_34
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_37
    move-object v0, v5

    move-object v1, v0

    const/4 v3, 0x0

    .line 48
    :goto_3a
    invoke-virtual {p1, v0}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1, v1}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 52
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 54
    iget-object v1, p0, Lcom/baidu/android/common/logging/SimpleFormatter;->dat:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Date;->setTime(J)V

    .line 55
    iget-object v1, p0, Lcom/baidu/android/common/logging/SimpleFormatter;->args:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/baidu/android/common/logging/SimpleFormatter;->dat:Ljava/util/Date;

    aput-object v4, v1, v2

    .line 56
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    iget-object v2, p0, Lcom/baidu/android/common/logging/SimpleFormatter;->formatter:Ljava/text/MessageFormat;

    if-nez v2, :cond_66

    .line 58
    new-instance v2, Ljava/text/MessageFormat;

    sget-object v4, Lcom/baidu/android/common/logging/SimpleFormatter;->format:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/baidu/android/common/logging/SimpleFormatter;->formatter:Ljava/text/MessageFormat;

    .line 60
    :cond_66
    iget-object v2, p0, Lcom/baidu/android/common/logging/SimpleFormatter;->formatter:Ljava/text/MessageFormat;

    iget-object v4, p0, Lcom/baidu/android/common/logging/SimpleFormatter;->args:[Ljava/lang/Object;

    invoke-virtual {v2, v4, v1, v5}, Ljava/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    rem-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9e

    .line 67
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a5

    .line 69
    :cond_9e
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    :goto_a5
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b7

    .line 72
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    :cond_b7
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 79
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {p0, p1}, Lcom/baidu/android/common/logging/SimpleFormatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/logging/Level;->getLocalizedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v1
    :try_end_e4
    .catchall {:try_start_13 .. :try_end_e4} :catchall_10c

    if-eqz v1, :cond_106

    .line 87
    :try_start_e6
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 88
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 89
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 90
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 91
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_101} :catch_102
    .catchall {:try_start_e6 .. :try_end_101} :catchall_10c

    goto :goto_106

    :catch_102
    move-exception p1

    .line 93
    :try_start_103
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    :cond_106
    :goto_106
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_10a
    .catchall {:try_start_103 .. :try_end_10a} :catchall_10c

    monitor-exit p0

    return-object p1

    :catchall_10c
    move-exception p1

    monitor-exit p0

    goto :goto_110

    :goto_10f
    throw p1

    :goto_110
    goto :goto_10f
.end method
