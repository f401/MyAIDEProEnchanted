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
            "Ljava/util/Set<",
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
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gn:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Labcd/UE;

.field private tp:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u7:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private we:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/UE;Ljava/lang/String;Labcd/_J;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/sE;->FH:Labcd/jK;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Labcd/sE;->v5:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Labcd/sE;->Zo:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Labcd/sE;->VH:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Labcd/sE;->gn:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Labcd/sE;->u7:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Labcd/sE;->tp:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Labcd/sE;->EQ:Ljava/util/Set;

    iput-object p1, p0, Labcd/sE;->j6:Labcd/UE;

    invoke-virtual {p1, p2}, Labcd/UE;->FH(Ljava/lang/String;)Labcd/yE;

    move-result-object p2

    if-eqz p2, :cond_4b

    new-instance v0, Labcd/qG;

    invoke-direct {v0, p1}, Labcd/qG;-><init>(Labcd/UE;)V

    invoke-virtual {v0, p2}, Labcd/qG;->gn(Labcd/YD;)Labcd/mG;

    move-result-object p1

    iput-object p1, p0, Labcd/sE;->DW:Labcd/mG;

    goto :goto_4d

    :cond_4b
    iput-object v0, p0, Labcd/sE;->DW:Labcd/mG;

    :goto_4d
    iput-object p3, p0, Labcd/sE;->Hw:Labcd/_J;

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

    iget-object v0, p0, Labcd/sE;->v5:Ljava/util/Set;

    return-object v0
.end method

.method public FH()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
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
            "Ljava/util/Set<",
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
            "Ljava/util/Set<",
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
            "Ljava/util/Set<",
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
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/sE;->tp:Ljava/util/Set;

    return-object v0
.end method

