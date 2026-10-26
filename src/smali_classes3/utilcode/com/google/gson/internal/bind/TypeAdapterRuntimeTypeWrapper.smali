.class final Lutilcode/com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;
.super Lutilcode/com/google/gson/TypeAdapter;


# annotations
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
.field private final context:Lutilcode/com/google/gson/Gson;

.field private final delegate:Lutilcode/com/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lutilcode/com/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lutilcode/com/google/gson/Gson;Lutilcode/com/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/Gson;",
            "Lutilcode/com/google/gson/TypeAdapter",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lutilcode/com/google/gson/TypeAdapter;-><init>()V

    iput-object p1, p0, Lutilcode/com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->context:Lutilcode/com/google/gson/Gson;

    iput-object p2, p0, Lutilcode/com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lutilcode/com/google/gson/TypeAdapter;

    iput-object p3, p0, Lutilcode/com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    return-void
.end method

.method private getRuntimeTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 1

    if-eqz p2, :cond_1

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lutilcode/com/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lutilcode/com/google/gson/TypeAdapter;->read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 3
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

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lutilcode/com/google/gson/TypeAdapter;

    iget-object v1, p0, Lutilcode/com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    invoke-direct {p0, v1, p2}, Lutilcode/com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->getRuntimeTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lutilcode/com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_1

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->context:Lutilcode/com/google/gson/Gson;

    invoke-static {v1}, Lutilcode/com/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lutilcode/com/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lutilcode/com/google/gson/Gson;->getAdapter(Lutilcode/com/google/gson/reflect/TypeToken;)Lutilcode/com/google/gson/TypeAdapter;

    move-result-object v1

    instance-of v0, v1, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2}, Lutilcode/com/google/gson/TypeAdapter;->write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lutilcode/com/google/gson/TypeAdapter;

    instance-of v2, v0, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    if-nez v2, :cond_0

    goto :goto_0
.end method
