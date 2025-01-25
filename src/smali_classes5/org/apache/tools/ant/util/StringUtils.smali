.class public final Lorg/apache/tools/ant/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final GIGABYTE:J = 0x40000000L

.field private static final KILOBYTE:J = 0x400L

.field public static final LINE_SEP:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MEGABYTE:J = 0x100000L

.field private static final PETABYTE:J = 0x4000000000000L

.field private static final TERABYTE:J = 0x10000000000L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/util/StringUtils;->LINE_SEP:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static endsWith(Ljava/lang/StringBuffer;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-le v1, v2, :cond_c

    .line 142
    :cond_b
    :goto_b
    return v0

    .line 133
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 134
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 135
    :goto_18
    if-ltz v2, :cond_29

    .line 136
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_b

    .line 139
    add-int/lit8 v1, v1, -0x1

    .line 140
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 142
    :cond_29
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    .line 100
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 101
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 102
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 103
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 104
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 105
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/util/Collection;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 285
    if-nez p0, :cond_5

    .line 286
    const-string v0, ""

    .line 288
    :goto_4
    return-object v0

    :cond_5
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/util/CollectionUtils$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/util/CollectionUtils$$ExternalSyntheticLambda2;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 289
    invoke-static {p1}, Lorg/apache/tools/ant/util/StringUtils;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_4
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3

    .line 300
    if-nez p0, :cond_5

    .line 301
    const-string v0, ""

    .line 303
    :goto_4
    return-object v0

    :cond_5
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/tools/ant/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private static joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/stream/Collector",
            "<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 307
    if-nez p0, :cond_7

    invoke-static {}, Ljava/util/stream/Collectors;->joining()Ljava/util/stream/Collector;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-static {p0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    goto :goto_6
.end method

.method public static lineSplit(Ljava/lang/String;)Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lorg/apache/tools/ant/util/StringUtils;->split(Ljava/lang/String;I)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static parseHumanSizes(Ljava/lang/String;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 204
    const-wide/16 v0, 0x1

    .line 205
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 206
    packed-switch v4, :pswitch_data_72

    .line 209
    :goto_b
    :pswitch_b  #0x2c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 219
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_29

    .line 221
    sparse-switch v4, :sswitch_data_7c

    move v2, v3

    .line 230
    :goto_1f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v2, v4, v2

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 243
    :cond_29
    :try_start_29
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_2c} :catch_54

    move-result-wide v2

    mul-long/2addr v0, v2

    return-wide v0

    .line 211
    :pswitch_2f  #0x2d
    const-wide/16 v0, -0x1

    .line 212
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    .line 208
    :pswitch_36  #0x2b
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    .line 232
    :sswitch_3b
    const-wide v4, 0x10000000000L

    mul-long/2addr v0, v4

    .line 233
    goto :goto_1f

    .line 235
    :sswitch_42
    const-wide/high16 v4, 0x4000000000000L

    mul-long/2addr v0, v4

    .line 236
    goto :goto_1f

    .line 226
    :sswitch_46
    const-wide/32 v4, 0x100000

    mul-long/2addr v0, v4

    .line 227
    goto :goto_1f

    .line 223
    :sswitch_4b
    const-wide/16 v4, 0x400

    mul-long/2addr v0, v4

    .line 224
    goto :goto_1f

    .line 229
    :sswitch_4f
    const-wide/32 v4, 0x40000000

    mul-long/2addr v0, v4

    goto :goto_1f

    .line 244
    :catch_54
    move-exception v0

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 206
    nop

    :pswitch_data_72
    .packed-switch 0x2b
        :pswitch_36  #0000002b
        :pswitch_b  #0000002c
        :pswitch_2f  #0000002d
    .end packed-switch

    .line 221
    :sswitch_data_7c
    .sparse-switch
        0x47 -> :sswitch_4f
        0x4b -> :sswitch_4b
        0x4d -> :sswitch_46
        0x50 -> :sswitch_42
        0x54 -> :sswitch_3b
    .end sparse-switch
.end method

.method public static removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 271
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 272
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 274
    :cond_e
    return-object p0
.end method

.method public static removeSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 257
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 260
    :cond_14
    return-object p0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static resolveBackSlash(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/16 v7, 0x5c

    const/4 v1, 0x0

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    move v2, v1

    move v0, v1

    :goto_f
    if-ge v2, v5, :cond_49

    aget-char v6, v4, v2

    .line 160
    if-nez v0, :cond_1f

    .line 161
    if-ne v6, v7, :cond_1b

    .line 162
    const/4 v0, 0x1

    .line 159
    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 164
    :cond_1b
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 167
    :cond_1f
    sparse-switch v6, :sswitch_data_4e

    .line 187
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_25
    move v0, v1

    .line 170
    goto :goto_18

    .line 178
    :sswitch_27
    const/16 v0, 0x9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 184
    :sswitch_2d
    const-string v0, " \t\n\r\f"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 175
    :sswitch_33
    const/16 v0, 0xd

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 172
    :sswitch_39
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 181
    :sswitch_3f
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 169
    :sswitch_45
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 192
    :cond_49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 167
    :sswitch_data_4e
    .sparse-switch
        0x5c -> :sswitch_45
        0x66 -> :sswitch_3f
        0x6e -> :sswitch_39
        0x72 -> :sswitch_33
        0x73 -> :sswitch_2d
        0x74 -> :sswitch_27
    .end sparse-switch
.end method

.method public static split(Ljava/lang/String;I)Ljava/util/Vector;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 70
    const/4 v0, 0x0

    .line 72
    :goto_6
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_17

    .line 73
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 75
    add-int/lit8 v0, v2, 0x1

    .line 76
    goto :goto_6

    .line 77
    :cond_17
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 78
    return-object v1
.end method

.method public static trimToNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 317
    if-nez p0, :cond_4

    .line 321
    :cond_3
    :goto_3
    return-object v0

    .line 320
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 321
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v1

    goto :goto_3
.end method
