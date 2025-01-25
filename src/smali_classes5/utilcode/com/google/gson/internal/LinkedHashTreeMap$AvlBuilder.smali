.class final Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutilcode/com/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AvlBuilder"
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
.field private leavesSkipped:I

.field private leavesToSkip:I

.field private size:I

.field private stack:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;
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
.method add(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    iput-object v0, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput v6, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    iget v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    if-lez v0, :cond_23

    iget v1, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_23

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    iget v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    :cond_23
    iget-object v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object p1, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    iget v1, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    if-lez v1, :cond_45

    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_45

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    iget v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    :cond_45
    const/4 v0, 0x4

    :goto_46
    iget v1, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_89

    iget v1, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    if-nez v1, :cond_6e

    iget-object v1, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v2, v1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v3, v2, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v4, v3, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v4, v2, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v2, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v3, v2, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v1, v2, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget v4, v1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    iput-object v2, v3, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v2, v1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    :cond_6b
    :goto_6b
    mul-int/lit8 v0, v0, 0x2

    goto :goto_46

    :cond_6e
    if-ne v1, v6, :cond_83

    iget-object v1, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v2, v1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v2, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v1, v2, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget v3, v1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    iput-object v2, v1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput v5, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    goto :goto_6b

    :cond_83
    const/4 v2, 0x2

    if-ne v1, v2, :cond_6b

    iput v5, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    goto :goto_6b

    :cond_89
    return-void
.end method

.method reset(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    iput v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    iput v1, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    iput v1, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    const/4 v0, 0x0

    iput-object v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    return-void
.end method

.method root()Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v1, v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    if-nez v1, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
