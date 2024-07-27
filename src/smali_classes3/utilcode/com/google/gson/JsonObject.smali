.class public final Lutilcode/com/google/gson/JsonObject;
.super Lutilcode/com/google/gson/JsonElement;


# instance fields
.field private final members:Lutilcode/com/google/gson/internal/LinkedTreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lutilcode/com/google/gson/internal/LinkedTreeMap",
            "<",
            "Ljava/lang/String;",
            "Lutilcode/com/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lutilcode/com/google/gson/JsonElement;-><init>()V

    new-instance v0, Lutilcode/com/google/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lutilcode/com/google/gson/internal/LinkedTreeMap;-><init>()V

    iput-object v0, p0, Lutilcode/com/google/gson/JsonObject;->members:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    return-void
.end method

.method private createJsonElement(Ljava/lang/Object;)Lutilcode/com/google/gson/JsonElement;
    .registers 3

    if-nez p1, :cond_0

    sget-object v0, Lutilcode/com/google/gson/JsonNull;->INSTANCE:Lutilcode/com/google/gson/JsonNull;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lutilcode/com/google/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lutilcode/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;Lutilcode/com/google/gson/JsonElement;)V
    .registers 4

    if-nez p2, :cond_0

    sget-object p2, Lutilcode/com/google/gson/JsonNull;->INSTANCE:Lutilcode/com/google/gson/JsonNull;

    :cond_0
    iget-object v0, p0, Lutilcode/com/google/gson/JsonObject;->members:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1, p2}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4

    invoke-direct {p0, p2}, Lutilcode/com/google/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lutilcode/com/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lutilcode/com/google/gson/JsonObject;->add(Ljava/lang/String;Lutilcode/com/google/gson/JsonElement;)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Character;)V
    .registers 4

    invoke-direct {p0, p2}, Lutilcode/com/google/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lutilcode/com/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lutilcode/com/google/gson/JsonObject;->add(Ljava/lang/String;Lutilcode/com/google/gson/JsonElement;)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Number;)V
    .registers 4

    invoke-direct {p0, p2}, Lutilcode/com/google/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lutilcode/com/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lutilcode/com/google/gson/JsonObject;->add(Ljava/lang/String;Lutilcode/com/google/gson/JsonElement;)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p2}, Lutilcode/com/google/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lutilcode/com/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lutilcode/com/google/gson/JsonObject;->add(Ljava/lang/String;Lutilcode/com/google/gson/JsonElement;)V

    return-void
.end method

.method public bridge synthetic deepCopy()Lutilcode/com/google/gson/JsonElement;
    .registers 2

    invoke-virtual {p0}, Lutilcode/com/google/gson/JsonObject;->deepCopy()Lutilcode/com/google/gson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lutilcode/com/google/gson/JsonObject;
    .registers 5

    new-instance v2, Lutilcode/com/google/gson/JsonObject;

    invoke-direct {v2}, Lutilcode/com/google/gson/JsonObject;-><init>()V

    iget-object v0, p0, Lutilcode/com/google/gson/JsonObject;->members:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/JsonElement;

    invoke-virtual {v0}, Lutilcode/com/google/gson/JsonElement;->deepCopy()Lutilcode/com/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lutilcode/com/google/gson/JsonObject;->add(Ljava/lang/String;Lutilcode/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lutilcode/com/google/gson/JsonElement;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lutilcode/com/google/gson/JsonObject;->members:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lutilcode/com/google/gson/JsonObject;

    if-eqz v0, :cond_1

    check-cast p1, Lutilcode/com/google/gson/JsonObject;

    iget-object v0, p1, Lutilcode/com/google/gson/JsonObject;->members:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    iget-object v1, p0, Lutilcode/com/google/gson/JsonObject;->members:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, v1}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lutilcode/com/google/gson/JsonElement;
    .registers 3

    iget-object v0, p0, Lutilcode/com/google/gson/JsonObject;->members:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/JsonElement;

    return-object v0
.end method

.method public getAsJsonArray(Ljava/lang/String;)Lutilcode/com/google/gson/JsonArray;
    .registers 3

    iget-object v0, p0, Lutilcode/com/google/gson/JsonObject;->members:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/JsonArray;

    return-object v0
.end method

.method public getAsJsonObject(Ljava/lang/String;)Lutilcode/com/google/gson/JsonObject;
    .registers 3

    iget-object v0, p0, Lutilcode/com/google/gson/JsonObject;->members:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/JsonObject;

    return-object v0
.end method

.method public getAsJsonPrimitive(Ljava/lang/String;)Lutilcode/com/google/gson/JsonPrimitive;
    .registers 3

    iget-object v0, p0, Lutilcode/com/google/gson/JsonObject;->members:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/JsonPrimitive;

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lutilcode/com/google/gson/JsonObject;->members:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lutilcode/com/google/gson/JsonObject;->members:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lutilcode/com/google/gson/JsonObject;->members:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lutilcode/com/google/gson/JsonElement;
    .registers 3

    iget-object v0, p0, Lutilcode/com/google/gson/JsonObject;->members:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/JsonElement;

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lutilcode/com/google/gson/JsonObject;->members:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->size()I

    move-result v0

    return v0
.end method
