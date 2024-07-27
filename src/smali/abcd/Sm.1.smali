.class public Labcd/Sm;
.super Labcd/Rm;


# instance fields
.field private final DW:Labcd/Vm;

.field private final FH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/Rm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Labcd/Rm;-><init>(Z)V

    new-instance v0, Labcd/Vm;

    invoke-direct {v0, p1}, Labcd/Vm;-><init>(I)V

    iput-object v0, p0, Labcd/Sm;->DW:Labcd/Vm;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Labcd/Sm;)V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Labcd/Sm;->er()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
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

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v0, p1, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Rm;

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Labcd/Rm;->lg()Labcd/Rm;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-void
.end method

.method public constructor <init>(Labcd/Vm;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Vm;",
            "Ljava/util/ArrayList",
            "<",
            "Labcd/Rm;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Labcd/Vm;->er()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Labcd/Rm;-><init>(Z)V

    iput-object p1, p0, Labcd/Sm;->DW:Labcd/Vm;

    iput-object p2, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private FH(I)Labcd/Rm;
    .registers 3

    iget-object v0, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Rm;

    goto :goto_0
.end method

.method private j6(Labcd/Sm;)Labcd/Sm;
    .registers 15

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/Sm;->DW:Labcd/Vm;

    invoke-virtual {p1}, Labcd/Sm;->rN()Labcd/Vm;

    move-result-object v2

    invoke-virtual {v0, v2}, Labcd/Vm;->j6(Labcd/Vm;)Labcd/Vm;

    move-result-object v7

    iget-object v0, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v0, p1, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v1

    move v6, v1

    :goto_0
    if-ge v5, v10, :cond_7

    if-ge v5, v8, :cond_2

    iget-object v0, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Rm;

    move-object v4, v0

    :goto_1
    if-ge v5, v9, :cond_3

    iget-object v0, p1, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Rm;

    :goto_2
    if-ne v4, v0, :cond_4

    :cond_0
    move-object v2, v4

    :goto_3
    if-nez v6, :cond_1

    if-eq v4, v2, :cond_6

    :cond_1
    const/4 v0, 0x1

    :goto_4
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v6, v0

    goto :goto_0

    :cond_2
    move-object v4, v3

    goto :goto_1

    :cond_3
    move-object v0, v3

    goto :goto_2

    :cond_4
    if-nez v4, :cond_5

    move-object v2, v0

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v4, v0}, Labcd/Rm;->j6(Labcd/Rm;)Labcd/Rm;
    :try_end_0
    .catch Labcd/an; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Merging locals set for caller block "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Labcd/Vt;->j6(Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Labcd/Sm;->DW:Labcd/Vm;

    if-ne v0, v7, :cond_8

    if-nez v6, :cond_8

    :goto_5
    return-object p0

    :cond_8
    new-instance p0, Labcd/Sm;

    invoke-direct {p0, v7, v11}, Labcd/Sm;-><init>(Labcd/Vm;Ljava/util/ArrayList;)V

    goto :goto_5
.end method

.method private j6(Labcd/Vm;)Labcd/Sm;
    .registers 13

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/Sm;->DW:Labcd/Vm;

    invoke-virtual {p1}, Labcd/Vm;->rN()Labcd/Vm;

    invoke-virtual {v0, p1}, Labcd/Vm;->j6(Labcd/Vm;)Labcd/Vm;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    iget-object v0, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v1

    move v3, v1

    :goto_0
    if-ge v2, v7, :cond_3

    iget-object v0, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Rm;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Labcd/Rm;->j6(Labcd/Rm;)Labcd/Rm;
    :try_end_0
    .catch Labcd/an; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :cond_0
    :goto_1
    if-nez v3, :cond_1

    if-eq v0, v4, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_0

    :catch_0
    move-exception v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Merging one locals against caller block "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Labcd/Vt;->j6(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Labcd/Sm;->DW:Labcd/Vm;

    if-ne v0, v5, :cond_4

    if-nez v3, :cond_4

    :goto_3
    return-object p0

    :cond_4
    new-instance p0, Labcd/Sm;

    invoke-direct {p0, v5, v6}, Labcd/Sm;-><init>(Labcd/Vm;Ljava/util/ArrayList;)V

    goto :goto_3
.end method


# virtual methods
.method public DW(I)Labcd/Rm;
    .registers 3

    invoke-direct {p0, p1}, Labcd/Sm;->FH(I)Labcd/Rm;

    move-result-object v0

    return-object v0
.end method

