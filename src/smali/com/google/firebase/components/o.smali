.class final Lcom/google/firebase/components/o;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/firebase/components/o;",
            ">;"
        }
    .end annotation
.end field

.field private final FH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/firebase/components/o;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Lcom/google/firebase/components/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/b",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/components/b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/b",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/o;->DW:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/o;->FH:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/firebase/components/o;->j6:Lcom/google/firebase/components/b;

    return-void
.end method


# virtual methods
.method final DW()Lcom/google/firebase/components/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/b",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/components/o;->j6:Lcom/google/firebase/components/b;

    return-object v0
.end method

.method final DW(Lcom/google/firebase/components/o;)V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/components/o;->FH:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final FH(Lcom/google/firebase/components/o;)V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/components/o;->FH:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method final FH()Z
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/components/o;->FH:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method final Hw()Z
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/components/o;->DW:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method final j6()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/firebase/components/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/components/o;->DW:Ljava/util/Set;

    return-object v0
.end method

.method final j6(Lcom/google/firebase/components/o;)V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/components/o;->DW:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
