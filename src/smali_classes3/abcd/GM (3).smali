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

    iget-boolean v0, p0, Labcd/LL;->DW:Z

    const/4 v1, 0x1

    if-nez v0, :cond_19

    iget-boolean v0, p0, Labcd/LL;->FH:Z

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Labcd/LL;->Hw:Labcd/qL;

    invoke-interface {v0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EL;->gn()Labcd/EL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EL;->Zo()Z

    move-result v0

    return v0

    :cond_19
    return v1
.end method

.method j6(Labcd/CL;)V
    .registers 5

    iget-boolean v0, p0, Labcd/LL;->DW:Z

    const/16 v1, 0xa0

    if-nez v0, :cond_36

    iget-object v0, p0, Labcd/LL;->Hw:Labcd/qL;

    invoke-interface {v0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EL;->gn()Labcd/EL;

    move-result-object v0

    iget-boolean v2, p0, Labcd/LL;->FH:Z

    if-eqz v2, :cond_24

    iget v2, p0, Labcd/LL;->j6:I

    invoke-virtual {p1, v1, v2}, Labcd/CL;->j6(II)V

    invoke-virtual {v0}, Labcd/EL;->v5()I

    move-result v1

    invoke-virtual {p1, v1}, Labcd/CL;->DW(I)V

    invoke-virtual {p1, v0}, Labcd/CL;->j6(Labcd/qL;)V

    goto :goto_3d

    :cond_24
    invoke-virtual {v0}, Labcd/EL;->Zo()Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_2d

    :cond_2b
    const/16 v1, 0x80

    :goto_2d
    iget v2, p0, Labcd/LL;->j6:I

    invoke-virtual {p1, v1, v2}, Labcd/CL;->j6(II)V

    invoke-virtual {p1, v0}, Labcd/CL;->j6(Labcd/EL;)V

    goto :goto_3d

    :cond_36
    iget v0, p0, Labcd/LL;->j6:I

    sget-object v2, Labcd/GM;->v5:[B

    invoke-virtual {p1, v1, v0, v2}, Labcd/CL;->j6(II[B)V

    :goto_3d
    return-void
.end method

.method v5()I
    .registers 4

    iget-boolean v0, p0, Labcd/LL;->DW:Z

    if-nez v0, :cond_2c

    iget-object v0, p0, Labcd/LL;->Hw:Labcd/qL;

    invoke-interface {v0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EL;->gn()Labcd/EL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EL;->v5()I

    move-result v0

    iget-boolean v1, p0, Labcd/LL;->FH:Z

    if-eqz v1, :cond_22

    iget v1, p0, Labcd/LL;->j6:I

    invoke-static {v1}, Labcd/OM;->DW(I)I

    move-result v1

    invoke-static {v0}, Labcd/OM;->j6(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2a

    :cond_22
    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Labcd/LL;->j6:I

    invoke-static {v1}, Labcd/OM;->DW(I)I

    move-result v1

    :goto_2a
    add-int/2addr v1, v0

    return v1

    :cond_2c
    iget v0, p0, Labcd/LL;->j6:I

    invoke-static {v0}, Labcd/OM;->DW(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