.method public DW(Labcd/Qs;)V
    .registers 4

    iget-object v0, p0, Labcd/Sm;->DW:Labcd/Vm;

    invoke-virtual {v0}, Labcd/Vm;->er()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Labcd/hu;->J8()V

    iget-object v0, p0, Labcd/Sm;->DW:Labcd/Vm;

    invoke-virtual {v0, p1}, Labcd/Vm;->DW(Labcd/Qs;)V

    iget-object v0, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Rm;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Labcd/Rm;->DW(Labcd/Qs;)V

    goto :goto_0
.end method

.method public aM()Ljava/lang/String;
    .registers 8

    const/16 v6, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "(locals array set; primary)\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Sm;->rN()Labcd/Vm;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Vm;->aM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Rm;

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(locals array set: primary for caller "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Labcd/Rm;->rN()Labcd/Vm;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Vm;->aM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j6(Labcd/Rm;)Labcd/Rm;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/Sm;->j6(Labcd/Rm;)Labcd/Sm;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/Rm;)Labcd/Sm;
    .registers 5

    :try_start_0
    instance-of v1, p1, Labcd/Sm;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Labcd/Sm;

    move-object v1, v0

    invoke-direct {p0, v1}, Labcd/Sm;->j6(Labcd/Sm;)Labcd/Sm;
    :try_end_0
    .catch Labcd/an; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Labcd/Sm;->we()V

    return-object v1

    :cond_0
    :try_start_1
    move-object v0, p1

    check-cast v0, Labcd/Vm;

    move-object v1, v0

    invoke-direct {p0, v1}, Labcd/Sm;->j6(Labcd/Vm;)Labcd/Sm;
    :try_end_1
    .catch Labcd/an; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "underlay locals:"

    invoke-virtual {v1, v2}, Labcd/Vt;->j6(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Labcd/Sm;->j6(Labcd/Vt;)V

    const-string v2, "overlay locals:"

    invoke-virtual {v1, v2}, Labcd/Vt;->j6(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Labcd/Rm;->j6(Labcd/Vt;)V

    throw v1
.end method

.method public j6(Labcd/Rm;I)Labcd/Sm;
    .registers 12

    const/4 v4, 0x0

    invoke-direct {p0, p2}, Labcd/Sm;->FH(I)Labcd/Rm;

    move-result-object v0

    iget-object v1, p0, Labcd/Sm;->DW:Labcd/Vm;

    invoke-virtual {p1}, Labcd/Rm;->rN()Labcd/Vm;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/Vm;->j6(Labcd/Vm;)Labcd/Vm;

    move-result-object v1

    if-ne v0, p1, :cond_0

    move-object v3, v0

    :goto_0
    if-ne v3, v0, :cond_2

    iget-object v0, p0, Labcd/Sm;->DW:Labcd/Vm;

    if-ne v1, v0, :cond_2

    :goto_1
    return-object p0

    :cond_0
    if-nez v0, :cond_1

    move-object v3, p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Labcd/Rm;->j6(Labcd/Rm;)Labcd/Rm;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, p2, 0x1

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move-object v1, v4

    move v5, v0

    :goto_2
    if-ge v5, v7, :cond_6

    if-ne v5, p2, :cond_3

    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_7

    if-nez v1, :cond_5

    invoke-virtual {v2}, Labcd/Rm;->rN()Labcd/Vm;

    move-result-object v0

    :goto_4
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v5, 0x1

    move-object v1, v0

    move v5, v2

    goto :goto_2

    :cond_3
    if-ge v5, v6, :cond_4

    iget-object v0, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Rm;

    move-object v2, v0

    goto :goto_3

    :cond_4
    move-object v2, v4

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Labcd/Rm;->rN()Labcd/Vm;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/Vm;->j6(Labcd/Vm;)Labcd/Vm;

    move-result-object v0

    goto :goto_4

    :cond_6
    new-instance p0, Labcd/Sm;

    invoke-direct {p0, v1, v8}, Labcd/Sm;-><init>(Labcd/Vm;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Labcd/Sm;->we()V

    goto :goto_1

    :cond_7
    move-object v0, v1

    goto :goto_4
.end method

.method public j6(ILabcd/Rs;)V
    .registers 5

    invoke-virtual {p0}, Labcd/hu;->J8()V

    iget-object v0, p0, Labcd/Sm;->DW:Labcd/Vm;

    invoke-virtual {v0, p1, p2}, Labcd/Vm;->j6(ILabcd/Rs;)V

    iget-object v0, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Rm;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Labcd/Rm;->j6(ILabcd/Rs;)V

    goto :goto_0

    :cond_1
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

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Labcd/Sm;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Rm;

    if-eqz v0, :cond_0

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

    invoke-virtual {v0}, Labcd/Rm;->rN()Labcd/Vm;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/Vm;->j6(Labcd/Vt;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
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

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Rm;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/hu;->we()V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Labcd/hu;->we()V

    return-void
.end method
