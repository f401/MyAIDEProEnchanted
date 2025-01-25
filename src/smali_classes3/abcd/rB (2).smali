.class public Labcd/rB;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Labcd/pB;

.field private final FH:Labcd/AB;

.field private final Hw:Ljava/lang/String;

.field private final j6:Labcd/qI;


# direct methods
.method constructor <init>(Labcd/qI;Ljava/lang/String;Labcd/AB;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/rB;->j6:Labcd/qI;

    iput-object p2, p0, Labcd/rB;->Hw:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/rB;->DW:Labcd/pB;

    iput-object p3, p0, Labcd/rB;->FH:Labcd/AB;

    return-void
.end method

.method constructor <init>(Labcd/qI;Ljava/lang/String;Labcd/pB;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/rB;->j6:Labcd/qI;

    iput-object p2, p0, Labcd/rB;->Hw:Ljava/lang/String;

    iput-object p3, p0, Labcd/rB;->DW:Labcd/pB;

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/rB;->FH:Labcd/AB;

    return-void
.end method


# virtual methods
.method public DW()Z
    .registers 2

    iget-object v0, p0, Labcd/rB;->DW:Labcd/pB;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Labcd/pB;->j6()Labcd/pB$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/pB$a;->Hw()Z

    move-result v0

    return v0

    :cond_d
    iget-object v0, p0, Labcd/rB;->FH:Labcd/AB;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Labcd/AB;->j6()Labcd/AB$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/AB$a;->Hw()Z

    move-result v0

    return v0

    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method public j6()Labcd/pB;
    .registers 2

    iget-object v0, p0, Labcd/rB;->DW:Labcd/pB;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Labcd/rB;->j6:Labcd/qI;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_e
    const-string v1, "No fetch result"

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/rB;->DW:Labcd/pB;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Labcd/pB;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    :cond_24
    iget-object v1, p0, Labcd/rB;->FH:Labcd/AB;

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_2d
    const-string v1, "No update result"

    goto :goto_20

    :goto_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
