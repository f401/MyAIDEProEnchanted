.class abstract Labcd/IC;
.super Ljava/lang/Object;


# instance fields
.field protected DW:[Labcd/QC;

.field protected FH:I

.field protected j6:Labcd/KC;


# direct methods
.method protected constructor <init>(Labcd/KC;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/IC;->j6:Labcd/KC;

    new-array p1, p2, [Labcd/QC;

    iput-object p1, p0, Labcd/IC;->DW:[Labcd/QC;

    return-void
.end method


# virtual methods
.method public abstract DW()V
.end method

.method public FH()Labcd/KC;
    .registers 2

    iget-object v0, p0, Labcd/IC;->j6:Labcd/KC;

    return-object v0
.end method

.method protected Hw()V
    .registers 5

    iget v0, p0, Labcd/IC;->FH:I

    iget-object v1, p0, Labcd/IC;->DW:[Labcd/QC;

    array-length v2, v1

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_11

    new-array v2, v0, [Labcd/QC;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Labcd/IC;->DW:[Labcd/QC;

    :cond_11
    iget-object v0, p0, Labcd/IC;->j6:Labcd/KC;

    iget-object v1, p0, Labcd/IC;->DW:[Labcd/QC;

    iget v2, p0, Labcd/IC;->FH:I

    invoke-virtual {v0, v1, v2}, Labcd/KC;->j6([Labcd/QC;I)V

    return-void
.end method

.method protected j6(II)V
    .registers 7

    iget v0, p0, Labcd/IC;->FH:I

    add-int v1, v0, p2

    iget-object v2, p0, Labcd/IC;->DW:[Labcd/QC;

    array-length v2, v2

    if-le v1, v2, :cond_1f

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Labcd/QC;

    iget-object v1, p0, Labcd/IC;->DW:[Labcd/QC;

    iget v2, p0, Labcd/IC;->FH:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/IC;->DW:[Labcd/QC;

    :cond_1f
    iget-object v0, p0, Labcd/IC;->j6:Labcd/KC;

    iget-object v1, p0, Labcd/IC;->DW:[Labcd/QC;

    iget v2, p0, Labcd/IC;->FH:I

    invoke-virtual {v0, p1, v1, v2, p2}, Labcd/KC;->j6(I[Labcd/QC;II)V

    iget p1, p0, Labcd/IC;->FH:I

    add-int/2addr p1, p2

    iput p1, p0, Labcd/IC;->FH:I

    return-void
.end method

.method protected j6(Labcd/QC;)V
    .registers 6

    iget-object v0, p0, Labcd/IC;->DW:[Labcd/QC;

    array-length v1, v0

    iget v2, p0, Labcd/IC;->FH:I

    if-ne v1, v2, :cond_15

    add-int/lit8 v1, v2, 0x10

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Labcd/QC;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Labcd/IC;->DW:[Labcd/QC;

    :cond_15
    iget-object v0, p0, Labcd/IC;->DW:[Labcd/QC;

    iget v1, p0, Labcd/IC;->FH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/IC;->FH:I

    aput-object p1, v0, v1

    return-void
.end method

.method public j6()Z
    .registers 2

    invoke-virtual {p0}, Labcd/IC;->DW()V

    iget-object v0, p0, Labcd/IC;->j6:Labcd/KC;

    invoke-virtual {v0}, Labcd/KC;->EQ()V

    iget-object v0, p0, Labcd/IC;->j6:Labcd/KC;

    invoke-virtual {v0}, Labcd/KC;->FH()Z

    move-result v0

    return v0
.end method
