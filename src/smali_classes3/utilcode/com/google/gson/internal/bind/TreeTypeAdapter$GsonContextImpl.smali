.class final Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lutilcode/com/google/gson/JsonSerializationContext;
.implements Lutilcode/com/google/gson/JsonDeserializationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GsonContextImpl"
.end annotation


# instance fields
.field final this$0:Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;


# direct methods
.method private constructor <init>(Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;)V
    .registers 2

    iput-object p1, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;-><init>(Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;)V

    return-void
.end method


# virtual methods
.method public deserialize(Lutilcode/com/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lutilcode/com/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lutilcode/com/google/gson/JsonParseException;
        }
    .end annotation

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;

    iget-object v0, v0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;->gson:Lutilcode/com/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lutilcode/com/google/gson/Gson;->fromJson(Lutilcode/com/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;)Lutilcode/com/google/gson/JsonElement;
    .registers 3

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;

    iget-object v0, v0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;->gson:Lutilcode/com/google/gson/Gson;

    invoke-virtual {v0, p1}, Lutilcode/com/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lutilcode/com/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lutilcode/com/google/gson/JsonElement;
    .registers 4

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;

    iget-object v0, v0, Lutilcode/com/google/gson/internal/bind/TreeTypeAdapter;->gson:Lutilcode/com/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lutilcode/com/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lutilcode/com/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
