.class public Labcd/gJ;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Labcd/RE;

.field private final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Labcd/UE;Labcd/WI;Labcd/YD;Ljava/lang/String;)V
    .registers 12

    invoke-virtual {p2}, Labcd/WI;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Labcd/WI;->DW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Labcd/WI;->FH()Z

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Labcd/gJ;-><init>(Labcd/UE;Ljava/lang/String;Ljava/lang/String;ZLabcd/YD;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Labcd/UE;Ljava/lang/String;Ljava/lang/String;ZLabcd/YD;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Labcd/gJ;->j6:Ljava/lang/String;

    invoke-virtual {p1, p2}, Labcd/UE;->v5(Ljava/lang/String;)Labcd/RE;

    move-result-object v0

    iput-object v0, p0, Labcd/gJ;->DW:Labcd/RE;

    iget-object v0, p0, Labcd/gJ;->DW:Labcd/RE;

    invoke-virtual {v0, p4}, Labcd/RE;->j6(Z)V

    iget-object v0, p0, Labcd/gJ;->DW:Labcd/RE;

    invoke-virtual {v0, p5}, Labcd/RE;->DW(Labcd/YD;)V

    iget-object v0, p0, Labcd/gJ;->DW:Labcd/RE;

    const/4 v1, 0x1

    invoke-virtual {v0, p6, v1}, Labcd/RE;->j6(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public DW()Labcd/yE;
    .registers 2

    iget-object v0, p0, Labcd/gJ;->DW:Labcd/RE;

    invoke-virtual {v0}, Labcd/RE;->v5()Labcd/yE;

    move-result-object v0

    return-object v0
.end method

.method DW(Labcd/qG;)V
    .registers 3

    iget-object v0, p0, Labcd/gJ;->DW:Labcd/RE;

    invoke-virtual {v0, p1}, Labcd/RE;->DW(Labcd/qG;)Labcd/RE$a;

    return-void
.end method

.method public FH()Labcd/yE;
    .registers 2

    iget-object v0, p0, Labcd/gJ;->DW:Labcd/RE;

    invoke-virtual {v0}, Labcd/RE;->Zo()Labcd/yE;

    move-result-object v0

    return-object v0
.end method

.method public Hw()Labcd/RE$a;
    .registers 2

    iget-object v0, p0, Labcd/gJ;->DW:Labcd/RE;

    invoke-virtual {v0}, Labcd/RE;->we()Labcd/RE$a;

    move-result-object v0

    return-object v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/gJ;->DW:Labcd/RE;

    invoke-virtual {v0}, Labcd/RE;->Hw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method j6(Labcd/qG;)V
    .registers 3

    iget-object v0, p0, Labcd/gJ;->DW:Labcd/RE;

    invoke-virtual {v0, p1}, Labcd/RE;->j6(Labcd/qG;)Labcd/RE$a;

    return-void
.end method
