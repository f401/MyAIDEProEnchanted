.class public Lcom/google/gson/internal/PreJava9DateFormatProvider;
.super Ljava/lang/Object;
.source "PreJava9DateFormatProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDateFormatPattern(I)Ljava/lang/String;
    .registers 3

    .line 44
    packed-switch p0, :pswitch_data_26

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown DateFormat style: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :pswitch_1a  #0x3
    const-string v0, "M/d/yy"

    .line 52
    :goto_1c
    return-object v0

    .line 48
    :pswitch_1d  #0x2
    const-string v0, "MMM d, y"

    goto :goto_1c

    .line 50
    :pswitch_20  #0x1
    const-string v0, "MMMM d, y"

    goto :goto_1c

    .line 52
    :pswitch_23  #0x0
    const-string v0, "EEEE, MMMM d, y"

    goto :goto_1c

    .line 44
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_23  #00000000
        :pswitch_20  #00000001
        :pswitch_1d  #00000002
        :pswitch_1a  #00000003
    .end packed-switch
.end method

.method private static getDatePartOfDateTimePattern(I)Ljava/lang/String;
    .registers 3

    .line 59
    packed-switch p0, :pswitch_data_26

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown DateFormat style: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :pswitch_1a  #0x3
    const-string v0, "M/d/yy"

    .line 67
    :goto_1c
    return-object v0

    .line 63
    :pswitch_1d  #0x2
    const-string v0, "MMM d, yyyy"

    goto :goto_1c

    .line 65
    :pswitch_20  #0x1
    const-string v0, "MMMM d, yyyy"

    goto :goto_1c

    .line 67
    :pswitch_23  #0x0
    const-string v0, "EEEE, MMMM d, yyyy"

    goto :goto_1c

    .line 59
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_23  #00000000
        :pswitch_20  #00000001
        :pswitch_1d  #00000002
        :pswitch_1a  #00000003
    .end packed-switch
.end method

.method private static getTimePartOfDateTimePattern(I)Ljava/lang/String;
    .registers 3

    .line 74
    packed-switch p0, :pswitch_data_24

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown DateFormat style: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :pswitch_1a  #0x3
    const-string v0, "h:mm a"

    .line 81
    :goto_1c
    return-object v0

    .line 78
    :pswitch_1d  #0x2
    const-string v0, "h:mm:ss a"

    goto :goto_1c

    .line 81
    :pswitch_20  #0x0, 0x1
    const-string v0, "h:mm:ss a z"

    goto :goto_1c

    .line 74
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20  #00000000
        :pswitch_20  #00000001
        :pswitch_1d  #00000002
        :pswitch_1a  #00000003
    .end packed-switch
.end method

.method public static getUSDateFormat(I)Ljava/text/DateFormat;
    .registers 4

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {p0}, Lcom/google/gson/internal/PreJava9DateFormatProvider;->getDateFormatPattern(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static getUSDateTimeFormat(II)Ljava/text/DateFormat;
    .registers 5

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/google/gson/internal/PreJava9DateFormatProvider;->getDatePartOfDateTimePattern(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/google/gson/internal/PreJava9DateFormatProvider;->getTimePartOfDateTimePattern(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1
.end method
