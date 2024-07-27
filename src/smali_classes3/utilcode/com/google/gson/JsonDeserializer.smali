.class public interface abstract Lutilcode/com/google/gson/JsonDeserializer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract deserialize(Lutilcode/com/google/gson/JsonElement;Ljava/lang/reflect/Type;Lutilcode/com/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            "Lutilcode/com/google/gson/JsonDeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lutilcode/com/google/gson/JsonParseException;
        }
    .end annotation
.end method
