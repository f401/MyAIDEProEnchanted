.class Lutilcode/com/google/gson/Gson$1;
.super Lutilcode/com/google/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutilcode/com/google/gson/Gson;->doubleAdapter(Z)Lutilcode/com/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lutilcode/com/google/gson/TypeAdapter",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lutilcode/com/google/gson/Gson;


# direct methods
.method constructor <init>(Lutilcode/com/google/gson/Gson;)V
    .registers 2

    iput-object p1, p0, Lutilcode/com/google/gson/Gson$1;->this$0:Lutilcode/com/google/gson/Gson;

    invoke-direct {p0}, Lutilcode/com/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Double;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lutilcode/com/google/gson/stream/JsonToken;->NULL:Lutilcode/com/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->nextNull()V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_c
.end method

.method public bridge synthetic read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lutilcode/com/google/gson/Gson$1;->read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Number;)V
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
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lutilcode/com/google/gson/Gson;->checkValidFloatingPoint(D)V

    invoke-virtual {p1, p2}, Lutilcode/com/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lutilcode/com/google/gson/stream/JsonWriter;

    goto :goto_5
.end method

.method public bridge synthetic write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lutilcode/com/google/gson/Gson$1;->write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method
