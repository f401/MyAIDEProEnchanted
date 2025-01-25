.class Labcd/QE;
.super Labcd/RE$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/RE;->j6(Labcd/qG;)Labcd/RE$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/RE;


# direct methods
.method constructor <init>(Labcd/RE;)V
    .registers 3

    iput-object p1, p0, Labcd/QE;->DW:Labcd/RE;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Labcd/RE$b;-><init>(Labcd/RE;Labcd/RE$b;)V

    return-void
.end method


# virtual methods
.method j6(Labcd/RE$a;)Labcd/RE$a;
    .registers 3

    iget-object v0, p0, Labcd/QE;->DW:Labcd/RE;

    invoke-virtual {v0, p1}, Labcd/RE;->j6(Labcd/RE$a;)Labcd/RE$a;

    return-object p1
.end method
