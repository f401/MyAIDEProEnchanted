.class Labcd/PF$a;
.super Labcd/XF;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/PF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final DW:Labcd/UF;

.field private final FH:Labcd/XF;

.field final Hw:Labcd/PF;

.field private final j6:Labcd/qG;


# direct methods
.method constructor <init>(Labcd/PF;Labcd/qG;Labcd/XF;)V
    .registers 6

    iput-object p1, p0, Labcd/PF$a;->Hw:Labcd/PF;

    invoke-direct {p0}, Labcd/XF;-><init>()V

    iput-object p2, p0, Labcd/PF$a;->j6:Labcd/qG;

    new-instance v0, Labcd/UF;

    invoke-direct {v0}, Labcd/UF;-><init>()V

    iput-object v0, p0, Labcd/PF$a;->DW:Labcd/UF;

    iput-object p3, p0, Labcd/PF$a;->FH:Labcd/XF;

    iget-object v0, p0, Labcd/PF$a;->FH:Labcd/XF;

    iget-object v1, p0, Labcd/PF$a;->DW:Labcd/UF;

    invoke-virtual {v0, v1}, Labcd/XF;->j6(Labcd/OF;)V

    return-void
.end method


# virtual methods
.method DW()I
    .registers 2

    iget-object v0, p0, Labcd/PF$a;->FH:Labcd/XF;

    invoke-virtual {v0}, Labcd/XF;->DW()I

    move-result v0

    return v0
.end method

.method j6()Labcd/dG;
    .registers 7

    iget-object v0, p0, Labcd/PF$a;->FH:Labcd/XF;

    invoke-virtual {v0}, Labcd/XF;->j6()Labcd/dG;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, v0, Labcd/dG;->J8:[Labcd/dG;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    aget-object v4, v2, v1

    iget v5, v4, Labcd/iG;->EQ:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1

    iget-object v5, p0, Labcd/PF$a;->DW:Labcd/UF;

    invoke-virtual {v5, v4}, Labcd/UF;->j6(Labcd/dG;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Labcd/UF;

    invoke-direct {v0}, Labcd/UF;-><init>()V

    iget-object v1, p0, Labcd/PF$a;->DW:Labcd/UF;

    invoke-virtual {v0, v1}, Labcd/OF;->j6(Labcd/OF;)V

    :cond_3
    :goto_2
    iget-object v1, p0, Labcd/PF$a;->DW:Labcd/UF;

    invoke-virtual {v1}, Labcd/UF;->j6()Labcd/dG;

    move-result-object v1

    if-nez v1, :cond_4

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Labcd/UF;->DW(I)V

    iget-object v1, p0, Labcd/PF$a;->Hw:Labcd/PF;

    iput-object v0, v1, Labcd/PF;->j6:Labcd/XF;

    invoke-virtual {v0}, Labcd/UF;->j6()Labcd/dG;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget v2, v1, Labcd/iG;->EQ:I

    and-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_3

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_5

    iget-object v2, p0, Labcd/PF$a;->j6:Labcd/qG;

    invoke-virtual {v1, v2}, Labcd/dG;->j6(Labcd/qG;)V

    :cond_5
    iget v2, v1, Labcd/iG;->EQ:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Labcd/iG;->EQ:I

    invoke-virtual {v0, v1}, Labcd/UF;->j6(Labcd/dG;)V

    goto :goto_2
.end method

.method j6(Labcd/OF;)V
    .registers 3

    iget-object v0, p0, Labcd/PF$a;->DW:Labcd/UF;

    invoke-virtual {p1, v0}, Labcd/OF;->j6(Labcd/OF;)V

    return-void
.end method
