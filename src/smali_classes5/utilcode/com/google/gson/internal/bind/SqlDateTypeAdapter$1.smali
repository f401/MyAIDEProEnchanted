.class final Lutilcode/com/google/gson/internal/bind/SqlDateTypeAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lutilcode/com/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutilcode/com/google/gson/internal/bind/SqlDateTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

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

    const-class v1, Ljava/sql/Date;

    if-ne v0, v1, :cond_e

    new-instance v0, Lutilcode/com/google/gson/internal/bind/SqlDateTypeAdapter;

    invoke-direct {v0}, Lutilcode/com/google/gson/internal/bind/SqlDateTypeAdapter;-><init>()V

    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
