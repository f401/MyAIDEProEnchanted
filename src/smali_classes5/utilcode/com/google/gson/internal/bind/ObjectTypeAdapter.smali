.class public final Lutilcode/com/google/gson/internal/bind/ObjectTypeAdapter;
.super Lutilcode/com/google/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lutilcode/com/google/gson/TypeAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;


# instance fields
.field private final gson:Lutilcode/com/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lutilcode/com/google/gson/internal/bind/ObjectTypeAdapter$1;

    invoke-direct {v0}, Lutilcode/com/google/gson/internal/bind/ObjectTypeAdapter$1;-><init>()V

    sput-object v0, Lutilcode/com/google/gson/internal/bind/ObjectTypeAdapter;->FACTORY:Lutilcode/com/google/gson/TypeAdapterFactory;

    return-void
.end method

.method constructor <init>(Lutilcode/com/google/gson/Gson;)V
    .registers 2

    invoke-direct {p0}, Lutilcode/com/google/gson/TypeAdapter;-><init>()V

    iput-object p1, p0, Lutilcode/com/google/gson/internal/bind/ObjectTypeAdapter;->gson:Lutilcode/com/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->peek()Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lutilcode/com/google/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    invoke-virtual {v0}, Lutilcode/com/google/gson/stream/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_6a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_15  #0x6
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->nextNull()V

    const/4 v0, 0x0

    :goto_19
    return-object v0

    :pswitch_1a  #0x5
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_19

    :pswitch_23  #0x4
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_19

    :pswitch_2c  #0x3
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :pswitch_31  #0x2
    new-instance v0, Lutilcode/com/google/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lutilcode/com/google/gson/internal/LinkedTreeMap;-><init>()V

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->beginObject()V

    :goto_39
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lutilcode/com/google/gson/internal/bind/ObjectTypeAdapter;->read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    :cond_4b
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->endObject()V

    goto :goto_19

    :pswitch_4f  #0x1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->beginArray()V

    :goto_57
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-virtual {p0, p1}, Lutilcode/com/google/gson/internal/bind/ObjectTypeAdapter;->read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    :cond_65
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->endArray()V

    goto :goto_19

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_4f  #00000001
        :pswitch_31  #00000002
        :pswitch_2c  #00000003
        :pswitch_23  #00000004
        :pswitch_1a  #00000005
        :pswitch_15  #00000006
    .end packed-switch
.end method

.method public write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
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
    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/ObjectTypeAdapter;->gson:Lutilcode/com/google/gson/Gson;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lutilcode/com/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lutilcode/com/google/gson/TypeAdapter;

    move-result-object v0

    instance-of v1, v0, Lutilcode/com/google/gson/internal/bind/ObjectTypeAdapter;

    if-eqz v1, :cond_1b

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonWriter;->beginObject()Lutilcode/com/google/gson/stream/JsonWriter;

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonWriter;->endObject()Lutilcode/com/google/gson/stream/JsonWriter;

    goto :goto_5

    :cond_1b
    invoke-virtual {v0, p1, p2}, Lutilcode/com/google/gson/TypeAdapter;->write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_5
.end method
