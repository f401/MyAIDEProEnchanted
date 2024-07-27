.class Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlIterator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutilcode/com/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AvlIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private stackTop:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next()Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlIterator;->stackTop:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, v1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, v1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v3, v1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v0, v2

    :goto_1
    if-eqz v3, :cond_1

    iput-object v0, v3, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v2, v3, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v0, v3

    move-object v3, v2

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlIterator;->stackTop:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v0, v1

    goto :goto_0
.end method

.method reset(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_0

    iput-object v0, v1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object p1, v1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v0, v1

    move-object v1, p1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlIterator;->stackTop:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    return-void
.end method
