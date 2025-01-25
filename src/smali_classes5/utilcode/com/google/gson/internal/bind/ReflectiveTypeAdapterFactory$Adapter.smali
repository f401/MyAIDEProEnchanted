.class public final Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;
.super Lutilcode/com/google/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lutilcode/com/google/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final boundFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;"
        }
    .end annotation
.end field

.field private final constructor:Lutilcode/com/google/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lutilcode/com/google/gson/internal/ObjectConstructor",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lutilcode/com/google/gson/internal/ObjectConstructor;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/internal/ObjectConstructor",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lutilcode/com/google/gson/TypeAdapter;-><init>()V

    iput-object p1, p0, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->constructor:Lutilcode/com/google/gson/internal/ObjectConstructor;

    iput-object p2, p0, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

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
    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->constructor:Lutilcode/com/google/gson/internal/ObjectConstructor;

    invoke-interface {v0}, Lutilcode/com/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v1

    :try_start_13
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->beginObject()V

    :goto_16
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    if-eqz v0, :cond_2e

    iget-boolean v2, v0, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->deserialized:Z

    if-nez v2, :cond_39

    :cond_2e
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->skipValue()V
    :try_end_31
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_31} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_31} :catch_3d

    goto :goto_16

    :catch_32
    move-exception v0

    new-instance v1, Lutilcode/com/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lutilcode/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_39
    :try_start_39
    invoke-virtual {v0, p1, v1}, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->read(Lutilcode/com/google/gson/stream/JsonReader;Ljava/lang/Object;)V
    :try_end_3c
    .catch Ljava/lang/IllegalStateException; {:try_start_39 .. :try_end_3c} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_16

    :catch_3d
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_44
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->endObject()V

    move-object v0, v1

    goto :goto_c
.end method

.method public write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

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

    :try_start_9
    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    invoke-virtual {v0, p2}, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->writeField(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v0, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lutilcode/com/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lutilcode/com/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1, p2}, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_2d} :catch_2e

    goto :goto_13

    :catch_2e
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_35
    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonWriter;->endObject()Lutilcode/com/google/gson/stream/JsonWriter;

    goto :goto_5
.end method
