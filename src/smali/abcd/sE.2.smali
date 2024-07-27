.class public Labcd/sE;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/sE$a;
    }
.end annotation


# instance fields
.field private final DW:Labcd/mG;

.field private EQ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Labcd/jK;

.field private final Hw:Labcd/_J;

.field private J0:Labcd/KC;

.field private J8:Labcd/dK;

.field private VH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gn:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Labcd/UE;

.field private tp:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u7:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private we:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/UE;Ljava/lang/String;Labcd/_J;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Labcd/sE;->FH:Labcd/jK;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labcd/sE;->v5:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labcd/sE;->Zo:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labcd/sE;->VH:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labcd/sE;->gn:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labcd/sE;->u7:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labcd/sE;->tp:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labcd/sE;->EQ:Ljava/util/Set;

    iput-object p1, p0, Labcd/sE;->j6:Labcd/UE;

    invoke-virtual {p1, p2}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Labcd/qG;

    invoke-direct {v1, p1}, Labcd/qG;-><init>(Labcd/UE;)V

    invoke-virtual {v1, v0}, Labcd/qG;->gn(Labcd/YD;)Labcd/mG;

    move-result-object v0

    iput-object v0, p0, Labcd/sE;->DW:Labcd/mG;

    :goto_0
    iput-object p3, p0, Labcd/sE;->Hw:Labcd/_J;

    return-void

    :cond_0
    iput-object v1, p0, Labcd/sE;->DW:Labcd/mG;

    goto :goto_0
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

    iget-object v0, p0, Labcd/sE;->v5:Ljava/util/Set;

    return-object v0
.end method

.method public FH()Ljava/util/Set;
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

    iget-object v0, p0, Labcd/sE;->Zo:Ljava/util/Set;

    return-object v0
.end method

.method public Hw()Ljava/util/Set;
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

    iget-object v0, p0, Labcd/sE;->EQ:Ljava/util/Set;

    return-object v0
.end method

.method public VH()Ljava/util/Set;
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

    iget-object v0, p0, Labcd/sE;->VH:Ljava/util/Set;

    return-object v0
.end method

.method public Zo()Ljava/util/Set;
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

    iget-object v0, p0, Labcd/sE;->u7:Ljava/util/Set;

    return-object v0
.end method

.method public gn()Ljava/util/Set;
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

    iget-object v0, p0, Labcd/sE;->tp:Ljava/util/Set;

    return-object v0
.end method

