.class public Labcd/dK;
.super Labcd/jK;


# instance fields
.field private final FH:I

.field private final Hw:I

.field private final VH:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Zo:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final gn:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
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

    move-result-object v0

    check-cast v0, Labcd/_J;

    return-object v0
.end method

.method private j6(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Labcd/dK;->VH:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/dK;->VH:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    if-eqz v1, :cond_2

    :goto_1
    iget-object v0, p0, Labcd/dK;->gn:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/dK;->gn:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Labcd/dK;->gn:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Labcd/dK;->VH:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Labcd/dK;->gn:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public DW()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
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
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Labcd/YJ;->Zo()I

    move-result v3

    iget v2, p0, Labcd/dK;->Hw:I

    invoke-virtual {p1, v2}, Labcd/YJ;->FH(I)I

    move-result v4

    invoke-virtual {p1}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Labcd/YJ;->VH()Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {v5, v4}, Labcd/rE;->j6(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v2}, Labcd/dK;->j6(Ljava/lang/String;)V

    iget-object v5, p0, Labcd/dK;->VH:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_0
    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_3

    :cond_1
    :goto_1
    if-nez v4, :cond_5

    :cond_2
    :goto_2
    return v1

    :cond_3
    invoke-virtual {p1, v2}, Labcd/YJ;->FH(I)I

    move-result v5

    iget v6, p0, Labcd/dK;->Hw:I

    if-eq v2, v6, :cond_4

    if-eqz v5, :cond_4

    sget-object v6, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {v6, v5}, Labcd/rE;->j6(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v2, p0, Labcd/dK;->VH:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget v2, p0, Labcd/dK;->FH:I

    invoke-virtual {p1, v2}, Labcd/YJ;->FH(I)I

    move-result v2

    invoke-direct {p0, p1}, Labcd/dK;->DW(Labcd/YJ;)Labcd/_J;

    move-result-object v4

    if-nez v2, :cond_9

    iget-boolean v2, p0, Labcd/dK;->v5:Z

    if-eqz v2, :cond_2

    invoke-virtual {v4}, Labcd/_J;->U2()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Labcd/dK;->Zo:Ljava/util/Set;

    invoke-virtual {v4}, Labcd/TJ;->Zo()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v2, v0

    :goto_3
    if-lt v2, v3, :cond_6

    :goto_4
    if-ne v2, v3, :cond_d

    :goto_5
    move v1, v0

    goto :goto_2

    :cond_6
    iget v4, p0, Labcd/dK;->FH:I

    if-eq v2, v4, :cond_7

    iget v4, p0, Labcd/dK;->Hw:I

    if-ne v2, v4, :cond_8

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p1, v2}, Labcd/YJ;->FH(I)I

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Labcd/YJ;->u7()Z

    move-result v5

    if-nez v5, :cond_2

    :goto_6
    if-lt v0, v3, :cond_a

    iget v0, p0, Labcd/dK;->FH:I

    const-class v2, Labcd/RC;

    invoke-virtual {p1, v0, v2}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v0

    check-cast v0, Labcd/RC;

    invoke-virtual {v0}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Labcd/_J;->j6(Labcd/QC;Z)Z

    move-result v1

    goto :goto_2

    :cond_a
    iget v5, p0, Labcd/dK;->FH:I

    if-eq v0, v5, :cond_b

    iget v5, p0, Labcd/dK;->Hw:I

    if-ne v0, v5, :cond_c

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_c
    invoke-virtual {p1, v0}, Labcd/YJ;->FH(I)I

    move-result v5

    if-ne v5, v2, :cond_2

    iget v5, p0, Labcd/dK;->FH:I

    invoke-virtual {p1, v0, v5}, Labcd/YJ;->j6(II)Z

    move-result v5

    if-nez v5, :cond_b

    goto/16 :goto_2

    :cond_d
    move v0, v1

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "INDEX_DIFF_FILTER"

    return-object v0
.end method
