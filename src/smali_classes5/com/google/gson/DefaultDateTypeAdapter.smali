.class final Lcom/google/gson/DefaultDateTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "DefaultDateTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field private static final SIMPLE_NAME:Ljava/lang/String; = "DefaultDateTypeAdapter"


# instance fields
.field private final dateFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final dateType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 87
    const-class v0, Ljava/util/Date;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    .line 88
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x2

    .line 56
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    .line 57
    invoke-static {p1}, Lcom/google/gson/DefaultDateTypeAdapter;->verifyDateType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateType:Ljava/lang/Class;

    .line 58
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3, v3, v1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 60
    invoke-static {v3, v3}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_2d
    invoke-static {}, Lcom/google/gson/internal/JavaVersion;->isJava9OrLater()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 63
    invoke-static {v3, v3}, Lcom/google/gson/internal/PreJava9DateFormatProvider;->getUSDateTimeFormat(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_3a
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Date;",
            ">;I)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    .line 76
    invoke-static {p1}, Lcom/google/gson/DefaultDateTypeAdapter;->verifyDateType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateType:Ljava/lang/Class;

    .line 77
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2, v1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 79
    invoke-static {p2}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_2c
    invoke-static {}, Lcom/google/gson/internal/JavaVersion;->isJava9OrLater()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 82
    invoke-static {p2}, Lcom/google/gson/internal/PreJava9DateFormatProvider;->getUSDateFormat(I)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_39
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Date;",
            ">;II)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    .line 91
    invoke-static {p1}, Lcom/google/gson/DefaultDateTypeAdapter;->verifyDateType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateType:Ljava/lang/Class;

    .line 92
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2, p3, v1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 94
    invoke-static {p2, p3}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_2c
    invoke-static {}, Lcom/google/gson/internal/JavaVersion;->isJava9OrLater()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 97
    invoke-static {p2, p3}, Lcom/google/gson/internal/PreJava9DateFormatProvider;->getUSDateTimeFormat(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_39
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Date;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    .line 68
    invoke-static {p1}, Lcom/google/gson/DefaultDateTypeAdapter;->verifyDateType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateType:Ljava/lang/Class;

    .line 69
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, p2, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 71
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_2e
    return-void
.end method

.method private deserializeToDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 5

    .line 142
    iget-object v1, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    monitor-enter v1

    .line 143
    :try_start_3
    iget-object v0, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_27

    .line 145
    :try_start_15
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_18
    .catch Ljava/text/ParseException; {:try_start_15 .. :try_end_18} :catch_31
    .catchall {:try_start_15 .. :try_end_18} :catchall_27

    move-result-object v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_27

    .line 149
    :goto_1a
    return-object v0

    :cond_1b
    :try_start_1b
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-static {p1, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    :try_end_24
    .catch Ljava/text/ParseException; {:try_start_1b .. :try_end_24} :catch_2a
    .catchall {:try_start_1b .. :try_end_24} :catchall_27

    move-result-object v0

    :try_start_25
    monitor-exit v1

    goto :goto_1a

    .line 153
    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_27

    throw v0

    .line 150
    :catch_2a
    move-exception v0

    .line 151
    :try_start_2b
    new-instance v2, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v2, p1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_27

    .line 146
    :catch_31
    move-exception v0

    goto :goto_9
.end method

.method private static verifyDateType(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Date;",
            ">;)",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 102
    const-class v0, Ljava/util/Date;

    if-eq p0, v0, :cond_c

    const-class v0, Ljava/sql/Date;

    if-eq p0, v0, :cond_c

    const-class v0, Ljava/sql/Timestamp;

    if-ne p0, v0, :cond_d

    .line 105
    :cond_c
    return-object p0

    .line 103
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Date type must be one of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Ljava/sql/Timestamp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Ljava/sql/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1}, Lcom/google/gson/DefaultDateTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Date;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_d

    .line 125
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 126
    const/4 v0, 0x0

    .line 134
    :cond_c
    :goto_c
    return-object v0

    .line 128
    :cond_d
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gson/DefaultDateTypeAdapter;->deserializeToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateType:Ljava/lang/Class;

    const-class v2, Ljava/util/Date;

    if-eq v1, v2, :cond_c

    .line 131
    const-class v2, Ljava/sql/Timestamp;

    if-ne v1, v2, :cond_2a

    .line 132
    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    goto :goto_c

    .line 133
    :cond_2a
    const-class v2, Ljava/sql/Date;

    if-ne v1, v2, :cond_39

    .line 134
    new-instance v1, Ljava/sql/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    move-object v0, v1

    goto :goto_c

    .line 137
    :cond_39
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/16 v3, 0x29

    .line 158
    iget-object v0, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    .line 159
    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_2a

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultDateTypeAdapter("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_29
    return-object v0

    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultDateTypeAdapter("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    check-cast p2, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/DefaultDateTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Date;)V

    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Date;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    if-nez p2, :cond_6

    .line 113
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 120
    :goto_5
    return-void

    .line 116
    :cond_6
    iget-object v1, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    monitor-enter v1

    .line 117
    :try_start_9
    iget-object v0, p0, Lcom/google/gson/DefaultDateTypeAdapter;->dateFormats:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 119
    monitor-exit v1

    goto :goto_5

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_1b

    throw v0
.end method
