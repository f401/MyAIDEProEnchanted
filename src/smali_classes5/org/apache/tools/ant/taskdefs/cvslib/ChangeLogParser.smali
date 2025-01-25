.class Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;
.super Ljava/lang/Object;
.source "ChangeLogParser.java"


# static fields
.field private static final GET_COMMENT:I = 0x3

.field private static final GET_DATE:I = 0x2

.field private static final GET_FILE:I = 0x1

.field private static final GET_PREVIOUS_REV:I = 0x5

.field private static final GET_REVISION:I = 0x4


# instance fields
.field private author:Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private final cvs1129InputDate:Ljava/text/SimpleDateFormat;

.field private date:Ljava/lang/String;

.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;",
            ">;"
        }
    .end annotation
.end field

.field private file:Ljava/lang/String;

.field private final inputDate:Ljava/text/SimpleDateFormat;

.field private final moduleNameLengths:[I

.field private final moduleNames:[Ljava/lang/String;

.field private previousRevision:Ljava/lang/String;

.field private final remote:Z

.field private revision:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 73
    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    .line 74
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$Module;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->inputDate:Ljava/text/SimpleDateFormat;

    .line 52
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss Z"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->cvs1129InputDate:Ljava/text/SimpleDateFormat;

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->status:I

    .line 66
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->entries:Ljava/util/Map;

    .line 77
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->remote:Z

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    if-eqz p2, :cond_40

    .line 81
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 82
    :goto_32
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 83
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 86
    :cond_40
    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser$$ExternalSyntheticLambda1;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/apache/tools/ant/taskdefs/BindTargets$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/apache/tools/ant/taskdefs/BindTargets$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 88
    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->moduleNames:[Ljava/lang/String;

    .line 89
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->moduleNameLengths:[I

    move v0, v1

    .line 90
    :goto_65
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->moduleNames:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_77

    .line 91
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->moduleNameLengths:[I

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    aput v1, v2, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 94
    :cond_77
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->inputDate:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 96
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->cvs1129InputDate:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 97
    return-void
.end method

.method private parseDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 4

    .line 275
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->inputDate:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 278
    :goto_6
    return-object v0

    .line 276
    :catch_7
    move-exception v0

    .line 278
    :try_start_8
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->cvs1129InputDate:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_d
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_d} :catch_f

    move-result-object v0

    goto :goto_6

    .line 279
    :catch_f
    move-exception v0

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid date format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private processComment(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    .line 149
    const-string v0, "============================================================================="

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 153
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->comment:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 154
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->comment:Ljava/lang/String;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->comment:Ljava/lang/String;

    .line 155
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->saveEntry()V

    .line 156
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->status:I

    .line 164
    :goto_26
    return-void

    .line 157
    :cond_27
    const-string v0, "----------------------------"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 158
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->comment:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 159
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->comment:Ljava/lang/String;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->comment:Ljava/lang/String;

    .line 160
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->status:I

    goto :goto_26

    .line 162
    :cond_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->comment:Ljava/lang/String;

    goto :goto_26
.end method

.method private processDate(Ljava/lang/String;)V
    .registers 5

    const/16 v2, 0x3b

    .line 222
    const-string v0, "date:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 226
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 227
    const-string v1, "date: "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->date:Ljava/lang/String;

    .line 229
    const-string v1, "author: "

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 230
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 231
    const-string v2, "author: "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->author:Ljava/lang/String;

    .line 233
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->status:I

    .line 237
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->comment:Ljava/lang/String;

    .line 239
    :cond_3c
    return-void
.end method

.method private processFile(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 172
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->remote:Z

    if-nez v0, :cond_19

    const-string v0, "Working file:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 174
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->file:Ljava/lang/String;

    .line 176
    iput v4, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->status:I

    .line 196
    :cond_18
    :goto_18
    return-void

    .line 177
    :cond_19
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->remote:Z

    if-eqz v0, :cond_18

    const-string v0, "RCS file:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    .line 181
    :goto_26
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->moduleNames:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_3a

    .line 182
    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 183
    if-ltz v2, :cond_4c

    .line 184
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->moduleNameLengths:[I

    aget v0, v1, v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v0, 0x1

    .line 188
    :cond_3a
    const-string v0, ",v"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 189
    const/4 v2, -0x1

    if-ne v0, v2, :cond_4f

    .line 190
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->file:Ljava/lang/String;

    .line 194
    :goto_49
    iput v4, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->status:I

    goto :goto_18

    .line 181
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 192
    :cond_4f
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->file:Ljava/lang/String;

    goto :goto_49
.end method

.method private processGetPreviousRevision(Ljava/lang/String;)V
    .registers 4

    .line 247
    const-string v0, "revision "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 251
    const-string v0, "revision "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->previousRevision:Ljava/lang/String;

    .line 253
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->saveEntry()V

    .line 255
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->previousRevision:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->revision:Ljava/lang/String;

    .line 256
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->status:I

    .line 257
    return-void

    .line 248
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected line from CVS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private processRevision(Ljava/lang/String;)V
    .registers 3

    .line 204
    const-string v0, "revision"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 206
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->revision:Ljava/lang/String;

    .line 208
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->status:I

    .line 214
    :cond_13
    :goto_13
    return-void

    .line 209
    :cond_14
    const-string v0, "======"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 212
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->status:I

    goto :goto_13
.end method

.method private saveEntry()V
    .registers 5

    .line 263
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->entries:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->date:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->author:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->comment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->file:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->revision:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->previousRevision:Ljava/lang/String;

    .line 264
    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->addFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method


# virtual methods
.method public getEntrySetAsArray()[Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;
    .registers 3

    .line 105
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;

    return-object v0
.end method

.method public synthetic lambda$saveEntry$0$ChangeLogParser(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;
    .registers 6

    .line 264
    new-instance v0, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->date:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->author:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->comment:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->file:Ljava/lang/String;

    .line 290
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->date:Ljava/lang/String;

    .line 291
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->author:Ljava/lang/String;

    .line 292
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->comment:Ljava/lang/String;

    .line 293
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->revision:Ljava/lang/String;

    .line 294
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->previousRevision:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public stdout(Ljava/lang/String;)V
    .registers 3

    .line 114
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->status:I

    packed-switch v0, :pswitch_data_1e

    .line 120
    :goto_5
    return-void

    .line 134
    :pswitch_6  #0x5
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->processGetPreviousRevision(Ljava/lang/String;)V

    goto :goto_5

    .line 122
    :pswitch_a  #0x4
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->processRevision(Ljava/lang/String;)V

    goto :goto_5

    .line 130
    :pswitch_e  #0x3
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->processComment(Ljava/lang/String;)V

    goto :goto_5

    .line 126
    :pswitch_12  #0x2
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->processDate(Ljava/lang/String;)V

    goto :goto_5

    .line 118
    :pswitch_16  #0x1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->reset()V

    .line 119
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->processFile(Ljava/lang/String;)V

    goto :goto_5

    .line 114
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_16  #00000001
        :pswitch_12  #00000002
        :pswitch_e  #00000003
        :pswitch_a  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