.method public j6()Z
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p0, v0, v2, v2, v1}, Labcd/sE;->j6(Labcd/LE;IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public j6(Labcd/LE;IILjava/lang/String;)Z
    .registers 13

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Labcd/sE;->j6:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->U2()Labcd/KC;

    move-result-object v0

    iput-object v0, p0, Labcd/sE;->J0:Labcd/KC;

    new-instance v4, Labcd/YJ;

    iget-object v0, p0, Labcd/sE;->j6:Labcd/UE;

    invoke-direct {v4, v0}, Labcd/YJ;-><init>(Labcd/UE;)V

    invoke-virtual {v4, v3}, Labcd/YJ;->j6(Z)V

    iget-object v0, p0, Labcd/sE;->DW:Labcd/mG;

    if-eqz v0, :cond_5

    invoke-virtual {v4, v0}, Labcd/YJ;->j6(Labcd/YD;)I

    :goto_0
    new-instance v0, Labcd/RC;

    iget-object v1, p0, Labcd/sE;->J0:Labcd/KC;

    invoke-direct {v0, v1}, Labcd/RC;-><init>(Labcd/KC;)V

    invoke-virtual {v4, v0}, Labcd/YJ;->j6(Labcd/TJ;)I

    iget-object v0, p0, Labcd/sE;->Hw:Labcd/_J;

    invoke-virtual {v4, v0}, Labcd/YJ;->j6(Labcd/TJ;)I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    iget-object v1, p0, Labcd/sE;->J0:Labcd/KC;

    invoke-virtual {v1}, Labcd/KC;->v5()I

    move-result p3

    :cond_0
    mul-int/lit8 v1, p3, 0xa

    div-int/lit8 v1, v1, 0x9

    mul-int/lit8 v5, p2, 0xa

    div-int/lit8 v5, v5, 0x9

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {p1, p4, v1}, Labcd/LE;->j6(Ljava/lang/String;I)V

    new-instance v5, Labcd/sE$a;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v1, v6}, Labcd/sE$a;-><init>(Labcd/LE;ILabcd/sE$a;)V

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Labcd/sE;->FH:Labcd/jK;

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v1, Labcd/iK;

    invoke-direct {v1, v3}, Labcd/iK;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v1, Labcd/dK;

    invoke-direct {v1, v3, v7}, Labcd/dK;-><init>(II)V

    iput-object v1, p0, Labcd/sE;->J8:Labcd/dK;

    iget-object v1, p0, Labcd/sE;->J8:Labcd/dK;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Labcd/cK;->j6(Ljava/util/Collection;)Labcd/jK;

    move-result-object v0

    invoke-virtual {v4, v0}, Labcd/YJ;->j6(Labcd/jK;)V

    :cond_3
    :goto_1
    invoke-virtual {v4}, Labcd/YJ;->EQ()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p1, :cond_4

    invoke-interface {p1}, Labcd/LE;->j6()V

    :cond_4
    iget-object v0, p0, Labcd/sE;->J8:Labcd/dK;

    invoke-virtual {v0}, Labcd/dK;->DW()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Labcd/sE;->we:Ljava/util/Set;

    iget-object v0, p0, Labcd/sE;->v5:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Labcd/sE;->Zo:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Labcd/sE;->VH:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Labcd/sE;->gn:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Labcd/sE;->u7:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Labcd/sE;->tp:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    :goto_2
    return v0

    :cond_5
    new-instance v0, Labcd/VJ;

    invoke-direct {v0}, Labcd/VJ;-><init>()V

    invoke-virtual {v4, v0}, Labcd/YJ;->j6(Labcd/TJ;)I

    goto/16 :goto_0

    :cond_6
    move v0, v3

    goto :goto_2

    :cond_7
    const-class v0, Labcd/TJ;

    invoke-virtual {v4, v2, v0}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v5

    const-class v0, Labcd/RC;

    invoke-virtual {v4, v3, v0}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v0

    check-cast v0, Labcd/RC;

    const-class v1, Labcd/_J;

    invoke-virtual {v4, v7, v1}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v1

    check-cast v1, Labcd/_J;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Labcd/QC;->VH()I

    move-result v6

    if-lez v6, :cond_8

    iget-object v0, p0, Labcd/sE;->EQ:Ljava/util/Set;

    invoke-virtual {v4}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    if-eqz v5, :cond_c

    if-eqz v0, :cond_b

    invoke-virtual {v5, v0}, Labcd/TJ;->j6(Labcd/TJ;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v5}, Labcd/TJ;->VH()I

    move-result v5

    invoke-virtual {v0}, Labcd/TJ;->VH()I

    move-result v6

    if-eq v5, v6, :cond_a

    :cond_9
    iget-object v5, p0, Labcd/sE;->Zo:Ljava/util/Set;

    invoke-virtual {v4}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_3
    if-eqz v0, :cond_3

    if-nez v1, :cond_e

    iget-object v0, p0, Labcd/sE;->gn:Ljava/util/Set;

    invoke-virtual {v4}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    iget-object v5, p0, Labcd/sE;->VH:Ljava/util/Set;

    invoke-virtual {v4}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_a

    iget-object v5, p0, Labcd/sE;->tp:Ljava/util/Set;

    invoke-virtual {v4}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    if-eqz v0, :cond_d

    iget-object v5, p0, Labcd/sE;->v5:Ljava/util/Set;

    invoke-virtual {v4}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_d
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Labcd/_J;->U2()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Labcd/sE;->tp:Ljava/util/Set;

    invoke-virtual {v4}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_e
    invoke-virtual {v0}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Labcd/_J;->j6(Labcd/QC;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Labcd/sE;->u7:Ljava/util/Set;

    invoke-virtual {v4}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public v5()Ljava/util/Set;
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

    iget-object v0, p0, Labcd/sE;->gn:Ljava/util/Set;

    return-object v0
.end method
