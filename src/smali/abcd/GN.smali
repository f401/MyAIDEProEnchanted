.class public Labcd/GN;
.super Ljava/lang/Object;


# instance fields
.field DW:Labcd/wL;

.field private EQ:Labcd/cM;

.field FH:Labcd/wN;

.field Hw:Labcd/sN;

.field VH:Labcd/sN;

.field Zo:Labcd/FN;

.field gn:Labcd/CN;

.field j6:Labcd/yM;

.field private tp:Z

.field u7:Labcd/AN;

.field v5:Labcd/FN;

.field private we:Labcd/cM;


# direct methods
.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/yM;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Labcd/wL;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Labcd/wL;-><init>(I)V

    invoke-direct {v0, v1, v2, v3}, Labcd/yM;-><init>(ZILabcd/qL;)V

    iput-object v0, p0, Labcd/GN;->j6:Labcd/yM;

    return-void
.end method


# virtual methods
.method public DW(Labcd/FN;)V
    .registers 2

    iput-object p1, p0, Labcd/GN;->v5:Labcd/FN;

    return-void
.end method

.method public DW(Labcd/LN;)V
    .registers 3

    invoke-virtual {p1}, Labcd/LN;->DW()Labcd/EL;

    move-result-object v0

    invoke-static {v0}, Labcd/sN;->j6(Ljava/lang/Object;)Labcd/sN;

    move-result-object v0

    iput-object v0, p0, Labcd/GN;->VH:Labcd/sN;

    return-void
.end method

.method public j6()Labcd/DN;
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Labcd/GN;->DW:Labcd/wL;

    if-eqz v0, :cond_5

    iget-object v0, p0, Labcd/GN;->FH:Labcd/wN;

    if-eqz v0, :cond_5

    iget-object v0, p0, Labcd/GN;->Hw:Labcd/sN;

    if-eqz v0, :cond_5

    iget-object v0, p0, Labcd/GN;->v5:Labcd/FN;

    if-eqz v0, :cond_5

    iget-object v0, p0, Labcd/GN;->Zo:Labcd/FN;

    if-eqz v0, :cond_5

    iget-object v0, p0, Labcd/GN;->VH:Labcd/sN;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Labcd/GN;->tp:Z

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p0, Labcd/GN;->gn:Labcd/CN;

    if-eqz v0, :cond_5

    new-instance v0, Labcd/rL;

    invoke-direct {v0}, Labcd/rL;-><init>()V

    iget-object v1, p0, Labcd/GN;->j6:Labcd/yM;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/GN;->DW:Labcd/wL;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/GN;->FH:Labcd/wN;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/GN;->Hw:Labcd/sN;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    new-instance v1, Labcd/rL;

    invoke-direct {v1}, Labcd/rL;-><init>()V

    iget-object v2, p0, Labcd/GN;->v5:Labcd/FN;

    invoke-virtual {v1, v2}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v2, p0, Labcd/GN;->Zo:Labcd/FN;

    invoke-virtual {v1, v2}, Labcd/rL;->j6(Labcd/qL;)V

    new-instance v2, Labcd/tM;

    invoke-direct {v2, v1}, Labcd/tM;-><init>(Labcd/rL;)V

    invoke-virtual {v0, v2}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/GN;->VH:Labcd/sN;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    :goto_0
    iget-object v1, p0, Labcd/GN;->gn:Labcd/CN;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/GN;->EQ:Labcd/cM;

    if-eqz v1, :cond_1

    new-instance v2, Labcd/yM;

    invoke-direct {v2, v4, v5, v1}, Labcd/yM;-><init>(ZILabcd/qL;)V

    invoke-virtual {v0, v2}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_1
    iget-object v1, p0, Labcd/GN;->we:Labcd/cM;

    if-eqz v1, :cond_2

    new-instance v2, Labcd/yM;

    const/4 v3, 0x2

    invoke-direct {v2, v4, v3, v1}, Labcd/yM;-><init>(ZILabcd/qL;)V

    invoke-virtual {v0, v2}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_2
    iget-object v1, p0, Labcd/GN;->u7:Labcd/AN;

    if-eqz v1, :cond_3

    new-instance v2, Labcd/yM;

    const/4 v3, 0x3

    invoke-direct {v2, v5, v3, v1}, Labcd/yM;-><init>(ZILabcd/qL;)V

    invoke-virtual {v0, v2}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_3
    new-instance v1, Labcd/tM;

    invoke-direct {v1, v0}, Labcd/tM;-><init>(Labcd/rL;)V

    invoke-static {v1}, Labcd/DN;->j6(Ljava/lang/Object;)Labcd/DN;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v1, Labcd/tM;

    invoke-direct {v1}, Labcd/tM;-><init>()V

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not all mandatory fields set in V3 TBScertificate generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Labcd/AN;)V
    .registers 3

    iput-object p1, p0, Labcd/GN;->u7:Labcd/AN;

    if-eqz p1, :cond_0

    sget-object v0, Labcd/zN;->v5:Labcd/zL;

    invoke-virtual {p1, v0}, Labcd/AN;->j6(Labcd/zL;)Labcd/zN;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/zN;->DW()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/GN;->tp:Z

    :cond_0
    return-void
.end method

.method public j6(Labcd/CN;)V
    .registers 2

    iput-object p1, p0, Labcd/GN;->gn:Labcd/CN;

    return-void
.end method

.method public j6(Labcd/FN;)V
    .registers 2

    iput-object p1, p0, Labcd/GN;->Zo:Labcd/FN;

    return-void
.end method

.method public j6(Labcd/JN;)V
    .registers 3

    invoke-static {p1}, Labcd/AN;->j6(Ljava/lang/Object;)Labcd/AN;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/GN;->j6(Labcd/AN;)V

    return-void
.end method

.method public j6(Labcd/LN;)V
    .registers 3

    invoke-static {p1}, Labcd/sN;->j6(Ljava/lang/Object;)Labcd/sN;

    move-result-object v0

    iput-object v0, p0, Labcd/GN;->Hw:Labcd/sN;

    return-void
.end method

.method public j6(Labcd/wL;)V
    .registers 2

    iput-object p1, p0, Labcd/GN;->DW:Labcd/wL;

    return-void
.end method

.method public j6(Labcd/wN;)V
    .registers 2

    iput-object p1, p0, Labcd/GN;->FH:Labcd/wN;

    return-void
.end method
