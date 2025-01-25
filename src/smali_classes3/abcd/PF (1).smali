.class Labcd/PF;
.super Labcd/XF;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/PF$a;
    }
.end annotation


# instance fields
.field j6:Labcd/XF;


# direct methods
.method constructor <init>(Labcd/qG;Labcd/XF;)V
    .registers 4

    invoke-direct {p0}, Labcd/XF;-><init>()V

    new-instance v0, Labcd/PF$a;

    invoke-direct {v0, p0, p1, p2}, Labcd/PF$a;-><init>(Labcd/PF;Labcd/qG;Labcd/XF;)V

    iput-object v0, p0, Labcd/PF;->j6:Labcd/XF;

    return-void
.end method


# virtual methods
.method DW()I
    .registers 2

    iget-object v0, p0, Labcd/PF;->j6:Labcd/XF;

    invoke-virtual {v0}, Labcd/XF;->DW()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    return v0
.end method

.method j6()Labcd/dG;
    .registers 2

    iget-object v0, p0, Labcd/PF;->j6:Labcd/XF;

    invoke-virtual {v0}, Labcd/XF;->j6()Labcd/dG;

    move-result-object v0

    return-object v0
.end method

.method j6(Labcd/OF;)V
    .registers 3

    iget-object v0, p0, Labcd/PF;->j6:Labcd/XF;

    invoke-virtual {v0, p1}, Labcd/XF;->j6(Labcd/OF;)V

    return-void
.end method
