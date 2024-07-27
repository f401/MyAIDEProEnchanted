.class abstract Labcd/OF;
.super Labcd/LF;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/OF$a;,
        Labcd/OF$b;
    }
.end annotation


# instance fields
.field protected FH:Labcd/OF$b;


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Labcd/LF;-><init>()V

    new-instance v0, Labcd/OF$b;

    invoke-direct {v0}, Labcd/OF$b;-><init>()V

    iput-object v0, p0, Labcd/OF;->FH:Labcd/OF$b;

    return-void
.end method

.method constructor <init>(Labcd/XF;)V
    .registers 3

    invoke-direct {p0}, Labcd/LF;-><init>()V

    new-instance v0, Labcd/OF$b;

    invoke-direct {v0}, Labcd/OF$b;-><init>()V

    iput-object v0, p0, Labcd/OF;->FH:Labcd/OF$b;

    invoke-virtual {p1}, Labcd/XF;->DW()I

    move-result v0

    iput v0, p0, Labcd/LF;->DW:I

    invoke-virtual {p1, p0}, Labcd/XF;->j6(Labcd/OF;)V

    :goto_0
    invoke-virtual {p1}, Labcd/XF;->j6()Labcd/dG;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Labcd/LF;->j6(Labcd/dG;)V

    goto :goto_0
.end method


# virtual methods
.method public j6(Labcd/OF;)V
    .registers 3

    iget-object v0, p1, Labcd/OF;->FH:Labcd/OF$b;

    iput-object v0, p0, Labcd/OF;->FH:Labcd/OF$b;

    return-void
.end method
