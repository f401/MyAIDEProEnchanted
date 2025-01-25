.class final Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lutilcode/com/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleTypeFactory"
.end annotation


# instance fields
.field private final deserializer:Lutilcode/com/google/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lutilcode/com/google/gson/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end field

.field private final exactType:Lutilcode/com/google/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lutilcode/com/google/gson/reflect/TypeToken",
            "<*>;"
        }
    .end annotation
.end field

.field private final hierarchyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final matchRawType:Z

.field private final serializer:Lutilcode/com/google/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lutilcode/com/google/gson/JsonSerializer",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lutilcode/com/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lutilcode/com/google/gson/reflect/TypeToken",
            "<*>;Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lutilcode/com/google/gson/JsonSerializer;

    if-eqz v0, :cond_26

    move-object v0, p1

    check-cast v0, Lutilcode/com/google/gson/JsonSerializer;

    :goto_b
    iput-object v0, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->serializer:Lutilcode/com/google/gson/JsonSerializer;

    instance-of v0, p1, Lutilcode/com/google/gson/JsonDeserializer;

    if-eqz v0, :cond_2a

    check-cast p1, Lutilcode/com/google/gson/JsonDeserializer;

    :goto_13
    iput-object p1, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lutilcode/com/google/gson/JsonDeserializer;

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->serializer:Lutilcode/com/google/gson/JsonSerializer;

    if-nez v0, :cond_1b

    if-eqz p1, :cond_28

    :cond_1b
    const/4 v0, 0x1

    :goto_1c
    invoke-static {v0}, Lutilcode/com/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    iput-object p2, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->exactType:Lutilcode/com/google/gson/reflect/TypeToken;

    iput-boolean p3, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->matchRawType:Z

    iput-object p4, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->hierarchyType:Ljava/lang/Class;

    return-void

    :cond_26
    move-object v0, v1

    goto :goto_b

    :cond_28
    const/4 v0, 0x0

    goto :goto_1c

    :cond_2a
    move-object p1, v1

    goto :goto_13
.end method


# virtual methods
.method public create(Lutilcode/com/google/gson/Gson;Lutilcode/com/google/gson/reflect/TypeToken;)Lutilcode/com/google/gson/TypeAdapter;
    .registers 9
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

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->exactType:Lutilcode/com/google/gson/reflect/TypeToken;

    if-eqz v0, :cond_2c

    invoke-virtual {v0, p2}, Lutilcode/com/google/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->matchRawType:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->exactType:Lutilcode/com/google/gson/reflect/TypeToken;

    invoke-virtual {v0}, Lutilcode/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lutilcode/com/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2a

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    if-eqz v0, :cond_37

    new-instance v0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;

    iget-object v1, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->serializer:Lutilcode/com/google/gson/JsonSerializer;

    iget-object v2, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lutilcode/com/google/gson/JsonDeserializer;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;-><init>(Lutilcode/com/google/gson/JsonSerializer;Lutilcode/com/google/gson/JsonDeserializer;Lutilcode/com/google/gson/Gson;Lutilcode/com/google/gson/reflect/TypeToken;Lutilcode/com/google/gson/TypeAdapterFactory;)V

    :goto_29
    return-object v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_1b

    :cond_2c
    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->hierarchyType:Ljava/lang/Class;

    invoke-virtual {p2}, Lutilcode/com/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_1b

    :cond_37
    const/4 v0, 0x0

    goto :goto_29
.end method
