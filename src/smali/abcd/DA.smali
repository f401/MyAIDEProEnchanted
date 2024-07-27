.class public Labcd/DA;
.super Ljava/lang/Object;


# instance fields
.field private DW:I

.field private FH:Labcd/CA;

.field private Hw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/EA;",
            ">;"
        }
    .end annotation
.end field

.field private j6:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Labcd/DA;->j6:I

    iput v0, p0, Labcd/DA;->DW:I

    new-instance v0, Labcd/CA;

    invoke-direct {v0}, Labcd/CA;-><init>()V

    iput-object v0, p0, Labcd/DA;->FH:Labcd/CA;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/DA;->Hw:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public DW(I)V
    .registers 2

    iput p1, p0, Labcd/DA;->j6:I

    return-void
.end method

.method public j6()V
    .registers 2

    const/16 v0, 0x2710

    iput v0, p0, Labcd/DA;->j6:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/DA;->DW:I

    return-void
.end method

.method public j6(I)V
    .registers 2

    iput p1, p0, Labcd/DA;->DW:I

    return-void
.end method

.method public j6(ILjava/lang/String;)V
    .registers 7

    iget v0, p0, Labcd/DA;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/DA;->DW:I

    iget v0, p0, Labcd/DA;->DW:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Labcd/DA;->j6:I

    div-int v1, v0, v1

    iget-object v0, p0, Labcd/DA;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/EA;

    iget-object v3, p0, Labcd/DA;->FH:Labcd/CA;

    invoke-virtual {v3, p2}, Labcd/CA;->j6(Ljava/lang/String;)V

    iget-object v3, p0, Labcd/DA;->FH:Labcd/CA;

    invoke-virtual {v3, v1}, Labcd/CA;->j6(I)V

    iget-object v3, p0, Labcd/DA;->FH:Labcd/CA;

    invoke-virtual {v3, p1}, Labcd/CA;->DW(I)V

    iget-object v3, p0, Labcd/DA;->FH:Labcd/CA;

    invoke-interface {v0, v3}, Labcd/EA;->j6(Labcd/CA;)V

    goto :goto_0

    :cond_0
    return-void
.end method
