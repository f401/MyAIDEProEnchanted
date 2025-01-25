.class public Labcd/XI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/HJ;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/HJ;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/WI;",
            ">;"
        }
    .end annotation
.end field

.field private VH:Ljava/lang/String;

.field private Zo:Ljava/lang/String;

.field private gn:Labcd/eJ;

.field private j6:Ljava/lang/String;

.field private tp:I

.field private u7:Z

.field private v5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/WI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/gE;Ljava/lang/String;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Labcd/XI;->j6:Ljava/lang/String;

    const-string v0, "url"

    const-string v1, "remote"

    invoke-virtual {p1, v1, p2, v0}, Labcd/gE;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/XI;->DW:Ljava/util/List;

    array-length v0, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_18
    if-lt v3, v0, :cond_c3

    iget-object p2, p0, Labcd/XI;->j6:Ljava/lang/String;

    const-string v0, "pushurl"

    invoke-virtual {p1, v1, p2, v0}, Labcd/gE;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance p2, Ljava/util/ArrayList;

    array-length v0, v4

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Labcd/XI;->FH:Ljava/util/List;

    array-length v5, v4

    const/4 p2, 0x0

    :goto_2c
    if-lt p2, v5, :cond_b3

    iget-object p2, p0, Labcd/XI;->j6:Ljava/lang/String;

    const-string v0, "fetch"

    invoke-virtual {p1, v1, p2, v0}, Labcd/gE;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance p2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {p2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Labcd/XI;->Hw:Ljava/util/List;

    array-length v3, v0

    const/4 p2, 0x0

    :goto_40
    if-lt p2, v3, :cond_a4

    iget-object p2, p0, Labcd/XI;->j6:Ljava/lang/String;

    const-string v0, "push"

    invoke-virtual {p1, v1, p2, v0}, Labcd/gE;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance p2, Ljava/util/ArrayList;

    array-length v0, v4

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Labcd/XI;->v5:Ljava/util/List;

    array-length v5, v4

    const/4 p2, 0x0

    :goto_54
    if-lt p2, v5, :cond_95

    iget-object p2, p0, Labcd/XI;->j6:Ljava/lang/String;

    const-string v0, "uploadpack"

    invoke-virtual {p1, v1, p2, v0}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_62

    const-string p2, "git-upload-pack"

    :cond_62
    iput-object p2, p0, Labcd/XI;->Zo:Ljava/lang/String;

    iget-object p2, p0, Labcd/XI;->j6:Ljava/lang/String;

    const-string v0, "receivepack"

    invoke-virtual {p1, v1, p2, v0}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_70

    const-string p2, "git-receive-pack"

    :cond_70
    iput-object p2, p0, Labcd/XI;->VH:Ljava/lang/String;

    iget-object p2, p0, Labcd/XI;->j6:Ljava/lang/String;

    const-string v0, "tagopt"

    invoke-virtual {p1, v1, p2, v0}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Labcd/eJ;->j6(Ljava/lang/String;)Labcd/eJ;

    move-result-object p2

    iput-object p2, p0, Labcd/XI;->gn:Labcd/eJ;

    iget-object p2, p0, Labcd/XI;->j6:Ljava/lang/String;

    const-string v0, "mirror"

    invoke-virtual {p1, v1, p2, v0, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Labcd/XI;->u7:Z

    iget-object p2, p0, Labcd/XI;->j6:Ljava/lang/String;

    const-string v0, "timeout"

    invoke-virtual {p1, v1, p2, v0, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Labcd/XI;->tp:I

    return-void

    :cond_95
    aget-object v0, v4, p2

    iget-object v3, p0, Labcd/XI;->v5:Ljava/util/List;

    new-instance v6, Labcd/WI;

    invoke-direct {v6, v0}, Labcd/WI;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_54

    :cond_a4
    aget-object v4, v0, p2

    iget-object v5, p0, Labcd/XI;->Hw:Ljava/util/List;

    new-instance v6, Labcd/WI;

    invoke-direct {v6, v4}, Labcd/WI;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_40

    :cond_b3
    aget-object v0, v4, p2

    iget-object v3, p0, Labcd/XI;->FH:Ljava/util/List;

    new-instance v6, Labcd/HJ;

    invoke-direct {v6, v0}, Labcd/HJ;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_2c

    :cond_c3
    aget-object v4, p2, v3

    iget-object v5, p0, Labcd/XI;->DW:Ljava/util/List;

    new-instance v6, Labcd/HJ;

    invoke-direct {v6, v4}, Labcd/HJ;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_18
.end method

.method private j6(Labcd/gE;Ljava/lang/String;)V
    .registers 5

    const-string v0, "remote"

    invoke-virtual {p0}, Labcd/XI;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2}, Labcd/gE;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private j6(Labcd/gE;Ljava/lang/String;II)V
    .registers 6

    if-ne p4, p3, :cond_6

    invoke-direct {p0, p1, p2}, Labcd/XI;->j6(Labcd/gE;Ljava/lang/String;)V

    goto :goto_f

    :cond_6
    const-string p4, "remote"

    invoke-virtual {p0}, Labcd/XI;->DW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, v0, p2, p3}, Labcd/gE;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_f
    return-void
.end method

.method private j6(Labcd/gE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_a

    invoke-direct {p0, p1, p2}, Labcd/XI;->j6(Labcd/gE;Ljava/lang/String;)V

    goto :goto_13

    :cond_a
    const-string p4, "remote"

    invoke-virtual {p0}, Labcd/XI;->DW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, v0, p2, p3}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void
.end method

.method private j6(Labcd/gE;Ljava/lang/String;ZZ)V
    .registers 6

    if-ne p4, p3, :cond_6

    invoke-direct {p0, p1, p2}, Labcd/XI;->j6(Labcd/gE;Ljava/lang/String;)V

    goto :goto_f

    :cond_6
    const-string p4, "remote"

    invoke-virtual {p0}, Labcd/XI;->DW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, v0, p2, p3}, Labcd/gE;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_f
    return-void
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/XI;->j6:Ljava/lang/String;

    return-object v0