.method public j6()Z
    .registers 4

    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v0, v1}, Labcd/sE;->j6(Labcd/LE;IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public j6(Labcd/LE;IILjava/lang/String;)Z
    .registers 9

    iget-object v0, p0, Labcd/sE;->j6:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->U2()Labcd/KC;

    move-result-object v0

    iput-object v0, p0, Labcd/sE;->J0:Labcd/KC;

    new-instance v0, Labcd/YJ;

    iget-object v1, p0, Labcd/sE;->j6:Labcd/UE;

    invoke-direct {v0, v1}, Labcd/YJ;-><init>(Labcd/UE;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Labcd/YJ;->j6(Z)V

    iget-object v2, p0, Labcd/sE;->DW:Labcd/mG;

    if-eqz v2, :cond_1b

    invoke-virtual {v0, v2}, Labcd/YJ;->j6(Labcd/YD;)I

    goto :goto_23

    :cond_1b
    new-instance v2, Labcd/VJ;

    invoke-direct {v2}, Labcd/VJ;-><init>()V

    invoke-virtual {v0, v2}, Labcd/YJ;->j6(Labcd/TJ;)I

    :goto_23
    new-instance v2, Labcd/RC;

    iget-object v3, p0, Labcd/sE;->J0:Labcd/KC;

    invoke-direct {v2, v3}, Labcd/RC;-><init>(Labcd/KC;)V

    invoke-virtual {v0, v2}, Labcd/YJ;->j6(Labcd/TJ;)I

    iget-object v2, p0, Labcd/sE;->Hw:Labcd/_J;

    invoke-virtual {v0, v2}, Labcd/YJ;->j6(Labcd/TJ;)I

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p1, :cond_5a

    if-nez p3, :cond_42

    iget-object p3, p0, Labcd/sE;->J0:Labcd/KC;

    invoke-virtual {p3}, Labcd/KC;->v5()I

    move-result p3

    :cond_42
    mul-int/lit8 p3, p3, 0xa

    div-int/lit8 p3, p3, 0x9

    mul-int/lit8 p2, p2, 0xa

    div-int/lit8 p2, p2, 0x9

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p1, p4, p2}, Labcd/LE;->j6(Ljava/lang/String;I)V

    new-instance p3, Labcd/sE$a;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p2, p4}, Labcd/sE$a;-><init>(Labcd/LE;ILabcd/sE$a;)V

    invoke-interface {v2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5a
    iget-object p2, p0, Labcd/sE;->FH:Labcd/jK;

    if-eqz p2, :cond_61

    invoke-interface {v2, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_61
    new-instance p2, Labcd/iK;

    invoke-direct {p2, v1}, Labcd/iK;-><init>(I)V

    invoke-interface {v2, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance p2, Labcd/dK;

    const/4 p3, 0x2

    invoke-direct {p2, v1, p3}, Labcd/dK;-><init>(II)V

    iput-object p2, p0, Labcd/sE;->J8:Labcd/dK;

    invoke-interface {v2, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Labcd/cK;->j6(Ljava/util/Collection;)Labcd/jK;

    move-result-object p2

    invoke-virtual {v0, p2}, Labcd/YJ;->j6(Labcd/jK;)V

    :cond_7b
    :goto_7b
    invoke-virtual {v0}, Labcd/YJ;->EQ()Z

    move-result p2

    const/4 p4, 0x0

    if-nez p2, :cond_c1

    if-eqz p1, :cond_87

    invoke-interface {p1}, Labcd/LE;->j6()V

    :cond_87
    iget-object p1, p0, Labcd/sE;->J8:Labcd/dK;

    invoke-virtual {p1}, Labcd/dK;->DW()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Labcd/sE;->we:Ljava/util/Set;

    iget-object p1, p0, Labcd/sE;->v5:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c0

    iget-object p1, p0, Labcd/sE;->Zo:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c0

    iget-object p1, p0, Labcd/sE;->VH:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c0

    iget-object p1, p0, Labcd/sE;->gn:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c0

    iget-object p1, p0, Labcd/sE;->u7:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c0

    iget-object p1, p0, Labcd/sE;->tp:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c0

    return p4

    :cond_c0
    return v1

    :cond_c1
    const-class p2, Labcd/TJ;

    invoke-virtual {v0, p4, p2}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object p2

    const-class p4, Labcd/RC;

    invoke-virtual {v0, v1, p4}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object p4

    check-cast p4, Labcd/RC;

    const-class v2, Labcd/_J;

    invoke-virtual {v0, p3, v2}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v2

    check-cast v2, Labcd/_J;

    if-eqz p4, :cond_ef

    invoke-virtual {p4}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v3

    if-eqz v3, :cond_ef

    invoke-virtual {v3}, Labcd/QC;->VH()I

    move-result v3

    if-lez v3, :cond_ef

    iget-object p2, p0, Labcd/sE;->EQ:Ljava/util/Set;

    :goto_e7
    invoke-virtual {v0}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    :cond_ef
    if-eqz p2, :cond_114

    if-eqz p4, :cond_106

    invoke-virtual {p2, p4}, Labcd/TJ;->j6(Labcd/TJ;)Z

    move-result v3

    if-eqz v3, :cond_103

    invoke-virtual {p2}, Labcd/TJ;->VH()I

    move-result p2

    invoke-virtual {p4}, Labcd/TJ;->VH()I

    move-result v3

    if-eq p2, v3, :cond_129

    :cond_103
    iget-object p2, p0, Labcd/sE;->Zo:Ljava/util/Set;

    goto :goto_118

    :cond_106
    iget-object p2, p0, Labcd/sE;->VH:Ljava/util/Set;

    invoke-virtual {v0}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_129

    :goto_111
    iget-object p2, p0, Labcd/sE;->tp:Ljava/util/Set;

    goto :goto_118

    :cond_114
    if-eqz p4, :cond_120

    iget-object p2, p0, Labcd/sE;->v5:Ljava/util/Set;

    :goto_118
    invoke-virtual {v0}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_129

    :cond_120
    if-eqz v2, :cond_129

    invoke-virtual {v2}, Labcd/_J;->U2()Z

    move-result p2

    if-nez p2, :cond_129

    goto :goto_111

    :cond_129
    :goto_129
    if-eqz p4, :cond_7b

    if-nez v2, :cond_130

    iget-object p2, p0, Labcd/sE;->gn:Ljava/util/Set;

    goto :goto_e7

    :cond_130
    invoke-virtual {p4}, Labcd/RC;->J8()Labcd/QC;

    move-result-object p2

    invoke-virtual {v2, p2, v1}, Labcd/_J;->j6(Labcd/QC;Z)Z

    move-result p2

    if-eqz p2, :cond_7b

    iget-object p2, p0, Labcd/sE;->u7:Ljava/util/Set;

    goto :goto_e7
.end method

.method public v5()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/sE;->gn:Ljava/util/Set;

    return-object v0
.end method
