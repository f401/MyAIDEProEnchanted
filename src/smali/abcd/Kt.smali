.class public Labcd/Kt;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Kt$a;
    }
.end annotation


# instance fields
.field private final DW:Z

.field private final FH:Labcd/Ft;

.field private final j6:Labcd/yt;


# direct methods
.method private constructor <init>(Labcd/yt;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Labcd/Kt;->DW:Z

    iput-object p1, p0, Labcd/Kt;->j6:Labcd/yt;

    invoke-static {p1}, Labcd/Ht;->j6(Labcd/yt;)Labcd/Ft;

    move-result-object v0

    iput-object v0, p0, Labcd/Kt;->FH:Labcd/Ft;

    return-void
.end method

.method private DW()Labcd/Or;
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/Kt;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v0, p0, Labcd/Kt;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->Zo()Labcd/tt;

    move-result-object v3

    iget-object v0, p0, Labcd/Kt;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->j6()V

    iget-object v0, p0, Labcd/Kt;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->FH()I

    move-result v4

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Labcd/tt;->aM()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v5, Labcd/Or;

    sub-int v0, v4, v0

    invoke-direct {v5, v0}, Labcd/Or;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->aM()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eq v0, v3, :cond_0

    invoke-direct {p0, v0}, Labcd/Kt;->j6(Labcd/tt;)Labcd/Nr;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Labcd/Or;->j6(ILabcd/Nr;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    return-object v5

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exit block must have no insns when leaving SSA form"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private DW(Labcd/tt;)V
    .registers 5

    invoke-virtual {p1}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0}, Labcd/vt;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->DW()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    sget-object v1, Labcd/gs;->GK:Labcd/es;

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exit predecessor must end in valid exit statement."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private FH()V
    .registers 7

    const/4 v5, 0x1

    iget-object v0, p0, Labcd/Kt;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->gn()I

    move-result v1

    new-instance v2, Labcd/Ts;

    iget-object v0, p0, Labcd/Kt;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->u7()I

    move-result v0

    invoke-direct {v2, v0}, Labcd/Ts;-><init>(I)V

    iget-object v0, p0, Labcd/Kt;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->u7()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    if-ge v0, v1, :cond_0

    sub-int v4, v3, v1

    add-int/2addr v4, v0

    invoke-virtual {v2, v0, v4, v5}, Labcd/Ts;->j6(III)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sub-int v4, v0, v1

    invoke-virtual {v2, v0, v4, v5}, Labcd/Ts;->j6(III)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Labcd/Kt;->j6:Labcd/yt;

    invoke-virtual {v0, v2}, Labcd/yt;->j6(Labcd/qt;)V

    return-void
.end method

.method private Hw()V
    .registers 5

    iget-object v0, p0, Labcd/Kt;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Labcd/Kt;->j6:Labcd/yt;

    const/4 v2, 0x0

    new-instance v3, Labcd/Jt;

    invoke-direct {v3, p0, v0}, Labcd/Jt;-><init>(Labcd/Kt;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Labcd/yt;->j6(ZLabcd/tt$b;)V

    return-void
.end method

.method private j6(Labcd/tt;)Labcd/Nr;
    .registers 7

    const/4 v1, -0x1

    invoke-virtual {p1}, Labcd/tt;->J0()Labcd/au;

    move-result-object v2

    invoke-virtual {p1}, Labcd/tt;->tp()I

    move-result v3

    iget-object v0, p0, Labcd/Kt;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->Zo()Labcd/tt;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Labcd/au;->Hw(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Labcd/au;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    sget-object v0, Labcd/au;->DW:Labcd/au;

    invoke-direct {p0, p1}, Labcd/Kt;->DW(Labcd/tt;)V

    :goto_1
    invoke-virtual {v0}, Labcd/hu;->we()V

    new-instance v2, Labcd/Nr;

    invoke-virtual {p1}, Labcd/tt;->EQ()I

    move-result v3

    invoke-virtual {p1}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Labcd/Kt;->j6(Ljava/util/ArrayList;)Labcd/Ur;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0, v1}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    return-object v2

    :cond_0
    invoke-virtual {v0}, Labcd/tt;->EQ()I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exit predecessor must have no other successors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/tt;->EQ()I

    move-result v1

    invoke-static {v1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v0, v2

    move v1, v3

    goto :goto_1
.end method

.method private j6(Ljava/util/ArrayList;)Labcd/Ur;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Labcd/vt;",
            ">;)",
            "Labcd/Ur;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Labcd/Ur;

    invoke-direct {v3, v2}, Labcd/Ur;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0}, Labcd/vt;->lg()Labcd/Tr;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Labcd/Ur;->j6(ILabcd/Tr;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Labcd/hu;->we()V

    return-object v3
.end method

.method private j6()Labcd/fs;
    .registers 6

    new-instance v0, Labcd/Dt;

    iget-object v1, p0, Labcd/Kt;->j6:Labcd/yt;

    iget-object v2, p0, Labcd/Kt;->FH:Labcd/Ft;

    iget-boolean v3, p0, Labcd/Kt;->DW:Z

    invoke-direct {v0, v1, v2, v3}, Labcd/Dt;-><init>(Labcd/yt;Labcd/Ft;Z)V

    invoke-virtual {v0}, Labcd/Dt;->j6()Labcd/qt;

    move-result-object v1

    iget-object v2, p0, Labcd/Kt;->j6:Labcd/yt;

    invoke-virtual {v2}, Labcd/yt;->QX()V

    iget-object v2, p0, Labcd/Kt;->j6:Labcd/yt;

    invoke-virtual {v2, v1}, Labcd/yt;->j6(Labcd/qt;)V

    invoke-direct {p0}, Labcd/Kt;->v5()V

    invoke-virtual {v0}, Labcd/Dt;->DW()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Labcd/Kt;->FH()V

    :cond_0
    invoke-direct {p0}, Labcd/Kt;->Hw()V

    invoke-direct {p0}, Labcd/Kt;->DW()Labcd/Or;

    move-result-object v0

    iget-object v1, p0, Labcd/Kt;->j6:Labcd/yt;

    new-instance v2, Labcd/Et;

    new-instance v3, Labcd/fs;

    invoke-virtual {v1}, Labcd/yt;->v5()I

    move-result v4

    invoke-virtual {v1, v4}, Labcd/yt;->j6(I)I

    move-result v1

    invoke-direct {v3, v0, v1}, Labcd/fs;-><init>(Labcd/Or;I)V

    invoke-direct {v2, v3}, Labcd/Et;-><init>(Labcd/fs;)V

    invoke-virtual {v2}, Labcd/Et;->j6()Labcd/fs;

    move-result-object v0

    return-object v0
.end method

.method public static j6(Labcd/yt;Z)Labcd/fs;
    .registers 3

    new-instance v0, Labcd/Kt;

    invoke-direct {v0, p0, p1}, Labcd/Kt;-><init>(Labcd/yt;Z)V

    invoke-direct {v0}, Labcd/Kt;->j6()Labcd/fs;

    move-result-object v0

    return-object v0
.end method

.method private v5()V
    .registers 5

    iget-object v0, p0, Labcd/Kt;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    new-instance v3, Labcd/Kt$a;

    invoke-direct {v3, v1}, Labcd/Kt$a;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Labcd/tt;->j6(Labcd/ot$b;)V

    invoke-virtual {v0}, Labcd/tt;->j3()V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/tt;

    invoke-virtual {v0}, Labcd/tt;->Mr()V

    goto :goto_1

    :cond_1
    return-void
.end method
