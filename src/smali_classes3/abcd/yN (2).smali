.class public Labcd/yN;
.super Labcd/yL;


# instance fields
.field DW:Labcd/DN;

.field FH:Labcd/wN;

.field Hw:Labcd/cM;

.field j6:Labcd/FL;


# direct methods
.method private constructor <init>(Labcd/FL;)V
    .registers 4

    invoke-direct {p0}, Labcd/yL;-><init>()V

    iput-object p1, p0, Labcd/yN;->j6:Labcd/FL;

    invoke-virtual {p1}, Labcd/FL;->tp()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2e

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    invoke-static {v0}, Labcd/DN;->j6(Ljava/lang/Object;)Labcd/DN;

    move-result-object v0

    iput-object v0, p0, Labcd/yN;->DW:Labcd/DN;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    invoke-static {v0}, Labcd/wN;->j6(Ljava/lang/Object;)Labcd/wN;

    move-result-object v0

    iput-object v0, p0, Labcd/yN;->FH:Labcd/wN;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object p1

    invoke-static {p1}, Labcd/cM;->j6(Ljava/lang/Object;)Labcd/cM;

    move-result-object p1

    iput-object p1, p0, Labcd/yN;->Hw:Labcd/cM;

    return-void

    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence wrong size for a certificate"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static j6(Ljava/lang/Object;)Labcd/yN;
    .registers 2

    instance-of v0, p0, Labcd/yN;

    if-eqz v0, :cond_7

    check-cast p0, Labcd/yN;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Labcd/yN;

    invoke-static {p0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object p0

    invoke-direct {v0, p0}, Labcd/yN;-><init>(Labcd/FL;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 2

    iget-object v0, p0, Labcd/yN;->j6:Labcd/FL;

    return-object v0
.end method

.method public VH()Labcd/DN;
    .registers 2

    iget-object v0, p0, Labcd/yN;->DW:Labcd/DN;

    return-object v0
.end method

.method public Zo()Labcd/wL;
    .registers 2

    iget-object v0, p0, Labcd/yN;->DW:Labcd/DN;

    invoke-virtual {v0}, Labcd/DN;->VH()Labcd/wL;

    move-result-object v0

    return-object v0
.end method

.method public v5()Labcd/sN;
    .registers 2

    iget-object v0, p0, Labcd/yN;->DW:Labcd/DN;

    invoke-virtual {v0}, Labcd/DN;->Zo()Labcd/sN;

    move-result-object v0

    return-object v0
.end method
