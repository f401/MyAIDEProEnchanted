.class public Labcd/Sm;
.super Labcd/Rm;


# instance fields
.field private final DW:Labcd/Vm;

.field private final FH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/Rm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, v0}, Labcd/Rm;-><init>(Z)V

    new-instance v0, Labcd/Vm;

    invoke-direct {v0, p1}, Labcd/Vm;-><init>(I)V

    iput-object v0, p0, Labcd/Sm;->DW:Labcd/Vm;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Labcd/Sm;)V
    .registers 6

    invoke-virtual {p1}, Labcd/Sm;->er()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-direct {p0, v0}, Labcd/Rm;-><init>(Z)V

    iget-object v0, p1, Labcd/Sm;->DW:Labcd/Vm;

    invoke-virtual {v0}, Labcd/Vm;->lg()Labcd/Vm;

    move-result-object v0

    iput-object v0, p0, Labcd/Sm;->DW:Labcd/Vm;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    iget-object v0, p1, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_28
    if-ge v1, v0, :cond_47

    iget-object v2, p1, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Rm;

    if-nez v2, :cond_3b

    iget-object v2, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_44

    :cond_3b
    iget-object v3, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2}, Labcd/Rm;->lg()Labcd/Rm;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_47
    return-void
.end method

.method public constructor <init>(Labcd/Vm;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Vm;",
            "Ljava/util/ArrayList<",
            "Labcd/Rm;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Labcd/Vm;->er()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-direct {p0, v0}, Labcd/Rm;-><init>(Z)V

    iput-object p1, p0, Labcd/Sm;->DW:Labcd/Vm;

    iput-object p2, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    return-void
.end method

.method private FH(I)Labcd/Rm;
    .registers 3

    iget-object v0, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    iget-object v0, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/Rm;

    return-object p1
.end method

.method private j6(Labcd/Sm;)Labcd/Sm;
    .registers 15

    iget-object v0, p0, Labcd/Sm;->DW:Labcd/Vm;

    invoke-virtual {p1}, Labcd/Sm;->rN()Labcd/Vm;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Vm;->j6(Labcd/Vm;)Labcd/Vm;

    move-result-object v0

    iget-object v1, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p1, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_22
    if-ge v6, v3, :cond_74

    const/4 v8, 0x0

    if-ge v6, v1, :cond_30

    iget-object v9, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Labcd/Rm;

    goto :goto_31

    :cond_30
    move-object v9, v8

    :goto_31
    if-ge v6, v2, :cond_3c

    iget-object v10, p1, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Labcd/Rm;

    goto :goto_3d

    :cond_3c
    move-object v10, v8

    :goto_3d
    if-ne v9, v10, :cond_40

    goto :goto_46

    :cond_40
    if-nez v9, :cond_44

    move-object v8, v10

    goto :goto_66

    :cond_44
    if-nez v10, :cond_48

    :goto_46
    move-object v8, v9

    goto :goto_66

    :cond_48
    :try_start_48
    invoke-virtual {v9, v10}, Labcd/Rm;->j6(Labcd/Rm;)Labcd/Rm;

    move-result-object v8
    :try_end_4c
    .catch Labcd/an; {:try_start_48 .. :try_end_4c} :catch_4d

    goto :goto_66

    :catch_4d
    move-exception v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Merging locals set for caller block "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Labcd/Vt;->j6(Ljava/lang/String;)V

    :goto_66
    if-nez v7, :cond_6d

    if-eq v9, v8, :cond_6b

    goto :goto_6d

    :cond_6b
    const/4 v7, 0x0

    goto :goto_6e

    :cond_6d
    :goto_6d
    const/4 v7, 0x1

    :goto_6e
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    :cond_74
    iget-object p1, p0, Labcd/Sm;->DW:Labcd/Vm;

    if-ne p1, v0, :cond_7b

    if-nez v7, :cond_7b

    return-object p0

    :cond_7b
    new-instance p1, Labcd/Sm;

    invoke-direct {p1, v0, v4}, Labcd/Sm;-><init>(Labcd/Vm;Ljava/util/ArrayList;)V

    return-object p1
.end method

.method private j6(Labcd/Vm;)Labcd/Sm;
    .registers 12

    iget-object v0, p0, Labcd/Sm;->DW:Labcd/Vm;

    invoke-virtual {p1}, Labcd/Vm;->rN()Labcd/Vm;

    invoke-virtual {v0, p1}, Labcd/Vm;->j6(Labcd/Vm;)Labcd/Vm;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1d
    if-ge v4, v2, :cond_56

    iget-object v6, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Labcd/Rm;

    if-eqz v6, :cond_47

    :try_start_29
    invoke-virtual {v6, p1}, Labcd/Rm;->j6(Labcd/Rm;)Labcd/Rm;

    move-result-object v7
    :try_end_2d
    .catch Labcd/an; {:try_start_29 .. :try_end_2d} :catch_2e

    goto :goto_48

    :catch_2e
    move-exception v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Merging one locals against caller block "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Labcd/Vt;->j6(Ljava/lang/String;)V

    :cond_47
    const/4 v7, 0x0

    :goto_48
    if-nez v5, :cond_4f

    if-eq v6, v7, :cond_4d

    goto :goto_4f

    :cond_4d
    const/4 v5, 0x0

    goto :goto_50

    :cond_4f
    :goto_4f
    const/4 v5, 0x1

    :goto_50
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_56
    iget-object p1, p0, Labcd/Sm;->DW:Labcd/Vm;

    if-ne p1, v0, :cond_5d

    if-nez v5, :cond_5d

    return-object p0

    :cond_5d
    new-instance p1, Labcd/Sm;

    invoke-direct {p1, v0, v1}, Labcd/Sm;-><init>(Labcd/Vm;Ljava/util/ArrayList;)V

    return-object p1
.end method


# virtual methods
.method public DW(I)Labcd/Rm;
    .registers 2

    invoke-direct {p0, p1}, Labcd/Sm;->FH(I)Labcd/Rm;

    move-result-object p1

    return-object p1
.end method

.method public DW(Labcd/Qs;)V
    .registers 4

    iget-object v0, p0, Labcd/Sm;->DW:Labcd/Vm;

    invoke-virtual {v0}, Labcd/Vm;->er()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Labcd/hu;->J8()V

    iget-object v0, p0, Labcd/Sm;->DW:Labcd/Vm;

    invoke-virtual {v0, p1}, Labcd/Vm;->DW(Labcd/Qs;)V

    iget-object v0, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Rm;

    if-eqz v1, :cond_17

    invoke-virtual {v1, p1}, Labcd/Rm;->DW(Labcd/Qs;)V

    goto :goto_17

    :cond_29
    return-void
.end method

.method public aM()Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(locals array set; primary)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Sm;->rN()Labcd/Vm;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Vm;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_5b

    iget-object v4, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/Rm;

    if-eqz v4, :cond_58

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(locals array set: primary for caller "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Labcd/Rm;->rN()Labcd/Vm;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Vm;->aM()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_5b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public er()I
    .registers 2

    iget-object v0, p0, Labcd/Sm;->DW:Labcd/Vm;

    invoke-virtual {v0}, Labcd/Vm;->er()I

    move-result v0

    return v0
.end method

.method public get(I)Labcd/Rs;
    .registers 3

    iget-object v0, p0, Labcd/Sm;->DW:Labcd/Vm;

    invoke-virtual {v0, p1}, Labcd/Vm;->get(I)Labcd/Rs;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j6(Labcd/Rm;)Labcd/Rm;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/Sm;->j6(Labcd/Rm;)Labcd/Sm;

    move-result-object p1

    return-object p1
.end method

.method public j6(Labcd/Rm;)Labcd/Sm;
    .registers 4

    :try_start_0
    instance-of v0, p1, Labcd/Sm;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Labcd/Sm;

    invoke-direct {p0, v0}, Labcd/Sm;->j6(Labcd/Sm;)Labcd/Sm;

    move-result-object p1

    goto :goto_13

    :cond_c
    move-object v0, p1

    check-cast v0, Labcd/Vm;

    invoke-direct {p0, v0}, Labcd/Sm;->j6(Labcd/Vm;)Labcd/Sm;

    move-result-object p1
    :try_end_13
    .catch Labcd/an; {:try_start_0 .. :try_end_13} :catch_17

    :goto_13
    invoke-virtual {p1}, Labcd/Sm;->we()V

    return-object p1

    :catch_17
    move-exception v0

    const-string v1, "underlay locals:"

    invoke-virtual {v0, v1}, Labcd/Vt;->j6(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Labcd/Sm;->j6(Labcd/Vt;)V

    const-string v1, "overlay locals:"

    invoke-virtual {v0, v1}, Labcd/Vt;->j6(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Labcd/Rm;->j6(Labcd/Vt;)V

    throw v0
.end method

.method public j6(Labcd/Rm;I)Labcd/Sm;
    .registers 11

    invoke-direct {p0, p2}, Labcd/Sm;->FH(I)Labcd/Rm;

    move-result-object v0

    iget-object v1, p0, Labcd/Sm;->DW:Labcd/Vm;

    invoke-virtual {p1}, Labcd/Rm;->rN()Labcd/Vm;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/Vm;->j6(Labcd/Vm;)Labcd/Vm;

    move-result-object v1

    if-ne v0, p1, :cond_12

    move-object p1, v0

    goto :goto_19

    :cond_12
    if-nez v0, :cond_15

    goto :goto_19

    :cond_15
    invoke-virtual {v0, p1}, Labcd/Rm;->j6(Labcd/Rm;)Labcd/Rm;

    move-result-object p1

    :goto_19
    if-ne p1, v0, :cond_20

    iget-object v0, p0, Labcd/Sm;->DW:Labcd/Vm;

    if-ne v1, v0, :cond_20

    return-object p0

    :cond_20
    iget-object v0, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    :goto_34
    if-ge v4, v1, :cond_5d

    if-ne v4, p2, :cond_3a

    move-object v6, p1

    goto :goto_46

    :cond_3a
    if-ge v4, v0, :cond_45

    iget-object v6, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Labcd/Rm;

    goto :goto_46

    :cond_45
    move-object v6, v3

    :goto_46
    if-eqz v6, :cond_57

    if-nez v5, :cond_4f

    invoke-virtual {v6}, Labcd/Rm;->rN()Labcd/Vm;

    move-result-object v5

    goto :goto_57

    :cond_4f
    invoke-virtual {v6}, Labcd/Rm;->rN()Labcd/Vm;

    move-result-object v7

    invoke-virtual {v5, v7}, Labcd/Vm;->j6(Labcd/Vm;)Labcd/Vm;

    move-result-object v5

    :cond_57
    :goto_57
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    :cond_5d
    new-instance p1, Labcd/Sm;

    invoke-direct {p1, v5, v2}, Labcd/Sm;-><init>(Labcd/Vm;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Labcd/Sm;->we()V

    return-object p1
.end method

.method public j6(ILabcd/Rs;)V
    .registers 5

    invoke-virtual {p0}, Labcd/hu;->J8()V

    iget-object v0, p0, Labcd/Sm;->DW:Labcd/Vm;

    invoke-virtual {v0, p1, p2}, Labcd/Vm;->j6(ILabcd/Rs;)V

    iget-object v0, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Rm;

    if-eqz v1, :cond_e

    invoke-virtual {v1, p1, p2}, Labcd/Rm;->j6(ILabcd/Rs;)V

    goto :goto_e

    :cond_20
    return-void
.end method

.method public j6(Labcd/Vt;)V
    .registers 7

    const-string v0, "(locals array set; primary)"

    invoke-virtual {p1, v0}, Labcd/Vt;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Sm;->DW:Labcd/Vm;

    invoke-virtual {v0, p1}, Labcd/Vm;->j6(Labcd/Vt;)V

    iget-object v0, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_44

    iget-object v2, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Rm;

    if-eqz v2, :cond_41

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(locals array set: primary for caller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Labcd/Vt;->j6(Ljava/lang/String;)V

    invoke-virtual {v2}, Labcd/Rm;->rN()Labcd/Vm;

    move-result-object v2

    invoke-virtual {v2, p1}, Labcd/Vm;->j6(Labcd/Vt;)V

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_44
    return-void
.end method

.method public j6(Labcd/bs;)V
    .registers 3

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Labcd/Sm;->j6(ILabcd/Rs;)V

    return-void
.end method

.method public lg()Labcd/Rm;
    .registers 2

    new-instance v0, Labcd/Sm;

    invoke-direct {v0, p0}, Labcd/Sm;-><init>(Labcd/Sm;)V

    return-object v0
.end method

.method protected rN()Labcd/Vm;
    .registers 2

    iget-object v0, p0, Labcd/Sm;->DW:Labcd/Vm;

    return-object v0
.end method

.method public we()V
    .registers 3

    iget-object v0, p0, Labcd/Sm;->DW:Labcd/Vm;

    invoke-virtual {v0}, Labcd/hu;->we()V

    iget-object v0, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Rm;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Labcd/hu;->we()V

    goto :goto_b

    :cond_1d
    invoke-super {p0}, Labcd/hu;->we()V

    return-void
.end method
