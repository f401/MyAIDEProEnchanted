.class final Lutilcode/com/google/gson/internal/LinkedTreeMap$KeySet;
.super Ljava/util/AbstractSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutilcode/com/google/gson/internal/LinkedTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final this$0:Lutilcode/com/google/gson/internal/LinkedTreeMap;


# direct methods
.method constructor <init>(Lutilcode/com/google/gson/internal/LinkedTreeMap;)V
    .registers 2

    iput-object p1, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap$KeySet;->this$0:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap$KeySet;->this$0:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap$KeySet;->this$0:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$KeySet$1;

    invoke-direct {v0, p0}, Lutilcode/com/google/gson/internal/LinkedTreeMap$KeySet$1;-><init>(Lutilcode/com/google/gson/internal/LinkedTreeMap$KeySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap$KeySet;->this$0:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap$KeySet;->this$0:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    iget v0, v0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->size:I

    return v0
.end method
