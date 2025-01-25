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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Labcd/Kt;->DW:Z

    iput-object p1, p0, Labcd/Kt;->j6:Labcd/yt;

    invoke-static {p1}, Labcd/Ht;->j6(Labcd/yt;)Labcd/Ft;

    move-result-object p1

    iput-object p1, p0, Labcd/Kt;->FH:Labcd/Ft;

    return-void
.end method

.method private DW()Labcd/Or;
    .registers 7

    iget-object v0, p0, Labcd/Kt;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Labcd/Kt;->j6:Labcd/yt;

    invoke-virtual {v1}, Labcd/yt;->Zo()Labcd/tt;

    move-result-object v1

    iget-object v2, p0, Labcd/Kt;->j6:Labcd/yt;

    invoke-virtual {v2}, Labcd/yt;->j6()V

    iget-object v2, p0, Labcd/Kt;->j6:Labcd/yt;

    invoke-virtual {v2}, Labcd/yt;->FH()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Labcd/tt;->aM()Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 v4, 0x1

    goto :goto_23

    :cond_22
    const/4 v4, 0x0

    :goto_23
    new-instance v5, Labcd/Or;

    sub-int/2addr v2, v4

    invoke-direct {v5, v2}, Labcd/Or;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/tt;

    invoke-virtual {v2}, Labcd/tt;->aM()Z

    move-result v4

    if-eqz v4, :cond_2d

    if-eq v2, v1, :cond_2d

    invoke-direct {p0, v2}, Labcd/Kt;->j6(Labcd/tt;)Labcd/Nr;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Labcd/Or;->j6(ILabcd/Nr;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_4b
    if-eqz v1, :cond_60

    invoke-virtual {v1}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_58

    goto :goto_60

    :cond_58
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exit block must have no insns when leaving SSA form"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    :goto_60
    return-object v5
.end method

.method private DW(Labcd/tt;)V
    .registers 4

    invoke-virtual {p1}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/vt;

    invoke-virtual {p1}, Labcd/vt;->v5()Labcd/es;

    move-result-object p1

    invoke-virtual {p1}, Labcd/es;->DW()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_28

    sget-object v0, Labcd/gs;->GK:Labcd/es;

    if-ne p1, v0, :cond_20

    goto :goto_28

    :cond_20
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Exit predecessor must end in valid exit statement."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_28
    :goto_28
    return-void
.end method

.method private FH()V
    .registers 7

    iget-object v0, p0, Labcd/Kt;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->gn()I

    move-result v0

    new-instance v1, Labcd/Ts;

    iget-object v2, p0, Labcd/Kt;->j6:Labcd/yt;

    invoke-virtual {v2}, Labcd/yt;->u7()I

    move-result v2

    invoke-direct {v1, v2}, Labcd/Ts;-><init>(I)V

    iget-object v2, p0, Labcd/Kt;->j6:Labcd/yt;

    invoke-virtual {v2}, Labcd/yt;->u7()I

    move-result v2

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_29

    const/4 v4, 0x1

    if-ge v3, v0, :cond_21

    sub-int v5, v2, v0

    add-int/2addr v5, v3

    goto :goto_23

    :cond_21
    sub-int v5, v3, v0

    :goto_23
    invoke-virtual {v1, v3, v5, v4}, Labcd/Ts;->j6(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_29
    iget-object v0, p0, Labcd/Kt;->j6:Labcd/yt;

    invoke-virtual {v0, v1}, Labcd/yt;->j6(Labcd/qt;)V

    return-void
.end method

.method private Hw()V
    .registers 4

    iget-object v0, p0, Labcd/Kt;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Labcd/Kt;->j6:Labcd/yt;

    new-instance v2, Labcd/Jt;

    invoke-direct {v2, p0, v0}, Labcd/Jt;-><init>(Labcd/Kt;Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Labcd/yt;->j6(ZLabcd/tt$b;)V

    return-void
.end method

.method private j6(Labcd/tt;)Labcd/Nr;
    .registers 6

    invoke-virtual {p1}, Labcd/tt;->J0()Labcd/au;

    move-result-object v0

    invoke-virtual {p1}, Labcd/tt;->tp()I

    move-result v1

    iget-object v2, p0, Labcd/Kt;->j6:Labcd/yt;

    invoke-virtual {v2}, Labcd/yt;->Zo()Labcd/tt;

    move-result-object v2

    const/4 v3, -0x1

    if-nez v2, :cond_13

    const/4 v2, -0x1

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Labcd/tt;->EQ()I

    move-result v2

    :goto_17
    invoke-virtual {v0, v2}, Labcd/au;->Hw(I)Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2b

    sget-object v0, Labcd/au;->DW:Labcd/au;

    invoke-direct {p0, p1}, Labcd/Kt;->DW(Labcd/tt;)V

    const/4 v1, -0x1

    goto :goto_4a

    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exit predecessor must have no other successors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/tt;->EQ()I

    move-result p1

    invoke-static {p1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4a
    :goto_4a
    invoke-virtual {v0}, Labcd/hu;->we()V

    new-instance v2, Labcd/Nr;

    invoke-virtual {p1}, Labcd/tt;->EQ()I

    move-result v3

    invoke-virtual {p1}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/Kt;->j6(Ljava/util/ArrayList;)Labcd/Ur;

    move-result-object p1

    invoke-direct {v2, v3, p1, v0, v1}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    return-object v2
.end method

.method private j6(Ljava/util/ArrayList;)Labcd/Ur;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Labcd/vt;",
            ">;)",
            "Labcd/Ur;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Labcd/Ur;

    invoke-direct {v1, v0}, Labcd/Ur;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1c

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/vt;

    invoke-virtual {v3}, Labcd/vt;->lg()Labcd/Tr;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Labcd/Ur;->j6(ILabcd/Tr;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1c
    invoke-virtual {v1}, Labcd/hu;->we()V

    return-object v1
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

    if-eqz v0, :cond_25

    invoke-direct {p0}, Labcd/Kt;->FH()V

    :cond_25
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

    move-result-object p0

    return-object p0
.end method

.method private v5()V
    .registers 5

    iget-object v0, p0, Labcd/Kt;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/tt;

    new-instance v3, Labcd/Kt$a;

    invoke-direct {v3, v0}, Labcd/Kt$a;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Labcd/tt;->j6(Labcd/ot$b;)V

    invoke-virtual {v2}, Labcd/tt;->j3()V

    goto :goto_a

    :cond_22
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/tt;

    invoke-virtual {v1}, Labcd/tt;->Mr()V

    goto :goto_26

    :cond_36
    return-void
.end method
