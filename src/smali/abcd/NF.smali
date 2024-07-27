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

    const/4 v0, 0x0

    iget-object v2, p0, Labcd/NF;->DW:Labcd/NF$a;

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v2}, Labcd/NF$a;->Hw()Labcd/iG;

    move-result-object v1

    invoke-virtual {v2}, Labcd/NF$a;->DW()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Labcd/NF$a;->j6:Labcd/NF$a;

    iput-object v3, p0, Labcd/NF;->DW:Labcd/NF$a;

    iget-object v3, p0, Labcd/NF;->DW:Labcd/NF$a;

    if-nez v3, :cond_1

    iput-object v0, p0, Labcd/NF;->FH:Labcd/NF$a;

    :cond_1
    iget-object v0, p0, Labcd/NF;->j6:Labcd/NF$b;

    invoke-virtual {v0, v2}, Labcd/NF$b;->j6(Labcd/NF$a;)V

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method j6(Labcd/iG;)V
    .registers 4

    iget-object v0, p0, Labcd/NF;->FH:Labcd/NF$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/NF;->j6:Labcd/NF$b;

    invoke-virtual {v0}, Labcd/NF$b;->j6()Labcd/NF$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/NF$a;->j6(Labcd/iG;)V

    iput-object v0, p0, Labcd/NF;->DW:Labcd/NF$a;

    iput-object v0, p0, Labcd/NF;->FH:Labcd/NF$a;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Labcd/NF$a;->FH()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Labcd/NF;->j6:Labcd/NF$b;

    invoke-virtual {v0}, Labcd/NF$b;->j6()Labcd/NF$a;

    move-result-object v0

    iget-object v1, p0, Labcd/NF;->FH:Labcd/NF$a;

    iput-object v0, v1, Labcd/NF$a;->j6:Labcd/NF$a;

    iput-object v0, p0, Labcd/NF;->FH:Labcd/NF$a;

    :cond_1
    invoke-virtual {v0, p1}, Labcd/NF$a;->j6(Labcd/iG;)V

    goto :goto_0
.end method
