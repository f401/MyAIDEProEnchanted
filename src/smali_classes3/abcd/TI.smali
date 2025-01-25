.class public abstract Labcd/TI;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/TI$a;
    }
.end annotation


# instance fields
.field private final DW:[C

.field private final FH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Hw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation
.end field

.field private VH:Z

.field private Zo:Z

.field private final j6:Ljava/lang/StringBuilder;

.field private v5:Labcd/UE;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Labcd/TI;->j6:Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    new-array v0, v0, [C

    iput-object v0, p0, Labcd/TI;->DW:[C

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Labcd/TI;->FH:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labcd/TI;->Hw:Ljava/util/Set;

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/TI;->VH:Z

    return-void
.end method

.method private DW(Ljava/util/Map;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Labcd/ME;",
            ">;"
        }
    .end annotation

    instance-of v0, p1, Labcd/MK;

    if-nez v0, :cond_1b

    instance-of v0, p1, Ljava/util/SortedMap;

    if-eqz v0, :cond_12

    move-object v0, p1

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_1b

    :cond_12
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Labcd/NE;->j6(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    :cond_1b
    :goto_1b
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method private DW(Labcd/YD;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Labcd/TI;->Hw:Ljava/util/Set;

    invoke-virtual {p1}, Labcd/YD;->J8()Labcd/yE;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, Labcd/TI;->j6(Labcd/YD;Ljava/lang/String;)V

    return-void
.end method

.method private FH(Labcd/YD;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Labcd/TI;->Hw:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1, p2}, Labcd/TI;->DW(Labcd/YD;Ljava/lang/String;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public DW()Z
    .registers 2

    iget-boolean v0, p0, Labcd/TI;->VH:Z

    return v0
.end method

.method public j6(Ljava/util/Map;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;)",
            "Ljava/util/Set<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Labcd/TI;->DW(Ljava/util/Map;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object p1, p0, Labcd/TI;->Hw:Ljava/util/Set;

    return-object p1

    :cond_11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    if-nez v1, :cond_1e

    goto :goto_8

    :cond_1e
    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Labcd/TI;->DW(Labcd/YD;Ljava/lang/String;)V

    iget-boolean v1, p0, Labcd/TI;->Zo:Z

    if-nez v1, :cond_2e

    goto :goto_8

    :cond_2e
    invoke-interface {v0}, Labcd/ME;->Hw()Z

    move-result v1

    if-nez v1, :cond_3d

    iget-object v1, p0, Labcd/TI;->v5:Labcd/UE;

    if-nez v1, :cond_39

    goto :goto_8

    :cond_39
    invoke-virtual {v1, v0}, Labcd/UE;->j6(Labcd/ME;)Labcd/ME;

    move-result-object v0

    :cond_3d
    invoke-interface {v0}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "^{}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Labcd/TI;->DW(Labcd/YD;Ljava/lang/String;)V

    goto :goto_8
.end method

.method protected abstract j6()V
.end method

.method public j6(Labcd/UE;)V
    .registers 2

    iput-object p1, p0, Labcd/TI;->v5:Labcd/UE;

    return-void
.end method

.method public j6(Labcd/YD;)V
    .registers 3

    const-string v0, ".have"

    invoke-direct {p0, p1, v0}, Labcd/TI;->FH(Labcd/YD;Ljava/lang/String;)V

    return-void
.end method

.method public j6(Labcd/YD;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Labcd/TI;->j6:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Labcd/TI;->DW:[C

    iget-object v2, p0, Labcd/TI;->j6:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v2}, Labcd/YD;->j6([CLjava/lang/StringBuilder;)V

    iget-object p1, p0, Labcd/TI;->j6:Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Labcd/TI;->j6:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Labcd/TI;->VH:Z

    if-eqz p1, :cond_4f

    iput-boolean v1, p0, Labcd/TI;->VH:Z

    iget-object p1, p0, Labcd/TI;->FH:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4f

    iget-object p1, p0, Labcd/TI;->j6:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Labcd/TI;->FH:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_3e

    iget-object p1, p0, Labcd/TI;->j6:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4f

    :cond_3e
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v1, p0, Labcd/TI;->j6:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/TI;->j6:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_4f
    :goto_4f
    iget-object p1, p0, Labcd/TI;->j6:Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Labcd/TI;->j6:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Labcd/TI;->j6(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected abstract j6(Ljava/lang/CharSequence;)V
.end method

.method public j6(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Labcd/TI;->FH:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j6(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/TI;->Zo:Z

    return-void
.end method
