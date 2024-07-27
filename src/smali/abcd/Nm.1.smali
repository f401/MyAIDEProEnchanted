.class public final Labcd/Nm;
.super Labcd/hu;


# instance fields
.field private final DW:[Labcd/Rs;

.field private final FH:[Z

.field private Hw:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Labcd/hu;-><init>(Z)V

    new-array v0, p1, [Labcd/Rs;

    iput-object v0, p0, Labcd/Nm;->DW:[Labcd/Rs;

    new-array v0, p1, [Z

    iput-object v0, p0, Labcd/Nm;->FH:[Z

    iput v1, p0, Labcd/Nm;->Hw:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static DW(Ljava/lang/String;)Labcd/Rs;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Labcd/an;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/an;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static DW(Labcd/Rs;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_0

    const-string v0, "<invalid>"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public DW(I)Labcd/Rs;
    .registers 4

    if-ltz p1, :cond_1

    iget v0, p0, Labcd/Nm;->Hw:I

    if-ge p1, v0, :cond_0

    iget-object v1, p0, Labcd/Nm;->DW:[Labcd/Rs;

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    const-string v0, "underflow"

    invoke-static {v0}, Labcd/Nm;->DW(Ljava/lang/String;)Labcd/Rs;

    const/4 v0, 0x0

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public DW(Labcd/Qs;)V
    .registers 6

    iget v0, p0, Labcd/Nm;->Hw:I

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Labcd/hu;->J8()V

    invoke-virtual {p1}, Labcd/Qs;->Ws()Labcd/Qs;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Labcd/Nm;->Hw:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Labcd/Nm;->DW:[Labcd/Rs;

    aget-object v3, v2, v0

    if-ne v3, p1, :cond_2

    aput-object v1, v2, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public FH(I)Z
    .registers 4

    if-ltz p1, :cond_1

    iget v0, p0, Labcd/Nm;->Hw:I

    if-ge p1, v0, :cond_0

    iget-object v1, p0, Labcd/Nm;->FH:[Z

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-boolean v0, v1, v0

    return v0

    :cond_0
    new-instance v0, Labcd/an;

    const-string v1, "stack: underflow"

    invoke-direct {v0, v1}, Labcd/an;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Hw(I)Labcd/Qs;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/Nm;->DW(I)Labcd/Rs;

    move-result-object v0

    invoke-interface {v0}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v0

    return-object v0
.end method

.method public er()Labcd/Rs;
    .registers 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Labcd/hu;->J8()V

    invoke-virtual {p0, v5}, Labcd/Nm;->DW(I)Labcd/Rs;

    move-result-object v0

    iget-object v1, p0, Labcd/Nm;->DW:[Labcd/Rs;

    iget v2, p0, Labcd/Nm;->Hw:I

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x0

    aput-object v4, v1, v3

    iget-object v1, p0, Labcd/Nm;->FH:[Z

    add-int/lit8 v3, v2, -0x1

    aput-boolean v5, v1, v3

    invoke-interface {v0}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Qs;->Zo()I

    move-result v1

    sub-int v1, v2, v1

    iput v1, p0, Labcd/Nm;->Hw:I

    return-object v0
.end method

.method public j6(Labcd/Nm;)Labcd/Nm;
    .registers 4

    :try_start_0
    invoke-static {p0, p1}, Labcd/Um;->j6(Labcd/Nm;Labcd/Nm;)Labcd/Nm;
    :try_end_0
    .catch Labcd/an; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
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
    .registers 8

    invoke-virtual {p0}, Labcd/hu;->J8()V

    :try_start_0
    invoke-interface {p2}, Labcd/Rs;->U2()Labcd/Rs;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget v1, p0, Labcd/Nm;->Hw:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Labcd/Nm;->DW:[Labcd/Rs;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Qs;->Zo()I

    move-result v3

    invoke-interface {v0}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Qs;->Zo()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v2, p0, Labcd/Nm;->DW:[Labcd/Rs;

    aput-object v0, v2, v1

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incompatible substitution: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Labcd/Nm;->DW(Labcd/Rs;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Nm;->DW(Labcd/Rs;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/Nm;->DW(Ljava/lang/String;)Labcd/Rs;

    const/4 v0, 0x0

    throw v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Labcd/Rs;)V
    .registers 9

    const/4 v6, 0x0

    invoke-virtual {p0}, Labcd/hu;->J8()V

    :try_start_0
    invoke-interface {p1}, Labcd/Rs;->U2()Labcd/Rs;

    move-result-object v0

    invoke-interface {v0}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Qs;->Zo()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    iget v2, p0, Labcd/Nm;->Hw:I

    iget-object v3, p0, Labcd/Nm;->DW:[Labcd/Rs;

    add-int v4, v2, v1

    array-length v5, v3

    if-gt v4, v5, :cond_1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    aput-object v6, v3, v2

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Labcd/Nm;->Hw:I

    :cond_0
    iget-object v1, p0, Labcd/Nm;->DW:[Labcd/Rs;

    iget v2, p0, Labcd/Nm;->Hw:I

    aput-object v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Labcd/Nm;->Hw:I

    return-void

    :cond_1
    const-string v0, "overflow"

    invoke-static {v0}, Labcd/Nm;->DW(Ljava/lang/String;)Labcd/Rs;

    throw v6

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Labcd/Vt;)V
    .registers 7

    iget v0, p0, Labcd/Nm;->Hw:I

    add-int/lit8 v2, v0, -0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-gt v1, v2, :cond_1

    if-ne v1, v2, :cond_0

    const-string v0, "top0"

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stack["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/Nm;->DW:[Labcd/Rs;

    aget-object v0, v0, v1

    invoke-static {v0}, Labcd/Nm;->DW(Labcd/Rs;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/Vt;->j6(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    sub-int v0, v2, v1

    invoke-static {v0}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method public lg()V
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Labcd/hu;->J8()V

    move v0, v1

    :goto_0
    iget v2, p0, Labcd/Nm;->Hw:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Labcd/Nm;->DW:[Labcd/Rs;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    iget-object v2, p0, Labcd/Nm;->FH:[Z

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Labcd/Nm;->Hw:I

    return-void
.end method

.method public rN()Labcd/Nm;
    .registers 6

    const/4 v4, 0x0

    new-instance v0, Labcd/Nm;

    iget-object v1, p0, Labcd/Nm;->DW:[Labcd/Rs;

    array-length v1, v1

    invoke-direct {v0, v1}, Labcd/Nm;-><init>(I)V

    iget-object v1, p0, Labcd/Nm;->DW:[Labcd/Rs;

    iget-object v2, v0, Labcd/Nm;->DW:[Labcd/Rs;

    array-length v3, v1

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
