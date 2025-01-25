.class final Lutilcode/com/google/gson/internal/bind/TypeAdapters$33;
.super Ljava/lang/Object;

# interfaces
.implements Lutilcode/com/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutilcode/com/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lutilcode/com/google/gson/TypeAdapter;)Lutilcode/com/google/gson/TypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final val$boxed:Ljava/lang/Class;

.field final val$typeAdapter:Lutilcode/com/google/gson/TypeAdapter;

.field final val$unboxed:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lutilcode/com/google/gson/TypeAdapter;)V
    .registers 4

    iput-object p1, p0, Lutilcode/com/google/gson/internal/bind/TypeAdapters$33;->val$unboxed:Ljava/lang/Class;

    iput-object p2, p0, Lutilcode/com/google/gson/internal/bind/TypeAdapters$33;->val$boxed:Ljava/lang/Class;

    iput-object p3, p0, Lutilcode/com/google/gson/internal/bind/TypeAdapters$33;->val$typeAdapter:Lutilcode/com/google/gson/TypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-object v1, p0, Lutilcode/com/google/gson/internal/bind/TypeAdapters$33;->val$unboxed:Ljava/lang/Class;

    if-eq v0, v1, :cond_c

    iget-object v1, p0, Lutilcode/com/google/gson/internal/bind/TypeAdapters$33;->val$boxed:Ljava/lang/Class;

    if-ne v0, v1, :cond_f

    :cond_c
    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/TypeAdapters$33;->val$typeAdapter:Lutilcode/com/google/gson/TypeAdapter;

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Factory[type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lutilcode/com/google/gson/internal/bind/TypeAdapters$33;->val$boxed:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lutilcode/com/google/gson/internal/bind/TypeAdapters$33;->val$unboxed:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lutilcode/com/google/gson/internal/bind/TypeAdapters$33;->val$typeAdapter:Lutilcode/com/google/gson/TypeAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
