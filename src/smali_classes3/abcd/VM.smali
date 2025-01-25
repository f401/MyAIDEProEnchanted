.class public Labcd/VM;
.super Labcd/yL;


# instance fields
.field private DW:Labcd/wL;

.field private j6:Labcd/sN;


# direct methods
.method public constructor <init>(Labcd/yN;)V
    .registers 3

    invoke-direct {p0}, Labcd/yL;-><init>()V

    invoke-virtual {p1}, Labcd/yN;->v5()Labcd/sN;

    move-result-object v0

    iput-object v0, p0, Labcd/VM;->j6:Labcd/sN;

    invoke-virtual {p1}, Labcd/yN;->Zo()Labcd/wL;

    move-result-object p1

    iput-object p1, p0, Labcd/VM;->DW:Labcd/wL;

    return-void
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 3

    new-instance v0, Labcd/rL;

    invoke-direct {v0}, Labcd/rL;-><init>()V

    iget-object v1, p0, Labcd/VM;->j6:Labcd/sN;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/VM;->DW:Labcd/wL;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    new-instance v1, Labcd/tM;

    invoke-direct {v1, v0}, Labcd/tM;-><init>(Labcd/rL;)V

    return-object v1
.end method
