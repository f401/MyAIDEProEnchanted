.class Lcom/google/gson/internal/LinkedTreeMap$EntrySet$1;
.super Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/LinkedTreeMap$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/internal/LinkedTreeMap",
        "<TK;TV;>.",
        "LinkedTreeMapIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final this$1:Lcom/google/gson/internal/LinkedTreeMap$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/LinkedTreeMap$EntrySet;)V
    .registers 3

    .line 566
    iput-object p1, p0, Lcom/google/gson/internal/LinkedTreeMap$EntrySet$1;->this$1:Lcom/google/gson/internal/LinkedTreeMap$EntrySet;

    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {p0, v0}, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 566
    invoke-virtual {p0}, Lcom/google/gson/internal/LinkedTreeMap$EntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .line 568
    invoke-virtual {p0}, Lcom/google/gson/internal/LinkedTreeMap$EntrySet$1;->nextNode()Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    return-object v0
.end method
