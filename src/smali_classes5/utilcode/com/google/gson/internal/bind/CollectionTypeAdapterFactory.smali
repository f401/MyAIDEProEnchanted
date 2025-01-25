.class public final Lutilcode/com/google/gson/internal/bind/CollectionTypeAdapterFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lutilcode/com/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lutilcode/com/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field private final constructorConstructor:Lutilcode/com/google/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lutilcode/com/google/gson/internal/ConstructorConstructor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lutilcode/com/google/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lutilcode/com/google/gson/internal/ConstructorConstructor;

    return-void
.end method


# virtual methods
.method public create(Lutilcode/com/google/gson/Gson;Lutilcode/com/google/gson/reflect/TypeToken;)Lutilcode/com/google/gson/TypeAdapter;
    .registers 7
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

    invoke-virtual {p2}, Lutilcode/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lutilcode/com/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v0, 0x0

    :goto_11
    return-object v0

    :cond_12
    invoke-static {v0, v1}, Lutilcode/com/google/gson/internal/$Gson$Types;->getCollectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v0, Lutilcode/com/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;

    invoke-static {v1}, Lutilcode/com/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lutilcode/com/google/gson/reflect/TypeToken;

    move-result-object v2

    invoke-virtual {p1, v2}, Lutilcode/com/google/gson/Gson;->getAdapter(Lutilcode/com/google/gson/reflect/TypeToken;)Lutilcode/com/google/gson/TypeAdapter;

    move-result-object v2

    iget-object v3, p0, Lutilcode/com/google/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lutilcode/com/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v3, p2}, Lutilcode/com/google/gson/internal/ConstructorConstructor;->get(Lutilcode/com/google/gson/reflect/TypeToken;)Lutilcode/com/google/gson/internal/ObjectConstructor;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lutilcode/com/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;-><init>(Lutilcode/com/google/gson/Gson;Ljava/lang/reflect/Type;Lutilcode/com/google/gson/TypeAdapter;Lutilcode/com/google/gson/internal/ObjectConstructor;)V

    goto :goto_11
.end method
