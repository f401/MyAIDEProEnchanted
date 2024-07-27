.class public Labcd/TF$c;
.super Labcd/qG;

# interfaces
.implements Labcd/TF;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/TF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final QX:Labcd/fG;

.field private final Ws:I

.field private final XL:Labcd/fG;


# direct methods
.method public constructor <init>(Labcd/IE;I)V
    .registers 4

    invoke-direct {p0, p1}, Labcd/qG;-><init>(Labcd/IE;)V

    iput p2, p0, Labcd/TF$c;->Ws:I

    const-string v0, "UNSHALLOW"

    invoke-virtual {p0, v0}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v0

    iput-object v0, p0, Labcd/TF$c;->QX:Labcd/fG;

    const-string v0, "REINTERESTING"

    invoke-virtual {p0, v0}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v0

    iput-object v0, p0, Labcd/TF$c;->XL:Labcd/fG;

    return-void
.end method


# virtual methods
.method public DW()Labcd/fG;
    .registers 2

    iget-object v0, p0, Labcd/TF$c;->QX:Labcd/fG;

    return-object v0
.end method

.method public Hw(Labcd/dG;)V
    .registers 4

    instance-of v0, p1, Labcd/TF$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Labcd/TF$a;

    const/4 v1, 0x0

    iput v1, v0, Labcd/TF$a;->aM:I

    :cond_0
    invoke-super {p0, p1}, Labcd/qG;->DW(Labcd/dG;)V

    return-void
.end method

.method public getDepth()I
    .registers 2

    iget v0, p0, Labcd/TF$c;->Ws:I

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

    iget-object v0, p0, Labcd/TF$c;->XL:Labcd/fG;

    return-object v0
.end method
