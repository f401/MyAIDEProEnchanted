.class public Labcd/TF$b;
.super Labcd/_F;

# interfaces
.implements Labcd/TF;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/TF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final er:Labcd/fG;

.field private final rN:I

.field private final yS:Labcd/fG;


# direct methods
.method public constructor <init>(Labcd/IE;I)V
    .registers 4

    invoke-direct {p0, p1}, Labcd/_F;-><init>(Labcd/IE;)V

    iput p2, p0, Labcd/TF$b;->rN:I

    const-string v0, "UNSHALLOW"

    invoke-virtual {p0, v0}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v0

    iput-object v0, p0, Labcd/TF$b;->er:Labcd/fG;

    const-string v0, "REINTERESTING"

    invoke-virtual {p0, v0}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v0

    iput-object v0, p0, Labcd/TF$b;->yS:Labcd/fG;

    return-void
.end method


# virtual methods
.method public DW()Labcd/fG;
    .registers 2

    iget-object v0, p0, Labcd/TF$b;->er:Labcd/fG;

    return-object v0
.end method

.method public VH(Labcd/iG;)V
    .registers 3

    instance-of v0, p1, Labcd/dG;

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/TF$b;->er:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->j6(Labcd/fG;)V

    :cond_0
    invoke-super {p0, p1}, Labcd/_F;->Hw(Labcd/iG;)V

    return-void
.end method

.method public Zo(Labcd/iG;)V
    .registers 4

    move-object v0, p1

    :goto_0
    instance-of v1, v0, Labcd/lG;

    if-nez v1, :cond_1

    instance-of v1, v0, Labcd/TF$a;

    if-eqz v1, :cond_0

    check-cast v0, Labcd/TF$a;

    const/4 v1, 0x0

    iput v1, v0, Labcd/TF$a;->aM:I

    :cond_0
    invoke-super {p0, p1}, Labcd/_F;->Hw(Labcd/iG;)V

    return-void

    :cond_1
    check-cast v0, Labcd/lG;

    invoke-virtual {v0}, Labcd/lG;->j3()Labcd/iG;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/qG;->DW(Labcd/iG;)V

    goto :goto_0
.end method

.method public getDepth()I
    .registers 2

    iget v0, p0, Labcd/TF$b;->rN:I

    return v0
.end method

.method protected j6(Labcd/YD;)Labcd/dG;
    .registers 3

    new-instance v0, Labcd/TF$a;

    invoke-direct {v0, p1}, Labcd/TF$a;-><init>(Labcd/YD;)V

    return-object v0
.end method

.method public j6()Labcd/fG;
    .registers 2

    iget-object v0, p0, Labcd/TF$b;->yS:Labcd/fG;

    return-object v0
.end method
