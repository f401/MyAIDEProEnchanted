.class public Labcd/Nt;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/bu;


# instance fields
.field j6:[I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Labcd/Ot;->j6(I)[I

    move-result-object v0

    iput-object v0, p0, Labcd/Nt;->j6:[I

    return-void
.end method

.method private DW(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Labcd/Nt;->j6:[I

    invoke-static {v0}, Labcd/Ot;->DW([I)I

    move-result v0

    if-lt p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Labcd/Nt;->j6:[I

    invoke-static {v1}, Labcd/Ot;->DW([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Labcd/Ot;->j6(I)[I

    move-result-object v0

    iget-object v1, p0, Labcd/Nt;->j6:[I

    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Nt;->j6:[I

    :cond_0
    return-void
.end method


# virtual methods
.method public add(I)V
    .registers 4

    invoke-direct {p0, p1}, Labcd/Nt;->DW(I)V

    iget-object v0, p0, Labcd/Nt;->j6:[I

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Labcd/Ot;->j6([IIZ)V

    return-void
.end method

.method public iterator()Labcd/_t;
    .registers 2

    new-instance v0, Labcd/Mt;

    invoke-direct {v0, p0}, Labcd/Mt;-><init>(Labcd/Nt;)V

    return-object v0
.end method

.method public j6()I
    .registers 2

    iget-object v0, p0, Labcd/Nt;->j6:[I

    invoke-static {v0}, Labcd/Ot;->j6([I)I

    move-result v0

    return v0
.end method

.method public j6(Labcd/bu;)V
    .registers 6

    instance-of v0, p1, Labcd/Nt;

    if-eqz v0, :cond_1

    check-cast p1, Labcd/Nt;

    iget-object v0, p1, Labcd/Nt;->j6:[I

    invoke-static {v0}, Labcd/Ot;->DW([I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Labcd/Nt;->DW(I)V

    iget-object v0, p0, Labcd/Nt;->j6:[I

    iget-object v1, p1, Labcd/Nt;->j6:[I

    invoke-static {v0, v1}, Labcd/Ot;->j6([I[I)V

    :cond_0
    return-void

    :cond_1
    instance-of v0, p1, Labcd/gu;

    if-eqz v0, :cond_3

    check-cast p1, Labcd/gu;

    iget-object v0, p1, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v1, p1, Labcd/gu;->j6:Labcd/au;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Labcd/au;->get(I)I

    move-result v0

    invoke-direct {p0, v0}, Labcd/Nt;->DW(I)V

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v1}, Labcd/au;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Labcd/Nt;->j6:[I

    iget-object v2, p1, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v2, v0}, Labcd/au;->get(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Labcd/Ot;->j6([IIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Labcd/bu;->iterator()Labcd/_t;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Labcd/_t;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Labcd/_t;->next()I

    move-result v1

    invoke-virtual {p0, v1}, Labcd/Nt;->add(I)V

    goto :goto_1
.end method

.method public j6(I)Z
    .registers 3

    iget-object v0, p0, Labcd/Nt;->j6:[I

    invoke-static {v0}, Labcd/Ot;->DW([I)I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Labcd/Nt;->j6:[I

    invoke-static {v0, p1}, Labcd/Ot;->FH([II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x7b

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/Nt;->j6:[I

    invoke-static {v0, v2}, Labcd/Ot;->DW([II)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ltz v0, :cond_1

    if-nez v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Nt;->j6:[I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Labcd/Ot;->DW([II)I

    move-result v0

    move v1, v2

    goto :goto_0

    :cond_1
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
