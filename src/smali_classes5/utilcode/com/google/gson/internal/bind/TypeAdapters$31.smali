.class final Lutilcode/com/google/gson/internal/bind/TypeAdapters$31;
.super Ljava/lang/Object;

# interfaces
.implements Lutilcode/com/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutilcode/com/google/gson/internal/bind/TypeAdapters;->newFactory(Lutilcode/com/google/gson/reflect/TypeToken;Lutilcode/com/google/gson/TypeAdapter;)Lutilcode/com/google/gson/TypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final val$type:Lutilcode/com/google/gson/reflect/TypeToken;

.field final val$typeAdapter:Lutilcode/com/google/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lutilcode/com/google/gson/reflect/TypeToken;Lutilcode/com/google/gson/TypeAdapter;)V
    .registers 3

    iput-object p1, p0, Lutilcode/com/google/gson/internal/bind/TypeAdapters$31;->val$type:Lutilcode/com/google/gson/reflect/TypeToken;

    iput-object p2, p0, Lutilcode/com/google/gson/internal/bind/TypeAdapters$31;->val$typeAdapter:Lutilcode/com/google/gson/TypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lutilcode/com/google/gson/Gson;Lutilcode/com/google/gson/reflect/TypeToken;)Lutilcode/com/google/gson/TypeAdapter;
    .registers 4
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

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/TypeAdapters$31;->val$type:Lutilcode/com/google/gson/reflect/TypeToken;

    invoke-virtual {p2, v0}, Lutilcode/com/google/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/TypeAdapters$31;->val$typeAdapter:Lutilcode/com/google/gson/TypeAdapter;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
