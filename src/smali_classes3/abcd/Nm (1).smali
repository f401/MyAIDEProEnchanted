.class public final Labcd/Nm;
.super Labcd/hu;


# instance fields
.field private final DW:[Labcd/Rs;

.field private final FH:[Z

.field private Hw:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    invoke-direct {p0, v1}, Labcd/hu;-><init>(Z)V

    new-array v1, p1, [Labcd/Rs;

    iput-object v1, p0, Labcd/Nm;->DW:[Labcd/Rs;

    new-array p1, p1, [Z

    iput-object p1, p0, Labcd/Nm;->FH:[Z

    iput v0, p0, Labcd/Nm;->Hw:I

    return-void
.end method

.method private static DW(Ljava/lang/String;)Labcd/Rs;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Labcd/an;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/an;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static DW(Labcd/Rs;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_5

    const-string p0, "<invalid>"

    return-object p0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public DW(I)Labcd/Rs;
    .registers 4

    if-ltz p1, :cond_15

    iget v0, p0, Labcd/Nm;->Hw:I

    if-ge p1, v0, :cond_e

    iget-object v1, p0, Labcd/Nm;->DW:[Labcd/Rs;

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, v1, v0

    return-object p1

    :cond_e
    const-string p1, "underflow"

    invoke-static {p1}, Labcd/Nm;->DW(Ljava/lang/String;)Labcd/Rs;

    const/4 p1, 0x0

    throw p1

    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public DW(Labcd/Qs;)V
    .registers 6

    iget v0, p0, Labcd/Nm;->Hw:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Labcd/hu;->J8()V

    invoke-virtual {p1}, Labcd/Qs;->Ws()Labcd/Qs;

    move-result-object v0

    const/4 v1, 0x0

    :goto_d
    iget v2, p0, Labcd/Nm;->Hw:I

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Labcd/Nm;->DW:[Labcd/Rs;

    aget-object v3, v2, v1

    if-ne v3, p1, :cond_19

    aput-object v0, v2, v1

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1c
    return-void
.end method

.method public FH(I)Z
    .registers 4

    if-ltz p1, :cond_16

    iget v0, p0, Labcd/Nm;->Hw:I

    if-ge p1, v0, :cond_e

    iget-object v1, p0, Labcd/Nm;->FH:[Z

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-boolean p1, v1, v0

    return p1

    :cond_e
    new-instance p1, Labcd/an;

    const-string v0, "stack: underflow"

    invoke-direct {p1, v0}, Labcd/an;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Hw(I)Labcd/Qs;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/Nm;->DW(I)Labcd/Rs;

    move-result-object p1

    invoke-interface {p1}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object p1

    return-object p1
.end method

.method public er()Labcd/Rs;
    .registers 7

    invoke-virtual {p0}, Labcd/hu;->J8()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Labcd/Nm;->DW(I)Labcd/Rs;

    move-result-object v1

    iget-object v2, p0, Labcd/Nm;->DW:[Labcd/Rs;

    iget v3, p0, Labcd/Nm;->Hw:I

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    aput-object v5, v2, v4

    iget-object v2, p0, Labcd/Nm;->FH:[Z

    aput-boolean v0, v2, v4

    invoke-interface {v1}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->Zo()I

    move-result v0

    sub-int/2addr v3, v0

    iput v3, p0, Labcd/Nm;->Hw:I

    return-object v1
.end method

.method public j6(Labcd/Nm;)Labcd/Nm;
    .registers 4

    :try_start_0
    invoke-static {p0, p1}, Labcd/Um;->j6(Labcd/Nm;Labcd/Nm;)Labcd/Nm;

    move-result-object p1
    :try_end_4
    .catch Labcd/an; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception v0

    const-string v1, "underlay stack:"

    invoke-virtual {v0, v1}, Labcd/Vt;->j6(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Labcd/Nm;->j6(Labcd/Vt;)V

    const-string v1, "overlay stack:"

    invoke-virtual {v0, v1}, Labcd/Vt;->j6(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Labcd/Nm;->j6(Labcd/Vt;)V

    throw v0
.end method

.method public j6(ILabcd/Rs;)V
    .registers 6

    invoke-virtual {p0}, Labcd/hu;->J8()V

    :try_start_3
    invoke-interface {p2}, Labcd/Rs;->U2()Labcd/Rs;

    move-result-object p2
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_7} :catch_4f

    iget v0, p0, Labcd/Nm;->Hw:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    iget-object p1, p0, Labcd/Nm;->DW:[Labcd/Rs;

    aget-object p1, p1, v0

    if-eqz p1, :cond_29

    invoke-interface {p1}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Qs;->Zo()I

    move-result v1

    invoke-interface {p2}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Qs;->Zo()I

    move-result v2

    if-ne v1, v2, :cond_29

    iget-object p1, p0, Labcd/Nm;->DW:[Labcd/Rs;

    aput-object p2, p1, v0

    return-void

    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "incompatible substitution: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Nm;->DW(Labcd/Rs;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Labcd/Nm;->DW(Labcd/Rs;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Labcd/Nm;->DW(Ljava/lang/String;)Labcd/Rs;

    const/4 p1, 0x0

    throw p1

    :catch_4f
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Labcd/Rs;)V
    .registers 8

    invoke-virtual {p0}, Labcd/hu;->J8()V

    :try_start_3
    invoke-interface {p1}, Labcd/Rs;->U2()Labcd/Rs;

    move-result-object p1

    invoke-interface {p1}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->Zo()I

    move-result v0
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_f} :catch_31

    iget v1, p0, Labcd/Nm;->Hw:I

    iget-object v2, p0, Labcd/Nm;->DW:[Labcd/Rs;

    add-int v3, v1, v0

    array-length v4, v2

    const/4 v5, 0x0

    if-gt v3, v4, :cond_2b

    const/4 v3, 0x2

    if-ne v0, v3, :cond_22

    aput-object v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/Nm;->Hw:I

    :cond_22
    iget v0, p0, Labcd/Nm;->Hw:I

    aput-object p1, v2, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Nm;->Hw:I

    return-void

    :cond_2b
    const-string p1, "overflow"

    invoke-static {p1}, Labcd/Nm;->DW(Ljava/lang/String;)Labcd/Rs;

    throw v5

    :catch_31
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "type == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Labcd/Vt;)V
    .registers 7

    iget v0, p0, Labcd/Nm;->Hw:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_5
    if-gt v1, v0, :cond_39

    if-ne v1, v0, :cond_c

    const-string v2, "top0"

    goto :goto_12

    :cond_c
    sub-int v2, v0, v1

    invoke-static {v2}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v2

    :goto_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stack["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/Nm;->DW:[Labcd/Rs;

    aget-object v2, v2, v1

    invoke-static {v2}, Labcd/Nm;->DW(Labcd/Rs;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Labcd/Vt;->j6(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_39
    return-void
.end method

.method public lg()V
    .registers 5

    invoke-virtual {p0}, Labcd/hu;->J8()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_5
    iget v2, p0, Labcd/Nm;->Hw:I

    if-ge v1, v2, :cond_15

    iget-object v2, p0, Labcd/Nm;->DW:[Labcd/Rs;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    iget-object v2, p0, Labcd/Nm;->FH:[Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    iput v0, p0, Labcd/Nm;->Hw:I

    return-void
.end method

.method public rN()Labcd/Nm;
    .registers 6

    new-instance v0, Labcd/Nm;

    iget-object v1, p0, Labcd/Nm;->DW:[Labcd/Rs;

    array-length v1, v1

    invoke-direct {v0, v1}, Labcd/Nm;-><init>(I)V

    iget-object v1, p0, Labcd/Nm;->DW:[Labcd/Rs;

    iget-object v2, v0, Labcd/Nm;->DW:[Labcd/Rs;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Labcd/Nm;->FH:[Z

    iget-object v2, v0, Labcd/Nm;->FH:[Z

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Labcd/Nm;->Hw:I

    iput v1, v0, Labcd/Nm;->Hw:I

    return-object v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Labcd/Nm;->Hw:I

    return v0
.end method

.method public yS()V
    .registers 4

    invoke-virtual {p0}, Labcd/hu;->J8()V

    iget-object v0, p0, Labcd/Nm;->FH:[Z

    iget v1, p0, Labcd/Nm;->Hw:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
