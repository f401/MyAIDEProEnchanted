.class public Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "IsLastModified.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;
    }
.end annotation


# instance fields
.field private dateTime:Ljava/lang/String;

.field private dfFactory:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

.field private millis:J

.field private mode:Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

.field private resource:Lorg/apache/tools/ant/types/Resource;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->millis:J

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->dateTime:Ljava/lang/String;

    .line 42
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Touch;->DEFAULT_DF_FACTORY:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->dfFactory:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

    .line 44
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;->access$000()Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->mode:Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/Resource;)V
    .registers 4

    .line 88
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->resource:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_0

    .line 91
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->resource:Lorg/apache/tools/ant/types/Resource;

    .line 92
    return-void

    .line 89
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "only one resource can be tested"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public eval()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 159
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->validate()V

    .line 160
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->getMillis()J

    move-result-wide v2

    .line 161
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->resource:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v4}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v4

    .line 162
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected timestamp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "), actual timestamp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {p0, v6, v7}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->log(Ljava/lang/String;I)V

    .line 165
    const-string v6, "equals"

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->mode:Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

    invoke-virtual {v7}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 166
    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 166
    goto :goto_0

    .line 168
    :cond_2
    const-string v6, "before"

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->mode:Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

    invoke-virtual {v7}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 169
    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 171
    :cond_3
    const-string v6, "not-before"

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->mode:Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

    invoke-virtual {v7}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 172
    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 174
    :cond_4
    const-string v6, "after"

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->mode:Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

    invoke-virtual {v7}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 175
    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 177
    :cond_5
    const-string v6, "not-after"

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->mode:Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

    invoke-virtual {v7}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 178
    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 180
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->mode:Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getMillis()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 127
    iget-wide v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->millis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 143
    :goto_0
    return-wide v0

    .line 130
    :cond_0
    const-string v0, "now"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->dateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->dfFactory:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

    invoke-interface {v0}, Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;->getPrimaryFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->dateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->dfFactory:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

    invoke-interface {v1}, Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;->getFallbackFormat()Ljava/text/DateFormat;

    move-result-object v1

    .line 139
    if-eqz v1, :cond_2

    .line 143
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->dateTime:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    goto :goto_0

    .line 144
    :catch_1
    move-exception v0

    .line 140
    :cond_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method public setDatetime(Ljava/lang/String;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->dateTime:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setMillis(J)V
    .registers 4

    .line 52
    iput-wide p1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->millis:J

    .line 53
    return-void
.end method

.method public setMode(Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->mode:Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$CompareMode;

    .line 100
    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .registers 3

    .line 71
    new-instance v0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified$1;-><init>(Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->dfFactory:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

    .line 81
    return-void
.end method

.method protected validate()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    .line 108
    iget-wide v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->millis:J

    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->dateTime:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 112
    :cond_0
    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->dateTime:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 115
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/IsLastModified;->resource:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_4

    .line 118
    return-void

    .line 109
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one of dateTime and millis can be set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "millis or dateTime is required"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "resource is required"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
