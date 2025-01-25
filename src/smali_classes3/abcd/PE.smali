.class Labcd/PE;
.super Labcd/RE$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/RE;->DW(Labcd/qG;)Labcd/RE$a;
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

    iput-object p1, p0, Labcd/PE;->DW:Labcd/RE;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Labcd/RE$b;-><init>(Labcd/RE;Labcd/RE$b;)V

    return-void
.end method


# virtual methods
.method j6(Labcd/RE$a;)Labcd/RE$a;
    .registers 3

    sget-object v0, Labcd/RE$a;->FH:Labcd/RE$a;

    if-ne p1, v0, :cond_5

    return-object p1

    :cond_5
    iget-object v0, p0, Labcd/PE;->DW:Labcd/RE;

    invoke-virtual {v0, p1}, Labcd/RE;->DW(Labcd/RE$a;)Labcd/RE$a;

    move-result-object p1

    return-object p1
.end method
