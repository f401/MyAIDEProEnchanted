.class final Labcd/RF;
.super Labcd/XF;


# instance fields
.field private final DW:Labcd/UF;

.field private FH:I

.field private final j6:Labcd/XF;


# direct methods
.method constructor <init>(Labcd/XF;)V
    .registers 3

    invoke-direct {p0}, Labcd/XF;-><init>()V

    iput-object p1, p0, Labcd/RF;->j6:Labcd/XF;

    new-instance v0, Labcd/UF;

    invoke-direct {v0}, Labcd/UF;-><init>()V

    iput-object v0, p0, Labcd/RF;->DW:Labcd/UF;

    return-void
.end method


# virtual methods
.method DW()I
    .registers 2

    iget-object v0, p0, Labcd/RF;->j6:Labcd/XF;

    invoke-virtual {v0}, Labcd/XF;->DW()I

    move-result v0

    return v0
.end method

.method j6()Labcd/dG;
    .registers 3

    :goto_0
    iget v0, p0, Labcd/RF;->FH:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Labcd/RF;->DW:Labcd/UF;

    invoke-virtual {v0}, Labcd/UF;->j6()Labcd/dG;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Labcd/RF;->j6:Labcd/XF;

    invoke-virtual {v0}, Labcd/XF;->j6()Labcd/dG;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Labcd/RF;->DW:Labcd/UF;

    invoke-virtual {v1, v0}, Labcd/UF;->j6(Labcd/dG;)V

    iget v0, p0, Labcd/RF;->FH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/RF;->FH:I

    goto :goto_0

    :cond_2
    iget v1, p0, Labcd/RF;->FH:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Labcd/RF;->FH:I

    goto :goto_1
.end method
