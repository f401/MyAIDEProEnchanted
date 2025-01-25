.class Labcd/NF;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/NF$a;,
        Labcd/NF$b;
    }
.end annotation


# instance fields
.field private DW:Labcd/NF$a;

.field private FH:Labcd/NF$a;

.field private j6:Labcd/NF$b;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/NF$b;

    invoke-direct {v0}, Labcd/NF$b;-><init>()V

    iput-object v0, p0, Labcd/NF;->j6:Labcd/NF$b;

    return-void
.end method


# virtual methods
.method j6()Labcd/iG;
    .registers 5

    iget-object v0, p0, Labcd/NF;->DW:Labcd/NF$a;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {v0}, Labcd/NF$a;->Hw()Labcd/iG;

    move-result-object v2

    invoke-virtual {v0}, Labcd/NF$a;->DW()Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, v0, Labcd/NF$a;->j6:Labcd/NF$a;

    iput-object v3, p0, Labcd/NF;->DW:Labcd/NF$a;

    if-nez v3, :cond_18

    iput-object v1, p0, Labcd/NF;->FH:Labcd/NF$a;

    :cond_18
    iget-object v1, p0, Labcd/NF;->j6:Labcd/NF$b;

    invoke-virtual {v1, v0}, Labcd/NF$b;->j6(Labcd/NF$a;)V

    :cond_1d
    return-object v2
.end method

.method j6(Labcd/iG;)V
    .registers 4

    iget-object v0, p0, Labcd/NF;->FH:Labcd/NF$a;

    if-nez v0, :cond_12

    iget-object v0, p0, Labcd/NF;->j6:Labcd/NF$b;

    invoke-virtual {v0}, Labcd/NF$b;->j6()Labcd/NF$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/NF$a;->j6(Labcd/iG;)V

    iput-object v0, p0, Labcd/NF;->DW:Labcd/NF$a;

    iput-object v0, p0, Labcd/NF;->FH:Labcd/NF$a;

    return-void

    :cond_12
    invoke-virtual {v0}, Labcd/NF$a;->FH()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v0, p0, Labcd/NF;->j6:Labcd/NF$b;

    invoke-virtual {v0}, Labcd/NF$b;->j6()Labcd/NF$a;

    move-result-object v0

    iget-object v1, p0, Labcd/NF;->FH:Labcd/NF$a;

    iput-object v0, v1, Labcd/NF$a;->j6:Labcd/NF$a;

    iput-object v0, p0, Labcd/NF;->FH:Labcd/NF$a;

    :cond_24
    invoke-virtual {v0, p1}, Labcd/NF$a;->j6(Labcd/iG;)V

    return-void
.end method
