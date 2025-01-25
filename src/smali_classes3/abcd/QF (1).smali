.class public Labcd/QF;
.super Labcd/LF;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/QF$a;
    }
.end annotation


# instance fields
.field private FH:Labcd/QF$a;

.field private Hw:Labcd/QF$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/LF;-><init>()V

    return-void
.end method

.method constructor <init>(Labcd/XF;)V
    .registers 3

    invoke-direct {p0}, Labcd/LF;-><init>()V

    :goto_3
    invoke-virtual {p1}, Labcd/XF;->j6()Labcd/dG;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0, v0}, Labcd/QF;->j6(Labcd/dG;)V

    goto :goto_3
.end method

.method private DW(Labcd/dG;)Labcd/QF$a;
    .registers 4

    iget-object v0, p0, Labcd/QF;->Hw:Labcd/QF$a;

    if-nez v0, :cond_a

    new-instance v0, Labcd/QF$a;

    invoke-direct {v0}, Labcd/QF$a;-><init>()V

    goto :goto_e

    :cond_a
    iget-object v1, v0, Labcd/QF$a;->j6:Labcd/QF$a;

    iput-object v1, p0, Labcd/QF;->Hw:Labcd/QF$a;

    :goto_e
    iput-object p1, v0, Labcd/QF$a;->DW:Labcd/dG;

    return-object v0
.end method

.method private j6(Labcd/QF$a;)V
    .registers 3

    iget-object v0, p0, Labcd/QF;->Hw:Labcd/QF$a;

    iput-object v0, p1, Labcd/QF$a;->j6:Labcd/QF$a;

    iput-object p1, p0, Labcd/QF;->Hw:Labcd/QF$a;

    return-void
.end method


# virtual methods
.method DW()I
    .registers 2

    iget v0, p0, Labcd/LF;->DW:I

    or-int/lit8 v0, v0, 0x1

    return v0
.end method

.method DW(I)Z
    .registers 4

    iget-object v0, p0, Labcd/QF;->FH:Labcd/QF$a;

    :goto_2
    if-nez v0, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    iget-object v1, v0, Labcd/QF$a;->DW:Labcd/dG;

    iget v1, v1, Labcd/iG;->EQ:I

    and-int/2addr v1, p1

    if-nez v1, :cond_f

    const/4 p1, 0x0

    return p1

    :cond_f
    iget-object v0, v0, Labcd/QF$a;->j6:Labcd/QF$a;

    goto :goto_2
.end method

.method public FH()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/QF;->FH:Labcd/QF$a;

    iput-object v0, p0, Labcd/QF;->Hw:Labcd/QF$a;

    return-void
.end method

.method public Hw()Labcd/dG;
    .registers 2

    iget-object v0, p0, Labcd/QF;->FH:Labcd/QF$a;

    if-eqz v0, :cond_7

    iget-object v0, v0, Labcd/QF$a;->DW:Labcd/dG;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public j6()Labcd/dG;
    .registers 3

    iget-object v0, p0, Labcd/QF;->FH:Labcd/QF$a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v1, v0, Labcd/QF$a;->j6:Labcd/QF$a;

    iput-object v1, p0, Labcd/QF;->FH:Labcd/QF$a;

    invoke-direct {p0, v0}, Labcd/QF;->j6(Labcd/QF$a;)V

    iget-object v0, v0, Labcd/QF$a;->DW:Labcd/dG;

    return-object v0
.end method

.method public j6(Labcd/dG;)V
    .registers 10

    iget-object v0, p0, Labcd/QF;->FH:Labcd/QF$a;

    iget v1, p1, Labcd/dG;->Ws:I

    int-to-long v1, v1

    invoke-direct {p0, p1}, Labcd/QF;->DW(Labcd/dG;)Labcd/QF$a;

    move-result-object p1

    if-eqz v0, :cond_2c

    iget-object v3, v0, Labcd/QF$a;->DW:Labcd/dG;

    iget v3, v3, Labcd/dG;->Ws:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_15

    goto :goto_2c

    :cond_15
    iget-object v3, v0, Labcd/QF$a;->j6:Labcd/QF$a;

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    if-eqz v0, :cond_25

    iget-object v4, v0, Labcd/QF$a;->DW:Labcd/dG;

    iget v4, v4, Labcd/dG;->Ws:I

    int-to-long v4, v4

    cmp-long v6, v4, v1

    if-gtz v6, :cond_15

    :cond_25
    iget-object v0, v3, Labcd/QF$a;->j6:Labcd/QF$a;

    iput-object v0, p1, Labcd/QF$a;->j6:Labcd/QF$a;

    iput-object p1, v3, Labcd/QF$a;->j6:Labcd/QF$a;

    goto :goto_30

    :cond_2c
    :goto_2c
    iput-object v0, p1, Labcd/QF$a;->j6:Labcd/QF$a;

    iput-object p1, p0, Labcd/QF;->FH:Labcd/QF$a;

    :goto_30
    return-void
.end method

.method j6(I)Z
    .registers 4

    iget-object v0, p0, Labcd/QF;->FH:Labcd/QF$a;

    :goto_2
    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    iget-object v1, v0, Labcd/QF$a;->DW:Labcd/dG;

    iget v1, v1, Labcd/iG;->EQ:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    iget-object v0, v0, Labcd/QF$a;->j6:Labcd/QF$a;

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Labcd/QF;->FH:Labcd/QF$a;

    :goto_7
    if-nez v1, :cond_e

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    iget-object v2, v1, Labcd/QF$a;->DW:Labcd/dG;

    invoke-static {v0, v2}, Labcd/LF;->j6(Ljava/lang/StringBuilder;Labcd/dG;)V

    iget-object v1, v1, Labcd/QF$a;->j6:Labcd/QF$a;

    goto :goto_7
.end method
