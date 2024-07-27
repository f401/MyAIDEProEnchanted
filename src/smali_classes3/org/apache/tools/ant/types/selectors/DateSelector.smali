.class public Lorg/apache/tools/ant/types/selectors/DateSelector;
.super Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;
.source "DateSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/selectors/DateSelector$TimeComparisons;
    }
.end annotation


# static fields
.field public static final CHECKDIRS_KEY:Ljava/lang/String; = "checkdirs"

.field public static final DATETIME_KEY:Ljava/lang/String; = "datetime"

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field public static final GRANULARITY_KEY:Ljava/lang/String; = "granularity"

.field public static final MILLIS_KEY:Ljava/lang/String; = "millis"

.field public static final PATTERN_KEY:Ljava/lang/String; = "pattern"

.field public static final WHEN_KEY:Ljava/lang/String; = "when"


# instance fields
.field private dateTime:Ljava/lang/String;

.field private granularity:J

.field private includeDirs:Z

.field private millis:J

.field private pattern:Ljava/lang/String;

.field private when:Lorg/apache/tools/ant/types/TimeComparison;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/selectors/DateSelector;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;-><init>()V

    .line 55
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->millis:J

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->dateTime:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->includeDirs:Z

    .line 58
    sget-object v0, Lorg/apache/tools/ant/types/selectors/DateSelector;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/FileUtils;->getFileTimestampGranularity()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->granularity:J

    .line 60
    sget-object v0, Lorg/apache/tools/ant/types/TimeComparison;->EQUAL:Lorg/apache/tools/ant/types/TimeComparison;

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->when:Lorg/apache/tools/ant/types/TimeComparison;

    return-void
.end method


# virtual methods
.method public getMillis()J
    .registers 3

    .line 92
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->dateTime:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/DateSelector;->validate()V

    .line 95
    :cond_0
    iget-wide v0, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->millis:J

    return-wide v0
.end method

.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .registers 12

    .line 233
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/DateSelector;->validate()V

    .line 234
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->includeDirs:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->when:Lorg/apache/tools/ant/types/TimeComparison;

    .line 235
    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->millis:J

    iget-wide v6, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->granularity:J

    invoke-virtual/range {v1 .. v7}, Lorg/apache/tools/ant/types/TimeComparison;->evaluate(JJJ)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 234
    :goto_0
    return v0

    .line 235
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCheckdirs(Z)V
    .registers 2

    .line 115
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->includeDirs:Z

    .line 116
    return-void
.end method

.method public setDatetime(Ljava/lang/String;)V
    .registers 4

    .line 105
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->dateTime:Ljava/lang/String;

    .line 106
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->millis:J

    .line 107
    return-void
.end method

.method public setGranularity(I)V
    .registers 4

    .line 124
    int-to-long v0, p1

    iput-wide v0, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->granularity:J

    .line 125
    return-void
.end method

.method public setMillis(J)V
    .registers 4

    .line 84
    iput-wide p1, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->millis:J

    .line 85
    return-void
.end method

.method public varargs setParameters([Lorg/apache/tools/ant/types/Parameter;)V
    .registers 8

    .line 161
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;->setParameters([Lorg/apache/tools/ant/types/Parameter;)V

    .line 162
    if-eqz p1, :cond_6

    .line 163
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_6

    aget-object v2, p1, v0

    .line 164
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    .line 165
    const-string v4, "millis"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setMillis(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :catch_0
    move-exception v3

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid millisecond setting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 172
    :cond_0
    const-string v4, "datetime"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 173
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setDatetime(Ljava/lang/String;)V

    goto :goto_1

    .line 174
    :cond_1
    const-string v4, "checkdirs"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 175
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setCheckdirs(Z)V

    goto :goto_1

    .line 176
    :cond_2
    const-string v4, "granularity"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 178
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setGranularity(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 179
    :catch_1
    move-exception v3

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid granularity setting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 183
    :cond_3
    const-string v4, "when"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 184
    new-instance v3, Lorg/apache/tools/ant/types/TimeComparison;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/apache/tools/ant/types/TimeComparison;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setWhen(Lorg/apache/tools/ant/types/TimeComparison;)V

    goto/16 :goto_1

    .line 185
    :cond_4
    const-string v4, "pattern"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 186
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setPattern(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 188
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid parameter "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setError(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 192
    :cond_6
    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->pattern:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setWhen(Lorg/apache/tools/ant/types/TimeComparison;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->when:Lorg/apache/tools/ant/types/TimeComparison;

    .line 143
    return-void
.end method

.method public setWhen(Lorg/apache/tools/ant/types/selectors/DateSelector$TimeComparisons;)V
    .registers 2

    .line 134
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setWhen(Lorg/apache/tools/ant/types/TimeComparison;)V

    .line 135
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{dateselector date: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->dateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, " compare: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->when:Lorg/apache/tools/ant/types/TimeComparison;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/TimeComparison;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, " granularity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->granularity:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->pattern:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 71
    const-string v1, " pattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifySettings()V
    .registers 7

    const-wide/16 v4, 0x0

    .line 199
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->dateTime:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-wide v2, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->millis:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 200
    const-string v0, "You must provide a datetime or the number of milliseconds."

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setError(Ljava/lang/String;)V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-wide v2, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->millis:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    if-eqz v0, :cond_0

    .line 203
    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->pattern:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v0, "MM/dd/yyyy hh:mm a"

    move-object v1, v0

    .line 204
    :goto_1
    if-nez v2, :cond_3

    .line 205
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 209
    :goto_2
    :try_start_0
    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->dateTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setMillis(J)V

    .line 210
    iget-wide v2, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->millis:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->dateTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " results in negative milliseconds value relative to epoch (January 1, 1970, 00:00:00 GMT)."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/types/selectors/DateSelector;->dateTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Cannot be parsed correctly. It should be in \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' format."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/types/selectors/DateSelector;->setError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 203
    goto :goto_1

    .line 206
    :cond_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method
