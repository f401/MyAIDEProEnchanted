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

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v0, v1, Labcd/OF$a;->FH:I

    :goto_1
    iget v2, v1, Labcd/OF$a;->Hw:I

    if-lt v0, v2, :cond_1

    iget-object v0, v1, Labcd/OF$a;->j6:Labcd/OF$a;

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v2, v1, Labcd/OF$a;->DW:[Labcd/dG;

    aget-object v2, v2, v0

    iget v3, v2, Labcd/iG;->EQ:I

    xor-int/lit8 v4, p1, -0x1

    and-int/2addr v3, v4

    iput v3, v2, Labcd/iG;->EQ:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public DW(Labcd/dG;)V
    .registers 4

    iget-object v0, p0, Labcd/UF;->Hw:Labcd/OF$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/OF;->FH:Labcd/OF$b;

    invoke-virtual {v0}, Labcd/OF$b;->j6()Labcd/OF$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/OF$a;->VH()V

    invoke-virtual {v0, p1}, Labcd/OF$a;->j6(Labcd/dG;)V

    iput-object v0, p0, Labcd/UF;->Hw:Labcd/OF$a;

    iput-object v0, p0, Labcd/UF;->v5:Labcd/OF$a;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Labcd/OF$a;->j6()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Labcd/OF$a;->DW(Labcd/dG;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labcd/OF;->FH:Labcd/OF$b;

    invoke-virtual {v0}, Labcd/OF$b;->j6()Labcd/OF$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/OF$a;->Zo()V

    invoke-virtual {v0, p1}, Labcd/OF$a;->DW(Labcd/dG;)V

    iget-object v1, p0, Labcd/UF;->Hw:Labcd/OF$a;

    iput-object v1, v0, Labcd/OF$a;->j6:Labcd/OF$a;

    iput-object v0, p0, Labcd/UF;->Hw:Labcd/OF$a;

    goto :goto_0
.end method

.method public j6()Labcd/dG;
    .registers 5

    const/4 v0, 0x0

    iget-object v2, p0, Labcd/UF;->Hw:Labcd/OF$a;

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v2}, Labcd/OF$a;->v5()Labcd/dG;

    move-result-object v1

    invoke-virtual {v2}, Labcd/OF$a;->FH()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Labcd/OF$a;->j6:Labcd/OF$a;

    iput-object v3, p0, Labcd/UF;->Hw:Labcd/OF$a;

    iget-object v3, p0, Labcd/UF;->Hw:Labcd/OF$a;

    if-nez v3, :cond_1

    iput-object v0, p0, Labcd/UF;->v5:Labcd/OF$a;

    :cond_1
    iget-object v0, p0, Labcd/OF;->FH:Labcd/OF$b;

    invoke-virtual {v0, v2}, Labcd/OF$b;->j6(Labcd/OF$a;)V

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public j6(Labcd/dG;)V
    .registers 4

    iget-object v0, p0, Labcd/UF;->v5:Labcd/OF$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/OF;->FH:Labcd/OF$b;

    invoke-virtual {v0}, Labcd/OF$b;->j6()Labcd/OF$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/OF$a;->j6(Labcd/dG;)V

    iput-object v0, p0, Labcd/UF;->Hw:Labcd/OF$a;

    iput-object v0, p0, Labcd/UF;->v5:Labcd/OF$a;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Labcd/OF$a;->Hw()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Labcd/OF;->FH:Labcd/OF$b;

    invoke-virtual {v0}, Labcd/OF$b;->j6()Labcd/OF$a;

    move-result-object v0

    iget-object v1, p0, Labcd/UF;->v5:Labcd/OF$a;

    iput-object v0, v1, Labcd/OF$a;->j6:Labcd/OF$a;

    iput-object v0, p0, Labcd/UF;->v5:Labcd/OF$a;

    :cond_1
    invoke-virtual {v0, p1}, Labcd/OF$a;->j6(Labcd/dG;)V

    goto :goto_0
.end method

.method j6(I)Z
    .registers 5

    iget-object v0, p0, Labcd/UF;->Hw:Labcd/OF$a;

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    iget v0, v1, Labcd/OF$a;->FH:I

    :goto_2
    iget v2, v1, Labcd/OF$a;->Hw:I

    if-lt v0, v2, :cond_1

    iget-object v0, v1, Labcd/OF$a;->j6:Labcd/OF$a;

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v2, v1, Labcd/OF$a;->DW:[Labcd/dG;

    aget-object v2, v2, v0

    iget v2, v2, Labcd/iG;->EQ:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Labcd/UF;->Hw:Labcd/OF$a;

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, v1, Labcd/OF$a;->FH:I

    :goto_1
    iget v3, v1, Labcd/OF$a;->Hw:I

    if-lt v0, v3, :cond_1

    iget-object v0, v1, Labcd/OF$a;->j6:Labcd/OF$a;

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v3, v1, Labcd/OF$a;->DW:[Labcd/dG;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Labcd/LF;->j6(Ljava/lang/StringBuilder;Labcd/dG;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
