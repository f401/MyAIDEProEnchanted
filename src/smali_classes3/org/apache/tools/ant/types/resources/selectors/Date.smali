.class public Lorg/apache/tools/ant/types/resources/selectors/Date;
.super Ljava/lang/Object;
.source "Date.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final MILLIS_OR_DATETIME:Ljava/lang/String; = "Either the millis or the datetime attribute must be set."


# instance fields
.field private dateTime:Ljava/lang/String;

.field private granularity:J

.field private millis:Ljava/lang/Long;

.field private pattern:Ljava/lang/String;

.field private when:Lorg/apache/tools/ant/types/TimeComparison;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/resources/selectors/Date;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->millis:Ljava/lang/Long;

    .line 44
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->dateTime:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->pattern:Ljava/lang/String;

    .line 46
    sget-object v0, Lorg/apache/tools/ant/types/TimeComparison;->EQUAL:Lorg/apache/tools/ant/types/TimeComparison;

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->when:Lorg/apache/tools/ant/types/TimeComparison;

    .line 47
    sget-object v0, Lorg/apache/tools/ant/types/resources/selectors/Date;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/FileUtils;->getFileTimestampGranularity()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->granularity:J

    return-void
.end method


# virtual methods
.method public getDatetime()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->dateTime:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGranularity()J
    .registers 3

    monitor-enter p0

    .line 95
    :try_start_0
    iget-wide v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->granularity:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMillis()J
    .registers 3

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->millis:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPattern()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->pattern:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWhen()Lorg/apache/tools/ant/types/TimeComparison;
    .registers 2

    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->when:Lorg/apache/tools/ant/types/TimeComparison;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .registers 10

    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->dateTime:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->millis:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 139
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->millis:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 140
    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->pattern:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    const-string v0, "MM/dd/yyyy hh:mm a"

    move-object v1, v0

    .line 141
    :goto_0
    if-nez v2, :cond_4

    .line 142
    :try_start_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :goto_1
    :try_start_2
    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->dateTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 146
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_5

    .line 151
    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/types/resources/selectors/Date;->setMillis(J)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    :cond_1
    :try_start_3
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->when:Lorg/apache/tools/ant/types/TimeComparison;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v2

    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->millis:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->granularity:J

    invoke-virtual/range {v1 .. v7}, Lorg/apache/tools/ant/types/TimeComparison;->evaluate(JJJ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 137
    :cond_2
    :try_start_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Either the millis or the datetime attribute must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-object v1, v2

    .line 140
    goto :goto_0

    .line 143
    :cond_4
    :try_start_5
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 147
    :cond_5
    :try_start_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Date of %s results in negative milliseconds value relative to epoch (January 1, 1970, 00:00:00 GMT)."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->dateTime:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    :try_start_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Date of %s Cannot be parsed correctly. It should be in \'%s\' format."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->dateTime:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public setDateTime(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 70
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->dateTime:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->millis:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setGranularity(J)V
    .registers 4

    monitor-enter p0

    .line 87
    :try_start_0
    iput-wide p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->granularity:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMillis(J)V
    .registers 4

    monitor-enter p0

    .line 54
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->millis:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPattern(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 103
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->pattern:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setWhen(Lorg/apache/tools/ant/types/TimeComparison;)V
    .registers 3

    monitor-enter p0

    .line 119
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Date;->when:Lorg/apache/tools/ant/types/TimeComparison;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
