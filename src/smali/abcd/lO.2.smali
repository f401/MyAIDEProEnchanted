.class public Labcd/lO;
.super Ljava/lang/Object;


# instance fields
.field private DW:Z

.field private FH:Labcd/WN;

.field private Hw:Labcd/WN;

.field private j6:Labcd/AP;

.field private v5:Labcd/_N;


# direct methods
.method public constructor <init>(Labcd/AP;)V
    .registers 3

    new-instance v0, Labcd/hO;

    invoke-direct {v0}, Labcd/hO;-><init>()V

    invoke-direct {p0, p1, v0}, Labcd/lO;-><init>(Labcd/AP;Labcd/_N;)V

    return-void
.end method

.method public constructor <init>(Labcd/AP;Labcd/_N;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/lO;->j6:Labcd/AP;

    iput-object p2, p0, Labcd/lO;->v5:Labcd/_N;

    return-void
.end method

.method private j6(Labcd/vP;Labcd/XM;)Labcd/kO;
    .registers 10

    iget-boolean v0, p0, Labcd/lO;->DW:Z

    if-eqz v0, :cond_0

    new-instance v0, Labcd/kO;

    iget-object v3, p0, Labcd/lO;->j6:Labcd/AP;

    iget-object v4, p0, Labcd/lO;->v5:Labcd/_N;

    const/4 v5, 0x1

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Labcd/kO;-><init>(Labcd/XM;Labcd/vP;Labcd/AP;Labcd/_N;Z)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Labcd/lO;->FH:Labcd/WN;

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/lO;->Hw:Labcd/WN;

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Labcd/lO;->FH:Labcd/WN;

    if-nez v0, :cond_2

    new-instance v0, Labcd/iO;

    invoke-direct {v0}, Labcd/iO;-><init>()V

    iput-object v0, p0, Labcd/lO;->FH:Labcd/WN;

    :cond_2
    new-instance v0, Labcd/kO;

    iget-object v3, p0, Labcd/lO;->j6:Labcd/AP;

    iget-object v4, p0, Labcd/lO;->v5:Labcd/_N;

    iget-object v5, p0, Labcd/lO;->FH:Labcd/WN;

    iget-object v6, p0, Labcd/lO;->Hw:Labcd/WN;

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Labcd/kO;-><init>(Labcd/XM;Labcd/vP;Labcd/AP;Labcd/_N;Labcd/WN;Labcd/WN;)V

    goto :goto_0

    :cond_3
    new-instance v0, Labcd/kO;

    iget-object v1, p0, Labcd/lO;->j6:Labcd/AP;

    iget-object v2, p0, Labcd/lO;->v5:Labcd/_N;

    invoke-direct {v0, p2, p1, v1, v2}, Labcd/kO;-><init>(Labcd/XM;Labcd/vP;Labcd/AP;Labcd/_N;)V

    goto :goto_0
.end method


# virtual methods
.method public DW(Labcd/WN;)Labcd/lO;
    .registers 2

    iput-object p1, p0, Labcd/lO;->Hw:Labcd/WN;

    return-object p0
.end method

.method public j6(Labcd/vP;Labcd/SN;)Labcd/kO;
    .registers 6

    new-instance v0, Labcd/XM;

    new-instance v1, Labcd/VM;

    invoke-virtual {p2}, Labcd/SN;->j6()Labcd/yN;

    move-result-object v2

    invoke-direct {v1, v2}, Labcd/VM;-><init>(Labcd/yN;)V

    invoke-direct {v0, v1}, Labcd/XM;-><init>(Labcd/VM;)V

    invoke-direct {p0, p1, v0}, Labcd/lO;->j6(Labcd/vP;Labcd/XM;)Labcd/kO;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/kO;->j6(Labcd/SN;)V

    return-object v0
.end method

.method public j6(Labcd/vP;[B)Labcd/kO;
    .registers 5

    new-instance v0, Labcd/XM;

    new-instance v1, Labcd/pM;

    invoke-direct {v1, p2}, Labcd/pM;-><init>([B)V

    invoke-direct {v0, v1}, Labcd/XM;-><init>(Labcd/AL;)V

    invoke-direct {p0, p1, v0}, Labcd/lO;->j6(Labcd/vP;Labcd/XM;)Labcd/kO;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/WN;)Labcd/lO;
    .registers 2

    iput-object p1, p0, Labcd/lO;->FH:Labcd/WN;

    return-object p0
.end method

.method public j6(Z)Labcd/lO;
    .registers 2

    iput-boolean p1, p0, Labcd/lO;->DW:Z

    return-object p0
.end method
