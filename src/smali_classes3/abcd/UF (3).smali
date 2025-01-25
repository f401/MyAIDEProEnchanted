.class public Labcd/UF;
.super Labcd/OF;


# instance fields
.field private Hw:Labcd/OF$a;

.field private v5:Labcd/OF$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/OF;-><init>()V

    return-void
.end method

.method constructor <init>(Labcd/XF;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/OF;-><init>(Labcd/XF;)V

    return-void
.end method


# virtual methods
.method DW(I)V
    .registers 7

    iget-object v0, p0, Labcd/UF;->Hw:Labcd/OF$a;

    :goto_2
    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v1, v0, Labcd/OF$a;->FH:I

    :goto_7
    iget v2, v0, Labcd/OF$a;->Hw:I

    if-lt v1, v2, :cond_e

    iget-object v0, v0, Labcd/OF$a;->j6:Labcd/OF$a;

    goto :goto_2

    :cond_e
    iget-object v2, v0, Labcd/OF$a;->DW:[Labcd/dG;

    aget-object v2, v2, v1

    iget v3, v2, Labcd/iG;->EQ:I

    xor-int/lit8 v4, p1, -0x1

    and-int/2addr v3, v4

    iput v3, v2, Labcd/iG;->EQ:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public DW(Labcd/dG;)V
    .registers 4

    iget-object v0, p0, Labcd/UF;->Hw:Labcd/OF$a;

    if-nez v0, :cond_15

    iget-object v0, p0, Labcd/OF;->FH:Labcd/OF$b;

    invoke-virtual {v0}, Labcd/OF$b;->j6()Labcd/OF$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/OF$a;->VH()V

    invoke-virtual {v0, p1}, Labcd/OF$a;->j6(Labcd/dG;)V

    iput-object v0, p0, Labcd/UF;->Hw:Labcd/OF$a;

    iput-object v0, p0, Labcd/UF;->v5:Labcd/OF$a;

    return-void

    :cond_15
    invoke-virtual {v0}, Labcd/OF$a;->j6()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0, p1}, Labcd/OF$a;->DW(Labcd/dG;)V

    return-void

    :cond_1f
    iget-object v0, p0, Labcd/OF;->FH:Labcd/OF$b;

    invoke-virtual {v0}, Labcd/OF$b;->j6()Labcd/OF$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/OF$a;->Zo()V

    invoke-virtual {v0, p1}, Labcd/OF$a;->DW(Labcd/dG;)V

    iget-object p1, p0, Labcd/UF;->Hw:Labcd/OF$a;

    iput-object p1, v0, Labcd/OF$a;->j6:Labcd/OF$a;

    iput-object v0, p0, Labcd/UF;->Hw:Labcd/OF$a;

    return-void
.end method

.method public j6()Labcd/dG;
    .registers 5

    iget-object v0, p0, Labcd/UF;->Hw:Labcd/OF$a;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {v0}, Labcd/OF$a;->v5()Labcd/dG;

    move-result-object v2

    invoke-virtual {v0}, Labcd/OF$a;->FH()Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, v0, Labcd/OF$a;->j6:Labcd/OF$a;

    iput-object v3, p0, Labcd/UF;->Hw:Labcd/OF$a;

    if-nez v3, :cond_18

    iput-object v1, p0, Labcd/UF;->v5:Labcd/OF$a;

    :cond_18
    iget-object v1, p0, Labcd/OF;->FH:Labcd/OF$b;

    invoke-virtual {v1, v0}, Labcd/OF$b;->j6(Labcd/OF$a;)V

    :cond_1d
    return-object v2
.end method

.method public j6(Labcd/dG;)V
    .registers 4

    iget-object v0, p0, Labcd/UF;->v5:Labcd/OF$a;

    if-nez v0, :cond_12

    iget-object v0, p0, Labcd/OF;->FH:Labcd/OF$b;

    invoke-virtual {v0}, Labcd/OF$b;->j6()Labcd/OF$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/OF$a;->j6(Labcd/dG;)V

    iput-object v0, p0, Labcd/UF;->Hw:Labcd/OF$a;

    iput-object v0, p0, Labcd/UF;->v5:Labcd/OF$a;

    return-void

    :cond_12
    invoke-virtual {v0}, Labcd/OF$a;->Hw()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v0, p0, Labcd/OF;->FH:Labcd/OF$b;

    invoke-virtual {v0}, Labcd/OF$b;->j6()Labcd/OF$a;

    move-result-object v0

    iget-object v1, p0, Labcd/UF;->v5:Labcd/OF$a;

    iput-object v0, v1, Labcd/OF$a;->j6:Labcd/OF$a;

    iput-object v0, p0, Labcd/UF;->v5:Labcd/OF$a;

    :cond_24
    invoke-virtual {v0, p1}, Labcd/OF$a;->j6(Labcd/dG;)V

    return-void
.end method

.method j6(I)Z
    .registers 5

    iget-object v0, p0, Labcd/UF;->Hw:Labcd/OF$a;

    :goto_2
    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    iget v1, v0, Labcd/OF$a;->FH:I

    :goto_8
    iget v2, v0, Labcd/OF$a;->Hw:I

    if-lt v1, v2, :cond_f

    iget-object v0, v0, Labcd/OF$a;->j6:Labcd/OF$a;

    goto :goto_2

    :cond_f
    iget-object v2, v0, Labcd/OF$a;->DW:[Labcd/dG;

    aget-object v2, v2, v1

    iget v2, v2, Labcd/iG;->EQ:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Labcd/UF;->Hw:Labcd/OF$a;

    :goto_7
    if-nez v1, :cond_e

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    iget v2, v1, Labcd/OF$a;->FH:I

    :goto_10
    iget v3, v1, Labcd/OF$a;->Hw:I

    if-lt v2, v3, :cond_17

    iget-object v1, v1, Labcd/OF$a;->j6:Labcd/OF$a;

    goto :goto_7

    :cond_17
    iget-object v3, v1, Labcd/OF$a;->DW:[Labcd/dG;

    aget-object v3, v3, v2

    invoke-static {v0, v3}, Labcd/LF;->j6(Ljava/lang/StringBuilder;Labcd/dG;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10
.end method
