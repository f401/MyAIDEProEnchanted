.class public Lorg/apache/tools/ant/util/ProcessUtil;
.super Ljava/lang/Object;
.source "ProcessUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static getProcessId(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 41
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/management/RuntimeMXBean;->getName()Ljava/lang/String;

    move-result-object v0

    .line 42
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 44
    const/4 v2, 0x1

    if-ge v1, v2, :cond_12

    .line 54
    :goto_11
    return-object p0

    .line 50
    :cond_12
    const/4 v2, 0x0

    :try_start_13
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_1e} :catch_20

    move-result-object p0

    goto :goto_11

    .line 51
    :catch_20
    move-exception v0

    goto :goto_11
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3

    .line 58
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "<PID>"

    invoke-static {v1}, Lorg/apache/tools/ant/util/ProcessUtil;->getProcessId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    const-wide/32 v0, 0x1d4c0

    :try_start_e
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_12

    .line 64
    :goto_11
    return-void

    .line 61
    :catch_12
    move-exception v0

    goto :goto_11
.end method
