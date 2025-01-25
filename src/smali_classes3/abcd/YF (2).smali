.class public Labcd/YF;
.super Labcd/OF;


# instance fields
.field private Hw:Labcd/OF$a;


# direct methods
.method constructor <init>(Labcd/XF;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/OF;-><init>(Labcd/XF;)V

    return-void
.end method


# virtual methods
.method public j6()Labcd/dG;
    .registers 4

    iget-object v0, p0, Labcd/YF;->Hw:Labcd/OF$a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Labcd/OF$a;->v5()Labcd/dG;

    move-result-object v1

    invoke-virtual {v0}, Labcd/OF$a;->FH()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v0, Labcd/OF$a;->j6:Labcd/OF$a;

    iput-object v2, p0, Labcd/YF;->Hw:Labcd/OF$a;

    iget-object v2, p0, Labcd/OF;->FH:Labcd/OF$b;

    invoke-virtual {v2, v0}, Labcd/OF$b;->j6(Labcd/OF$a;)V

    :cond_19
    return-object v1
.end method

.method public j6(Labcd/dG;)V
    .registers 4

    iget-object v0, p0, Labcd/YF;->Hw:Labcd/OF$a;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Labcd/OF$a;->j6()Z

    move-result v1

    if-nez v1, :cond_19

    :cond_a
    iget-object v0, p0, Labcd/OF;->FH:Labcd/OF$b;

    invoke-virtual {v0}, Labcd/OF$b;->j6()Labcd/OF$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/OF$a;->Zo()V

    iget-object v1, p0, Labcd/YF;->Hw:Labcd/OF$a;

    iput-object v1, v0, Labcd/OF$a;->j6:Labcd/OF$a;

    iput-object v0, p0, Labcd/YF;->Hw:Labcd/OF$a;

    :cond_19
    invoke-virtual {v0, p1}, Labcd/OF$a;->DW(Labcd/dG;)V

    return-void
.end method

.method j6(I)Z
    .registers 5

    iget-object v0, p0, Labcd/YF;->Hw:Labcd/OF$a;

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

    iget-object v1, p0, Labcd/YF;->Hw:Labcd/OF$a;

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
