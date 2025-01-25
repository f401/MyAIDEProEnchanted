.class final Lcom/google/firebase/components/t;
.super Lcom/google/firebase/components/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/components/t$a;
    }
.end annotation


# instance fields
.field private final DW:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final FH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final Hw:Lcom/google/firebase/components/c;

.field private final j6:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/components/b;Lcom/google/firebase/components/c;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/b<",
            "*>;",
            "Lcom/google/firebase/components/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/components/j;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lcom/google/firebase/components/b;->DW()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/components/f;

    invoke-virtual {v3}, Lcom/google/firebase/components/f;->FH()Z

    move-result v4

    invoke-virtual {v3}, Lcom/google/firebase/components/f;->j6()Ljava/lang/Class;

    move-result-object v3

    if-eqz v4, :cond_2f

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_2f
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_33
    invoke-virtual {p1}, Lcom/google/firebase/components/b;->Hw()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_42

    const-class v2, Labcd/yy;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_42
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/components/t;->j6:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/components/t;->DW:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/firebase/components/b;->Hw()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/components/t;->FH:Ljava/util/Set;

    iput-object p2, p0, Lcom/google/firebase/components/t;->Hw:Lcom/google/firebase/components/c;

    return-void
.end method


# virtual methods
.method public final DW(Ljava/lang/Class;)Labcd/By;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "LBy<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/components/t;->DW:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/firebase/components/t;->Hw:Lcom/google/firebase/components/c;

    invoke-interface {v0, p1}, Lcom/google/firebase/components/c;->DW(Ljava/lang/Class;)Labcd/By;

    move-result-object p1

    return-object p1

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Requesting Provider<%s> is not allowed."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j6(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/components/t;->j6:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/firebase/components/t;->Hw:Lcom/google/firebase/components/c;

    invoke-interface {v0, p1}, Lcom/google/firebase/components/c;->j6(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Labcd/yy;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return-object v0

    :cond_17
    new-instance p1, Lcom/google/firebase/components/t$a;

    iget-object v1, p0, Lcom/google/firebase/components/t;->FH:Ljava/util/Set;

    check-cast v0, Labcd/yy;

    invoke-direct {p1, v1, v0}, Lcom/google/firebase/components/t$a;-><init>(Ljava/util/Set;Labcd/yy;)V

    return-object p1

    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Requesting %s is not allowed."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
