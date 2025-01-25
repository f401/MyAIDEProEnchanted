.class public final Lutilcode/com/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lutilcode/com/google/gson/TypeAdapterFactory;


# instance fields
.field private final constructorConstructor:Lutilcode/com/google/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lutilcode/com/google/gson/internal/ConstructorConstructor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lutilcode/com/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->constructorConstructor:Lutilcode/com/google/gson/internal/ConstructorConstructor;

    return-void
.end method


# virtual methods
.method public create(Lutilcode/com/google/gson/Gson;Lutilcode/com/google/gson/reflect/TypeToken;)Lutilcode/com/google/gson/TypeAdapter;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lutilcode/com/google/gson/Gson;",
            "Lutilcode/com/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lutilcode/com/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lutilcode/com/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lutilcode/com/google/gson/annotations/JsonAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/annotations/JsonAdapter;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    iget-object v1, p0, Lutilcode/com/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->constructorConstructor:Lutilcode/com/google/gson/internal/ConstructorConstructor;

    invoke-virtual {p0, v1, p1, p2, v0}, Lutilcode/com/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lutilcode/com/google/gson/internal/ConstructorConstructor;Lutilcode/com/google/gson/Gson;Lutilcode/com/google/gson/reflect/TypeToken;Lutilcode/com/google/gson/annotations/JsonAdapter;)Lutilcode/com/google/gson/TypeAdapter;

    move-result-object v0

    goto :goto_f
.end method

.method getTypeAdapter(Lutilcode/com/google/gson/internal/ConstructorConstructor;Lutilcode/com/google/gson/Gson;Lutilcode/com/google/gson/reflect/TypeToken;Lutilcode/com/google/gson/annotations/JsonAdapter;)Lutilcode/com/google/gson/TypeAdapter;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/internal/ConstructorConstructor;",
            "Lutilcode/com/google/gson/Gson;",
            "Lutilcode/com/google/gson/reflect/TypeToken",
            "<*>;",
            "Lutilcode/com/google/gson/annotations/JsonAdapter;",
            ")",
            "Lutilcode/com/google/gson/TypeAdapter",
            "<*>;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-interface {p4}, Lutilcode/com/google/gson/annotations/JsonAdapter;->value()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lutilcode/com/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lutilcode/com/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lutilcode/com/google/gson/internal/ConstructorConstructor;->get(Lutilcode/com/google/gson/reflect/TypeToken;)Lutilcode/com/google/gson/internal/ObjectConstructor;

    move-result-object v0

    invoke-interface {v0}, Lutilcode/com/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lutilcode/com/google/gson/TypeAdapter;

    if-eqz v1, :cond_24

    check-cast v0, Lutilcode/com/google/gson/TypeAdapter;

    :goto_17
    if-eqz v0, :cond_23

    invoke-interface {p4}, Lutilcode/com/google/gson/annotations/JsonAdapter;->nullSafe()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Lutilcode/com/google/gson/TypeAdapter;->nullSafe()Lutilcode/com/google/gson/TypeAdapter;

    move-result-object v0

    :cond_23
    return-object v0

    :cond_24
    instance-of v1, v0, Lutilcode/com/google/gson/TypeAdapterFactory;

    if-eqz v1, :cond_2f

    check-cast v0, Lutilcode/com/google/gson/TypeAdapterFactory;

    invoke-interface {v0, p2, p3}, Lutilcode/com/google/gson/TypeAdapterFactory;->create(Lutilcode/com/google/gson/Gson;Lutilcode/com/google/gson/reflect/TypeToken;)Lutilcode/com/google/gson/TypeAdapter;

    move-result-object v0

    goto :goto_17

    :cond_2f
    instance-of v1, v0, Lutilcode/com/google/gson/JsonSerializer;

    if-nez v1, :cond_37

    instance-of v2, v0, Lutilcode/com/google/gson/JsonDeserializer;

    if-eqz v2, :cond_4b

    :cond_37
    if-eqz v1, :cond_7b

    move-object v1, v0

    check-cast v1, Lutilcode/com/google/gson/JsonSerializer;

    :goto_3c
    instance-of v2, v0, Lutilcode/com/google/gson/JsonDeserializer;

    if-eqz v2, :cond_7d

    check-cast v0, Lutilcode/com/google/gson/JsonDeserializer;

    move-object v2, v0

    :goto_43
    new-instance v0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;-><init>(Lutilcode/com/google/gson/JsonSerializer;Lutilcode/com/google/gson/JsonDeserializer;Lutilcode/com/google/gson/Gson;Lutilcode/com/google/gson/reflect/TypeToken;Lutilcode/com/google/gson/TypeAdapterFactory;)V

    goto :goto_17

    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid attempt to bind an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " as a @JsonAdapter for "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lutilcode/com/google/gson/reflect/TypeToken;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7b
    move-object v1, v5

    goto :goto_3c

    :cond_7d
    move-object v2, v5

    goto :goto_43
.end method
