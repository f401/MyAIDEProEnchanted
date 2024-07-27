.class public final Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;
.super Lutilcode/com/google/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;,
        Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;
    }
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
.field private final context:Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter",
            "<TT;>.GsonContextImpl;"
        }
    .end annotation
.end field

.field private delegate:Lutilcode/com/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lutilcode/com/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final deserializer:Lutilcode/com/google/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lutilcode/com/google/gson/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field final gson:Lutilcode/com/google/gson/Gson;

.field private final serializer:Lutilcode/com/google/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lutilcode/com/google/gson/JsonSerializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final skipPast:Lutilcode/com/google/gson/TypeAdapterFactory;

.field private final typeToken:Lutilcode/com/google/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lutilcode/com/google/gson/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lutilcode/com/google/gson/JsonSerializer;Lutilcode/com/google/gson/JsonDeserializer;Lutilcode/com/google/gson/Gson;Lutilcode/com/google/gson/reflect/TypeToken;Lutilcode/com/google/gson/TypeAdapterFactory;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/JsonSerializer",
            "<TT;>;",
            "Lutilcode/com/google/gson/JsonDeserializer",
            "<TT;>;",
            "Lutilcode/com/google/gson/Gson;",
            "Lutilcode/com/google/gson/reflect/TypeToken",
            "<TT;>;",
            "Lutilcode/com/google/gson/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lutilcode/com/google/gson/TypeAdapter;-><init>()V

    new-instance v0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;-><init>(Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$1;)V

    iput-object v0, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;->context:Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    iput-object p1, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;->serializer:Lutilcode/com/google/gson/JsonSerializer;

    iput-object p2, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;->deserializer:Lutilcode/com/google/gson/JsonDeserializer;

    iput-object p3, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;->gson:Lutilcode/com/google/gson/Gson;

    iput-object p4, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;->typeToken:Lutilcode/com/google/gson/reflect/TypeToken;

    iput-object p5, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;->skipPast:Lutilcode/com/google/gson/TypeAdapterFactory;

    return-void
.end method

.method private delegate()Lutilcode/com/google/gson/TypeAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lutilcode/com/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;->delegate:Lutilcode/com/google/gson/TypeAdapter;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;->gson:Lutilcode/com/google/gson/Gson;

    iget-object v1, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;->skipPast:Lutilcode/com/google/gson/TypeAdapterFactory;

    iget-object v2, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;->typeToken:Lutilcode/com/google/gson/reflect/TypeToken;

    invoke-virtual {v0, v1, v2}, Lutilcode/com/google/gson/Gson;->getDelegateAdapter(Lutilcode/com/google/gson/TypeAdapterFactory;Lutilcode/com/google/gson/reflect/TypeToken;)Lutilcode/com/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;->delegate:Lutilcode/com/google/gson/TypeAdapter;

    goto :goto_0
.end method

.method public static newFactory(Lutilcode/com/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lutilcode/com/google/gson/TypeAdapterFactory;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lutilcode/com/google/gson/TypeAdapterFactory;"
        }
    .end annotation

    new-instance v0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v1, v2}, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lutilcode/com/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v0
.end method

.method public static newFactoryWithMatchRawType(Lutilcode/com/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lutilcode/com/google/gson/TypeAdapterFactory;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lutilcode/com/google/gson/TypeAdapterFactory;"
        }
    .end annotation

    invoke-virtual {p0}, Lutilcode/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lutilcode/com/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lutilcode/com/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lutilcode/com/google/gson/TypeAdapterFactory;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lutilcode/com/google/gson/TypeAdapterFactory;"
        }
    .end annotation

    new-instance v0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p0}, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lutilcode/com/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 6
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

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;->deserializer:Lutilcode/com/google/gson/JsonDeserializer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;->delegate()Lutilcode/com/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lutilcode/com/google/gson/TypeAdapter;->read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lutilcode/com/google/gson/internal/Streams;->parse(Lutilcode/com/google/gson/stream/JsonReader;)Lutilcode/com/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lutilcode/com/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;->deserializer:Lutilcode/com/google/gson/JsonDeserializer;

    iget-object v2, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;->typeToken:Lutilcode/com/google/gson/reflect/TypeToken;

    invoke-virtual {v2}, Lutilcode/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;->context:Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    invoke-interface {v1, v0, v2, v3}, Lutilcode/com/google/gson/JsonDeserializer;->deserialize(Lutilcode/com/google/gson/JsonElement;Ljava/lang/reflect/Type;Lutilcode/com/google/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
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

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;->serializer:Lutilcode/com/google/gson/JsonSerializer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;->delegate()Lutilcode/com/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lutilcode/com/google/gson/TypeAdapter;->write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonWriter;->nullValue()Lutilcode/com/google/gson/stream/JsonWriter;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;->typeToken:Lutilcode/com/google/gson/reflect/TypeToken;

    invoke-virtual {v1}, Lutilcode/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;->context:Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    invoke-interface {v0, p2, v1, v2}, Lutilcode/com/google/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lutilcode/com/google/gson/JsonSerializationContext;)Lutilcode/com/google/gson/JsonElement;

    move-result-object v0

    invoke-static {v0, p1}, Lutilcode/com/google/gson/internal/Streams;->write(Lutilcode/com/google/gson/JsonElement;Lutilcode/com/google/gson/stream/JsonWriter;)V

    goto :goto_0
.end method
