.class public Labcd/dK;
.super Labcd/jK;


# instance fields
.field private final FH:I

.field private final Hw:I

.field private final VH:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Zo:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final gn:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Z


# direct methods
.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Labcd/dK;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 5

    invoke-direct {p0}, Labcd/jK;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labcd/dK;->Zo:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Labcd/dK;->VH:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Labcd/dK;->gn:Ljava/util/LinkedList;

    iput p1, p0, Labcd/dK;->FH:I

    iput p2, p0, Labcd/dK;->Hw:I

    iput-boolean p3, p0, Labcd/dK;->v5:Z

    return-void
.end method

.method private DW(Labcd/YJ;)Labcd/_J;
    .registers 4

    iget v0, p0, Labcd/dK;->Hw:I

    const-class v1, Labcd/_J;

    invoke-virtual {p1, v0, v1}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object p1

    check-cast p1, Labcd/_J;

    return-object p1
.end method

.method private j6(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Labcd/dK;->VH:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/dK;->VH:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_33

    :cond_2a
    iget-object v0, p0, Labcd/dK;->VH:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_33
    :goto_33
    if-eqz v0, :cond_57

    :goto_35
    iget-object p1, p0, Labcd/dK;->gn:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_52

    iget-object p1, p0, Labcd/dK;->gn:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4c

    goto :goto_52

    :cond_4c
    iget-object p1, p0, Labcd/dK;->gn:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_35

    :cond_52
    :goto_52
    iget-object p1, p0, Labcd/dK;->gn:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_57
    return-void
.end method


# virtual methods
.method public DW()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/dK;->Zo:Ljava/util/Set;

    return-object v0
.end method

.method public clone()Labcd/jK;
    .registers 1

    return-object p0
.end method

.method public j6()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public j6(Labcd/YJ;)Z
    .registers 8

    invoke-virtual {p1}, Labcd/YJ;->Zo()I

    move-result v0

    iget v1, p0, Labcd/dK;->Hw:I

    invoke-virtual {p1, v1}, Labcd/YJ;->FH(I)I

    move-result v1

    invoke-virtual {p1}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Labcd/YJ;->VH()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_44

    sget-object v3, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {v3, v1}, Labcd/rE;->j6(I)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-direct {p0, v2}, Labcd/dK;->j6(Ljava/lang/String;)V

    iget-object v3, p0, Labcd/dK;->VH:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_25
    const/4 v2, 0x0

    :goto_26
    if-lt v2, v0, :cond_29

    goto :goto_44

    :cond_29
    invoke-virtual {p1, v2}, Labcd/YJ;->FH(I)I

    move-result v3

    iget v5, p0, Labcd/dK;->Hw:I

    if-eq v2, v5, :cond_41

    if-eqz v3, :cond_41

    sget-object v5, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {v5, v3}, Labcd/rE;->j6(I)Z

    move-result v3

    if-eqz v3, :cond_41

    iget-object v2, p0, Labcd/dK;->VH:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    goto :goto_44

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_44
    :goto_44
    const/4 v2, 0x1

    if-nez v1, :cond_48

    return v2

    :cond_48
    iget v1, p0, Labcd/dK;->FH:I

    invoke-virtual {p1, v1}, Labcd/YJ;->FH(I)I

    move-result v1

    invoke-direct {p0, p1}, Labcd/dK;->DW(Labcd/YJ;)Labcd/_J;

    move-result-object v3

    if-nez v1, :cond_83

    iget-boolean v1, p0, Labcd/dK;->v5:Z

    if-eqz v1, :cond_82

    invoke-virtual {v3}, Labcd/_J;->U2()Z

    move-result v1

    if-eqz v1, :cond_82

    iget-object v1, p0, Labcd/dK;->Zo:Ljava/util/Set;

    invoke-virtual {v3}, Labcd/TJ;->Zo()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_68
    if-lt v1, v0, :cond_6b

    goto :goto_7a

    :cond_6b
    iget v3, p0, Labcd/dK;->FH:I

    if-eq v1, v3, :cond_7f

    iget v3, p0, Labcd/dK;->Hw:I

    if-ne v1, v3, :cond_74

    goto :goto_7f

    :cond_74
    invoke-virtual {p1, v1}, Labcd/YJ;->FH(I)I

    move-result v3

    if-eqz v3, :cond_7f

    :goto_7a
    if-ne v1, v0, :cond_7d

    goto :goto_7e

    :cond_7d
    const/4 v4, 0x1

    :goto_7e
    return v4

    :cond_7f
    :goto_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    :cond_82
    return v2

    :cond_83
    invoke-virtual {p1}, Labcd/YJ;->u7()Z

    move-result v5

    if-eqz v5, :cond_8a

    return v2

    :cond_8a
    :goto_8a
    if-lt v4, v0, :cond_9f

    iget v0, p0, Labcd/dK;->FH:I

    const-class v1, Labcd/RC;

    invoke-virtual {p1, v0, v1}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object p1

    check-cast p1, Labcd/RC;

    invoke-virtual {p1}, Labcd/RC;->J8()Labcd/QC;

    move-result-object p1

    invoke-virtual {v3, p1, v2}, Labcd/_J;->j6(Labcd/QC;Z)Z

    move-result p1

    return p1

    :cond_9f
    iget v5, p0, Labcd/dK;->FH:I

    if-eq v4, v5, :cond_b7

    iget v5, p0, Labcd/dK;->Hw:I

    if-ne v4, v5, :cond_a8

    goto :goto_b7

    :cond_a8
    invoke-virtual {p1, v4}, Labcd/YJ;->FH(I)I

    move-result v5

    if-ne v5, v1, :cond_b6

    iget v5, p0, Labcd/dK;->FH:I

    invoke-virtual {p1, v4, v5}, Labcd/YJ;->j6(II)Z

    move-result v5

    if-nez v5, :cond_b7

    :cond_b6
    return v2

    :cond_b7
    :goto_b7
    add-int/lit8 v4, v4, 0x1

    goto :goto_8a
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "INDEX_DIFF_FILTER"

    return-object v0
.end method
