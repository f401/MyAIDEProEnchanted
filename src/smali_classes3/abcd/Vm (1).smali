.class public Labcd/Vm;
.super Labcd/Rm;


# instance fields
.field private final DW:[Labcd/Rs;


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

    new-array p1, p1, [Labcd/Rs;

    iput-object p1, p0, Labcd/Vm;->DW:[Labcd/Rs;

    return-void
.end method

.method private static j6(ILjava/lang/String;)Labcd/Rs;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "local "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Labcd/an;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/an;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public DW(I)Labcd/Rs;
    .registers 3

    iget-object v0, p0, Labcd/Vm;->DW:[Labcd/Rs;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public DW(Labcd/Qs;)V
    .registers 7

    iget-object v0, p0, Labcd/Vm;->DW:[Labcd/Rs;

    array-length v0, v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Labcd/hu;->J8()V

    invoke-virtual {p1}, Labcd/Qs;->Ws()Labcd/Qs;

    move-result-object v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_1b

    iget-object v3, p0, Labcd/Vm;->DW:[Labcd/Rs;

    aget-object v4, v3, v2

    if-ne v4, p1, :cond_18

    aput-object v1, v3, v2

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1b
    return-void
.end method

.method public FH(I)V
    .registers 4

    invoke-virtual {p0}, Labcd/hu;->J8()V

    iget-object v0, p0, Labcd/Vm;->DW:[Labcd/Rs;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    return-void
.end method

.method public aM()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Labcd/Vm;->DW:[Labcd/Rs;

    array-length v3, v2

    if-ge v1, v3, :cond_3e

    aget-object v2, v2, v1

    if-nez v2, :cond_12

    const-string v2, "<invalid>"

    goto :goto_16

    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "locals["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public er()I
    .registers 2

    iget-object v0, p0, Labcd/Vm;->DW:[Labcd/Rs;

    array-length v0, v0

    return v0
.end method

.method public get(I)Labcd/Rs;
    .registers 3

    iget-object v0, p0, Labcd/Vm;->DW:[Labcd/Rs;

    aget-object v0, v0, p1

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    const-string v0, "invalid"

    invoke-static {p1, v0}, Labcd/Vm;->j6(ILjava/lang/String;)Labcd/Rs;

    const/4 p1, 0x0

    throw p1
.end method

.method public j6(Labcd/Rm;)Labcd/Rm;
    .registers 3

    instance-of v0, p1, Labcd/Vm;

    if-eqz v0, :cond_b

    check-cast p1, Labcd/Vm;

    invoke-virtual {p0, p1}, Labcd/Vm;->j6(Labcd/Vm;)Labcd/Vm;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-virtual {p1, p0}, Labcd/Rm;->j6(Labcd/Rm;)Labcd/Rm;

    move-result-object p1

    return-object p1
.end method

.method public j6(Labcd/Rm;I)Labcd/Sm;
    .registers 5

    new-instance v0, Labcd/Sm;

    invoke-virtual {p0}, Labcd/Vm;->er()I

    move-result v1

    invoke-direct {v0, v1}, Labcd/Sm;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Labcd/Sm;->j6(Labcd/Rm;I)Labcd/Sm;

    move-result-object p1

    return-object p1
.end method

.method public j6(Labcd/Vm;)Labcd/Vm;
    .registers 4

    :try_start_0
    invoke-static {p0, p1}, Labcd/Um;->j6(Labcd/Vm;Labcd/Vm;)Labcd/Vm;

    move-result-object p1
    :try_end_4
    .catch Labcd/an; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception v0

    const-string v1, "underlay locals:"

    invoke-virtual {v0, v1}, Labcd/Vt;->j6(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Labcd/Vm;->j6(Labcd/Vt;)V

    const-string v1, "overlay locals:"

    invoke-virtual {v0, v1}, Labcd/Vt;->j6(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Labcd/Vm;->j6(Labcd/Vt;)V

    throw v0
.end method

.method public j6(ILabcd/Rs;)V
    .registers 6

    invoke-virtual {p0}, Labcd/hu;->J8()V

    :try_start_3
    invoke-interface {p2}, Labcd/Rs;->U2()Labcd/Rs;

    move-result-object p2
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_7} :catch_3d

    if-ltz p1, :cond_35

    invoke-interface {p2}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->yS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Labcd/Vm;->DW:[Labcd/Rs;

    add-int/lit8 v2, p1, 0x1

    aput-object v1, v0, v2

    :cond_1a
    iget-object v0, p0, Labcd/Vm;->DW:[Labcd/Rs;

    aput-object p2, v0, p1

    if-eqz p1, :cond_34

    add-int/lit8 p1, p1, -0x1

    aget-object p2, v0, p1

    if-eqz p2, :cond_34

    invoke-interface {p2}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object p2

    invoke-virtual {p2}, Labcd/Qs;->yS()Z

    move-result p2

    if-eqz p2, :cond_34

    iget-object p2, p0, Labcd/Vm;->DW:[Labcd/Rs;

    aput-object v1, p2, p1

    :cond_34
    return-void

    :cond_35
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "idx < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3d
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Labcd/Vt;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Labcd/Vm;->DW:[Labcd/Rs;

    array-length v2, v1

    if-ge v0, v2, :cond_34

    aget-object v1, v1, v0

    if-nez v1, :cond_d

    const-string v1, "<invalid>"

    goto :goto_11

    :cond_d
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locals["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Labcd/Vt;->j6(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_34
    return-void
.end method

.method public j6(Labcd/bs;)V
    .registers 3

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Labcd/Vm;->j6(ILabcd/Rs;)V

    return-void
.end method

.method public bridge synthetic lg()Labcd/Rm;
    .registers 2

    invoke-virtual {p0}, Labcd/Vm;->lg()Labcd/Vm;

    move-result-object v0

    return-object v0
.end method

.method public lg()Labcd/Vm;
    .registers 6

    new-instance v0, Labcd/Vm;

    iget-object v1, p0, Labcd/Vm;->DW:[Labcd/Rs;

    array-length v1, v1

    invoke-direct {v0, v1}, Labcd/Vm;-><init>(I)V

    iget-object v1, p0, Labcd/Vm;->DW:[Labcd/Rs;

    iget-object v2, v0, Labcd/Vm;->DW:[Labcd/Rs;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method protected rN()Labcd/Vm;
    .registers 1

    return-object p0
.end method
