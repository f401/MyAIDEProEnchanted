.class public Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;
.super Ljava/lang/Object;
.source "Tstamp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Tstamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomFormat"
.end annotation


# instance fields
.field private country:Ljava/lang/String;

.field private field:I

.field private language:Ljava/lang/String;

.field private offset:I

.field private pattern:Ljava/lang/String;

.field private propertyName:Ljava/lang/String;

.field final this$0:Lorg/apache/tools/ant/taskdefs/Tstamp;

.field private timeZone:Ljava/util/TimeZone;

.field private variant:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/Tstamp;)V
    .registers 3

    .line 181
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->this$0:Lorg/apache/tools/ant/taskdefs/Tstamp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->offset:I

    .line 189
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->field:I

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/tools/ant/Project;Ljava/util/Date;Lorg/apache/tools/ant/Location;)V
    .registers 10

    .line 301
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->propertyName:Ljava/lang/String;

    if-eqz v0, :cond_6c

    .line 305
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_64

    .line 310
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->language:Ljava/lang/String;

    if-nez v0, :cond_3c

    .line 311
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->pattern:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 317
    :goto_13
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->offset:I

    if-eqz v1, :cond_29

    .line 318
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 319
    invoke-virtual {v1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 320
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->field:I

    iget v3, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->offset:I

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 321
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    .line 323
    :cond_29
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->timeZone:Ljava/util/TimeZone;

    if-eqz v1, :cond_30

    .line 324
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 326
    :cond_30
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->this$0:Lorg/apache/tools/ant/taskdefs/Tstamp;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->propertyName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lorg/apache/tools/ant/taskdefs/Tstamp;->access$000(Lorg/apache/tools/ant/taskdefs/Tstamp;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void

    .line 312
    :cond_3c
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->variant:Ljava/lang/String;

    if-nez v0, :cond_51

    .line 313
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->pattern:Ljava/lang/String;

    new-instance v2, Ljava/util/Locale;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->language:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->country:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_13

    .line 315
    :cond_51
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->pattern:Ljava/lang/String;

    new-instance v2, Ljava/util/Locale;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->language:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->country:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->variant:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_13

    .line 306
    :cond_64
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "pattern attribute must be provided"

    invoke-direct {v0, v1, p3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 302
    :cond_6c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "property attribute must be provided"

    invoke-direct {v0, v1, p3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public setLocale(Ljava/lang/String;)V
    .registers 6

    .line 219
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, " \t\n\r\f,"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :try_start_7
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->language:Ljava/lang/String;

    .line 222
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 223
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->country:Ljava/lang/String;

    .line 224
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 225
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->variant:Ljava/lang/String;

    .line 226
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 235
    :cond_2b
    :goto_2b
    return-void

    .line 227
    :cond_2c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "bad locale format"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->this$0:Lorg/apache/tools/ant/taskdefs/Tstamp;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Tstamp;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
    :try_end_3a
    .catch Ljava/util/NoSuchElementException; {:try_start_7 .. :try_end_3a} :catch_3a

    .line 233
    :catch_3a
    move-exception v0

    .line 234
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "bad locale format"

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->this$0:Lorg/apache/tools/ant/taskdefs/Tstamp;

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Tstamp;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 231
    :cond_49
    :try_start_49
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->country:Ljava/lang/String;
    :try_end_4d
    .catch Ljava/util/NoSuchElementException; {:try_start_49 .. :try_end_4d} :catch_3a

    goto :goto_2b
.end method

.method public setOffset(I)V
    .registers 2

    .line 253
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->offset:I

    .line 254
    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->pattern:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .registers 2

    .line 196
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->propertyName:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .registers 3

    .line 245
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->timeZone:Ljava/util/TimeZone;

    .line 246
    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 268
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->this$0:Lorg/apache/tools/ant/taskdefs/Tstamp;

    const-string v1, "DEPRECATED - The setUnit(String) method has been deprecated. Use setUnit(Tstamp.Unit) instead."

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Tstamp;->log(Ljava/lang/String;)V

    .line 269
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Tstamp$Unit;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Tstamp$Unit;-><init>()V

    .line 270
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Tstamp$Unit;->setValue(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Tstamp$Unit;->getCalendarField()I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->field:I

    .line 272
    return-void
.end method

.method public setUnit(Lorg/apache/tools/ant/taskdefs/Tstamp$Unit;)V
    .registers 3

    .line 291
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Tstamp$Unit;->getCalendarField()I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->field:I

    .line 292
    return-void
.end method
