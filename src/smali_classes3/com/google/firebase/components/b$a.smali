.class public Lcom/google/firebase/components/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/components/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final DW:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/f;",
            ">;"
        }
    .end annotation
.end field

.field private FH:I

.field private Hw:Lcom/google/firebase/components/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final j6:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field private v5:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/b$a;->j6:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/components/b$a;->DW:Ljava/util/Set;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/firebase/components/b$a;->FH:I

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/components/b$a;->v5:Ljava/util/Set;

    const-string v2, "Null interface"

    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    array-length p1, p2

    :goto_24
    if-ge v1, p1, :cond_2e

    aget-object v0, p2, v1

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_2e
    iget-object p1, p0, Lcom/google/firebase/components/b$a;->j6:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;B)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/components/b$a;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    return-void
.end method

.method private j6(I)Lcom/google/firebase/components/b$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/firebase/components/b$a<",
            "TT;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/firebase/components/b$a;->FH:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "Instantiation type has already been set."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/r;->DW(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/firebase/components/b$a;->FH:I

    return-object p0
.end method


# virtual methods
.method public DW()Lcom/google/firebase/components/b;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/b<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/components/b$a;->Hw:Lcom/google/firebase/components/d;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "Missing required property: factory."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/r;->DW(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/firebase/components/b;

    new-instance v3, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/firebase/components/b$a;->j6:Ljava/util/Set;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/firebase/components/b$a;->DW:Ljava/util/Set;

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget v5, p0, Lcom/google/firebase/components/b$a;->FH:I

    iget-object v6, p0, Lcom/google/firebase/components/b$a;->Hw:Lcom/google/firebase/components/d;

    iget-object v7, p0, Lcom/google/firebase/components/b$a;->v5:Ljava/util/Set;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/firebase/components/b;-><init>(Ljava/util/Set;Ljava/util/Set;ILcom/google/firebase/components/d;Ljava/util/Set;B)V

    return-object v0
.end method

.method public FH()Lcom/google/firebase/components/b$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/b$a<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/firebase/components/b$a;->j6(I)Lcom/google/firebase/components/b$a;

    return-object p0
.end method

.method public j6()Lcom/google/firebase/components/b$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/b$a<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/firebase/components/b$a;->j6(I)Lcom/google/firebase/components/b$a;

    return-object p0
.end method

.method public j6(Lcom/google/firebase/components/d;)Lcom/google/firebase/components/b$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/d<",
            "TT;>;)",
            "Lcom/google/firebase/components/b$a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Null factory"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/google/firebase/components/d;

    iput-object p1, p0, Lcom/google/firebase/components/b$a;->Hw:Lcom/google/firebase/components/d;

    return-object p0
.end method

.method public j6(Lcom/google/firebase/components/f;)Lcom/google/firebase/components/b$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/f;",
            ")",
            "Lcom/google/firebase/components/b$a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Null dependency"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/firebase/components/f;->j6()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/components/b$a;->j6:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Components are not allowed to depend on interfaces they themselves provide."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/r;->j6(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/firebase/components/b$a;->DW:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
