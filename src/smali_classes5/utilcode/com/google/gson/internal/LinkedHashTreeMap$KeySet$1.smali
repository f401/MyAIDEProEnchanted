.class Lutilcode/com/google/gson/internal/LinkedHashTreeMap$KeySet$1;
.super Lutilcode/com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutilcode/com/google/gson/internal/LinkedHashTreeMap$KeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lutilcode/com/google/gson/internal/LinkedHashTreeMap",
        "<TK;TV;>.",
        "LinkedTreeMapIterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final this$1:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$KeySet;


# direct methods
.method constructor <init>(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$KeySet;)V
    .registers 3

    iput-object p1, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$KeySet$1;->this$1:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$KeySet;

    iget-object v0, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$KeySet;->this$0:Lutilcode/com/google/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;-><init>(Lutilcode/com/google/gson/internal/LinkedHashTreeMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$KeySet$1;->nextNode()Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    iget-object v0, v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method
