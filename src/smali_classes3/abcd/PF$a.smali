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
    .registers 4

    iput-object p1, p0, Labcd/PF$a;->Hw:Labcd/PF;

    invoke-direct {p0}, Labcd/XF;-><init>()V

    iput-object p2, p0, Labcd/PF$a;->j6:Labcd/qG;

    new-instance p1, Labcd/UF;

    invoke-direct {p1}, Labcd/UF;-><init>()V

    iput-object p1, p0, Labcd/PF$a;->DW:Labcd/UF;

    iput-object p3, p0, Labcd/PF$a;->FH:Labcd/XF;

    invoke-virtual {p3, p1}, Labcd/XF;->j6(Labcd/OF;)V

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

    if-eqz v0, :cond_1f

    iget-object v1, v0, Labcd/dG;->J8:[Labcd/dG;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-lt v3, v2, :cond_f

    return-object v0

    :cond_f
    aget-object v4, v1, v3

    iget v5, v4, Labcd/iG;->EQ:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1c

    iget-object v5, p0, Labcd/PF$a;->DW:Labcd/UF;

    invoke-virtual {v5, v4}, Labcd/UF;->j6(Labcd/dG;)V

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1f
    new-instance v0, Labcd/UF;

    invoke-direct {v0}, Labcd/UF;-><init>()V

    iget-object v1, p0, Labcd/PF$a;->DW:Labcd/UF;

    invoke-virtual {v0, v1}, Labcd/OF;->j6(Labcd/OF;)V

    :goto_29
    iget-object v1, p0, Labcd/PF$a;->DW:Labcd/UF;

    invoke-virtual {v1}, Labcd/UF;->j6()Labcd/dG;

    move-result-object v1

    const/16 v2, 0x10

    if-nez v1, :cond_3f

    invoke-virtual {v0, v2}, Labcd/UF;->DW(I)V

    iget-object v1, p0, Labcd/PF$a;->Hw:Labcd/PF;

    iput-object v0, v1, Labcd/PF;->j6:Labcd/XF;

    invoke-virtual {v0}, Labcd/UF;->j6()Labcd/dG;

    move-result-object v0

    return-object v0

    :cond_3f
    iget v3, v1, Labcd/iG;->EQ:I

    and-int/lit8 v4, v3, 0x10

    if-eqz v4, :cond_46

    goto :goto_29

    :cond_46
    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_4f

    iget-object v3, p0, Labcd/PF$a;->j6:Labcd/qG;

    invoke-virtual {v1, v3}, Labcd/dG;->j6(Labcd/qG;)V

    :cond_4f
    iget v3, v1, Labcd/iG;->EQ:I

    or-int/2addr v2, v3

    iput v2, v1, Labcd/iG;->EQ:I

    invoke-virtual {v0, v1}, Labcd/UF;->j6(Labcd/dG;)V

    goto :goto_29
.end method

.method j6(Labcd/OF;)V
    .registers 3

    iget-object v0, p0, Labcd/PF$a;->DW:Labcd/UF;

    invoke-virtual {p1, v0}, Labcd/OF;->j6(Labcd/OF;)V

    return-void
.end method
