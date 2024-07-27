.class final Lutilcode/com/google/gson/internal/LinkedHashTreeMap$EntrySet;
.super Ljava/util/AbstractSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutilcode/com/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final this$0:Lutilcode/com/google/gson/internal/LinkedHashTreeMap;


# direct methods
.method constructor <init>(Lutilcode/com/google/gson/internal/LinkedHashTreeMap;)V
    .registers 2

    iput-object p1, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lutilcode/com/google/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lutilcode/com/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lutilcode/com/google/gson/internal/LinkedHashTreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$EntrySet$1;

    invoke-direct {v0, p0}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$EntrySet$1;-><init>(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$EntrySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lutilcode/com/google/gson/internal/LinkedHashTreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v2, p1}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lutilcode/com/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0, v2, v1}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->removeInternal(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    move v0, v1

    goto :goto_0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lutilcode/com/google/gson/internal/LinkedHashTreeMap;

    iget v0, v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->size:I

    return v0
.end method
