.class final Lutilcode/com/google/gson/internal/bind/TypeAdapters$27;
.super Lutilcode/com/google/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutilcode/com/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lutilcode/com/google/gson/TypeAdapter",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final DAY_OF_MONTH:Ljava/lang/String; = "dayOfMonth"

.field private static final HOUR_OF_DAY:Ljava/lang/String; = "hourOfDay"

.field private static final MINUTE:Ljava/lang/String; = "minute"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final SECOND:Ljava/lang/String; = "second"

.field private static final YEAR:Ljava/lang/String; = "year"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lutilcode/com/google/gson/TypeAdapter;-><init>()V

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

    invoke-virtual {p0, p1}, Lutilcode/com/google/gson/internal/bind/TypeAdapters$27;->read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/util/Calendar;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lutilcode/com/google/gson/stream/JsonToken;->NULL:Lutilcode/com/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_e

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->nextNull()V

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->beginObject()V

    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    :cond_17
    :goto_17
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v7, Lutilcode/com/google/gson/stream/JsonToken;->END_OBJECT:Lutilcode/com/google/gson/stream/JsonToken;

    if-eq v0, v7, :cond_63

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->nextInt()I

    move-result v0

    const-string v8, "year"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    move v1, v0

    goto :goto_17

    :cond_31
    const-string v8, "month"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b

    move v2, v0

    goto :goto_17

    :cond_3b
    const-string v8, "dayOfMonth"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_45

    move v3, v0

    goto :goto_17

    :cond_45
    const-string v8, "hourOfDay"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4f

    move v4, v0

    goto :goto_17

    :cond_4f
    const-string v8, "minute"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_59

    move v5, v0

    goto :goto_17

    :cond_59
    const-string v8, "second"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    move v6, v0

    goto :goto_17

    :cond_63
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->endObject()V

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    goto :goto_d
.end method

.method public bridge synthetic write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lutilcode/com/google/gson/internal/bind/TypeAdapters$27;->write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/util/Calendar;)V

    return-void
.end method

.method public write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/util/Calendar;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonWriter;->nullValue()Lutilcode/com/google/gson/stream/JsonWriter;

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonWriter;->beginObject()Lutilcode/com/google/gson/stream/JsonWriter;

    const-string v0, "year"

    invoke-virtual {p1, v0}, Lutilcode/com/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lutilcode/com/google/gson/stream/JsonWriter;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lutilcode/com/google/gson/stream/JsonWriter;->value(J)Lutilcode/com/google/gson/stream/JsonWriter;

    const-string v0, "month"

    invoke-virtual {p1, v0}, Lutilcode/com/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lutilcode/com/google/gson/stream/JsonWriter;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lutilcode/com/google/gson/stream/JsonWriter;->value(J)Lutilcode/com/google/gson/stream/JsonWriter;

    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Lutilcode/com/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lutilcode/com/google/gson/stream/JsonWriter;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lutilcode/com/google/gson/stream/JsonWriter;->value(J)Lutilcode/com/google/gson/stream/JsonWriter;

    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Lutilcode/com/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lutilcode/com/google/gson/stream/JsonWriter;

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lutilcode/com/google/gson/stream/JsonWriter;->value(J)Lutilcode/com/google/gson/stream/JsonWriter;

    const-string v0, "minute"

    invoke-virtual {p1, v0}, Lutilcode/com/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lutilcode/com/google/gson/stream/JsonWriter;

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lutilcode/com/google/gson/stream/JsonWriter;->value(J)Lutilcode/com/google/gson/stream/JsonWriter;

    const-string v0, "second"

    invoke-virtual {p1, v0}, Lutilcode/com/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lutilcode/com/google/gson/stream/JsonWriter;

    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lutilcode/com/google/gson/stream/JsonWriter;->value(J)Lutilcode/com/google/gson/stream/JsonWriter;

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonWriter;->endObject()Lutilcode/com/google/gson/stream/JsonWriter;

    goto :goto_5
.end method
