.class public Labcd/GM;
.super Labcd/LL;


# static fields
.field private static final v5:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Labcd/GM;->v5:[B

    return-void
.end method

.method public constructor <init>(ZILabcd/qL;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Labcd/LL;-><init>(ZILabcd/qL;)V

    return-void
.end method


# virtual methods
.method Zo()Z
    .registers 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Labcd/LL;->DW:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Labcd/LL;->FH:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Labcd/LL;->Hw:Labcd/qL;

    invoke-interface {v0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EL;->gn()Labcd/EL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EL;->Zo()Z

    move-result v0

    goto :goto_0
.end method

.method j6(Labcd/CL;)V
    .registers 5

    const/16 v0, 0xa0

    iget-boolean v1, p0, Labcd/LL;->DW:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Labcd/LL;->Hw:Labcd/qL;

    invoke-interface {v1}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v1

    invoke-virtual {v1}, Labcd/EL;->gn()Labcd/EL;

    move-result-object v1

    iget-boolean v2, p0, Labcd/LL;->FH:Z

    if-eqz v2, :cond_0

    iget v2, p0, Labcd/LL;->j6:I

    invoke-virtual {p1, v0, v2}, Labcd/CL;->j6(II)V

    invoke-virtual {v1}, Labcd/EL;->v5()I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/CL;->DW(I)V

    invoke-virtual {p1, v1}, Labcd/CL;->j6(Labcd/qL;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Labcd/EL;->Zo()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    iget v2, p0, Labcd/LL;->j6:I

    invoke-virtual {p1, v0, v2}, Labcd/CL;->j6(II)V

    invoke-virtual {p1, v1}, Labcd/CL;->j6(Labcd/EL;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x80

    goto :goto_1

    :cond_2
    iget v1, p0, Labcd/LL;->j6:I

    sget-object v2, Labcd/GM;->v5:[B

    invoke-virtual {p1, v0, v1, v2}, Labcd/CL;->j6(II[B)V

    goto :goto_0
.end method

.method v5()I
    .registers 4

    iget-boolean v0, p0, Labcd/LL;->DW:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/LL;->Hw:Labcd/qL;

    invoke-interface {v0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EL;->gn()Labcd/EL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EL;->v5()I

    move-result v1

    iget-boolean v0, p0, Labcd/LL;->FH:Z

    if-eqz v0, :cond_0

    iget v0, p0, Labcd/LL;->j6:I

    invoke-static {v0}, Labcd/OM;->DW(I)I

    move-result v0

    invoke-static {v1}, Labcd/OM;->j6(I)I

    move-result v2

    add-int/2addr v0, v2

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    iget v0, p0, Labcd/LL;->j6:I

    invoke-static {v0}, Labcd/OM;->DW(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Labcd/LL;->j6:I

    invoke-static {v0}, Labcd/OM;->DW(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
