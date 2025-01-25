.class public final Lutilcode/com/google/gson/internal/bind/TimeTypeAdapter;
.super Lutilcode/com/google/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lutilcode/com/google/gson/TypeAdapter",
        "<",
        "Ljava/sql/Time;",
        ">;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;


# instance fields
.field private final format:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lutilcode/com/google/gson/internal/bind/TimeTypeAdapter$1;

    invoke-direct {v0}, Lutilcode/com/google/gson/internal/bind/TimeTypeAdapter$1;-><init>()V

    sput-object v0, Lutilcode/com/google/gson/internal/bind/TimeTypeAdapter;->FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lutilcode/com/google/gson/TypeAdapter;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lutilcode/com/google/gson/internal/bind/TimeTypeAdapter;->format:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lutilcode/com/google/gson/internal/bind/TimeTypeAdapter;->read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/sql/Time;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lutilcode/com/google/gson/stream/JsonToken;->NULL:Lutilcode/com/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_f

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->nextNull()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_2b

    monitor-exit p0

    const/4 v0, 0x0

    :goto_e
    return-object v0

    :cond_f
    :try_start_f
    new-instance v0, Ljava/sql/Time;

    iget-object v1, p0, Lutilcode/com/google/gson/internal/bind/TimeTypeAdapter;->format:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Time;-><init>(J)V
    :try_end_22
    .catch Ljava/text/ParseException; {:try_start_f .. :try_end_22} :catch_24
    .catchall {:try_start_f .. :try_end_22} :catchall_2b

    monitor-exit p0

    goto :goto_e

    :catch_24
    move-exception v0

    :try_start_25
    new-instance v1, Lutilcode/com/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lutilcode/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/sql/Time;

    invoke-virtual {p0, p1, p2}, Lutilcode/com/google/gson/internal/bind/TimeTypeAdapter;->write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/sql/Time;)V

    return-void
.end method

.method public write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/sql/Time;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_9

    const/4 v0, 0x0

    :goto_4
    :try_start_4
    invoke-virtual {p1, v0}, Lutilcode/com/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lutilcode/com/google/gson/stream/JsonWriter;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_10

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/TimeTypeAdapter;->format:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    move-result-object v0

    goto :goto_4

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