.end method

.method public FH()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Labcd/WI;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/XI;->v5:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public Hw()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Labcd/HJ;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/XI;->FH:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public VH()I
    .registers 2

    iget v0, p0, Labcd/XI;->tp:I

    return v0
.end method

.method public Zo()Labcd/eJ;
    .registers 2

    iget-object v0, p0, Labcd/XI;->gn:Labcd/eJ;

    return-object v0
.end method

.method public gn()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Labcd/HJ;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/XI;->DW:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j6()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Labcd/WI;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/XI;->Hw:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/gE;)V
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Labcd/XI;->gn()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d3

    invoke-virtual {p0}, Labcd/XI;->DW()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    const-string v3, "remote"

    invoke-virtual {p1, v3, v1, v2, v0}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Labcd/XI;->Hw()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_c4

    invoke-virtual {p0}, Labcd/XI;->DW()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pushurl"

    invoke-virtual {p1, v3, v1, v2, v0}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Labcd/XI;->j6()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b6

    invoke-virtual {p0}, Labcd/XI;->DW()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fetch"

    invoke-virtual {p1, v3, v1, v2, v0}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Labcd/XI;->FH()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_60
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_a8

    invoke-virtual {p0}, Labcd/XI;->DW()Ljava/lang/String;

    move-result-object v1

    const-string v2, "push"

    invoke-virtual {p1, v3, v1, v2, v0}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0}, Labcd/XI;->u7()Ljava/lang/String;

    move-result-object v0

    const-string v1, "git-upload-pack"

    const-string v2, "uploadpack"

    invoke-direct {p0, p1, v2, v0, v1}, Labcd/XI;->j6(Labcd/gE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/XI;->v5()Ljava/lang/String;

    move-result-object v0

    const-string v1, "git-receive-pack"

    const-string v2, "receivepack"

    invoke-direct {p0, p1, v2, v0, v1}, Labcd/XI;->j6(Labcd/gE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/XI;->Zo()Labcd/eJ;

    move-result-object v0

    invoke-virtual {v0}, Labcd/eJ;->Hw()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Labcd/eJ;->j6:Labcd/eJ;

    invoke-virtual {v1}, Labcd/eJ;->Hw()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tagopt"

    invoke-direct {p0, p1, v2, v0, v1}, Labcd/XI;->j6(Labcd/gE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mirror"

    iget-boolean v1, p0, Labcd/XI;->u7:Z

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Labcd/XI;->j6(Labcd/gE;Ljava/lang/String;ZZ)V

    const-string v0, "timeout"

    iget v1, p0, Labcd/XI;->tp:I

    invoke-direct {p0, p1, v0, v1, v2}, Labcd/XI;->j6(Labcd/gE;Ljava/lang/String;II)V

    return-void

    :cond_a8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/WI;

    invoke-virtual {v1}, Labcd/WI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_60

    :cond_b6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/WI;

    invoke-virtual {v2}, Labcd/WI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_c4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/HJ;

    invoke-virtual {v1}, Labcd/HJ;->u7()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2c

    :cond_d3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/HJ;

    invoke-virtual {v2}, Labcd/HJ;->u7()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10
.end method

.method public j6(Labcd/HJ;)Z
    .registers 3

    iget-object v0, p0, Labcd/XI;->DW:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    iget-object v0, p0, Labcd/XI;->DW:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public j6(Labcd/WI;)Z
    .registers 3

    iget-object v0, p0, Labcd/XI;->Hw:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    iget-object v0, p0, Labcd/XI;->Hw:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public u7()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/XI;->Zo:Ljava/lang/String;

    return-object v0
.end method

.method public v5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/XI;->VH:Ljava/lang/String;

    return-object v0
.end method
