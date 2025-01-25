.class public final Lcom/google/firebase/components/b;
.super Ljava/lang/Object;


# annotations
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

.field private final FH:I

.field private final Hw:Lcom/google/firebase/components/d;
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

.field private final v5:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;Ljava/util/Set;ILcom/google/firebase/components/d;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "-TT;>;>;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/f;",
            ">;I",
            "Lcom/google/firebase/components/d<",
            "TT;>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/components/b;->j6:Ljava/util/Set;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/components/b;->DW:Ljava/util/Set;

    iput p3, p0, Lcom/google/firebase/components/b;->FH:I

    iput-object p4, p0, Lcom/google/firebase/components/b;->Hw:Lcom/google/firebase/components/d;

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/components/b;->v5:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Ljava/util/Set;ILcom/google/firebase/components/d;Ljava/util/Set;B)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/google/firebase/components/b;-><init>(Ljava/util/Set;Ljava/util/Set;ILcom/google/firebase/components/d;Ljava/util/Set;)V

    return-void
.end method

.method public static j6(Ljava/lang/Class;)Lcom/google/firebase/components/b$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/firebase/components/b$a<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/components/b$a;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-direct {v0, p0, v2, v1}, Lcom/google/firebase/components/b$a;-><init>(Ljava/lang/Class;[Ljava/lang/Class;B)V

    return-object v0
.end method

.method public static varargs j6(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/b$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/google/firebase/components/b$a<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/components/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/firebase/components/b$a;-><init>(Ljava/lang/Class;[Ljava/lang/Class;B)V

    return-object v0
.end method

.method public static varargs j6(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/google/firebase/components/b<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-static {p1, p2}, Lcom/google/firebase/components/b;->j6(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/b$a;

    move-result-object p1

    invoke-static {p0}, Lcom/google/firebase/components/k;->j6(Ljava/lang/Object;)Lcom/google/firebase/components/d;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/firebase/components/b$a;->j6(Lcom/google/firebase/components/d;)Lcom/google/firebase/components/b$a;

    invoke-virtual {p1}, Lcom/google/firebase/components/b$a;->DW()Lcom/google/firebase/components/b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    return-object p0
.end method


# virtual methods
.method public final DW()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/components/b;->DW:Ljava/util/Set;

    return-object v0
.end method

.method public final FH()Lcom/google/firebase/components/d;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/d<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/components/b;->Hw:Lcom/google/firebase/components/d;

    return-object v0
.end method

.method public final Hw()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/components/b;->v5:Ljava/util/Set;

    return-object v0
.end method

.method public final Zo()Z
    .registers 3

    iget v0, p0, Lcom/google/firebase/components/b;->FH:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final j6()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/components/b;->j6:Ljava/util/Set;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Component<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/components/b;->j6:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/firebase/components/b;->FH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/components/b;->DW:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v5()Z
    .registers 3

    iget v0, p0, Lcom/google/firebase/components/b;->FH:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
