.class public Labcd/XI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/HJ;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/HJ;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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
            "Ljava/util/List",
            "<",
            "Labcd/WI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/gE;Ljava/lang/String;)V
    .registers 10

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Labcd/XI;->j6:Ljava/lang/String;

    const-string v0, "remote"

    iget-object v2, p0, Labcd/XI;->j6:Ljava/lang/String;

    const-string v3, "url"

    invoke-virtual {p1, v0, v2, v3}, Labcd/gE;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    array-length v3, v2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/XI;->DW:Ljava/util/List;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_5

    const-string v0, "remote"

    iget-object v2, p0, Labcd/XI;->j6:Ljava/lang/String;

    const-string v3, "pushurl"

    invoke-virtual {p1, v0, v2, v3}, Labcd/gE;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    array-length v3, v2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/XI;->FH:Ljava/util/List;

    array-length v3, v2

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_4

    const-string v0, "remote"

    iget-object v2, p0, Labcd/XI;->j6:Ljava/lang/String;

    const-string v3, "fetch"

    invoke-virtual {p1, v0, v2, v3}, Labcd/gE;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    array-length v3, v2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/XI;->Hw:Ljava/util/List;

    array-length v3, v2

    move v0, v1

    :goto_2
    if-lt v0, v3, :cond_3

    const-string v0, "remote"

    iget-object v2, p0, Labcd/XI;->j6:Ljava/lang/String;

    const-string v3, "push"

    invoke-virtual {p1, v0, v2, v3}, Labcd/gE;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    array-length v3, v2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/XI;->v5:Ljava/util/List;

    array-length v3, v2

    move v0, v1

    :goto_3
    if-lt v0, v3, :cond_2

    const-string v0, "remote"

    iget-object v2, p0, Labcd/XI;->j6:Ljava/lang/String;

    const-string v3, "uploadpack"

    invoke-virtual {p1, v0, v2, v3}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "git-upload-pack"

    :cond_0
    iput-object v0, p0, Labcd/XI;->Zo:Ljava/lang/String;

    const-string v0, "remote"

    iget-object v2, p0, Labcd/XI;->j6:Ljava/lang/String;

    const-string v3, "receivepack"

    invoke-virtual {p1, v0, v2, v3}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "git-receive-pack"

    :cond_1
    iput-object v0, p0, Labcd/XI;->VH:Ljava/lang/String;

    const-string v0, "remote"

    iget-object v2, p0, Labcd/XI;->j6:Ljava/lang/String;

    const-string v3, "tagopt"

    invoke-virtual {p1, v0, v2, v3}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/eJ;->j6(Ljava/lang/String;)Labcd/eJ;

    move-result-object v0

    iput-object v0, p0, Labcd/XI;->gn:Labcd/eJ;

    const-string v0, "remote"

    iget-object v2, p0, Labcd/XI;->j6:Ljava/lang/String;

    const-string v3, "mirror"

    invoke-virtual {p1, v0, v2, v3, v1}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Labcd/XI;->u7:Z

    const-string v0, "remote"

    iget-object v2, p0, Labcd/XI;->j6:Ljava/lang/String;

    const-string v3, "timeout"

    invoke-virtual {p1, v0, v2, v3, v1}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Labcd/XI;->tp:I

    return-void

    :cond_2
    aget-object v4, v2, v0

    iget-object v5, p0, Labcd/XI;->v5:Ljava/util/List;

    new-instance v6, Labcd/WI;

    invoke-direct {v6, v4}, Labcd/WI;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    aget-object v4, v2, v0

    iget-object v5, p0, Labcd/XI;->Hw:Ljava/util/List;

    new-instance v6, Labcd/WI;

    invoke-direct {v6, v4}, Labcd/WI;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    aget-object v4, v2, v0

    iget-object v5, p0, Labcd/XI;->FH:Ljava/util/List;

    new-instance v6, Labcd/HJ;

    invoke-direct {v6, v4}, Labcd/HJ;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_5
    aget-object v4, v2, v0

    iget-object v5, p0, Labcd/XI;->DW:Ljava/util/List;

    new-instance v6, Labcd/HJ;

    invoke-direct {v6, v4}, Labcd/HJ;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
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
    .registers 7

    if-ne p4, p3, :cond_0

    invoke-direct {p0, p1, p2}, Labcd/XI;->j6(Labcd/gE;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "remote"

    invoke-virtual {p0}, Labcd/XI;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2, p3}, Labcd/gE;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private j6(Labcd/gE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Labcd/XI;->j6(Labcd/gE;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "remote"

    invoke-virtual {p0}, Labcd/XI;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2, p3}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private j6(Labcd/gE;Ljava/lang/String;ZZ)V
    .registers 7

    if-ne p4, p3, :cond_0

    invoke-direct {p0, p1, p2}, Labcd/XI;->j6(Labcd/gE;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "remote"

    invoke-virtual {p0}, Labcd/XI;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2, p3}, Labcd/gE;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
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
            "Ljava/util/List",
            "<",
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
            "Ljava/util/List",
            "<",
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
            "Ljava/util/List",
            "<",
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
            "Ljava/util/List",
            "<",
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
    .registers 7

    const/4 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Labcd/XI;->gn()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "remote"

    invoke-virtual {p0}, Labcd/XI;->DW()Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {p1, v0, v2, v3, v1}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Labcd/XI;->Hw()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "remote"

    invoke-virtual {p0}, Labcd/XI;->DW()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pushurl"

    invoke-virtual {p1, v0, v2, v3, v1}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Labcd/XI;->j6()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "remote"

    invoke-virtual {p0}, Labcd/XI;->DW()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fetch"

    invoke-virtual {p1, v0, v2, v3, v1}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Labcd/XI;->FH()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "remote"

    invoke-virtual {p0}, Labcd/XI;->DW()Ljava/lang/String;

    move-result-object v2

    const-string v3, "push"

    invoke-virtual {p1, v0, v2, v3, v1}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "uploadpack"

    invoke-virtual {p0}, Labcd/XI;->u7()Ljava/lang/String;

    move-result-object v1

    const-string v2, "git-upload-pack"

    invoke-direct {p0, p1, v0, v1, v2}, Labcd/XI;->j6(Labcd/gE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "receivepack"

    invoke-virtual {p0}, Labcd/XI;->v5()Ljava/lang/String;

    move-result-object v1

    const-string v2, "git-receive-pack"

    invoke-direct {p0, p1, v0, v1, v2}, Labcd/XI;->j6(Labcd/gE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tagopt"

    invoke-virtual {p0}, Labcd/XI;->Zo()Labcd/eJ;

    move-result-object v1

    invoke-virtual {v1}, Labcd/eJ;->Hw()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Labcd/eJ;->j6:Labcd/eJ;

    invoke-virtual {v2}, Labcd/eJ;->Hw()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Labcd/XI;->j6(Labcd/gE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mirror"

    iget-boolean v1, p0, Labcd/XI;->u7:Z

    invoke-direct {p0, p1, v0, v1, v4}, Labcd/XI;->j6(Labcd/gE;Ljava/lang/String;ZZ)V

    const-string v0, "timeout"

    iget v1, p0, Labcd/XI;->tp:I

    invoke-direct {p0, p1, v0, v1, v4}, Labcd/XI;->j6(Labcd/gE;Ljava/lang/String;II)V

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/WI;

    invoke-virtual {v0}, Labcd/WI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/WI;

    invoke-virtual {v0}, Labcd/WI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/HJ;

    invoke-virtual {v0}, Labcd/HJ;->u7()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/HJ;

    invoke-virtual {v0}, Labcd/HJ;->u7()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public j6(Labcd/HJ;)Z
    .registers 3

    iget-object v0, p0, Labcd/XI;->DW:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Labcd/XI;->DW:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public j6(Labcd/WI;)Z
    .registers 3

    iget-object v0, p0, Labcd/XI;->Hw:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Labcd/XI;->Hw:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
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
